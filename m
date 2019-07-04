Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B12745F4F7
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2019 10:53:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727040AbfGDIxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 04:53:37 -0400
Received: from inva021.nxp.com ([92.121.34.21]:49824 "EHLO inva021.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726918AbfGDIxg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 4 Jul 2019 04:53:36 -0400
Received: from inva021.nxp.com (localhost [127.0.0.1])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D69CA200580;
        Thu,  4 Jul 2019 10:53:34 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C92E920057F;
        Thu,  4 Jul 2019 10:53:34 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id E140C205D9;
        Thu,  4 Jul 2019 10:53:33 +0200 (CEST)
From:   Leonard Crestez <leonard.crestez@nxp.com>
To:     Shawn Guo <shawnguo@kernel.org>, Will Deacon <will@kernel.org>,
        Frank Li <Frank.li@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Andrey Smirnov <andrew.smirnov@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <fabio.estevam@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>, devicetree@vger.kernel.org,
        kernel@pengutronix.de, linux-imx@nxp.com,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] perf/imx_ddr: Add MODULE_DEVICE_TABLE
Date:   Thu,  4 Jul 2019 11:53:20 +0300
Message-Id: <6e88abe2ed5f361469cbb8ccccd4586036fc2fa2.1562230183.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1562230183.git.leonard.crestez@nxp.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1562230183.git.leonard.crestez@nxp.com>
References: <cover.1562230183.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is required for automatic probing when driver is built as a module.

Fixes: 9a66d36cc7ac ("drivers/perf: imx_ddr: Add DDR performance counter support to perf")
Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/perf/fsl_imx8_ddr_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 63fe21600072..0e3310dbb145 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -45,10 +45,11 @@ static DEFINE_IDA(ddr_ida);
 static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
 	{ .compatible = "fsl,imx8-ddr-pmu",},
 	{ .compatible = "fsl,imx8m-ddr-pmu",},
 	{ /* sentinel */ }
 };
+MODULE_DEVICE_TABLE(of, imx_ddr_pmu_dt_ids);
 
 struct ddr_pmu {
 	struct pmu pmu;
 	void __iomem *base;
 	unsigned int cpu;
-- 
2.17.1

