Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37E2A75CBF0
	for <lists+devicetree@lfdr.de>; Fri, 21 Jul 2023 17:36:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232091AbjGUPgc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jul 2023 11:36:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232068AbjGUPg2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jul 2023 11:36:28 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A5733A8F
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 08:36:17 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4fba86f069bso3265408e87.3
        for <devicetree@vger.kernel.org>; Fri, 21 Jul 2023 08:36:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689953774; x=1690558574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b23eYzPRJKfj2P2RQ046hOn1VBXib0tuiz6T1ABTWjw=;
        b=m/ZLkxH48+U9U5MMEJdxzIG2BI5fvCGMs4be8OrtxsS3A6KfNx7MfsTxM8vTccfZg0
         BK9EfqH7EnU9UO0o62YN1dfCd9SOC4lVA1zlE/BY8g2JfMPtmfyr9OJz/BFtTyMp9JGF
         yTUYSL5EU95d0LAImaT9nt/IgMGmxcyWyE3cQkC/yu6FiHn1bN/lyw7q6XIsDqjW9nMb
         obOqRoFyUlWRB6GOdcZj65qMkjAQkW6EE0wNxfKjjpdnt6/Xnlz8KNeUHwDDVirSd2iY
         qS1wiXNMKP+mRklwjfEK/Z0vm5wTIqG+iSdWb+Qfn8nqhW723YaO8it2UB/4g/UiIe8K
         GNnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689953774; x=1690558574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b23eYzPRJKfj2P2RQ046hOn1VBXib0tuiz6T1ABTWjw=;
        b=P4kSfJP1l/svacbADXpCryeKGScmid7T4EKo2dhNx2m30jfuki8IxM5eobDQCC+96F
         0TW/NdlqOn/WPClZX6IHTIP+4ZQkxXqKU5LAHIcaY42vKZ3+6r6dykUpn0ZVOOxfLgY5
         c3JnvP3qftHiX+MDRW7qPPxvbeuXCsVVvVn78FleFhs86+UAiuTI9bHx7X6uxW/EiBkh
         Dp2Xrn5bGsrbBlNv6CzpQylA0TdR/oO87qU5DILQQn39pUq0iqnOzoRm9It1Zzp6IAWl
         lFyNwbZZxnktkOTAUdDXjcx5KBbV4O4rQnmqpBfQYUPax2oozm0Ty6eHMroaG9rSIfrv
         ptWg==
X-Gm-Message-State: ABy/qLZncxWdQ2Z0/dti+Dsfyxr1wcgihW3jye0nWAeSn6q4A8P3H/Sp
        eMoNDONEu+e2qvwUUjjShxtE4Q==
X-Google-Smtp-Source: APBJJlF9N4lgPuc/4ZoYANm5Fp2hPFTEh41Rqlap64Fs/qgLacZ1wW5/laxW8bOcxDMkXQAVEekXvA==
X-Received: by 2002:a05:6512:3132:b0:4f8:666b:9de4 with SMTP id p18-20020a056512313200b004f8666b9de4mr1484270lfd.20.1689953774519;
        Fri, 21 Jul 2023 08:36:14 -0700 (PDT)
Received: from [192.168.1.101] (abyj181.neoplus.adsl.tpnet.pl. [83.9.29.181])
        by smtp.gmail.com with ESMTPSA id t9-20020a19ad09000000b004fba1278e6dsm782535lfc.107.2023.07.21.08.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jul 2023 08:36:14 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 21 Jul 2023 17:36:06 +0200
Subject: [PATCH 03/11] arm64: dts: qcom: qcs404: Drop RPM bus clocks
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230721-topic-rpm_clk_cleanup-v1-3-cf6cd5c621d5@linaro.org>
References: <20230721-topic-rpm_clk_cleanup-v1-0-cf6cd5c621d5@linaro.org>
In-Reply-To: <20230721-topic-rpm_clk_cleanup-v1-0-cf6cd5c621d5@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689953767; l=1392;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=elZw7s7ezQcQPS08Afo835usJgWljovasVimyqG1X8E=;
 b=E0x/lqoRdgU6x9IiGi7wJmdN9MbG1T7aO90Yhahxt2aQ8J98bbw6d68Gi8wzE2p2u6YBOGyjK
 SH9hSUtq64gAdhLtrdGiAedsdebBYvjGb21swEvXT6fF2gcWQN3S8HI
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

These clocks are now handled from within the icc framework and are
no longer registered from within the CCF. Remove them.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/qcs404.dtsi | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs404.dtsi b/arch/arm64/boot/dts/qcom/qcs404.dtsi
index 2721f32dfb71..317a0df30b83 100644
--- a/arch/arm64/boot/dts/qcom/qcs404.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs404.dtsi
@@ -558,9 +558,6 @@ bimc: interconnect@400000 {
 			reg = <0x00400000 0x80000>;
 			compatible = "qcom,qcs404-bimc";
 			#interconnect-cells = <1>;
-			clock-names = "bus", "bus_a";
-			clocks = <&rpmcc RPM_SMD_BIMC_CLK>,
-				<&rpmcc RPM_SMD_BIMC_A_CLK>;
 		};
 
 		tsens: thermal-sensor@4a9000 {
@@ -601,18 +598,12 @@ pcnoc: interconnect@500000 {
 			reg = <0x00500000 0x15080>;
 			compatible = "qcom,qcs404-pcnoc";
 			#interconnect-cells = <1>;
-			clock-names = "bus", "bus_a";
-			clocks = <&rpmcc RPM_SMD_PNOC_CLK>,
-				<&rpmcc RPM_SMD_PNOC_A_CLK>;
 		};
 
 		snoc: interconnect@580000 {
 			reg = <0x00580000 0x23080>;
 			compatible = "qcom,qcs404-snoc";
 			#interconnect-cells = <1>;
-			clock-names = "bus", "bus_a";
-			clocks = <&rpmcc RPM_SMD_SNOC_CLK>,
-				<&rpmcc RPM_SMD_SNOC_A_CLK>;
 		};
 
 		remoteproc_cdsp: remoteproc@b00000 {

-- 
2.41.0

