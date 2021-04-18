Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9E1A3637E7
	for <lists+devicetree@lfdr.de>; Sun, 18 Apr 2021 23:46:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231830AbhDRVq7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Apr 2021 17:46:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230258AbhDRVq7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Apr 2021 17:46:59 -0400
Received: from mout-p-201.mailbox.org (mout-p-201.mailbox.org [IPv6:2001:67c:2050::465:201])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1D77C06174A
        for <devicetree@vger.kernel.org>; Sun, 18 Apr 2021 14:46:30 -0700 (PDT)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4FNk6X3p7jzQjx6;
        Sun, 18 Apr 2021 23:46:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hauke-m.de; s=MBO0001;
        t=1618782386;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Bcn7lcMwbPSmuEHOqgikUEV4OWQ7ML3Pg1Ad6Brw2y4=;
        b=GzASEr/wcqCUeqfPEi7Fo5GYIrBX79Ix7gqjNs19DCxD8+YCDJzpak3QaB58J4Ja9hWx+e
        Y+oVvM00b8GRiu3v4iUnzZ6ZkhNdVgujGLYvNXG6Fy7ysgt1M5/qeFiamK1lzk2Ri7OaBV
        IHtxzvLFu78saNK5jkrI3IRXsC6XohT7cNNE2hTA6qNJTIUfhJMiQorhIcJX2I36W53yj0
        uBHIEVhX4J4qtgt8BU0VwfxARdQGfTCNRRwd5nzKz+hXMbtgYDjOp233NIwRAlmZMUfqJN
        PS/Yy9/q2hVKl0hedEnp+Cc043yknCetBSaTdX01UpNb09wAjlIgAkaBcN5wXA==
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de [80.241.56.117]) (amavisd-new, port 10030)
        with ESMTP id uGXNupek66Fi; Sun, 18 Apr 2021 23:46:25 +0200 (CEST)
From:   Hauke Mehrtens <hauke@hauke-m.de>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        rafal@milecki.pl, musashino.open@gmail.com,
        Hauke Mehrtens <hauke@hauke-m.de>
Subject: [PATCH v2 2/3] mtd: parsers: trx: Allow to specify brcm,trx-magic in DT
Date:   Sun, 18 Apr 2021 23:46:15 +0200
Message-Id: <20210418214616.239574-3-hauke@hauke-m.de>
In-Reply-To: <20210418214616.239574-1-hauke@hauke-m.de>
References: <20210418214616.239574-1-hauke@hauke-m.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-MBO-SPAM-Probability: **
X-Rspamd-Score: 2.57 / 15.00 / 15.00
X-Rspamd-Queue-Id: 8398817E5
X-Rspamd-UID: 9cac81
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
 drivers/mtd/parsers/parser_trx.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/parsers/parser_trx.c b/drivers/mtd/parsers/parser_trx.c
index 8541182134d4..4814cf218e17 100644
--- a/drivers/mtd/parsers/parser_trx.c
+++ b/drivers/mtd/parsers/parser_trx.c
@@ -51,13 +51,20 @@ static int parser_trx_parse(struct mtd_info *mtd,
 			    const struct mtd_partition **pparts,
 			    struct mtd_part_parser_data *data)
 {
+	struct device_node *np = mtd_get_of_node(mtd);
 	struct mtd_partition *parts;
 	struct mtd_partition *part;
 	struct trx_header trx;
 	size_t bytes_read;
 	uint8_t curr_part = 0, i = 0;
+	uint32_t trx_magic = TRX_MAGIC;
 	int err;
 
+	/* Get different magic from device tree if specified */
+	err = of_property_read_u32(np, "brcm,trx-magic", &trx_magic);
+	if (err != 0 && err != -EINVAL)
+		pr_err("failed to parse \"brcm,trx-magic\" DT attribute, using default: %d\n", err);
+
 	parts = kcalloc(TRX_PARSER_MAX_PARTS, sizeof(struct mtd_partition),
 			GFP_KERNEL);
 	if (!parts)
@@ -70,7 +77,7 @@ static int parser_trx_parse(struct mtd_info *mtd,
 		return err;
 	}
 
-	if (trx.magic != TRX_MAGIC) {
+	if (trx.magic != trx_magic) {
 		kfree(parts);
 		return -ENOENT;
 	}
-- 
2.30.2

