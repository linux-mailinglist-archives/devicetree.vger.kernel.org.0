Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB9FF729D2D
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 16:43:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231944AbjFIOnf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 10:43:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241379AbjFIOne (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 10:43:34 -0400
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CF48E43
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 07:43:32 -0700 (PDT)
X-GND-Sasl: miquel.raynal@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686321810;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=o33vIw4Xmx5A95pP6lxVkupt7LaiXIAy8o80AfhiSIE=;
        b=OsISw+A14XVltXEyH167tZTmEsx/+HRmf37hJi/mZ4ngpfwti7/SBMgvDIJSf9U8L19f4v
        KpBOJGaSKS7nlYi+9HHlTKpooYoUkFvD7g8IntQHuwLHnxBtxpw5UFJddGBsABF1vsixTs
        c2S0O1GRCYTXBGkY8So3SwVWPDjDmTPfKLNyARLSROAZyjKH6QtI1TvpjHN8sKr2MjWAhT
        Y9NDUyHlJHOPOrjAUnCg7hMp7NqXzZ2KUsfnYf47HAzM/AkZwjrc6ngYsOM11MriBUoUpd
        2ImvYjAU88VNuK72/i8cPHGDgNrb0NmKn+lGE4jLN+XEdtVv5NoESJJ+3fVKHw==
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
X-GND-Sasl: miquel.raynal@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id D9E4CFF80F;
        Fri,  9 Jun 2023 14:43:29 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        <linux-mtd@lists.infradead.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 2/2] mtd: spi-nor: Add support for sst26vf032b flash
Date:   Fri,  9 Jun 2023 16:43:24 +0200
Message-Id: <20230609144324.850617-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230609144324.850617-1-miquel.raynal@bootlin.com>
References: <20230609144324.850617-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe this new part. I simply copy/pasted the entry for its cousins
with twice more/less storage capacity. The datasheet is public:
https://ww1.microchip.com/downloads/aemDocuments/documents/MPD/ProductDocuments/DataSheets/SST26VF032B-SST26VF032BA-2.5V-3.0V-32-Mbit-Serial-Quad-IO-%28SQI%29-Flash-Memory-20005218K.pdf
Without the NO_SFDP_FLAGs only partial erasures happen so I believe the
4K sector flag is needed. I cannot test dual/quad reads, so I kept these
to mimic the other entries, just in case.

Here are the sfdp tables plus base testing to show it works.

$ cat /sys/bus/spi/devices/spi0.0/spi-nor/partname
sst26vf032b
$ cat /sys/bus/spi/devices/spi0.0/spi-nor/jedec_id
bf2642
$ cat /sys/bus/spi/devices/spi0.0/spi-nor/manufacturer
sst
$ xxd -p /sys/bus/spi/devices/spi0.0/spi-nor/sfdp
53464450060102ff00060110300000ff81000106000100ffbf0001180002
0001fffffffffffffffffffffffffffffffffd20f1ffffffff0144eb086b
083b80bbfeffffffffff00ffffff440b0c200dd80fd810d820914824806f
1d81ed0f773830b030b0f7ffffff29c25cfff030c080ffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffff0004fff37f0000f57f0000f9ff
3d00f57f0000f37f0000ffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
ffffbf2642ffb95ffdff30f260f332ff0a122346ff0f19320f1919ffffff
ffffffff00669938ff05013506040232b03072428de89888a585c09faf5a
ffff06ec060c0003080bffffffffff07ffff0202ff060300fdfd040600fc
0300fefe0202070e
$ md5sum /sys/bus/spi/devices/spi0.0/spi-nor/sfdp
e7efddddb3d5ee89ca37bf6b6e789645  /sys/bus/spi/devices/spi0.0/spi-nor/sfdp

$ dd if=/dev/urandom of=./qspi_test bs=1M count=1
1+0 records in
1+0 records out
$ mtd_debug write /dev/mtd0 0 1048576 qspi_test
Copied 1048576 bytes from qspi_test to address 0x00000000 in flash
$ mtd_debug erase /dev/mtd0 0 1048576
Erased 1048576 bytes from address 0x00000000 in flash
$ mtd_debug read /dev/mtd0 0 1048576 qspi_read
Copied 1048576 bytes from address 0x00000000 in flash to qspi_read
$ hexdump qspi_read
0000000 ffff ffff ffff ffff ffff ffff ffff ffff
*
0100000
$ mtd_debug write /dev/mtd0 0 1048576 qspi_test
Copied 1048576 bytes from qspi_test to address 0x00000000 in flash
$ mtd_debug read /dev/mtd0 0 1048576 qspi_read
Copied 1048576 bytes from address 0x00000000 in flash to qspi_read
$ sha1sum qspi_test qspi_read
2f2f191c7a937eca5db21a1c39e79e7327587cc1  qspi_test
2f2f191c7a937eca5db21a1c39e79e7327587cc1  qspi_read

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/spi-nor/sst.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/spi-nor/sst.c b/drivers/mtd/spi-nor/sst.c
index 99c8a19493f5..43f37d66f73a 100644
--- a/drivers/mtd/spi-nor/sst.c
+++ b/drivers/mtd/spi-nor/sst.c
@@ -113,6 +113,10 @@ static const struct flash_info sst_nor_parts[] = {
 		FLAGS(SPI_NOR_HAS_LOCK | SPI_NOR_SWP_IS_VOLATILE)
 		NO_SFDP_FLAGS(SECT_4K | SPI_NOR_DUAL_READ)
 		.fixups = &sst26vf_nor_fixups },
+	{ "sst26vf032b", INFO(0xbf2642, 0, 64 * 1024, 64)
+		FLAGS(SPI_NOR_HAS_LOCK | SPI_NOR_SWP_IS_VOLATILE)
+		NO_SFDP_FLAGS(SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)
+		.fixups = &sst26vf_nor_fixups },
 	{ "sst26vf064b", INFO(0xbf2643, 0, 64 * 1024, 128)
 		FLAGS(SPI_NOR_HAS_LOCK | SPI_NOR_SWP_IS_VOLATILE)
 		NO_SFDP_FLAGS(SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ)
-- 
2.34.1

