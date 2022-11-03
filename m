Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2FA90617A66
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 10:59:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231351AbiKCJ7K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 05:59:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231363AbiKCJ66 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 05:58:58 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A602510B6E
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 02:58:51 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id y4so1442708plb.2
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 02:58:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JthYgOPJ8wLY+kJmpPo6YRkYw++3oIBC9/8kQpa43wk=;
        b=FChLrILXUt2JHcjmGWmNaim/jgluYBgB4g7I3ODBmDXnIa64hh+wj8SeqLzI62ZaMV
         UnG4Cpyd9qERPGX5Ec1/LU8tSI2dZ4HEh7eNJYdHRGXelfA5STnHoiQZZpGnDo9wuije
         7dHa5gNgx/JykzXoYzvP+2AvI2H1d2YvsXrNz7q4E9Tn90kDv8Ze8SAMHIn9tty/u87X
         LFYIvTmlBQx5CHRgooNzzjcHK01L56Cpkyc8MEWjWQc9BO1lxWcuP7UMeKZlfcSUskft
         RcxVMMZhzp2amfK3g5rksjdbVrQQApVzQvZDa5l8Gut6LPk9OPEg6RY4iesjbdehDfFc
         s35w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JthYgOPJ8wLY+kJmpPo6YRkYw++3oIBC9/8kQpa43wk=;
        b=I+rL+JaNBGurM34njQQxC4Ui01zNt97ov2bgam3iVXyUfeyTCbh4kf7b8kjpj524WI
         udqIUWItKvCvDoCS6pLcOO4Rad9SdNPl3FzosJ45nuIwUpgG6ArlAX/UliO+NYepxnL4
         Y7p+gkJ8O8ods9s+HmnwoLF8eGLW7Cgt3YKhKQB3TIzmyyJgFsOp1l4UVKGyrXMtxrsy
         4Zr+L9iSGkrdhQL2XLHUab/fMgJRkVGBwj55MUuaOxU3/DonMIj77tzFt99ubl6X4cf2
         U94wHveOKNXh0ow0zOI5erJrfdze9e12EMLlgVyD6x048iNdac6S+B2lleZFc7GVb1cI
         YFJQ==
X-Gm-Message-State: ACrzQf0hhSsKg+B9yJ6NUDAp0ljBmlf3hVAwq/bgR7Ezg8Yvev5c9tfT
        LVPhiyISh40T+6h9bq1APec9
X-Google-Smtp-Source: AMsMyM7TNdJOMVLEdLol9zNx8c9WKHh9jy3vdt6Yb5ctWHlB1yLL75m7lT6QGQXyCdmkkS8m1wd5Dg==
X-Received: by 2002:a17:90a:de8e:b0:214:1066:9229 with SMTP id n14-20020a17090ade8e00b0021410669229mr13069311pjv.223.1667469531332;
        Thu, 03 Nov 2022 02:58:51 -0700 (PDT)
Received: from localhost.localdomain ([117.193.208.64])
        by smtp.gmail.com with ESMTPSA id n6-20020a170902e54600b00186c54188b4sm161670plf.240.2022.11.03.02.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 02:58:50 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, johan+linaro@kernel.org,
        quic_jprakash@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        steev@kali.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 05/12] arm64: dts: qcom: sc8280xp-pmics: Add PMK8280 ADC7 block
Date:   Thu,  3 Nov 2022 15:28:03 +0530
Message-Id: <20221103095810.64606-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221103095810.64606-1-manivannan.sadhasivam@linaro.org>
References: <20221103095810.64606-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for ADC7 block available in PMK8280 for reading the
temperature via the AMUX pins.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
index 4a3464f5e6e9..b1cdde2f7861 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-pmics.dtsi
@@ -75,6 +75,16 @@ pmk8280_pon_resin: resin {
 				status = "disabled";
 			};
 		};
+
+		pmk8280_vadc: adc@3100 {
+			compatible = "qcom,spmi-adc7";
+			reg = <0x3100>;
+			interrupts = <0x0 0x31 0x0 IRQ_TYPE_EDGE_RISING>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			#io-channel-cells = <1>;
+			status = "disabled";
+		};
 	};
 
 	pmc8280_1: pmic@1 {
-- 
2.25.1

