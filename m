Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 148B77747E9
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 21:22:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232848AbjHHTWd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 15:22:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234412AbjHHTVw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 15:21:52 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5C0B10C3BE
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:45:21 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b9b9f0387dso92085821fa.0
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691513117; x=1692117917;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4KW5W/BsMVq6+QNzWH4B7mMdqsIsqWz/fCs4TWl8ltY=;
        b=j9x174zSL9ns0N7xdrBf1jqR8bw/zkVGKlXtObv9F/4yCMtWq9JkPGWaCfY0nl8vgQ
         ewG+vjdEIST+oGn5Zidfp7GybJ0+JpWRQhfkpG3RYCU1UCyTgb0pwbRk6RZmCO2/HRp2
         6/6eB1RVi+3SImjWEQ/zL9+5fnyRjsxuKNRvcJ2+vgdUgw3WBInAs4tVKSa+QvBwiurE
         nnw96s0rdjjZfU39zAOUTPq1S6/MYdvE+9Ku9GmdAr7geRGSbnm0LJNOaSdf4OJqGWUN
         G0U1dOyz/xxuauzvRFhYAYjCCr4S1JyWG1BmuNnsM3ywUvvLYYy7Pr5q9+b+3/RzANdN
         iUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691513117; x=1692117917;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4KW5W/BsMVq6+QNzWH4B7mMdqsIsqWz/fCs4TWl8ltY=;
        b=ccNjwCo/iucM+B0Ym0NJ8419NkGby9TR+qHmIqdd1RfV2JMfycPyy9nBsiv0GXlBsj
         6oADnR+k2GfHd7TgJprbS922mbS+DGaSdMqWTNt7yBXJ1LzhFrethGbFICBn/vzj4ETx
         HVdLyNtT/aw4YsH/C+XYHi0ujHBYWL//j4yJM9JiRV5z2heivOQeKaqtriwXqflhTgV1
         3G+j6p3qJsbQtbKE1aRSc8KK3FT+wvSRS8PsqWghZSnpVEZrDOyAOQ1/wvpIzNEqf3D1
         dkjO29mweSQMdIIB8HibsLw1MbubzK/CTALkPNcmQV3LHPILl+320i1UHAH1s3zpgm4L
         iT1g==
X-Gm-Message-State: AOJu0Yyjn/8vYdUg/Lpj1o0538CX/Caggj8Kv5/et5SEIh5qWbbphShM
        tKUBmN0YrAAprXolx1ESzhUz9xcftlwpx/n53Qg=
X-Google-Smtp-Source: AGHT+IG1IYYssFkGiczWRJXJ2hNd7aUPVrG4bPRpm+cL/fBJQfj5HgLT+UBhH2Xhh05RcC4OK+d9Kw==
X-Received: by 2002:a19:6518:0:b0:4fd:d18e:be33 with SMTP id z24-20020a196518000000b004fdd18ebe33mr7634340lfb.26.1691487889572;
        Tue, 08 Aug 2023 02:44:49 -0700 (PDT)
Received: from [192.168.1.101] (abxi185.neoplus.adsl.tpnet.pl. [83.9.2.185])
        by smtp.gmail.com with ESMTPSA id i6-20020a056512006600b004fdba93b92asm1818884lfo.252.2023.08.08.02.44.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 02:44:49 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 08 Aug 2023 11:44:41 +0200
Subject: [PATCH v2 1/6] arm64: dts: qcom: msm8998: Drop bus clock reference
 from MMSS SMMU
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230531-topic-8998_mmssclk-v2-1-34273e275c51@linaro.org>
References: <20230531-topic-8998_mmssclk-v2-0-34273e275c51@linaro.org>
In-Reply-To: <20230531-topic-8998_mmssclk-v2-0-34273e275c51@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Jeffrey Hugo <jeffrey.l.hugo@gmail.com>,
        Imran Khan <kimran@codeaurora.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Joonwoo Park <joonwoop@codeaurora.org>,
        Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>,
        Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1691487885; l=994;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=3dPVka+1yoTBWJAX5iuBqo/JljLJGzd9OEipOW26gpY=;
 b=P/xfTwdFTTKmfRH1cHDGu0mhCVETc7DhmfzfJHr6hh8cV9OWxxp8ilKs4ThwIArS2RVFHOVnf
 uG9mGb1qwVACAbr6fd75bvJra8iZTVEziz1Kd1WLVE66/LQYZdFZUkQ
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MMSS SMMU has been abusingly consuming the exposed RPM interconnect
clock. Drop it.

Fixes: 05ce21b54423 ("arm64: dts: qcom: msm8998: Configure the multimedia subsystem iommu")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index a41a34dbcc3c..e40f6461f4fd 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2743,10 +2743,10 @@ mmss_smmu: iommu@cd00000 {
 
 			clocks = <&mmcc MNOC_AHB_CLK>,
 				 <&mmcc BIMC_SMMU_AHB_CLK>,
-				 <&rpmcc RPM_SMD_MMAXI_CLK>,
 				 <&mmcc BIMC_SMMU_AXI_CLK>;
-			clock-names = "iface-mm", "iface-smmu",
-				      "bus-mm", "bus-smmu";
+			clock-names = "iface-mm",
+				      "iface-smmu",
+				      "bus-smmu";
 
 			#global-interrupts = <0>;
 			interrupts =

-- 
2.41.0

