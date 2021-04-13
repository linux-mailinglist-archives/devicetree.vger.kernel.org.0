Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAC3B35E428
	for <lists+devicetree@lfdr.de>; Tue, 13 Apr 2021 18:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346441AbhDMQim (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 12:38:42 -0400
Received: from mail-lf1-f46.google.com ([209.85.167.46]:45700 "EHLO
        mail-lf1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346395AbhDMQig (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 12:38:36 -0400
Received: by mail-lf1-f46.google.com with SMTP id g8so28359912lfv.12
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 09:38:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7iiRIC7UUWnTaGZjjzvtx5ZNWIoZkouacPtJP/jAlsY=;
        b=fpk7iLxhmf9FiKL20+6mGPvLuTjNVFR5sBIAU5QmTdTpS/TeeUR017+2MkdQozT0wd
         yS9QjYBgnLxZtWucGc63iPib0O270FPfW8sDoLekGa+fFVLJaNQ4fhqlPuvh3qh3Zp3U
         8NlTtMUnd71tmLSKv8/pLCi9udn4RLXjPYKe+8fKXZCuEdJyKKZj3+VWpxEo/wp4FpG0
         XWh4n5LXsbejcRpblRg63IrTUSOlE+tcwvWD0ZPE2b+YkPsN7Qgj9HbRF6gtFjc0ISnp
         MwLJlgf60RXRfAHZmnZsU1CsS/MeZK0cDP+3ppHLkkv2eBJIEZzQSOGf3vKcN6O5oj0s
         +z/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7iiRIC7UUWnTaGZjjzvtx5ZNWIoZkouacPtJP/jAlsY=;
        b=AC57b8nq+S3R7wH5wkfH5PTXPVhFiPAnnLA9WjV20CJhrMSAs/tcLODWzrqvmUCwtO
         c6VTq0Ca8m9YJMCLthyIbVgE5Ue9Bn2cfZrk2YRjRC4p6AaA9iER9q7AjECC/5RZ6dgP
         BKGrQ58MdN3HAPxcFQRC+WpcvMLQtxdniPnHP4T25ZHH03i749I1PvnBvXJJpQPrC3OV
         2Zp2rit90RRfN+ZuqpUXo+Q/xl4qaW4dxMOKff58LcfujG7pLgJTdkdNgmZxBk/5qONf
         lSDq0kzKPnZYlwSOfWgVPJnFYc4nOPK9DzP++rGmd0pbMw6YomDk6qTAGr6bgIVKs5tx
         SGKA==
X-Gm-Message-State: AOAM530HtG/7AMZTdoMYdtw0ie4uXNLpXjBvTd8OZX2VV0G8l+EftwSA
        +eeyKsHanYXHZTRZJi5Lx6Y=
X-Google-Smtp-Source: ABdhPJyOtfQ5faeASKaofvaoLEae3KOL7usNOY88wAEoD7yAsyiAcEzx4I1YPnSdxtE3PXloMs7cwQ==
X-Received: by 2002:ac2:4e95:: with SMTP id o21mr1594161lfr.325.1618331835433;
        Tue, 13 Apr 2021 09:37:15 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id z21sm4026777ljh.104.2021.04.13.09.37.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 09:37:14 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>
Cc:     Vivek Unune <npcomplete13@gmail.com>,
        linux-mtd@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] mtd: parsers: trx: parse "firmware" MTD partitions only
Date:   Tue, 13 Apr 2021 18:37:00 +0200
Message-Id: <20210413163700.12215-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Parsing every partition with "compatible" set to "brcm,trx" results in
parsing both: firmware partition and failsafe partition on devices that
implement failsafe booting. This affects e.g. Linksys EA9500 which has:

partition@200000 {
	reg = <0x0200000 0x01d00000>;
	compatible = "linksys,ns-firmware", "brcm,trx";
};

partition@1f00000 {
	reg = <0x01f00000 0x01d00000>;
	compatible = "linksys,ns-firmware", "brcm,trx";
};

Check for MTD partition name "firmware" before parsing. Recently added
ofpart_linksys_ns.c creates "firmware" and "failsafe" depending on
bootloader setup.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
Vivek has recently reported this problem to me and this is soltuion I
came up with.

One alternative I thought of could be marking "failsafe" MTD partition
node as disabled (using of_update_property() + "status" + "disabled") and
then using of_device_is_available() in the parser_trx.c.

Let me know if you prefer the other (or any other) solution over this
patch.
---
 drivers/mtd/parsers/parser_trx.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/parsers/parser_trx.c b/drivers/mtd/parsers/parser_trx.c
index 8541182134d4..0063791e164d 100644
--- a/drivers/mtd/parsers/parser_trx.c
+++ b/drivers/mtd/parsers/parser_trx.c
@@ -58,6 +58,10 @@ static int parser_trx_parse(struct mtd_info *mtd,
 	uint8_t curr_part = 0, i = 0;
 	int err;
 
+	/* Don't parse any failsafe / backup partitions */
+	if (strcmp(mtd->name, "firmware"))
+		return -EINVAL;
+
 	parts = kcalloc(TRX_PARSER_MAX_PARTS, sizeof(struct mtd_partition),
 			GFP_KERNEL);
 	if (!parts)
-- 
2.26.2

