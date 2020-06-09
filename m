Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4455C1F40A5
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2020 18:25:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729535AbgFIQZp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Jun 2020 12:25:45 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:50806 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728603AbgFIQZo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Jun 2020 12:25:44 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: aratiu)
        with ESMTPSA id 13CD82A3C00
From:   Adrian Ratiu <adrian.ratiu@collabora.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Philippe CORNU <philippe.cornu@st.com>,
        Yannick FERTRE <yannick.fertre@st.com>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Jonas Karlman <jonas@kwiboo.se>, linux-imx@nxp.com,
        kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v9 06/11] ARM: dts: imx6qdl: add missing mipi dsi properties
Date:   Tue,  9 Jun 2020 19:26:55 +0300
Message-Id: <20200609162700.953260-7-adrian.ratiu@collabora.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609162700.953260-1-adrian.ratiu@collabora.com>
References: <20200609162700.953260-1-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have a proper driver for the imx6 mipi dsi host controller
we can fill in the missing properties to get it working.

Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>
---
New in v8.
---
 arch/arm/boot/dts/imx6qdl.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 7eec1122e5d74..d2f4fdfe4a252 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -1222,7 +1222,15 @@ mipi_csi: mipi@21dc000 {
 			};
 
 			mipi_dsi: mipi@21e0000 {
+				compatible = "fsl,imx6-mipi-dsi", "snps,dw-mipi-dsi";
+				#address-cells = <1>;
+				#size-cells = <0>;
 				reg = <0x021e0000 0x4000>;
+				interrupts = <0 102 IRQ_TYPE_LEVEL_HIGH>;
+				fsl,gpr = <&gpr>;
+				clocks = <&clks IMX6QDL_CLK_MIPI_CORE_CFG>,
+					 <&clks IMX6QDL_CLK_MIPI_IPG>;
+				clock-names = "ref", "pclk";
 				status = "disabled";
 
 				ports {
-- 
2.27.0

