Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F7514E2633
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 13:17:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347278AbiCUMTD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 08:19:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347265AbiCUMTC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 08:19:02 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9C48165B8F
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 05:17:36 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id h1so17569326edj.1
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 05:17:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zXQHV7xhs1+qQGzsApkPKomyxdaSi4u+eiszdEIex30=;
        b=P+B3xRU9nM1ybFEr201qd9Nk4AK511B52XTvQkJZUF8bjNIvLECb6DCJGSk6q5v1eY
         md25xWrQzfUIH8cQq1QH96WVIYzVeWFbAlGIAmRf4srVC42Xn3wVIVgSjBK0rClKafbC
         kuImu1VpMQ6HFAyhurx4Dzsiwj7sssXe5eBaBbN7p8TDGoNDT3fNuMxhCa5+mRBdDVa4
         XVAd5sPWUCkoScZvD2sODtj5Ymqu3grih5KSUZOn09AOfOswqgVjabDg3lrdErNcx8tL
         uFKdLx7B29ec+5HfF52T9CvTA2A/gnIqTXtMB0HSvsKwhRaJyEUhpv6xPYFfWfZxphqS
         7pfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zXQHV7xhs1+qQGzsApkPKomyxdaSi4u+eiszdEIex30=;
        b=RJNBTuMtFqJOjpeWsoHlXF6u1WNNKV5suzY0Y5LtgsAHGKmf8ZVNgXKsK4lUwnNOl2
         tjETYfiFNmKm/xJ3IssGO0cpfpgU8r21ZYF05WMMHehkbhNNamn102d8eQsY+rF2t5yG
         nO2d1j7M3MS9i2jv14U34RdOCliqn16gMoFdml2mfuY3Kp1wj5ZGx+SbPKDkWLXRWVJm
         XsU6Cpla9At95zQr6iqTIY1Hlxb5qOF4kcboUm/QgitIb8yO/tfjRGdTjcxtvAMjnpvB
         9Gt1/jDJEdxgfswRSGkourOu4AwfEZPGWZQDoVOK35tQbf/Z8O91CDxTgfvM75myGXYo
         8zow==
X-Gm-Message-State: AOAM531STO1Ttneso2jfugrFiHezk7t0vpooayWXaKQ94odn2fWVT0Pv
        ilz1QIQaT1ylt2wx7XHHzjmXhw==
X-Google-Smtp-Source: ABdhPJwyOOZaHig7gW3+fwhDHOFX6o1eeyAfF9L2Wf6l3aKqXb9eHevOBOSe8B4VZXyd1baYD46rVg==
X-Received: by 2002:a05:6402:4396:b0:418:d776:14c1 with SMTP id o22-20020a056402439600b00418d77614c1mr22911214edc.127.1647865055468;
        Mon, 21 Mar 2022 05:17:35 -0700 (PDT)
Received: from fedora.robimarko.hr (cpezg-94-253-144-57-cbl.xnet.hr. [94.253.144.57])
        by smtp.googlemail.com with ESMTPSA id nc7-20020a1709071c0700b006dfe66694dasm2457100ejc.144.2022.03.21.05.17.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 05:17:35 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, pali@kernel.org, marek.behun@nic.cz
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 2/2] arm64: dts: uDPU: correct temperature sensors
Date:   Mon, 21 Mar 2022 13:17:28 +0100
Message-Id: <20220321121728.414839-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220321121728.414839-1-robert.marko@sartura.hr>
References: <20220321121728.414839-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

uDPU has a pair of NCT375 temperature sensors, which are TMP75C compatible
as far as the driver is concerned.

The current LM75 compatible worked as all of the LM75 compatible sensors
are backwards compatible with the original part, but it meant that lower
resolution and incorrect sample rate was being used.

The "lm75" compatible has been deprecated anyway and is meant as fallback
in order to keep older DTS-es working.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
index ac64949bb53e..1f534c0c65f7 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-uDPU.dts
@@ -153,15 +153,15 @@ &i2c1 {
 	scl-gpios = <&gpionb 2 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 	sda-gpios = <&gpionb 3 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
 
-	lm75@48 {
+	nct375@48 {
 		status = "okay";
-		compatible = "lm75";
+		compatible = "ti,tmp75c";
 		reg = <0x48>;
 	};
 
-	lm75@49 {
+	nct375@49 {
 		status = "okay";
-		compatible = "lm75";
+		compatible = "ti,tmp75c";
 		reg = <0x49>;
 	};
 };
-- 
2.35.1

