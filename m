Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B2408362122
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 15:38:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244078AbhDPNim (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 09:38:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244073AbhDPNik (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 09:38:40 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D96E9C061574
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 06:38:15 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id x20so14527146lfu.6
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 06:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T3bMVzLBN0V0SKwgR6veMxI+dRI48WuWXoGAzJTDhtk=;
        b=eGmfjr0niR/eJTs1IPZuoKLFVZFFQCJh9pHPcibX3JpnfSGzQMsYPmx9bj9BPeP21Q
         iG1Gv2PSbhGMZIty9nWYOoGTKHMQyhg8u8bo0zxOslBp1aaHoUTcy3Jmh+ZceGC8WXGU
         62lCxxBseVkumfxfwDc65+0E7apW2B5QexwakDamkLMCkh2PcPWxQNTO7PmxwzsHmUxT
         TLZy8eOqwMVmHnYU2rMJU1J4qwPJCpa8fQqwuNp4XTxALNvrf+OgvbctGrtgIfwc4vJq
         i4BuY/iK5bROzi6n+dPDx70ROr69B141xiLvmn27iPrd5wLnaHbJokit2IfVOmHnPHPA
         e3gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T3bMVzLBN0V0SKwgR6veMxI+dRI48WuWXoGAzJTDhtk=;
        b=NoKwTwuUXTW82Tmsk0YdDk6qi7v2g7UBcOPXV3aZvFirtHYZoqohfs9JS4Ki0dMnLw
         xbsPrbtoG9s0ZZEsGvHy5Kr6Fq+PzsJ6oOpSCCOnjHpPscfYHU/Q++uNhpTWIJqBvXn+
         ThNydG5mIYmHmGFKfEDAx5gxiX3LkeFwsRiAAqJ2HvzQduiaF61TybnU8t2VEOqd2ae2
         Lf1v7Qr33C41KPiGf4HWlsz798o4BhkI/YpncvdME+9wYqyP9NJTv1LY4AA6rwjJGTGF
         xFwgipne2C7ARSRPMfHDiw94vAOCGUq4abMHYnbNJd1pEKTjSkse4KjCtd4clKPaJHoX
         mPMg==
X-Gm-Message-State: AOAM5320WKXLr/+2BRXu3NgUxERVsnjZAbo+OQLYumdPhTicK0pcx2R7
        RxZoQGYybVqxFxPUaqCUamY=
X-Google-Smtp-Source: ABdhPJxyzuHBaSxezmWYv3T4KYn0Sd7WpkrtdQALRXMw5vSliDkh1E4/fKRjXsIo5gWIJXdM8q5YTQ==
X-Received: by 2002:a05:6512:36cb:: with SMTP id e11mr3039265lfs.369.1618580294382;
        Fri, 16 Apr 2021 06:38:14 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id y14sm948405ljy.18.2021.04.16.06.38.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 06:38:14 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Hauke Mehrtens <hauke@hauke-m.de>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH stblinux 5/6] ARM: dts: BCM63xx: Fix NAND nodes names
Date:   Fri, 16 Apr 2021 15:37:52 +0200
Message-Id: <20210416133753.32756-5-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20210416133753.32756-1-zajec5@gmail.com>
References: <20210416133753.32756-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This matches nand-controller.yaml requirements.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm/boot/dts/bcm63138.dtsi    | 2 +-
 arch/arm/boot/dts/bcm963138dvt.dts | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/bcm63138.dtsi b/arch/arm/boot/dts/bcm63138.dtsi
index 9c0325cf9e22..cca49a2e2d62 100644
--- a/arch/arm/boot/dts/bcm63138.dtsi
+++ b/arch/arm/boot/dts/bcm63138.dtsi
@@ -203,7 +203,7 @@ serial1: serial@620 {
 			status = "disabled";
 		};
 
-		nand: nand@2000 {
+		nand_controller: nand-controller@2000 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			compatible = "brcm,nand-bcm63138", "brcm,brcmnand-v7.0", "brcm,brcmnand";
diff --git a/arch/arm/boot/dts/bcm963138dvt.dts b/arch/arm/boot/dts/bcm963138dvt.dts
index 5b177274f182..df5c8ab90627 100644
--- a/arch/arm/boot/dts/bcm963138dvt.dts
+++ b/arch/arm/boot/dts/bcm963138dvt.dts
@@ -31,10 +31,10 @@ &serial1 {
 	status = "okay";
 };
 
-&nand {
+&nand_controller {
 	status = "okay";
 
-	nandcs@0 {
+	nand@0 {
 		compatible = "brcm,nandcs";
 		reg = <0>;
 		nand-ecc-strength = <4>;
-- 
2.26.2

