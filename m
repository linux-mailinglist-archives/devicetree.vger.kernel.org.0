Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 870416B9E96
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 19:32:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231247AbjCNScB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 14:32:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230522AbjCNSbc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 14:31:32 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B55C65C45
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:31:08 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id bi20so1123967wmb.2
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 11:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112; t=1678818667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G4AMa6Oqf4gT2LvWhoj3//Gdma5toQWQSvKa1CfmIFA=;
        b=MfpriJTqV7XxmV1DbN+XH1LuZMZxc5ZxvVRiNNADhMQCGEp+jK96jkBJFoiQBmFGwq
         V7+4ovPI2mAs1NkhnGwuLpI9yppJ5AIq6ZQbKiCNe5ok7nnE+xYFNjeXMvb6xnQd4XW/
         EMmfKgKPus/wkcrySLpQgVaDeoNaOMWStIC72e3g298cugZgT8FHqS3CF76ZF4jufZ5z
         WqVwYsO5V6OiayRQE2hVh03LmPDQCOKsEqTvHjO/SGzWcubnDoNELWWhXtygMehvR1Pe
         7LUHwSaKFeP4Vk0cdKadCR9ufs+LEAqCYSATRckai0YwCJlFD6K/xQEEnoAGsMHbLB3p
         7GLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678818667;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G4AMa6Oqf4gT2LvWhoj3//Gdma5toQWQSvKa1CfmIFA=;
        b=Ra5jcRwaq6GEdXXG66W3BzzKBq4GoDjIfTFrvz+fRb/oENh1QwsW8MSdDWovoYYJd7
         +MMemgBuCdX08LiaHFgRsGoesrHENdZ5eGUbhCVNAdWr8vdDyKutwVPSgdH9UblY2lbc
         o1LYGK0KomGcWl6i5fB3eq5wGQk2lhlJCVxXVGSY9dcb0N9l81YT9AdRvk4pbJxwnsXW
         ap8B0VMDkqff00MENiCcFibVRv2GNsHqlE4NMoG7LlhxR0UxBTcGrA2gezznnBkTEAkL
         XS4l7LlSOOE0Ri+95RvzavX2ZbHhgfsyKcG5lSiAm5R6T13D14uycsq84FGEv7rwZ1wF
         QCLw==
X-Gm-Message-State: AO0yUKX6utZ89SOi9k6A1gKk+E3jX9qWiaKuSNkiMIRiAVQHym4u+BBm
        5e7Og/XH+GVWSNOQ26I/Pmbrag==
X-Google-Smtp-Source: AK7set/sLhpCzzE4tmqIVfeHOmnwAcyar8EBJ+MIbwS2ol79sXUSmUiapA9ffjldZL4BDjOBr9p2CA==
X-Received: by 2002:a05:600c:a46:b0:3ed:276d:81a4 with SMTP id c6-20020a05600c0a4600b003ed276d81a4mr6734519wmq.32.1678818666912;
        Tue, 14 Mar 2023 11:31:06 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:fd14:bd52:b53b:d94c])
        by smtp.gmail.com with ESMTPSA id k28-20020a05600c1c9c00b003e209b45f6bsm4083938wms.29.2023.03.14.11.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 11:31:06 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 14/14] arm64: dts: qcom: sa8775p: add PMIC GPIO controller nodes
Date:   Tue, 14 Mar 2023 19:30:43 +0100
Message-Id: <20230314183043.619997-15-brgl@bgdev.pl>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230314183043.619997-1-brgl@bgdev.pl>
References: <20230314183043.619997-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add GPIO controller nodes to PMICs that have the GPIO hooked up on
sa8775p-ride.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
index 437cfa8aee2f..9386a113f1f8 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p-pmics.dtsi
@@ -77,6 +77,16 @@ pmk8775_0_pon_resin: resin {
 				status = "disabled";
 			};
 		};
+
+		pm8775_0_gpios: gpio@8800 {
+			compatible = "qcom,pmm8654au-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pm8775_0_gpios 0 0 12>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	pmk8775_1: pmic@2 {
@@ -98,6 +108,16 @@ pmk8775_2: pmic@4 {
 		reg = <0x4 SPMI_USID>;
 		#address-cells = <1>;
 		#size-cells = <0>;
+
+		pm8775_2_gpios: gpio@8800 {
+			compatible = "qcom,pmm8654au-gpio", "qcom,spmi-gpio";
+			reg = <0x8800>;
+			gpio-controller;
+			gpio-ranges = <&pm8775_2_gpios 0 0 12>;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
 	};
 
 	pmk8775_3: pmic@6 {
-- 
2.37.2

