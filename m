Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC822B31A4
	for <lists+devicetree@lfdr.de>; Sun, 15 Nov 2020 01:39:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726203AbgKOAit (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 19:38:49 -0500
Received: from mail.kernel.org ([198.145.29.99]:40196 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726125AbgKOAis (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 19:38:48 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A560824073;
        Sun, 15 Nov 2020 00:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605400728;
        bh=pLpmvvfPNkrVn/33kOOWzV/QQcmUyrmGk1dEN2vYcRg=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=CXeTJDKvCw/UHAnW5zaNPmh/V0Mj4LKmDnj34cRBRsnDzJC9o2vbwDHVjadoaH5g9
         lY85pFmD+POjkYB5cZ5M+5zOXP4Y4Bhh5+euhFk2p7HeXTxs9FeB6B8OOejXNPh4V7
         EyB4SpsBaMVGNTYAspNLxXsV95cjiU1AfvlEwSFo=
Date:   Sun, 15 Nov 2020 01:38:43 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>
Cc:     Gregory CLEMENT <gregory.clement@bootlin.com>, arm@kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt v2 4/6] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201115013843.27ae3022@kernel.org>
In-Reply-To: <fa1d5fce-ecc8-6d52-b202-3560a7688ec5@suse.de>
References: <20201114183217.1352-1-kabel@kernel.org>
        <20201114183217.1352-5-kabel@kernel.org>
        <972cde9c-9e4a-0e43-c9c3-9528581d8738@suse.de>
        <20201114235754.16c5e4c0@kernel.org>
        <fa1d5fce-ecc8-6d52-b202-3560a7688ec5@suse.de>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Andreas, is the version below satisfactory?
Marek

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index 7ccebf7d1757..f7498543c9ad 100644
--- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
@@ -82,6 +82,23 @@ pcie@3,0 {
 			};
 		};
 	};
+
+	sfp: sfp {
+		compatible = "sff,sfp";
+		i2c-bus = <&sfp_i2c>;
+		tx-fault-gpios = <&pcawan 0 GPIO_ACTIVE_HIGH>;
+		tx-disable-gpios = <&pcawan 1 GPIO_ACTIVE_HIGH>;
+		rate-select0-gpios = <&pcawan 2 GPIO_ACTIVE_HIGH>;
+		los-gpios = <&pcawan 3 GPIO_ACTIVE_HIGH>;
+		mod-def0-gpios = <&pcawan 4 GPIO_ACTIVE_LOW>;
+
+		/*
+		  * For now this has to be enabled at boot time by U-Boot when
+		  * a SFP module is present. Read more in the comment in the
+		  * eth2 node below.
+		  */
+		status = "disabled";
+	};
 };
 
 &bm {
@@ -126,10 +143,20 @@ fixed-link {
 
 /* WAN port */
 &eth2 {
+	/*
+	  * eth2 is connected via a multiplexor to both the SFP cage and to
+	  * ethernet-phy@1. The multiplexor switches the signal to SFP cage when
+	  * a SFP module is present, as determined by the mode-def0 GPIO.
+	  *
+	  * Until kernel supports this configuration properly, in case SFP module
+	  * is present, U-Boot has to enable the sfp node above, remove phy
+	  * handle and add managed = "in-band-status" property.
+	  */
 	status = "okay";
 	phy-mode = "sgmii";
 	phy = <&phy1>;
 	phys = <&comphy5 2>;
+	sfp = <&sfp>;
 	buffer-manager = <&bm>;
 	bm,pool-long = <2>;
 	bm,pool-short = <3>;
@@ -195,7 +222,7 @@ i2c@3 {
 			/* routed to PCIe2 connector (CN62A) */
 		};
 
-		i2c@4 {
+		sfp_i2c: i2c@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <4>;
