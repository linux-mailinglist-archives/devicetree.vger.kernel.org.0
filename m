Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AA6B14C3BE
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 00:36:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726246AbfFSWgM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jun 2019 18:36:12 -0400
Received: from pandora.armlinux.org.uk ([78.32.30.218]:42592 "EHLO
        pandora.armlinux.org.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726251AbfFSWgM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jun 2019 18:36:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
        Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:Reply-To:Content-ID
        :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
        Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=WXl+KIoWV8m2vrtlGsM8OucBTd0Of2l1snOONqNgntU=; b=XM7k7SGtEfrK0t5zIId0HWTxRN
        C/m6RXj1mpXaGy+PthOxXr0tmV6wDcPOG4nIatbKq21DJ8sqlfsBHpL49azILMYfa1HWNQ+UM+J7N
        a87AnNYHpCxgyS5/MC6lzrf490+Mbxu1G5KIeWTac1GSFCEcc1dbhVKaFCIcEk1Jbx6G1VC9NpPP7
        EHyuWgve0dA4ZFbtnOjXvsIrzwMMOCNIb2LfqEMAu5RheVySYRmsz79VVM0j5BlITgV0xzahm8ezt
        e2evaagnfWxEuKzrGV1/dUix8AdxrnwmkHjWbcqeTJAkA/sTBV1aZaTfPq9RmfbSU5kV9X2k0RqeV
        SzK29fPw==;
Received: from e0022681537dd.dyn.armlinux.org.uk ([2002:4e20:1eda:1:222:68ff:fe15:37dd]:42906 helo=rmk-PC.armlinux.org.uk)
        by pandora.armlinux.org.uk with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.90_1)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1hdjBP-0003BR-18; Wed, 19 Jun 2019 23:35:59 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim 4.82_1-5b7a7c0-XX)
        (envelope-from <rmk@armlinux.org.uk>)
        id 1hdjBO-0007Yt-9M; Wed, 19 Jun 2019 23:35:58 +0100
From:   Russell King <rmk+kernel@armlinux.org.uk>
To:     Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] ARM: dts: imx6qdl-sr-som: fix AR8035 phy interface mode
MIME-Version: 1.0
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset="utf-8"
Message-Id: <E1hdjBO-0007Yt-9M@rmk-PC.armlinux.org.uk>
Date:   Wed, 19 Jun 2019 23:35:58 +0100
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A change to the AT803x driver fixed the handling of the phy interface
mode, but this breaks all platforms that use "rgmii" as the mode in
their DT.  Fix the Solidrun platforms.

Fixes: 6d4cd041f0af ("net: phy: at803x: disable delay only for RGMII mode")
Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 arch/arm/boot/dts/imx6qdl-sr-som.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
index 4ccb7afc4b35..6d7f6b9035bc 100644
--- a/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-sr-som.dtsi
@@ -53,7 +53,7 @@
 &fec {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_microsom_enet_ar8035>;
-	phy-mode = "rgmii";
+	phy-mode = "rgmii-id";
 	phy-reset-duration = <2>;
 	phy-reset-gpios = <&gpio4 15 GPIO_ACTIVE_LOW>;
 	status = "okay";
-- 
2.7.4

