Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C2B8A58058
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 12:28:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726518AbfF0K2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 06:28:21 -0400
Received: from inva021.nxp.com ([92.121.34.21]:44104 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726523AbfF0K2S (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 Jun 2019 06:28:18 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 86600200BAD;
        Thu, 27 Jun 2019 12:28:16 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com [165.114.16.14])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9C497200BA3;
        Thu, 27 Jun 2019 12:28:12 +0200 (CEST)
Received: from lsv03124.swis.in-blr01.nxp.com (lsv03124.swis.in-blr01.nxp.com [92.120.146.121])
        by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4D5D34030D;
        Thu, 27 Jun 2019 18:28:07 +0800 (SGT)
From:   Ashish Kumar <Ashish.Kumar@nxp.com>
To:     devicetree@vger.kernel.org
Cc:     bbrezillon@kernel.org, broonie@kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mtd@lists.infradead.org, Ashish Kumar <ashish.kumar@nxp.com>,
        Kuldeep Singh <kuldeep.singh@nxp.com>
Subject: [Patch v2] drivers: mtd: spi-nor: Add flash property for mt25qu512a and mt35xu02g
Date:   Thu, 27 Jun 2019 15:58:03 +0530
Message-Id: <1561631283-30937-1-git-send-email-Ashish.Kumar@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Ashish Kumar <ashish.kumar@nxp.com>

mt25qu512a is rebranded after its spinoff from STM, so it is
different only in term of extended jedec ID, initial JEDEC id
is same as that of n25q512a.In order to avoid any confussion 
with respect to name new entry is added.
This flash is tested for Single I/O mode on LS1046FRWY although
it does support QUAD I/O.

mt35xu02g is Octal flash supporting Single I/O and QCTAL I/O
and has been tested on LS1028ARDB

Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>
Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
---
V2:
Re-work based on review comments from Vignesh R

 drivers/mtd/spi-nor/spi-nor.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 73172d7..34e33a7 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -1880,6 +1880,7 @@ static const struct flash_info spi_nor_ids[] = {
 	{ "n25q512ax3",  INFO(0x20ba20, 0, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ) },
 	{ "n25q00",      INFO(0x20ba21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
 	{ "n25q00a",     INFO(0x20bb21, 0, 64 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
+	{ "mt25qu512a", INFO6(0x20bb20, 0x104400, 64 * 1024, 1024, SECT_4K | USE_FSR | SPI_NOR_4B_OPCODES) },
 	{ "mt25qu02g",   INFO(0x20bb22, 0, 64 * 1024, 4096, SECT_4K | USE_FSR | SPI_NOR_QUAD_READ | NO_CHIP_ERASE) },
 
 	/* Micron */
@@ -1888,6 +1889,7 @@ static const struct flash_info spi_nor_ids[] = {
 			SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ |
 			SPI_NOR_4B_OPCODES)
 	},
+	{ "mt35xu02g",   INFO(0x2c5b1c, 0, 128 * 1024, 2048, SECT_4K | USE_FSR | SPI_NOR_OCTAL_READ | SPI_NOR_4B_OPCODES) },
 
 	/* PMC */
 	{ "pm25lv512",   INFO(0,        0, 32 * 1024,    2, SECT_4K_PMC) },
-- 
2.7.4

