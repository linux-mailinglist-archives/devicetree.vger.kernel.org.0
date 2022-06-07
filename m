Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E5D05404BD
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 19:19:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345701AbiFGRTG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 13:19:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39784 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345664AbiFGRS6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 13:18:58 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4939F1053D5
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 10:18:56 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id o10so23865888edi.1
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 10:18:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=95xSn5ZnLXJf8gOJTiH12x4Y2i7vMsP36HiT3AQ0fYQ=;
        b=WLHHjfo9g9OtC97Ni2SdnwCyNBlO3bH4M6XH4VmoqOFPxMwQh+og626C+6TxlPADAk
         lrcLFoTQGyO/g+iVGeVKRMwuu9T/ngU0SYD1CMGcKEYcEPDPc0dYWzGuYwTGtZzKiQue
         R3gJ068LyWhxJ2iodOnCH1MA95bWJO1RIaBgxsrNKOGdMVWKJlmYbYDfAMWORHr3JZ2G
         VoyYDPYbd+jkte9eGh8XzLl/ThfsZ9+JIlb0fEVKC/AcIDVY5ORqnPhVIK/23EYLeAH8
         kl4DkbgF5iWDslWhTWWAi6MLhFm54UIH+0/n5i7u2QPmGLG/QksLU4WlebWWJX8Vtbfj
         L27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=95xSn5ZnLXJf8gOJTiH12x4Y2i7vMsP36HiT3AQ0fYQ=;
        b=3Bi7OJ9cymbXd87jbwUUEvHpXT7pThgueZ/S1WvtopYEanTvuZS+qt00xdQAmd33jE
         LqkOPs/oC0iZGIoFLTngMBniw8zP7nXV0DJahNqWPluiYBJaMaGYZYNgDVgjcTF1J6oZ
         dsjfKNpxf+fam2Ca/s6nGR0qEuK9fmo7z3Pu7G4OFGHxKnvJOLWKoqH7nmwUpK4kHfMm
         7Lv98sOg1Q4NZ8VRLXwF+scFJH7DALvVHiKOFWnm/Zn8vufyhlu1NXi1zc0Eb0wXTJ/H
         DmCza24EAB9jBXCkgtxRaMn4mi8u2gS95QlCrpaw02VQn/sqSUg/NphmXhQzMiJsxr1f
         TXBw==
X-Gm-Message-State: AOAM532UrpDYt5hH22d1unDuJ/OdBrLGG97kj3XCfWj7aOz9g8CiUNsu
        uJmzYAX5+wxcmAbC6LlrxSBCSw==
X-Google-Smtp-Source: ABdhPJwJTxFyEVm/dLk4XAcF5mviLMRqjgStSv977bRQo2b9oBdyXECKGSidxoUJXmxfzthmnqIl1A==
X-Received: by 2002:aa7:c34d:0:b0:42d:ce57:5df2 with SMTP id j13-20020aa7c34d000000b0042dce575df2mr34430319edr.315.1654622334478;
        Tue, 07 Jun 2022 10:18:54 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id i7-20020a170906444700b0070e238ff66fsm5876540ejp.96.2022.06.07.10.18.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 10:18:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Brian Masney <masneyb@onstation.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 03/14] ARM: dts: qcom: use generic sram as name for imem and ocmem nodes
Date:   Tue,  7 Jun 2022 19:18:37 +0200
Message-Id: <20220607171848.535128-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
References: <20220607171848.535128-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

According to Devicetree specification, the device nodes should be
generic, reflecting the function of the device.  The typical name for
memory regions is "sram".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts | 2 +-
 arch/arm/boot/dts/qcom-msm8974.dtsi                | 4 ++--
 arch/arm/boot/dts/qcom-sdx55.dtsi                  | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts b/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
index ca9f73528196..de01e34409f2 100644
--- a/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
+++ b/arch/arm/boot/dts/qcom-apq8064-asus-nexus7-flo.dts
@@ -341,7 +341,7 @@ mmc@12400000 {
 			};
 		};
 
-		imem@2a03f000 {
+		sram@2a03f000 {
 			compatible = "syscon", "simple-mfd";
 			reg = <0x2a03f000 0x1000>;
 
diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 814ad0b46232..09b181bb5365 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1603,7 +1603,7 @@ opp-27000000 {
 			};
 		};
 
-		ocmem@fdd00000 {
+		sram@fdd00000 {
 			compatible = "qcom,msm8974-ocmem";
 			reg = <0xfdd00000 0x2000>,
 			      <0xfec00000 0x180000>;
@@ -1650,7 +1650,7 @@ smd-edge {
 			};
 		};
 
-		imem: imem@fe805000 {
+		imem: sram@fe805000 {
 			compatible = "syscon", "simple-mfd";
 			reg = <0xfe805000 0x1000>;
 
diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index 1c2b208a5670..710c7f772d42 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -561,7 +561,7 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 		};
 
-		imem@1468f000 {
+		sram@1468f000 {
 			compatible = "simple-mfd";
 			reg = <0x1468f000 0x1000>;
 
-- 
2.34.1

