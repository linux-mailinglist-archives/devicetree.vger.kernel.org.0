Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B18B938955E
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 20:29:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231475AbhESSa1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 14:30:27 -0400
Received: from mslow1.mail.gandi.net ([217.70.178.240]:59541 "EHLO
        mslow1.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231459AbhESSaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 14:30:21 -0400
Received: from relay6-d.mail.gandi.net (unknown [217.70.183.198])
        by mslow1.mail.gandi.net (Postfix) with ESMTP id 9A12DCB963
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 18:27:26 +0000 (UTC)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 9C27EC0011;
        Wed, 19 May 2021 18:27:04 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Helmut Grohne <helmut.grohne@intenta.de>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>,
        <linux-mtd@lists.infradead.org>, Rob Herring <robh+dt@kernel.org>,
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v20 15/19] memory: pl353-smc: Declare variables following a reverse christmas tree order
Date:   Wed, 19 May 2021 20:26:32 +0200
Message-Id: <20210519182636.1110080-16-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is a purely cosmetic change.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/memory/pl353-smc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/memory/pl353-smc.c b/drivers/memory/pl353-smc.c
index b913d68a7a41..925d856663ac 100644
--- a/drivers/memory/pl353-smc.c
+++ b/drivers/memory/pl353-smc.c
@@ -36,8 +36,8 @@ static int __maybe_unused pl353_smc_suspend(struct device *dev)
 
 static int __maybe_unused pl353_smc_resume(struct device *dev)
 {
+	struct pl353_smc_data *pl353_smc = dev_get_drvdata(dev);
 	int ret;
-	struct pl353_smc_data *pl353_smc = dev_get_drvdata(dev);
 
 	ret = clk_enable(pl353_smc->aclk);
 	if (ret) {
@@ -70,11 +70,11 @@ static const struct of_device_id pl353_smc_supported_children[] = {
 
 static int pl353_smc_probe(struct amba_device *adev, const struct amba_id *id)
 {
+	struct device_node *of_node = adev->dev.of_node;
+	const struct of_device_id *match = NULL;
 	struct pl353_smc_data *pl353_smc;
 	struct device_node *child;
 	int err;
-	struct device_node *of_node = adev->dev.of_node;
-	const struct of_device_id *match = NULL;
 
 	pl353_smc = devm_kzalloc(&adev->dev, sizeof(*pl353_smc), GFP_KERNEL);
 	if (!pl353_smc)
-- 
2.27.0

