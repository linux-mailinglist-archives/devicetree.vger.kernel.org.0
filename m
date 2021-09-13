Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D21BD409159
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 15:59:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1343605AbhIMOAz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 10:00:55 -0400
Received: from comms.puri.sm ([159.203.221.185]:39628 "EHLO comms.puri.sm"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S244415AbhIMN6o (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Sep 2021 09:58:44 -0400
Received: from localhost (localhost [127.0.0.1])
        by comms.puri.sm (Postfix) with ESMTP id B2919E044B;
        Mon, 13 Sep 2021 06:57:27 -0700 (PDT)
Received: from comms.puri.sm ([127.0.0.1])
        by localhost (comms.puri.sm [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id KRJw1H7B_90o; Mon, 13 Sep 2021 06:57:27 -0700 (PDT)
From:   Martin Kepplinger <martin.kepplinger@puri.sm>
To:     robh@kernel.org, shawnguo@kernel.org, kernel@pengutronix.de,
        festevam@gmail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        kernel@puri.sm, Martin Kepplinger <martin.kepplinger@puri.sm>
Subject: [PATCH v1 1/6] arm64: dts: imx8mq-librem5: add reset gpio to mantix panel description
Date:   Mon, 13 Sep 2021 15:57:01 +0200
Message-Id: <20210913135706.309685-2-martin.kepplinger@puri.sm>
In-Reply-To: <20210913135706.309685-1-martin.kepplinger@puri.sm>
References: <20210913135706.309685-1-martin.kepplinger@puri.sm>
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing description for the reset gpio to the panels DT
description.

Signed-off-by: Martin Kepplinger <martin.kepplinger@puri.sm>
---
 arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
index 460ef0d86540..cb0147fe7c26 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5.dtsi
@@ -1010,6 +1010,7 @@ lcd_panel: panel@0 {
 		vddi-supply = <&reg_lcd_1v8>;
 		backlight = <&backlight_dsi>;
 		reset-gpios = <&gpio1 29 GPIO_ACTIVE_LOW>;
+		mantix,tp-rstn-gpios = <&gpio1 24 GPIO_ACTIVE_LOW>;
 
 		port {
 			panel_in: endpoint {
-- 
2.30.2

