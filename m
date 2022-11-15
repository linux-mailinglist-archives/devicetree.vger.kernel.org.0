Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC9BA6299B5
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 14:09:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229587AbiKONJv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 08:09:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230300AbiKONJs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 08:09:48 -0500
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EBA2B24F16
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:09:46 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id i10so27220681ejg.6
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 05:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NvSvTZo/5/UU/uYr7LgQNU6IXEbMw9wen9MRMPzB5ks=;
        b=WZHbue2QXLVWwCieM9kXtHQY5gWeZ/uCP7SRq1E2GqsGpijP8m0MYMRWUI6/fDvRrR
         HGRqkQSNP956M47qssQZ1QSTAL2+XVHYh267fW2fsK/k74I0vxiqBIszPQ9RD/y6D00y
         ozMi2ZItb5clgRPvmB/Ehbko7ouG9pdPwDcJcg+D/ZtgbsNIKqxUo/U+Bpam2Ol3uwMs
         fSkfu1bm9O0ES9KaRyPoNznlPkEWbbJeR6wCLoOFVcz5ccCWdkJloQ2Uh8nIpb8T8wQR
         XstgXwi3rCmE7wWCsb5MzcRa4rwi9v+XPx4Q6ZeXi7PicVed4iEZxWam1hckUbMdVA0w
         DL7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NvSvTZo/5/UU/uYr7LgQNU6IXEbMw9wen9MRMPzB5ks=;
        b=E0VHUsDS9ZeO3Q9rPcw/2z7nEc0aen5So5xdBn8sVRsiFlR38U4vJkIPRawDyNgfLj
         S7KGtlgPuWjSezliBVXzGJKD9xAW/CrzrBdkd1h8EKaocG3fs/0YLUrijTTtz9qpuwkj
         h4Va3C7A75ak5dz+3JckNxyEvjomA4D9IxA4HvgtdB9YDdLk9+KgWPmfjnSsN7NSRADs
         f6Gg55X4XGbcE2j8YZAXiam8+iXlyoePf8pQA96LWQ8FjIHynMqKPSCOVyhF0Oizt4yT
         27omAJ0HZx+6WU8xpYhlKcrI1gqY6eugMIUhoxFTZKd6xqMB54PA/tIz49n+YimNc/rD
         6tkg==
X-Gm-Message-State: ANoB5pm6ETif4NUZgXQY6jBd3vOIpSHHbkhAXFVSwtk5OxdtMe/MnpUw
        v95cLKS24lF4cX48SIMBi3xp/BVsJcv4J4AU
X-Google-Smtp-Source: AA0mqf6FKl8R4ONv2F1AhlS1hrTy+b069L2XPAWwQdIPCfF2P3xA87K7OB1cMwG+YFyt9MH5UqufVA==
X-Received: by 2002:a17:906:154f:b0:78d:9bcf:4d9f with SMTP id c15-20020a170906154f00b0078d9bcf4d9fmr13664381ejd.749.1668517785199;
        Tue, 15 Nov 2022 05:09:45 -0800 (PST)
Received: from localhost.localdomain ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id ay26-20020a056402203a00b00461816beef9sm6093260edb.14.2022.11.15.05.09.44
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Tue, 15 Nov 2022 05:09:44 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] arm64: dts: qcom: sm8150: Use defines for power domain indices
Date:   Tue, 15 Nov 2022 14:09:36 +0100
Message-Id: <20221115130936.6830-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.32.0 (Apple Git-132)
In-Reply-To: <20221115130936.6830-1-konrad.dybcio@linaro.org>
References: <20221115130936.6830-1-konrad.dybcio@linaro.org>
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

Use the defines from qcom-rpmpd.h instead of bare numbers for
readability.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index f9321b4384a4..212594aa448f 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2074,8 +2074,8 @@ remoteproc_slpi: remoteproc@2400000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd 3>,
-					<&rpmhpd 2>;
+			power-domains = <&rpmhpd SM8150_LCX>,
+					<&rpmhpd SM8150_LMX>;
 			power-domain-names = "lcx", "lmx";
 
 			memory-region = <&slpi_mem>;
@@ -2619,8 +2619,8 @@ remoteproc_mpss: remoteproc@4080000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd 7>,
-					<&rpmhpd 0>;
+			power-domains = <&rpmhpd SM8150_CX>,
+					<&rpmhpd SM8150_MSS>;
 			power-domain-names = "cx", "mss";
 
 			memory-region = <&mpss_mem>;
@@ -3246,7 +3246,7 @@ remoteproc_cdsp: remoteproc@8300000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd 7>;
+			power-domains = <&rpmhpd SM8150_CX>;
 
 			memory-region = <&cdsp_mem>;
 
@@ -3747,7 +3747,7 @@ remoteproc_adsp: remoteproc@17300000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>;
 			clock-names = "xo";
 
-			power-domains = <&rpmhpd 7>;
+			power-domains = <&rpmhpd SM8150_CX>;
 
 			memory-region = <&adsp_mem>;
 
-- 
2.38.1

