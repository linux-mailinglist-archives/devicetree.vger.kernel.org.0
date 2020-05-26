Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEB1A1E2F8B
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2020 21:57:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389501AbgEZT4v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 May 2020 15:56:51 -0400
Received: from relay6-d.mail.gandi.net ([217.70.183.198]:35495 "EHLO
        relay6-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390133AbgEZT4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 May 2020 15:56:51 -0400
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 4E846C000A;
        Tue, 26 May 2020 19:56:49 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [RESEND v5 12/21] mtd: rawnand: Deprecate nand-ecc-mode in favor of nand-ecc-provider
Date:   Tue, 26 May 2020 21:56:24 +0200
Message-Id: <20200526195633.11543-13-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200526195633.11543-1-miquel.raynal@bootlin.com>
References: <20200526195633.11543-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use nand-ecc-provider as the provider DT property. Fallback to
nand-ecc-mode if the property does not exist.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/nand_base.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 69c1b7ab938e..7d17d52cdd34 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -5036,7 +5036,9 @@ of_get_nand_ecc_engine_type(struct device_node *np)
 	const char *pm;
 	int err;
 
-	err = of_property_read_string(np, "nand-ecc-mode", &pm);
+	err = of_property_read_string(np, "nand-ecc-provider", &pm);
+	if (err)
+		err = of_property_read_string(np, "nand-ecc-mode", &pm);
 	if (err)
 		return NAND_ECC_ENGINE_INVALID;
 
-- 
2.20.1

