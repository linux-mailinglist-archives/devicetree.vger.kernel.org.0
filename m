Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E43066C91F1
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 01:57:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231196AbjCZA5o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Mar 2023 20:57:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbjCZA5n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Mar 2023 20:57:43 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E5F1BB87
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 17:57:41 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id y20so6960508lfj.2
        for <devicetree@vger.kernel.org>; Sat, 25 Mar 2023 17:57:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679792260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mKE6AqsiXcNq8j3VeprRnII8ABKzIYAh1YOtnfRKOPs=;
        b=jV6e5Jc5Wd9tb4VrMzKLDOjP0X62Nm3Y4ywNFdOcDVcUE7qLwQabXZ66U/egil2dgc
         +mk4XOJ6S4erSPsuzxazxmoU8YmV40LIosyfYxiDh0MYN1lXXaSaVElTT0yBIdVQeh/p
         desEt3pk4fTO2IChmKzMJAtQaJEQwmHj/Cnwi57nWQp1XpuazYpMk9YCuKPSZ5dlyQ4N
         2KwBM9Tc812mgDwzHnNDbmJERHxkzHMNxHSzStF6MKd4Aq2uNbfg4Ov1eTNA+3aLR7na
         xGcoNBqvL3B40/kQXMgimvR7nehQRvvJvRv/pux/imeWr/mRkcsHZgLLkPg8DET239I5
         CH/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679792260;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mKE6AqsiXcNq8j3VeprRnII8ABKzIYAh1YOtnfRKOPs=;
        b=m5gVLIpb08pCzhjmCOlXwmsPFECoCsqOXJQK7S0jk2g0P81fidCtqlqxgE6efEdfQX
         aUKLf0tSYoI3rDL9kER7JXtYGpzewPynDyaKhvtvCrGIjN6KFqHo4faff1NhWEkxpagC
         y6lB84E4O0n6MlOOGVTEKJ8QLfhoBh8DHvxAyxeB9yMp+KORwq1zzUFSWlz8MQoJosBb
         Pb9uZg2GlDKqyOE9hvgx95aY6FNuLKx1AbtjUjvTCEZieawBoykjDroyYVnGgMcKOY1H
         opot4WeSrLyon4B50H9r7Gosa5iWyaYr8iex+JjTwFGqEeHvLQ6cNztCvQKAEMpxirTo
         WQIw==
X-Gm-Message-State: AO0yUKX3Vm6VDdgmpQAa4XonVigYoYnEO3ybNIbwCSSV694CLgR74wDW
        9m4ZsRHMdRR9K8nlj7YOmQjM6g==
X-Google-Smtp-Source: AK7set9Od5srLapBVGJ2pqZhcxf2uBK39G9L1sJ85gIAJdCDqCF8BvBqddgSXzG1gKvk3Djf5QBlsw==
X-Received: by 2002:a05:6512:1316:b0:4ea:f63b:3b36 with SMTP id x22-20020a056512131600b004eaf63b3b36mr4209094lfu.10.1679792259917;
        Sat, 25 Mar 2023 17:57:39 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id n13-20020ac242cd000000b004e7fa99f3f4sm3996858lfl.265.2023.03.25.17.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Mar 2023 17:57:39 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Johan Hovold <johan+linaro@kernel.org>,
        devicetree@vger.kernel.org
Subject: [PATCH v2 8/9] arm64: dts: qcom: sm8150: switch USB+DP QMP PHY to new style of bindings
Date:   Sun, 26 Mar 2023 03:57:32 +0300
Message-Id: <20230326005733.2166354-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Change the USB QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 48 ++++++++--------------------
 1 file changed, 14 insertions(+), 34 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index a618218f7b68..4df9fef5c7b0 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -6,6 +6,7 @@
 
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -3391,47 +3392,26 @@ usb_2_hsphy: phy@88e3000 {
 			resets = <&gcc GCC_QUSB2PHY_SEC_BCR>;
 		};
 
-		usb_1_qmpphy: phy@88e9000 {
+		usb_1_qmpphy: phy@88e8000 {
 			compatible = "qcom,sm8150-qmp-usb3-dp-phy";
-			reg = <0 0x088e9000 0 0x18c>,
-			      <0 0x088e8000 0 0x38>,
-			      <0 0x088ea000 0 0x40>;
-			status = "disabled";
-			#address-cells = <2>;
-			#size-cells = <2>;
-			ranges;
+			reg = <0 0x088e8000 0 0x3000>;
+
 			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
-				 <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_USB3_PRIM_CLKREF_CLK>,
-				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>;
-			clock-names = "aux", "ref_clk_src", "ref", "com_aux";
+				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
+				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
+			clock-names = "aux",
+				      "ref",
+				      "com_aux",
+				      "usb3_pipe";
 			resets = <&gcc GCC_USB3_DP_PHY_PRIM_BCR>,
 				 <&gcc GCC_USB3_PHY_PRIM_BCR>;
 			reset-names = "phy", "common";
 
-			usb_1_ssphy: phy@88e9200 {
-				reg = <0 0x088e9200 0 0x200>,
-				      <0 0x088e9400 0 0x200>,
-				      <0 0x088e9c00 0 0x218>,
-				      <0 0x088e9600 0 0x200>,
-				      <0 0x088e9800 0 0x200>,
-				      <0 0x088e9a00 0 0x100>;
-				#clock-cells = <0>;
-				#phy-cells = <0>;
-				clocks = <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
-				clock-names = "pipe0";
-				clock-output-names = "usb3_phy_pipe_clk_src";
-			};
+			#clock-cells = <1>;
+			#phy-cells = <1>;
 
-			usb_1_dpphy: phy@88ea200 {
-				reg = <0 0x088ea200 0 0x200>,
-				      <0 0x088ea400 0 0x200>,
-				      <0 0x088eaa00 0 0x200>,
-				      <0 0x088ea600 0 0x200>,
-				      <0 0x088ea800 0 0x200>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			status = "disabled";
 		};
 
 		usb_2_qmpphy: phy@88eb000 {
@@ -3568,7 +3548,7 @@ usb_1_dwc3: usb@a600000 {
 				iommus = <&apps_smmu 0x140 0>;
 				snps,dis_u2_susphy_quirk;
 				snps,dis_enblslpm_quirk;
-				phys = <&usb_1_hsphy>, <&usb_1_ssphy>;
+				phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
 				phy-names = "usb2-phy", "usb3-phy";
 			};
 		};
-- 
2.30.2

