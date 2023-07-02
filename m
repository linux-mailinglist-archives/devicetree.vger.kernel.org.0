Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2202E744DEA
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 15:43:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229954AbjGBNnm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 09:43:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229569AbjGBNnm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 09:43:42 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABBFBE7C
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 06:43:37 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b6a1245542so58155481fa.1
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 06:43:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688305416; x=1690897416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=623T1YaDMVcPpLyGUimPTZEZnF+8YGwn8ANHFMuY4mY=;
        b=g3ClD081YSRI5g1DTaouymuXIui1d48PJv/wS/1P5UGpGmtdzyEyl/v8Ztuuk3PVzD
         fHNGAQLgY5u/k8r3dGA6XENsVx6whWZdkAOUcijva+PVSmS4CyIiGuUcPqB1g70u7+Je
         wuQQTzNhz4eyaNPpD7MoenhWU1RDmOgw4QBa6BrOShceQ2yENiuzXBQDuNwf0LzhyErR
         vwM6GRvZq1Y3hBKMKSMu1koyB426GVH8J9Z0ZljrlKfxSFAfn2fuWKZKcAPAHS63Bbts
         JHYK4gBrxVWHCYAP/m8ibLcmca4uZzmTs0ibvINDSwLB0dld/qSb/b2unTROb+HYYak7
         f6GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688305416; x=1690897416;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=623T1YaDMVcPpLyGUimPTZEZnF+8YGwn8ANHFMuY4mY=;
        b=bqjoyIeG8rrv60SOnR19L59PTkPaaW0Qt6S264XHQcxzVS6/RODV6XjzS8l06NOxC7
         gwUUaQXY31mqOYJVtoPHEPeVz+2/wX8IGDGnxJ8Jg1ccMWlHi61E9y5309yPUEK4tZ9o
         GfKNoeYm3TOH6UdUo/w2fyfxXPMPgJ9ySlc2o1Ktixhy79aPGCYqxPlJfHkY0VwW1JLI
         9saraEwQokPhmKPZ+EqLeq+swpsbYJOeBZqvCDIK7W9dQO+raE1OrqdZE+/CELvDxxYT
         +zhjGUJq1gIknM8XAyvfHF/lgNENLv4+yH8id+4arIeSDrrjcmqSV9XJ6zf2/qCzLhM8
         ONDQ==
X-Gm-Message-State: ABy/qLZQBcsKSEPHHK0mACg2FJioTNhkkwE/D0BipgZVkiaOFa61Pua3
        lICzE0OTA++hN99n4+1m0TMsgg==
X-Google-Smtp-Source: APBJJlETQHkLvUAgh+XTwbMHkg3SwDyT0JauQ160nafzCe1fOYJOzZdyF13EU+eFV+ZuQgYMeS/sKA==
X-Received: by 2002:a2e:8556:0:b0:2b5:80e0:f190 with SMTP id u22-20020a2e8556000000b002b580e0f190mr5079573ljj.37.1688305416004;
        Sun, 02 Jul 2023 06:43:36 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d9-20020a2e96c9000000b002b6988ca476sm4310650ljj.101.2023.07.02.06.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 06:43:35 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 19/27] ARM: dts: qcom: pm8058: use defined IRQ flags
Date:   Sun,  2 Jul 2023 16:43:12 +0300
Message-Id: <20230702134320.98831-20-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
References: <20230702134320.98831-1-dmitry.baryshkov@linaro.org>
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

Use symbolic names for IRQ flags instead of using the numeric values.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/pm8058.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/pm8058.dtsi b/arch/arm/boot/dts/qcom/pm8058.dtsi
index 913a511719fa..3683d7b60918 100644
--- a/arch/arm/boot/dts/qcom/pm8058.dtsi
+++ b/arch/arm/boot/dts/qcom/pm8058.dtsi
@@ -12,7 +12,8 @@ pwrkey@1c {
 			compatible = "qcom,pm8058-pwrkey";
 			reg = <0x1c>;
 			interrupt-parent = <&pm8058>;
-			interrupts = <50 1>, <51 1>;
+			interrupts = <50 IRQ_TYPE_EDGE_RISING>,
+				     <51 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15625>;
 			pull-up;
 		};
@@ -61,7 +62,8 @@ pm8058_keypad: keypad@148 {
 			compatible = "qcom,pm8058-keypad";
 			reg = <0x148>;
 			interrupt-parent = <&pm8058>;
-			interrupts = <74 1>, <75 1>;
+			interrupts = <74 IRQ_TYPE_EDGE_RISING>,
+				     <75 IRQ_TYPE_EDGE_RISING>;
 			debounce = <15>;
 			scan-delay = <32>;
 			row-hold = <91500>;
@@ -135,7 +137,7 @@ rtc@1e8 {
 			compatible = "qcom,pm8058-rtc";
 			reg = <0x1e8>;
 			interrupt-parent = <&pm8058>;
-			interrupts = <39 1>;
+			interrupts = <39 IRQ_TYPE_EDGE_RISING>;
 			allow-set-time;
 		};
 	};
-- 
2.39.2

