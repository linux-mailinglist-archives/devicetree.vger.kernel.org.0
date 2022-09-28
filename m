Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B2CD5ED89A
	for <lists+devicetree@lfdr.de>; Wed, 28 Sep 2022 11:15:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233514AbiI1JPU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Sep 2022 05:15:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233512AbiI1JPA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Sep 2022 05:15:00 -0400
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAA43193EA
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 02:14:58 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id o5so8132416wms.1
        for <devicetree@vger.kernel.org>; Wed, 28 Sep 2022 02:14:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date;
        bh=vT0AoEtpW8NwXgLYXwbI7LwE6ij1yswJpZPnBeXs+68=;
        b=hHnXjGFiFHAuQmmqUvDSFw2TicUaaX7JTg1qKQ7cgE3CuKhvn0QIm6/sWcgLmgr6R5
         x/WQsX8fqz0KLvTPzBGgQK0KMrrAfLf1Zwt8P2mukAl5EOIxh1OmGzRj7iiTKtEbtc7l
         DAJ3Hy+m3y3atHghyyxT9FoCEv2x5YQXYoPYJsGketCP+jN8eueWsfgwRlwXVF5SB/5r
         OcRhwHjp7pyAjUNSd2/83mX5xbJWpmj/3MODy+3XGxe3zEnReJZ4MgVEknSm8Q8it8Eb
         YOUX/Rn+lSQzwcYVh/2MStkQPg+cVhbN0NMTOqrLmn/9tdczBSz88yXwSarfOdVEUlY9
         afxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=vT0AoEtpW8NwXgLYXwbI7LwE6ij1yswJpZPnBeXs+68=;
        b=E2rHlvlAXtJ0jLWrMcJndorlrzdKdld9aFHwPx5oxGqH8+usmCAfjA31F5+yCn5LzK
         jOC8Ko4MK4dQwb4h9MMLByc0maXG0FrZos4MZIvtZEmlsWvB6sXMT5wkIqK2FvfEpuad
         RbDQ5hBWNcvbtoZej0X5liDMbndggqlXewpa7xu7/v0WfrHpp2qudxqIW7Prh3E/+V0d
         QC/09vMI745a5UBoYdbpA2VkF6N5IbsrM4bYIRmqurSw2La0bulZaw6A52QfMNdEdJHm
         8g9CSZ5bc6b9V3NBnhSzHKOD5d7NCu02EBp3raR/aU4MR3/DnN0hppXna151G+S/zBM5
         yScg==
X-Gm-Message-State: ACrzQf3B5DnDC45UVkY+ZIpkWv+wZsJ9vzzzKbFxj1/eh4l+8XNOY/su
        f51BRaBV1I/amRcvuwV6fWB+/Q==
X-Google-Smtp-Source: AMsMyM67hUfloXWT1/vf4Zq1XOEbMEBgNqGMPOpyjtEsbExMjCniz2GPGQw0myu2AJuhB+mrOIGiyQ==
X-Received: by 2002:a7b:c404:0:b0:3b4:faca:cf50 with SMTP id k4-20020a7bc404000000b003b4facacf50mr5906980wmi.67.1664356497269;
        Wed, 28 Sep 2022 02:14:57 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id p2-20020a5d6382000000b0022a53fe201fsm2420016wru.68.2022.09.28.02.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Sep 2022 02:14:56 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Date:   Wed, 28 Sep 2022 09:14:55 +0000
Subject: [PATCH v1 5/7] arm: dts: qcom: mdm9615: remove invalid pmic subnodes
 compatibles
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20220928-mdm9615-dt-schema-fixes-v1-5-b6e63a7df1e8@linaro.org>
References: <20220928-mdm9615-dt-schema-fixes-v1-0-b6e63a7df1e8@linaro.org>
In-Reply-To: <20220928-mdm9615-dt-schema-fixes-v1-0-b6e63a7df1e8@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Cc:     devicetree@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
X-Mailer: b4 0.10.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PMIC is an PM8018, but was compatible with the PM8921. Both compatibles
was left but it makes no sense anymore the leave both.

The pwrkey compatible is left to PM8921, unlike the others because
the interface is stricly compatible with the PM9821 pwrkey.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

diff --git a/arch/arm/boot/dts/qcom-mdm9615.dtsi b/arch/arm/boot/dts/qcom-mdm9615.dtsi
index 792aa98cc136..935f7b222200 100644
--- a/arch/arm/boot/dts/qcom-mdm9615.dtsi
+++ b/arch/arm/boot/dts/qcom-mdm9615.dtsi
@@ -247,7 +247,7 @@ qcom,ssbi@500000 {
 			qcom,controller-type = "pmic-arbiter";
 
 			pmicintc: pmic@0 {
-				compatible = "qcom,pm8018", "qcom,pm8921";
+				compatible = "qcom,pm8018";
 				interrupts = <GIC_PPI 226 IRQ_TYPE_LEVEL_HIGH>;
 				#interrupt-cells = <2>;
 				interrupt-controller;
@@ -255,7 +255,7 @@ pmicintc: pmic@0 {
 				#size-cells = <0>;
 
 				pwrkey@1c {
-					compatible = "qcom,pm8018-pwrkey", "qcom,pm8921-pwrkey";
+					compatible = "qcom,pm8921-pwrkey";
 					reg = <0x1c>;
 					interrupt-parent = <&pmicintc>;
 					interrupts = <50 IRQ_TYPE_EDGE_RISING>,
@@ -275,7 +275,7 @@ pmicmpp: mpps@50 {
 				};
 
 				rtc@11d {
-					compatible = "qcom,pm8018-rtc", "qcom,pm8921-rtc";
+					compatible = "qcom,pm8018-rtc";
 					interrupt-parent = <&pmicintc>;
 					interrupts = <39 IRQ_TYPE_EDGE_RISING>;
 					reg = <0x11d>;

-- 
b4 0.10.0
