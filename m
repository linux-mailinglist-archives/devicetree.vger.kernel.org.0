Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0F8585F4FA
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2019 10:53:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727012AbfGDIxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Jul 2019 04:53:37 -0400
Received: from inva020.nxp.com ([92.121.34.13]:35914 "EHLO inva020.nxp.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726966AbfGDIxh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 4 Jul 2019 04:53:37 -0400
Received: from inva020.nxp.com (localhost [127.0.0.1])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D35CA1A0564;
        Thu,  4 Jul 2019 10:53:33 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com [134.27.226.22])
        by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id C67321A0145;
        Thu,  4 Jul 2019 10:53:33 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
        by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id D5BDC205D9;
        Thu,  4 Jul 2019 10:53:32 +0200 (CEST)
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
Subject: [PATCH 0/3] Enable imx ddr perfmon on imx8m
Date:   Thu,  4 Jul 2019 11:53:19 +0300
Message-Id: <cover.1562230183.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Driver was upstreamed for imx8qxp and it seems to work on imx8mq/imx8mm
without changes.

Add soc-specific compat strings in case we find minor differences later.

Leonard Crestez (3):
  perf/imx_ddr: Add MODULE_DEVICE_TABLE
  arm64: dts: imx8m: Add ddr-pmu nodes
  arm64: defconfig: Build imx8 ddr pmu as module

 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 7 +++++++
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 7 +++++++
 arch/arm64/configs/defconfig              | 1 +
 drivers/perf/fsl_imx8_ddr_perf.c          | 1 +
 4 files changed, 16 insertions(+)

-- 
2.17.1

