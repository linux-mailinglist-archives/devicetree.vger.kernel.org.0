Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B5EC464E3F
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 13:53:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243934AbhLAM47 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 07:56:59 -0500
Received: from cpanel.siel.si ([46.19.9.99]:57882 "EHLO cpanel.siel.si"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1349432AbhLAM46 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 Dec 2021 07:56:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
        s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=U0T9NbNc+w7h8+N7scNAD/L+ZyEAGfspWZxqifa1x5s=; b=H5gM8bkoYowX+zLAo6nhdpcJwI
        pk1pjIh/oUVWQ7gUaXkJP9hGzxPpjXWvm+O90GxxYGmT+h6roNu/GrTpnigRU9TB1hxBAAiQ9wfSA
        cZbR5oaLB/sQmy2eKtpIw2Nr/z1bslUeCyF9Fa6cORXyAxrlJAtgzU1Od+sCrDYXR0i7D18bA5N9H
        rQCvhSBFY4xr+PUVKnmuhinVJbS++D8rKTwiZjjDxMC+bKsCU/iUd3EvRco4GUhhfoTBpBpB9m/6B
        ljnCWFcNZeVVsNokWPJhCFdKyCAjAv74vUhJ9VO4z9fqK5CzBBXAsSxHlUK00Fvx82GwkkToBu2Vy
        /b/Bx09g==;
Received: from 89-212-21-243.static.t-2.net ([89.212.21.243]:37890 helo=localhost.localdomain)
        by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <andrej.picej@norik.com>)
        id 1msP76-008Rde-Hs; Wed, 01 Dec 2021 13:53:32 +0100
From:   Andrej Picej <andrej.picej@norik.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        soc@kernel.org
Cc:     robh+dt@kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
        leoyang.li@nxp.com, krzysztof.kozlowski@canonical.com,
        linux@rempel-privat.de, festevam@gmail.com, arnd@arndb.de,
        linux-imx@nxp.com, andrej.picej@norik.com, y.bas@phytec.de
Subject: [PATCH 3/4] ARM: dts: imx6ul: phycore: Change USB LDO voltage for usb compliance
Date:   Wed,  1 Dec 2021 13:53:26 +0100
Message-Id: <20211201125327.3704500-4-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211201125327.3704500-1-andrej.picej@norik.com>
References: <20211201125327.3704500-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Yunus Bas <y.bas@phytec.de>

According to the NXP usb compliance reference, the USB data lines for
Full/Low speed are connected to the ARM USB LDO, which is set to
minimum-voltage = 2.6V and maximum-voltage = 3.4 V. When the regulator
is deactivated, the data lines are defaulty driven with 2.6V, which is
not USB Full-Speed compliant. To be compliant, we need to activate the
USB LDO regulator and set it to the value of 3V, which is the specified
value in the USB specification.

Signed-off-by: Yunus Bas <y.bas@phytec.de>
Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
 arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
index 3cddc68917a0..2e03be3d43ec 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-phycore-som.dtsi
@@ -83,6 +83,11 @@ eeprom@52 {
 	};
 };
 
+&reg_3p0 {
+	regulator-min-microvolt = <3000000>;
+	regulator-always-on;
+};
+
 &snvs_poweroff {
 	status = "okay";
 };
-- 
2.25.1

