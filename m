Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0EDF5744DD3
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 15:43:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229992AbjGBNnc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 09:43:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229966AbjGBNnb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 09:43:31 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A7A5E68
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 06:43:28 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 38308e7fff4ca-2b6a1245542so58154371fa.1
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 06:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688305407; x=1690897407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ln6L/vHcWTV14oQdypcRlQSAyNKGvMJzR40sasCVs78=;
        b=IavMO9JO0JHSyzaFS8weEhseQdfmKG2P2ykAtnLToAnVHclithjD4uOBIUMopUiub4
         69+cz05HHvmhTFLhi/b2QiAf56Wt/27ZJyjeu6AJZciYwnMe9pWKzGQ/Gx1kMhaGE00r
         4UltAfn+JxVtmdjdo3ppEHPLPI0Dmu7vm4qcDFwzaEU8wnAlxc1Qlkr8r7JYD8s+eqqs
         hiQRCjhcxQC2cYjXmlm8Je8TrkI0klB8DZNr4Tkx6KthTWaqfI8yE5sA8kcX/2VmTIaW
         ctH+73AAfTHefsLLTAWuNic8X7GFgAoCvfneqm7lV3mczeVM644odFFg/hAE8g0jBRKb
         kUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688305407; x=1690897407;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ln6L/vHcWTV14oQdypcRlQSAyNKGvMJzR40sasCVs78=;
        b=Ke4N7EQnEh37wtToWvZ5eDVpKpEk11+8XmqiGb5U3TxbZFLn4tELK7KDr+uoTPbUT3
         MOGzNFPTQFd5p2tJ42n6jJgj9YlBkYfPtje2gR91HqnZmbWcCfNewxAZ7IwO+pH7FrTm
         skWBtztebK1T6ha4OXsuOrK5tSnwqK07cwNNkpIEcu3IbIOKtzM9e2e1vDJg8YP2FZyu
         aka/vBwhmG6v6q2hgrgIOisJmc0YGZlino4aCvmI8lIRsHV9K2InR9Tms0N4v7WAxLjd
         gb/JiTFbBjXQWfmX1lWGU1wS/zKr6L19hBPC7cKO1DFuIR9QQ+mQ+YYUsSkdB5PG3PjS
         4FwQ==
X-Gm-Message-State: ABy/qLbWjh49O3+XzAs4UCNxoY7H2KLcnwWt38yUN3vn0wojG7wUigHg
        +ghYqzQQeLCn73js3rUkSC0cxA==
X-Google-Smtp-Source: APBJJlG2tvgx/dL36Cib1ByWTuYkw+bbkktmEjvh5eg9EeOOzpkqUlqwPq4dgEmsgiLmt912dD0vMw==
X-Received: by 2002:a2e:94d7:0:b0:2b6:dd78:2a8e with SMTP id r23-20020a2e94d7000000b002b6dd782a8emr2046031ljh.50.1688305407002;
        Sun, 02 Jul 2023 06:43:27 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d9-20020a2e96c9000000b002b6988ca476sm4310650ljj.101.2023.07.02.06.43.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 06:43:26 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v2 07/27] ARM: dts: qcom: apq8064: fix PMIC node labels
Date:   Sun,  2 Jul 2023 16:43:00 +0300
Message-Id: <20230702134320.98831-8-dmitry.baryshkov@linaro.org>
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

Change PM8921 node labels to start with pm8921_ prefix, following other
Qualcomm PMIC device nodes.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
index 4f4393e11580..5ffb960d09b4 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8064.dtsi
@@ -332,13 +332,13 @@ scm {
 	 */
 	iio-hwmon {
 		compatible = "iio-hwmon";
-		io-channels = <&xoadc 0x00 0x01>, /* Battery */
-			    <&xoadc 0x00 0x02>, /* DC in (charger) */
-			    <&xoadc 0x00 0x04>, /* VPH the main system voltage */
-			    <&xoadc 0x00 0x0b>, /* Die temperature */
-			    <&xoadc 0x00 0x0c>, /* Reference voltage 1.25V */
-			    <&xoadc 0x00 0x0d>, /* Reference voltage 0.625V */
-			    <&xoadc 0x00 0x0e>; /* Charger temperature */
+		io-channels = <&pm8921_xoadc 0x00 0x01>, /* Battery */
+			      <&pm8921_xoadc 0x00 0x02>, /* DC in (charger) */
+			      <&pm8921_xoadc 0x00 0x04>, /* VPH the main system voltage */
+			      <&pm8921_xoadc 0x00 0x0b>, /* Die temperature */
+			      <&pm8921_xoadc 0x00 0x0c>, /* Reference voltage 1.25V */
+			      <&pm8921_xoadc 0x00 0x0d>, /* Reference voltage 0.625V */
+			      <&pm8921_xoadc 0x00 0x0e>; /* Charger temperature */
 	};
 
 	soc: soc {
@@ -714,7 +714,7 @@ ssbi@500000 {
 			reg = <0x00500000 0x1000>;
 			qcom,controller-type = "pmic-arbiter";
 
-			pmicintc: pmic {
+			pm8921: pmic {
 				compatible = "qcom,pm8921";
 				interrupt-parent = <&tlmm_pinmux>;
 				interrupts = <74 8>;
@@ -749,7 +749,7 @@ pm8921_mpps: mpps@50 {
 
 				rtc@11d {
 					compatible = "qcom,pm8921-rtc";
-					interrupt-parent = <&pmicintc>;
+					interrupt-parent = <&pm8921>;
 					interrupts = <39 1>;
 					reg = <0x11d>;
 					allow-set-time;
@@ -758,16 +758,16 @@ rtc@11d {
 				pwrkey@1c {
 					compatible = "qcom,pm8921-pwrkey";
 					reg = <0x1c>;
-					interrupt-parent = <&pmicintc>;
+					interrupt-parent = <&pm8921>;
 					interrupts = <50 1>, <51 1>;
 					debounce = <15625>;
 					pull-up;
 				};
 
-				xoadc: xoadc@197 {
+				pm8921_xoadc: xoadc@197 {
 					compatible = "qcom,pm8921-adc";
 					reg = <0x197>;
-					interrupts-extended = <&pmicintc 78 IRQ_TYPE_EDGE_RISING>;
+					interrupts-extended = <&pm8921 78 IRQ_TYPE_EDGE_RISING>;
 					#address-cells = <2>;
 					#size-cells = <0>;
 					#io-channel-cells = <2>;
-- 
2.39.2

