Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D519378348
	for <lists+devicetree@lfdr.de>; Mon, 10 May 2021 12:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232020AbhEJKns (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 May 2021 06:43:48 -0400
Received: from relay5-d.mail.gandi.net ([217.70.183.197]:51055 "EHLO
        relay5-d.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232037AbhEJKmF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 May 2021 06:42:05 -0400
X-Originating-IP: 90.89.138.59
Received: from xps13.home (lfbn-tou-1-1325-59.w90-89.abo.wanadoo.fr [90.89.138.59])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 6A31B1C000F;
        Mon, 10 May 2021 10:40:57 +0000 (UTC)
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
Subject: [PATCH v2 4/5] mtd: rawnand: arasan: Ensure proper configuration for the asserted target
Date:   Mon, 10 May 2021 12:40:50 +0200
Message-Id: <20210510104051.9701-5-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210510104051.9701-1-miquel.raynal@bootlin.com>
References: <20210510104051.9701-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The controller being always asserting one CS or the other, there is no
need to actually select the right target before doing a page read/write.
However, the anfc_select_target() helper actually also changes the
timing configuration and clock in the case were two different NAND chips
with different timing requirements would be used. In this situation, we
must ensure proper configuration of the controller by calling it.

As a consequence of this change, the anfc_select_target() helper is
being moved earlier in the driver.

Fixes: 88ffef1b65cf ("mtd: rawnand: arasan: Support the hardware BCH ECC engine")
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/mtd/nand/raw/arasan-nand-controller.c | 90 ++++++++++++-------
 1 file changed, 57 insertions(+), 33 deletions(-)

diff --git a/drivers/mtd/nand/raw/arasan-nand-controller.c b/drivers/mtd/nand/raw/arasan-nand-controller.c
index 549aac00228e..390f8d719c25 100644
--- a/drivers/mtd/nand/raw/arasan-nand-controller.c
+++ b/drivers/mtd/nand/raw/arasan-nand-controller.c
@@ -273,6 +273,37 @@ static int anfc_pkt_len_config(unsigned int len, unsigned int *steps,
 	return 0;
 }
 
+static int anfc_select_target(struct nand_chip *chip, int target)
+{
+	struct anand *anand = to_anand(chip);
+	struct arasan_nfc *nfc = to_anfc(chip->controller);
+	int ret;
+
+	/* Update the controller timings and the potential ECC configuration */
+	writel_relaxed(anand->timings, nfc->base + DATA_INTERFACE_REG);
+
+	/* Update clock frequency */
+	if (nfc->cur_clk != anand->clk) {
+		clk_disable_unprepare(nfc->controller_clk);
+		ret = clk_set_rate(nfc->controller_clk, anand->clk);
+		if (ret) {
+			dev_err(nfc->dev, "Failed to change clock rate\n");
+			return ret;
+		}
+
+		ret = clk_prepare_enable(nfc->controller_clk);
+		if (ret) {
+			dev_err(nfc->dev,
+				"Failed to re-enable the controller clock\n");
+			return ret;
+		}
+
+		nfc->cur_clk = anand->clk;
+	}
+
+	return 0;
+}
+
 /*
  * When using the embedded hardware ECC engine, the controller is in charge of
  * feeding the engine with, first, the ECC residue present in the data array.
@@ -401,6 +432,18 @@ static int anfc_read_page_hw_ecc(struct nand_chip *chip, u8 *buf,
 	return 0;
 }
 
+static int anfc_sel_read_page_hw_ecc(struct nand_chip *chip, u8 *buf,
+				     int oob_required, int page)
+{
+	int ret;
+
+	ret = anfc_select_target(chip, chip->cur_cs);
+	if (ret)
+		return ret;
+
+	return anfc_read_page_hw_ecc(chip, buf, oob_required, page);
+};
+
 static int anfc_write_page_hw_ecc(struct nand_chip *chip, const u8 *buf,
 				  int oob_required, int page)
 {
@@ -461,6 +504,18 @@ static int anfc_write_page_hw_ecc(struct nand_chip *chip, const u8 *buf,
 	return ret;
 }
 
+static int anfc_sel_write_page_hw_ecc(struct nand_chip *chip, const u8 *buf,
+				      int oob_required, int page)
+{
+	int ret;
+
+	ret = anfc_select_target(chip, chip->cur_cs);
+	if (ret)
+		return ret;
+
+	return anfc_write_page_hw_ecc(chip, buf, oob_required, page);
+};
+
 /* NAND framework ->exec_op() hooks and related helpers */
 static int anfc_parse_instructions(struct nand_chip *chip,
 				   const struct nand_subop *subop,
@@ -753,37 +808,6 @@ static const struct nand_op_parser anfc_op_parser = NAND_OP_PARSER(
 		NAND_OP_PARSER_PAT_WAITRDY_ELEM(false)),
 	);
 
-static int anfc_select_target(struct nand_chip *chip, int target)
-{
-	struct anand *anand = to_anand(chip);
-	struct arasan_nfc *nfc = to_anfc(chip->controller);
-	int ret;
-
-	/* Update the controller timings and the potential ECC configuration */
-	writel_relaxed(anand->timings, nfc->base + DATA_INTERFACE_REG);
-
-	/* Update clock frequency */
-	if (nfc->cur_clk != anand->clk) {
-		clk_disable_unprepare(nfc->controller_clk);
-		ret = clk_set_rate(nfc->controller_clk, anand->clk);
-		if (ret) {
-			dev_err(nfc->dev, "Failed to change clock rate\n");
-			return ret;
-		}
-
-		ret = clk_prepare_enable(nfc->controller_clk);
-		if (ret) {
-			dev_err(nfc->dev,
-				"Failed to re-enable the controller clock\n");
-			return ret;
-		}
-
-		nfc->cur_clk = anand->clk;
-	}
-
-	return 0;
-}
-
 static int anfc_check_op(struct nand_chip *chip,
 			 const struct nand_operation *op)
 {
@@ -1007,8 +1031,8 @@ static int anfc_init_hw_ecc_controller(struct arasan_nfc *nfc,
 	if (!anand->bch)
 		return -EINVAL;
 
-	ecc->read_page = anfc_read_page_hw_ecc;
-	ecc->write_page = anfc_write_page_hw_ecc;
+	ecc->read_page = anfc_sel_read_page_hw_ecc;
+	ecc->write_page = anfc_sel_write_page_hw_ecc;
 
 	return 0;
 }
-- 
2.27.0

