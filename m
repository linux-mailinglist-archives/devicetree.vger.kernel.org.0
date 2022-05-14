Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 628215271B0
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 16:11:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232963AbiENOLx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 10:11:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233014AbiENOKx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 10:10:53 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DB921572E
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:10:52 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id i10so18879323lfg.13
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PIPhrHSX0vDaE6umAr6Uz83mLWrCmZ9TxDaxz4FKhdY=;
        b=ljDlVvdD4mMOmXSlRL8FCA6+V2POm2uIk4NElroUmvzAVTsgq3Ndudktq0m2dUE2eD
         d4nA/ASkSyi0Ad3lFvICu924OEt1n/4X2XVyhDLtAmwpeS0lO7ReNaRo6qX6+gVWTH37
         /KaZtjGMLGasRE6AcWD3wvMbRobxyYktW+z3SHftbRXeSAz3VXUsKYBxsAFH2nffpOhU
         6cO6XlwQbtRuW0Owr/ard9X3W/5VCZkouOM1s4LKZu6xIU+A3b6OBsu+PrKszSvRoJdW
         t9/uPXqoiHqKVjvFENzumi33eBYsdqxWHfomKk57KRc5zTlxpp6e32hJgJmMhIibSC0Y
         zM9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PIPhrHSX0vDaE6umAr6Uz83mLWrCmZ9TxDaxz4FKhdY=;
        b=vMKkznoKHxXC6Mz+wZ7dMBaOdiv5XQpg03qlWyjmF7hTEDdpWfICHkm69wbiFJ/ylu
         1TPYyKxjnqvic45EDlffKpERZibAbOWzsLgdncRHIomCG/266QVdRf3JxXLcxnGEzFMV
         sRccyT7y3UDv9MA5dVgxvQFcwAYSnf2hhDe26Viy1tOXmnY5zJmVAsIJGfUsNf1TTA1f
         ZmW5Hgk2o1PLUn9RK5b6Y16b7Fhwfz8BuI1oCVXkbxXVV4iw16IEd7dkjGFP0tMShvVk
         uGJycybrZfSIGla4tY0ibmeFd0b8s8aSWctvBR62LU4sO96//6PbUvqrzcPQ8ztuCxYF
         nKnA==
X-Gm-Message-State: AOAM5332c/OFGRFUnJr+JlMKhRnL3VbrVa7D62J2yr0j45rsqyLnygYS
        oH/6QoTM67OdU3Tc4qWawi4plQ==
X-Google-Smtp-Source: ABdhPJyRGew1JK1nZsJhMCqES0pLUXwuFX5Usolj6U1v6Ye3QbczlArwNUmZj7OclsTRWV7drc8CCg==
X-Received: by 2002:a05:6512:33c9:b0:473:a418:2da7 with SMTP id d9-20020a05651233c900b00473a4182da7mr6766972lfg.356.1652537450511;
        Sat, 14 May 2022 07:10:50 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x9-20020a05651c104900b0024f3d1daedasm845912ljm.98.2022.05.14.07.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 May 2022 07:10:50 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v4 10/12] arm64: dts: qcom: sdm660: move SDHC2 card detect pinconf to board files
Date:   Sat, 14 May 2022 17:10:39 +0300
Message-Id: <20220514141041.3158521-11-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
References: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
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

This results in dts duplication, but per mutual agreement card detect
pin configuration belongs to the board files. Move it from the SoC
dtsi to the board DT files.

Suggested-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../boot/dts/qcom/sdm630-sony-xperia-nile.dtsi   | 16 ++++++++++++++++
 arch/arm64/boot/dts/qcom/sdm630.dtsi             | 12 ------------
 .../boot/dts/qcom/sdm660-xiaomi-lavender.dts     | 16 ++++++++++++++++
 3 files changed, 32 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
index 00baacf28c63..ccde9951e4fb 100644
--- a/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630-sony-xperia-nile.dtsi
@@ -549,6 +549,22 @@ vreg_l19a_3p3: l19 {
 	};
 };
 
+&sdc2_state_on {
+	sd-cd {
+		pins = "gpio54";
+		bias-pull-up;
+		drive-strength = <2>;
+	};
+};
+
+&sdc2_state_off {
+	sd-cd {
+		pins = "gpio54";
+		bias-disable;
+		drive-strength = <2>;
+	};
+};
+
 &sdhc_1 {
 	status = "okay";
 	supports-cqe;
diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 44f048934fc6..e6f06a548011 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -983,12 +983,6 @@ data {
 					bias-pull-up;
 					drive-strength = <10>;
 				};
-
-				sd-cd {
-					pins = "gpio54";
-					bias-pull-up;
-					drive-strength = <2>;
-				};
 			};
 
 			sdc2_state_off: sdc2-off {
@@ -1009,12 +1003,6 @@ data {
 					bias-pull-up;
 					drive-strength = <2>;
 				};
-
-				sd-cd {
-					pins = "gpio54";
-					bias-disable;
-					drive-strength = <2>;
-				};
 			};
 		};
 
diff --git a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
index 9280c1f0c334..2b1216502eb0 100644
--- a/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
+++ b/arch/arm64/boot/dts/qcom/sdm660-xiaomi-lavender.dts
@@ -363,6 +363,22 @@ vreg_l19a_3p3: l19 {
 	};
 };
 
+&sdc2_state_on {
+	sd-cd {
+		pins = "gpio54";
+		bias-pull-up;
+		drive-strength = <2>;
+	};
+};
+
+&sdc2_state_off {
+	sd-cd {
+		pins = "gpio54";
+		bias-disable;
+		drive-strength = <2>;
+	};
+};
+
 &sdhc_1 {
 	status = "okay";
 	supports-cqe;
-- 
2.35.1

