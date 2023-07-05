Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17FF474871B
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 16:59:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232892AbjGEO7o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 10:59:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232901AbjGEO7l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 10:59:41 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BDCE19A8
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 07:59:31 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99357737980so439343166b.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 07:59:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688569169; x=1691161169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RAZvI3OMDqsKJV2X1gUf5clnFycSJYrrukv5F7tiAds=;
        b=Qld28BWUYGUNXhnclL5xm/Gdrt21mBjLDbNE/mDnUU0IUdkCHKSQqTHzbCrESCDC4I
         xHRgGVxd8Anfe4FqO1/iAyz1+oKCvQZKHFVNM2q/glzOcRHv2ZupUhOPIjSBmRdRmat8
         VIPrfasF1rw+xXz0MsuIM6mXoHVjx8QNgC5jpanagLJpJ9wuBl+4EcgG7gbzN1NjGIJI
         RTstH31U4euTjDO/pfKzXw9Kezf9aWgB8IxxkbnHnQpdeliujdRJKLPvWxs6V5wedex/
         2E0ex1m2yx5WZ65U9EAkd0VIMolImtwsc9Y5QleCWGDRO1RXsCiywadHkcDcNgCsz7Qp
         4B5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688569169; x=1691161169;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RAZvI3OMDqsKJV2X1gUf5clnFycSJYrrukv5F7tiAds=;
        b=VmRlzvULfYrDAmwFGxt4BxZlebjJYz+bumqFZPxQ5ThIkKIIf4BrdftEbZJrsZ1Rg8
         GRgb6/lPf0zDxNJjALf/tBHQIEhN1/J3cWuAali8/HC/jfGiA0ZuYdfcYo3Q7aFHaJzU
         e1AD9Sn2FmOMYMinHjP5WsEBGO1neUzmbZ7SDQDaanWDuMDrAXiKnZ52Qd5zxdATrzIe
         RpnnlCeexwRR529ZJ4LdbJjfgQ7SzBt1mbCH2uNRpYc1DIww0mbCvN2zMmM27OJSOAca
         QusEwZAAVEkcZpfHAbjci/wzBXMamIr32j4dS75h28ju88fOv/oXg7krDGQfQy2qbEEu
         t/Sg==
X-Gm-Message-State: ABy/qLbQ5IbBSBdYcGq2pKSBFukeu4Qfr2OfUmN1H1/kVne0zsgULHfu
        2qm/lpIT6DbfGIgQqfyAmb4i1A==
X-Google-Smtp-Source: ACHHUZ5/h0zlxSxslthMi5UIAMV0sL8nzzKHUMKhofK96Kcu4rpdiEgCV1nDiyU9CjmuxHezgSPyaQ==
X-Received: by 2002:a17:906:d14a:b0:98e:35d1:9946 with SMTP id br10-20020a170906d14a00b0098e35d19946mr13761831ejb.64.1688569169429;
        Wed, 05 Jul 2023 07:59:29 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id p7-20020a170906838700b0099364d9f0e9sm4614613ejx.102.2023.07.05.07.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 07:59:28 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: hisilicon: add missing space before {
Date:   Wed,  5 Jul 2023 16:59:25 +0200
Message-Id: <20230705145925.293447-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing whitespace between node name/label and opening {.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi6220.dtsi | 2 +-
 arch/arm64/boot/dts/hisilicon/hip06.dtsi  | 8 ++++----
 arch/arm64/boot/dts/hisilicon/hip07.dtsi  | 8 ++++----
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
index f29a3e471288..be808bb2544e 100644
--- a/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi6220.dtsi
@@ -861,7 +861,7 @@ tsensor: tsensor@0,f7030700 {
 			#thermal-sensor-cells = <1>;
 		};
 
-		i2s0: i2s@f7118000{
+		i2s0: i2s@f7118000 {
 			compatible = "hisilicon,hi6210-i2s";
 			reg = <0x0 0xf7118000 0x0 0x8000>; /* i2s unit */
 			interrupts = <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>; /* 155 "DigACodec_intr"-32 */
diff --git a/arch/arm64/boot/dts/hisilicon/hip06.dtsi b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
index c588848bfdeb..f46c33d10750 100644
--- a/arch/arm64/boot/dts/hisilicon/hip06.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip06.dtsi
@@ -570,7 +570,7 @@ port@5 {
 			};
 		};
 
-		eth0: ethernet-4{
+		eth0: ethernet-4 {
 			compatible = "hisilicon,hns-nic-v2";
 			ae-handle = <&dsaf0>;
 			port-idx-in-ae = <4>;
@@ -579,7 +579,7 @@ eth0: ethernet-4{
 			dma-coherent;
 		};
 
-		eth1: ethernet-5{
+		eth1: ethernet-5 {
 			compatible = "hisilicon,hns-nic-v2";
 			ae-handle = <&dsaf0>;
 			port-idx-in-ae = <5>;
@@ -588,7 +588,7 @@ eth1: ethernet-5{
 			dma-coherent;
 		};
 
-		eth2: ethernet-0{
+		eth2: ethernet-0 {
 			compatible = "hisilicon,hns-nic-v2";
 			ae-handle = <&dsaf0>;
 			port-idx-in-ae = <0>;
@@ -597,7 +597,7 @@ eth2: ethernet-0{
 			dma-coherent;
 		};
 
-		eth3: ethernet-1{
+		eth3: ethernet-1 {
 			compatible = "hisilicon,hns-nic-v2";
 			ae-handle = <&dsaf0>;
 			port-idx-in-ae = <1>;
diff --git a/arch/arm64/boot/dts/hisilicon/hip07.dtsi b/arch/arm64/boot/dts/hisilicon/hip07.dtsi
index 595abe339c5d..81d907ef43ed 100644
--- a/arch/arm64/boot/dts/hisilicon/hip07.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hip07.dtsi
@@ -1483,7 +1483,7 @@ port@5 {
 			};
 		};
 
-		eth0: ethernet@4{
+		eth0: ethernet@4 {
 			compatible = "hisilicon,hns-nic-v2";
 			ae-handle = <&dsaf0>;
 			port-idx-in-ae = <4>;
@@ -1492,7 +1492,7 @@ eth0: ethernet@4{
 			dma-coherent;
 		};
 
-		eth1: ethernet@5{
+		eth1: ethernet@5 {
 			compatible = "hisilicon,hns-nic-v2";
 			ae-handle = <&dsaf0>;
 			port-idx-in-ae = <5>;
@@ -1501,7 +1501,7 @@ eth1: ethernet@5{
 			dma-coherent;
 		};
 
-		eth2: ethernet@0{
+		eth2: ethernet@0 {
 			compatible = "hisilicon,hns-nic-v2";
 			ae-handle = <&dsaf0>;
 			port-idx-in-ae = <0>;
@@ -1510,7 +1510,7 @@ eth2: ethernet@0{
 			dma-coherent;
 		};
 
-		eth3: ethernet@1{
+		eth3: ethernet@1 {
 			compatible = "hisilicon,hns-nic-v2";
 			ae-handle = <&dsaf0>;
 			port-idx-in-ae = <1>;
-- 
2.34.1

