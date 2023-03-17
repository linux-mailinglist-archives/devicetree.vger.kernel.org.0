Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E3EE6BEC40
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 16:05:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231483AbjCQPFG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 11:05:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231458AbjCQPEx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 11:04:53 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF34F31BE9
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 08:04:35 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id r18so4735386wrx.1
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 08:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679065474;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RZMb1WJobMURULo4bjzgB17D0z5nD/a0F5Do6LjeNkA=;
        b=J8N+cHxfi6qe3iiaD4elXy9W+3DTD9ud1PWz4A3G8p1gkqK96yBnW8VmlDR5ruqlBX
         TfZhFdGnvrPO7uyfu/aowrGumsQhs6UqXMBI/CQZxoDlh//nSXfUnwxBCxm/Vccz+ulK
         USgniLTGYjJr8pnB3gY8896wThXbcXQtDyev1k+OYnsotUY8lqpzbU56cYuegIEGxULS
         9flpWwea1YyjUcelhbqCGqVjPBFTqFLJBbLuhoHlatJ58MLgtBsbGs1uTpyinZ+t7f8e
         gUXlqghvk7hwjbMTIimoJxfkWQJ+a5eVr+AQGRqQNP9VsuB0ep3SV01XXjVnkvkbIK8+
         kHbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679065474;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RZMb1WJobMURULo4bjzgB17D0z5nD/a0F5Do6LjeNkA=;
        b=a1ETw3JKReR6oyO+CwkInX41CG4ZhxYMUStSNtFnSP1Hby+UW+Eu559E40xXEZy4ec
         PlkgZPyAIvDxYicsaR41D11HpmaY4Ge0VVha6qTe7Oe+kFPyH0c8pSWH/jG/YOpwKYgK
         u1ie5fLHQg3IWGLGuppvduKWBzEDGRTyvWnrwc216PXbOqBSP0t/VjOUH7stIeOSVn8m
         040bV/zHgEXFDSZLnHEECg+BBejF7m4RTEgNfys6GcDTR8T6Xc7PPbFlVPJbYFOQavzL
         F0ceVRLL/zAkDbwXYYvkGygf0oQ8n1bnw4b9ygeIUFJ3J109qLePtdeICiE6FgvA645D
         OSxA==
X-Gm-Message-State: AO0yUKUvJa9XA10tfGFkBFJdzSOdJPj3hh4IMbiEu3y3fI0CT04ihrdm
        mWfatjAAKj9AzC6Q1v/A9yy+Gw==
X-Google-Smtp-Source: AK7set+nOeCouacEaXR0fO5HTE4X/u4oOSIi6l+Dk02tu/bBOWSdmZBDz4fF4csf2hJsj11oqIVmVw==
X-Received: by 2002:a5d:6304:0:b0:2ce:a13b:76b4 with SMTP id i4-20020a5d6304000000b002cea13b76b4mr7050258wru.24.1679065474028;
        Fri, 17 Mar 2023 08:04:34 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id q14-20020a05600000ce00b002be505ab59asm2133773wrx.97.2023.03.17.08.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Mar 2023 08:04:33 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Fri, 17 Mar 2023 16:04:26 +0100
Subject: [PATCH v4 10/12] arm64: dts: qcom: sm8450-hdk: add pmic glink node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230130-topic-sm8450-upstream-pmic-glink-v4-10-38bf0f5d07bd@linaro.org>
References: <20230130-topic-sm8450-upstream-pmic-glink-v4-0-38bf0f5d07bd@linaro.org>
In-Reply-To: <20230130-topic-sm8450-upstream-pmic-glink-v4-0-38bf0f5d07bd@linaro.org>
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the pmic glink node linked with the DWC3 USB controller
switched to OTG mode and tagged with usb-role-switch.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 45 ++++++++++++++++++++++++++++++++-
 1 file changed, 44 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index feef3837e4cd..1755ee3aa04c 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -87,6 +87,40 @@ lt9611_3v3: lt9611-3v3-regulator {
 		enable-active-high;
 	};
 
+	pmic-glink {
+		compatible = "qcom,sm8450-pmic-glink", "qcom,pmic-glink";
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		connector@0 {
+			compatible = "usb-c-connector";
+			reg = <0>;
+			power-role = "dual";
+			data-role = "dual";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				port@0 {
+					reg = <0>;
+
+					pmic_glink_hs_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_hs>;
+					};
+				};
+
+				port@1 {
+					reg = <1>;
+
+					pmic_glink_ss_in: endpoint {
+						remote-endpoint = <&usb_1_dwc3_ss>;
+					};
+				};
+			};
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vph_pwr";
@@ -724,7 +758,16 @@ &usb_1 {
 };
 
 &usb_1_dwc3 {
-	dr_mode = "peripheral";
+	dr_mode = "otg";
+	usb-role-switch;
+};
+
+&usb_1_dwc3_hs {
+	remote-endpoint = <&pmic_glink_hs_in>;
+};
+
+&usb_1_dwc3_ss {
+	remote-endpoint = <&pmic_glink_ss_in>;
 };
 
 &usb_1_hsphy {

-- 
2.34.1

