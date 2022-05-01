Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A8F9516795
	for <lists+devicetree@lfdr.de>; Sun,  1 May 2022 21:55:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354251AbiEAT61 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 May 2022 15:58:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230346AbiEAT60 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 May 2022 15:58:26 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A6D7B7C9
        for <devicetree@vger.kernel.org>; Sun,  1 May 2022 12:55:00 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id q185so16296518ljb.5
        for <devicetree@vger.kernel.org>; Sun, 01 May 2022 12:55:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WJ72nOQoElx6lKslWugStca0Wx4ONNb0YWORcWTaZ/0=;
        b=ZaL3UKcM/a7Zzt485oiBXykplhRPfwKoC5YBbpaOZP5ac5YonxPkdjpyCeDufn96vK
         1e2JWZDgmjWi7KvnWMXwqcdMu/WO33hKDNPDjHGJypLB5Yaa3Gw2Xn/abHYMnRL+KeUc
         j3zfEkqlydV9MhOn98ue5MIw5Txg1NhixlSObTnHsjJ11kXwxvigzYVGsUpAhcftxKoL
         OfyVclAfCHrXymgxTZlH96nCJigRcuhsoYvlry5+qmgV23wojmwpDGI1jzXBicnNdoSR
         rgVCu3AyXGITnPopJSexDYXi6qfJ7UQAW7fgFK44JWe90mB58nbKFMqRsK/FjamEkdwd
         ioMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WJ72nOQoElx6lKslWugStca0Wx4ONNb0YWORcWTaZ/0=;
        b=ev/kEzKeEDYk+xV89Bnj6rm7hXja6LTIcCNYJaLY7Yq4XhYsW07EJ10aCbPIgFDFs7
         piMVquQc1qIKP+JOD93t/2qkVH3VS+hfxwrB4+3tZimsQAnp+XrBT8e8UDok5ZcTcdX3
         /3f8fQCNFTomjQUi2PXFZVwmH/S3Q5SnIMeE1TUitzm/51FtSYRKFAKhj9IzE4Nj0Y4r
         EooXYgZJGx0s++iTywUSAupwKwTbzHHx7bZ/wU42SjMRFUNPtQp4rYXcfuHpHLBduHPI
         x3yLAczTRzHZeb/E+lZYFaCubDSt4sD3s4niIB994VnhlvrQx6TJwWrFkE1iuu82bmus
         chiA==
X-Gm-Message-State: AOAM532WtSlHHgszwhSD0LLka1VWq3a1YhnBiQVaEnZHFQ5/Ehvd2sJu
        tOhqYmc5bSuUGH7j9+rDtqKnNA==
X-Google-Smtp-Source: ABdhPJw6tZMRv9TaRQLsHQTJswDhcMikPekoRR7FhsmPZc68K3zGa8EwENwlZYbZ+WfxZFrC8n8f2Q==
X-Received: by 2002:a2e:9a8e:0:b0:24f:3f9c:9ca3 with SMTP id p14-20020a2e9a8e000000b0024f3f9c9ca3mr6203284lji.214.1651434898964;
        Sun, 01 May 2022 12:54:58 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id q6-20020a19a406000000b0047255d21106sm515551lfc.53.2022.05.01.12.54.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 May 2022 12:54:58 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>
Subject: [PATCH] arm64: dts: qcom: sm8450: add uart20 node
Date:   Sun,  1 May 2022 22:54:58 +0300
Message-Id: <20220501195458.4134911-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree node for uart20, which is typically used for Bluetooth attachment.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index 4fcb6e2b096b..8b9d9c2cd02c 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -996,6 +996,19 @@ spi20: spi@894000 {
 				status = "disabled";
 			};
 
+			uart20: serial@894000 {
+				compatible = "qcom,geni-uart";
+				reg = <0 0x00894000 0 0x4000>;
+				clock-names = "se";
+				clocks = <&gcc GCC_QUPV3_WRAP2_S5_CLK>;
+				pinctrl-names = "default";
+				pinctrl-0 = <&qup_uart20_default>;
+				interrupts = <GIC_SPI 587 IRQ_TYPE_LEVEL_HIGH>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "disabled";
+			};
+
 			i2c21: i2c@898000 {
 				compatible = "qcom,geni-i2c";
 				reg = <0x0 0x00898000 0x0 0x4000>;
@@ -2757,6 +2770,15 @@ qup_uart7_tx: qup-uart7-tx {
 				drive-strength = <2>;
 				bias-disable;
 			};
+
+			qup_uart20_default: qup-uart20-default {
+				mux {
+					pins = "gpio76", "gpio77",
+						"gpio78", "gpio79";
+					function = "qup20";
+				};
+			};
+
 		};
 
 		apps_smmu: iommu@15000000 {
-- 
2.35.1

