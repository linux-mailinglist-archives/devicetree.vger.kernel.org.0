Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D89738955A
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 20:29:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231491AbhESSaZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 14:30:25 -0400
Received: from mslow1.mail.gandi.net ([217.70.178.240]:46837 "EHLO
        mslow1.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231452AbhESSaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 14:30:21 -0400
Received: from relay6-d.mail.gandi.net (unknown [217.70.183.198])
        by mslow1.mail.gandi.net (Postfix) with ESMTP id 1C2FCCB95C
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 18:27:23 +0000 (UTC)
Received: (Authenticated sender: miquel.raynal@bootlin.com)
        by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id A8B86C0018;
        Wed, 19 May 2021 18:26:59 +0000 (UTC)
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
Subject: [PATCH v20 12/19] memory: pl353-smc: Rename goto labels
Date:   Wed, 19 May 2021 20:26:29 +0200
Message-Id: <20210519182636.1110080-13-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
References: <20210519182636.1110080-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A goto label is better named

        do_something:

than

        out_something_to_do:

Use the former working and really describe what the jump involves.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/memory/pl353-smc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/memory/pl353-smc.c b/drivers/memory/pl353-smc.c
index 2d20b1b2c0e3..14720430bf9e 100644
--- a/drivers/memory/pl353-smc.c
+++ b/drivers/memory/pl353-smc.c
@@ -388,7 +388,7 @@ static int pl353_smc_probe(struct amba_device *adev, const struct amba_id *id)
 	err = clk_prepare_enable(pl353_smc->memclk);
 	if (err) {
 		dev_err(&adev->dev, "Unable to enable memory clock.\n");
-		goto out_clk_dis_aper;
+		goto disable_axi_clk;
 	}
 
 	amba_set_drvdata(adev, pl353_smc);
@@ -408,7 +408,7 @@ static int pl353_smc_probe(struct amba_device *adev, const struct amba_id *id)
 	}
 	if (!match) {
 		dev_err(&adev->dev, "no matching children\n");
-		goto out_clk_disable;
+		goto disable_mem_clk;
 	}
 
 	init = match->data;
@@ -418,9 +418,9 @@ static int pl353_smc_probe(struct amba_device *adev, const struct amba_id *id)
 
 	return 0;
 
-out_clk_disable:
+disable_mem_clk:
 	clk_disable_unprepare(pl353_smc->memclk);
-out_clk_dis_aper:
+disable_axi_clk:
 	clk_disable_unprepare(pl353_smc->aclk);
 
 	return err;
-- 
2.27.0

