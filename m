Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F4DF5304E9
	for <lists+devicetree@lfdr.de>; Sun, 22 May 2022 19:21:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232802AbiEVRVw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 May 2022 13:21:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232098AbiEVRVv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 May 2022 13:21:51 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C201D26562
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 10:21:48 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id t25so21971458lfg.7
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 10:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=35cINdG4aKyvkMTNqLECMQ6LpQDha8n1Ps7uhOu4v+k=;
        b=f2FDUnqInwufGy8gdJQxjQjX2B2lmZ7dhKYRkltHSOZw31TObrnUW5fvxLyuJPUZew
         H5gL9iYu1NqkTZTO/PknCgSMxu7fMg+dqsv5IpgMIxAHgpp2y8TGDd+wsNEBSDdPQK8Q
         8zNcNSnf/ArwQhiGMHR8tGHftZH7YewVGVOjIWFH0gzmnSNKCnAG2FJoDMSo8Mx0oOl7
         TpdB/QQyK3btafai5GmPByEuQKI0FTAcJN3qYKKKNP2Twc7ZOC17+ag3xFRrvMTiexYq
         +MmrE8//BB5jmS0o7E5CkkbjBp5+9mYrhdqk7zJ400Dz4az1TrhFVnvtQiIBGyoCoyP0
         uL8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=35cINdG4aKyvkMTNqLECMQ6LpQDha8n1Ps7uhOu4v+k=;
        b=CnfpocjsjoDt+t3UsRuI/RK6GauuTi7R/RPRJks4wAIkjTWHfvGZoyvWM73CXRoefy
         tEQPX5PlZR19hWV20ybn0ROaWAQSo/X3cJrZytwri1Tgl1Vc21mK4nBpnQuQsq/AAVMb
         kf3tQ4sdhjUcTgPyZTrhYpOKnapfeaM+z9p83Qy3huAemGbNoA+SJJ+IUEh5oS4UldAY
         rofyqb3Q4dRa17xZLoTGyFXLxU2tpIdgENRXgYpknvaKxl+Ioof03U1iYsSGPL2PnS+t
         7WxnZl1OAGtU709wcq4iiCcpLDiG1vNNcw2XcsOwi82NTLgOm6o3TNEPX8noBlm5SPlM
         w/Vg==
X-Gm-Message-State: AOAM531HKa090G9gBfQRj4CPpEaTlsreqU3B9O7wrQqRrdu3I8yosgWH
        FhCwrhMPvZQaUid1OpndGaY=
X-Google-Smtp-Source: ABdhPJxC+Dc1ZQZs1hKM6kdDFny5WIDxLDCNcBbjVrKc4LOoLeaV2Vj0ngL7LZUlrQVl/mwHKQA4XA==
X-Received: by 2002:a19:7613:0:b0:477:bf3e:db7 with SMTP id c19-20020a197613000000b00477bf3e0db7mr13851533lff.454.1653240107008;
        Sun, 22 May 2022 10:21:47 -0700 (PDT)
Received: from localhost.localdomain (ppp91-122-164-134.pppoe.avangarddsl.ru. [91.122.164.134])
        by smtp.gmail.com with ESMTPSA id l15-20020ac24a8f000000b00473f03f22a3sm1527691lfp.58.2022.05.22.10.21.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 May 2022 10:21:46 -0700 (PDT)
From:   Andrei Lalaev <andrey.lalaev@gmail.com>
To:     wens@csie.org, jernej.skrabec@gmail.com, samuel@sholland.org
Cc:     krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev,
        Andrei Lalaev <andrey.lalaev@gmail.com>
Subject: [PATCH] arm: dts: sunxi: h3/h5: add gpio-ranges for pio and r_pio
Date:   Sun, 22 May 2022 20:20:19 +0300
Message-Id: <20220522172018.238564-1-andrey.lalaev@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Without this property the next node can't be hogged:
&r_pio {
	test_hog {
		gpio-hog;
		gpios = <0 6 GPIO_ACTIVE_HIGH>;
		output-high;
	};
};
And the appropriate error message:
"requesting hog GPIO test_hog (chip 1f02c00.pinctrl, offset 6) failed, -517"

This problem occurs because the "pinctrl-sunxi" calls
"gpiochip_add_data" that parses "gpio-ranges"
(using "of_gpiochip_add_pin_range") and registers hogs
(using "of_gpiochip_scan_gpios").
So when the gpiolib tries to register hogs it can't find any ranges and
fails.

Signed-off-by: Andrei Lalaev <andrey.lalaev@gmail.com>
---
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index d7e9f977f986..4193bf962b7d 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -404,6 +404,9 @@ pio: pinctrl@1c20800 {
 			#gpio-cells = <3>;
 			interrupt-controller;
 			#interrupt-cells = <3>;
+			gpio-ranges = <&pio 0 0 22>, <&pio 64 64 17>,
+				      <&pio 96 96 18>, <&pio 128 128 16>,
+				      <&pio 160 160 7>, <&pio 192 192 14>;
 
 			csi_pins: csi-pins {
 				pins = "PE0", "PE2", "PE3", "PE4", "PE5",
@@ -937,6 +940,7 @@ r_pio: pinctrl@1f02c00 {
 			#gpio-cells = <3>;
 			interrupt-controller;
 			#interrupt-cells = <3>;
+			gpio-ranges = <&r_pio 0 352 12>;
 
 			r_ir_rx_pin: r-ir-rx-pin {
 				pins = "PL11";
-- 
2.25.1

