Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE79E37834A
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 12:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232027AbhEJKns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 06:43:48 -0400
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:53687 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231712AbhEJKmD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 06:42:03 -0400
X-Originating-IP: 90.89.138.59
Received: from xps13.home (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 5259F1C0005;
        Mon, 10 May 2021 10:40:56 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v2 3/5] mtd: rawnand: Add a helper to parse the gpio-cs DT property
Date:   Mon, 10 May 2021 12:40:49 +0200
Message-Id: <20210510104051.9701-4-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510104051.9701-1-miquel.raynal@bootlin.com>
References: <20210510104051.9701-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

New chips may feature a lot of CS because of their extended length. As
many controllers have been designed a decade ago, they usually only
feature just a couple. This does not mean that the entire range of
these chips cannot be accessed: it is just a matter of adding more
GPIO CS in the hardware design. A DT property has been added to
describe the CS array: cs-gpios.

Here is the code parsing it this new property, allocating what needs to
be, requesting the GPIOs and returning an array with the additional
available CS. The first entries of this array are left empty and are
reserved for native CS.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 38 ++++++++++++++++++++++++++++++++
 include/linux/mtd/rawnand.h      |  4 ++++
 2 files changed, 42 insertions(+)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index fb072c444495..ba09d6b6e1ce 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -42,6 +42,7 @@
 #include <linux/io.h>
 #include <linux/mtd/partitions.h>
 #include <linux/of.h>
+#include <linux/of_gpio.h>
 #include <linux/gpio/consumer.h>
 
 #include "internals.h"
@@ -5078,6 +5079,43 @@ static int of_get_nand_secure_regions(struct nand_chip *chip)
 	return 0;
 }
 
+/**
+ * rawnand_dt_parse_gpio_cs - Parse the gpio-cs property of a controller
+ * @dev: Device that will be parsed. Also used for managed allocations.
+ * @cs_array: Array of GPIO desc pointers allocated on success
+ * @ncs_array: Number of entries in @cs_array updated on success.
+ * @return 0 on success, an error otherwise.
+ */
+int rawnand_dt_parse_gpio_cs(struct device *dev, struct gpio_desc ***cs_array,
+			     unsigned int *ncs_array)
+{
+	struct device_node *np = dev->of_node;
+	struct gpio_desc **descs;
+	int ndescs, i;
+
+	ndescs = of_gpio_named_count(np, "cs-gpios");
+	if (ndescs < 0) {
+		dev_dbg(dev, "No valid cs-gpios property\n");
+		return 0;
+	}
+
+	descs = devm_kcalloc(dev, ndescs, sizeof(*descs), GFP_KERNEL);
+	if (!descs)
+		return -ENOMEM;
+
+	for (i = 0; i < ndescs; i++) {
+		descs[i] = gpiod_get_index_optional(dev, "cs", i,
+						    GPIOD_OUT_HIGH);
+		if (IS_ERR(descs[i]))
+			return PTR_ERR(descs[i]);
+	}
+
+	*ncs_array = ndescs;
+	*cs_array = descs;
+
+	return 0;
+}
+
 static int rawnand_dt_init(struct nand_chip *chip)
 {
 	struct nand_device *nand = mtd_to_nanddev(nand_to_mtd(chip));
diff --git a/include/linux/mtd/rawnand.h b/include/linux/mtd/rawnand.h
index 93f5c0196a09..e01255a9e591 100644
--- a/include/linux/mtd/rawnand.h
+++ b/include/linux/mtd/rawnand.h
@@ -1446,4 +1446,8 @@ static inline void *nand_get_data_buf(struct nand_chip *chip)
 	return chip->data_buf;
 }
 
+/* Parse the gpio-cs property */
+int rawnand_dt_parse_gpio_cs(struct device *dev, struct gpio_desc ***cs_array,
+			     unsigned int *ncs_array);
+
 #endif /* __LINUX_MTD_RAWNAND_H */
-- 
2.27.0

