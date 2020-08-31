Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 91028257B80
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 16:50:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726384AbgHaOuH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 10:50:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727902AbgHaOuG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 10:50:06 -0400
Received: from mxwww.masterlogin.de (mxwww.masterlogin.de [IPv6:2a03:2900:1:1::a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D783FC061575
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 07:50:05 -0700 (PDT)
Received: from mxout2.routing.net (unknown [192.168.10.82])
        by backup.mxwww.masterlogin.de (Postfix) with ESMTPS id C8FE52C202
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 14:40:01 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
        by mxout2.routing.net (Postfix) with ESMTP id BDE1F5FC42;
        Mon, 31 Aug 2020 14:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
        s=20200217; t=1598884787;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=RdOFWohILbsEDDDJFVfgHhbn+dw2QRxvLWyTIr2kZpU=;
        b=QG9Bcy4D86OBecjJqWP/tcMdwIDTmE3hui2EQ3NEBrH3qBuuFq8y7TPOkYLJ74hzHCBfqO
        GdVDgwMDOXnAwgRC2dO/ece+hky352oQocmZjea1+DndpMN5MpSeAQ3HrfuD3Oge125XMv
        BA3xEHZYF/djXMSn2ohFAMZquyS9WN4=
Received: from localhost.localdomain (fttx-pool-217.61.158.151.bambit.de [217.61.158.151])
        by mxbox2.masterlogin.de (Postfix) with ESMTPSA id EEE3C1005C3;
        Mon, 31 Aug 2020 14:39:46 +0000 (UTC)
From:   Frank Wunderlich <linux@fw-web.de>
To:     linux-mediatek@lists.infradead.org
Cc:     Alex Ryabchenko <d3adme4t@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        chunkuang.hu@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Frank Wunderlich <frank-w@public-files.de>
Subject: [PATCH] arm: dts: mt7623: add lima related regulator
Date:   Mon, 31 Aug 2020 16:39:37 +0200
Message-Id: <20200831143937.28259-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Alex Ryabchenko <d3adme4t@gmail.com>

GPU needs additional regulator, add it to devicetree of bpi-r2

Signed-off-by: Alex Ryabchenko <d3adme4t@gmail.com>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts b/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
index f41f221e56ca..826912545ef1 100644
--- a/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
+++ b/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
@@ -79,6 +79,13 @@ reg_5v: regulator-5v {
 		regulator-always-on;
 	};
 
+	reg_vgpu: fixedregulator@0 {
+		compatible = "regulator-fixed";
+		regulator-name = "vdd_fixed_vgpu";
+		regulator-min-microvolt = <1150000>;
+		regulator-max-microvolt = <1150000>;
+	};
+
 	gpio-keys {
 		compatible = "gpio-keys";
 		pinctrl-names = "default";
@@ -283,6 +290,11 @@ &i2c1 {
 	status = "okay";
 };
 
+&mali {
+	mali-supply = <&reg_vgpu>;
+	status = "okay";
+};
+
 &mmc0 {
 	pinctrl-names = "default", "state_uhs";
 	pinctrl-0 = <&mmc0_pins_default>;
@@ -402,4 +414,3 @@ &u3phy1 {
 &u3phy2 {
 	status = "okay";
 };
-
-- 
2.25.1

