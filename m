Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C68933C376
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 18:08:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235149AbhCORHq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 13:07:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235255AbhCORHY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 13:07:24 -0400
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [IPv6:2001:67c:2050::465:201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98CA5C06175F
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 10:07:24 -0700 (PDT)
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4DzjXB3RWZzQjmW;
        Mon, 15 Mar 2021 18:07:22 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1615828040;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=kEfGhvk0205DGLYNIaGn6nAyOPV/3LLcLVfkd/rAuiI=;
        b=DFBJlMSEHlnlWfNPJsddcUA/he6fgO365o48FKJ5JE0PYWMtsDi4fgT5PEQnjgqlrOnCiG
        GyG3JifXUTX1IhmxrzjkAQ1fceshPrAy/8Qa88zgHe/REwNeKYMz+jOh92oi6L7DsZrmk6
        OCRWIrFdr20GoozggL1ydkjSnsra8mXzzmGMH7kguuwrmFSvpdadWbK7s/WeUNKkbxHmb4
        /BQkaycR1xNA8Oe/nDgD8nCG/YVfAd0sJkr6xMWWascJrMPdK0XR+aoyRCqisU3hwcHbCc
        FoeM7BZMyh6+BMKblau6QjSv32e7Y3XR+MVVMrrLtbi0tVoeAk1SnfCamZ6YDQ==
Received: from smtp1.mailbox.org ([80.241.60.240])
        by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de [80.241.56.123]) (amavisd-new, port 10030)
        with ESMTP id NXLcqGeqilJu; Mon, 15 Mar 2021 18:07:19 +0100 (CET)
From:   Hauke Mehrtens <hauke@hauke-m.de>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com,
        Hauke Mehrtens <hauke@hauke-m.de>
Subject: [PATCH 1/2] mtd: parsers: trx: Allow to specify trx-magic in DT
Date:   Mon, 15 Mar 2021 18:07:10 +0100
Message-Id: <20210315170711.567358-2-hauke@hauke-m.de>
In-Reply-To: <20210315170711.567358-1-hauke@hauke-m.de>
References: <20210315170711.567358-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: ***
X-Rspamd-Score: 3.39 / 15.00 / 15.00
X-Rspamd-Queue-Id: 568B7183B
X-Rspamd-UID: eec75f
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Buffalo uses a different TRX magic for every device, to be able to use
this trx parser, make it possible to specify the TRX magic in device
tree. If no TRX magic is specified in device tree, the standard value
will be used. This value should only be specified if a vendor chooses to
use a non standard TRX magic.

Signed-off-by: Hauke Mehrtens <hauke@hauke-m.de>
---
 .../bindings/mtd/partitions/brcm,trx.txt      |  5 +++++
 drivers/mtd/parsers/parser_trx.c              | 21 ++++++++++++++++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
index b677147ca4e1..715a18ca36bd 100644
--- a/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
+++ b/Documentation/devicetree/bindings/mtd/partitions/brcm,trx.txt
@@ -28,6 +28,11 @@ detected by a software parsing TRX header.
 Required properties:
 - compatible : (required) must be "brcm,trx"
 
+Optional properties:
+
+- trx-magic: TRX magic, if it is different from the default magic
+	     0x30524448 as a u32.
+
 Example:
 
 flash@0 {
diff --git a/drivers/mtd/parsers/parser_trx.c b/drivers/mtd/parsers/parser_trx.c
index 8541182134d4..fd424587caa4 100644
--- a/drivers/mtd/parsers/parser_trx.c
+++ b/drivers/mtd/parsers/parser_trx.c
@@ -47,6 +47,24 @@ static const char *parser_trx_data_part_name(struct mtd_info *master,
 	return "rootfs";
 }
 
+static uint32_t parser_trx_get_magic(struct mtd_info *mtd)
+{
+	uint32_t trx_magic = TRX_MAGIC;
+	struct device_node *np;
+	int err;
+
+	np = mtd_get_of_node(mtd);
+	if (!np)
+		return trx_magic;
+
+	/* Get different magic from device tree if specified */
+	err = of_property_read_u32(np, "trx-magic", &trx_magic);
+	if (err != 0 && err != -EINVAL)
+		pr_err("failed to parse \"trx-magic\" DT attribute, use default: %d\n", err);
+
+	return trx_magic;
+}
+
 static int parser_trx_parse(struct mtd_info *mtd,
 			    const struct mtd_partition **pparts,
 			    struct mtd_part_parser_data *data)
@@ -56,6 +74,7 @@ static int parser_trx_parse(struct mtd_info *mtd,
 	struct trx_header trx;
 	size_t bytes_read;
 	uint8_t curr_part = 0, i = 0;
+	uint32_t trx_magic = parser_trx_get_magic(mtd);
 	int err;
 
 	parts = kcalloc(TRX_PARSER_MAX_PARTS, sizeof(struct mtd_partition),
@@ -70,7 +89,7 @@ static int parser_trx_parse(struct mtd_info *mtd,
 		return err;
 	}
 
-	if (trx.magic != TRX_MAGIC) {
+	if (trx.magic != trx_magic) {
 		kfree(parts);
 		return -ENOENT;
 	}
-- 
2.30.1

