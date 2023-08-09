Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1C5B3776879
	for <lists+devicetree@lfdr.de>; Wed,  9 Aug 2023 21:21:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230000AbjHITVL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Aug 2023 15:21:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233616AbjHITVK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Aug 2023 15:21:10 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CF0E30C0
        for <devicetree@vger.kernel.org>; Wed,  9 Aug 2023 12:20:53 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b9cdba1228so2597131fa.2
        for <devicetree@vger.kernel.org>; Wed, 09 Aug 2023 12:20:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691608834; x=1692213634;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DE94Q6lf2K2gSTbQ4obZ5qNHgQeup5/EEo7g9MBB54w=;
        b=hVZmOV05FAUjR8G8bAhpPHpxnHhQ6DhH1iewP44ue5XrvSdFh1IvsOVHkaiJ8DJSlG
         OzOwcDv+13bnppTHDKixF9LK3nkTDiV+dt1xhzEyEn/hXtWbFalKXwbjBGPTqK7Ue3S8
         VhYQt8NK97pnxqSmf/IX2GvUWhC0cKQylUtb4hwZV6v8kC75kW3GRNvdZMrY65f6fawZ
         7C3wht1lSE7lEXy0viadI5LBdxGnHoIQCCj4TOjAruUiluS/U7PGpHbDEAzTBE2EGxXU
         cjejMJpG/6Fpud7Gbupf9gt48u1dP6b6fYzfGYNA6pQ7TfjjTFSA/AKGBIr86y1dWgRQ
         RZTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691608834; x=1692213634;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DE94Q6lf2K2gSTbQ4obZ5qNHgQeup5/EEo7g9MBB54w=;
        b=aXRycuNEwsXao1FwoIDXRsKoGQKDi3ThL8KIiqbYv0Y889nVGZvzry+TNYBX7FsLTf
         BO8iaOW+jjOllBwVLE52ffltI3cq9tDCPlDGBjXtPRwhlTHZBYqrCitcD4vDkHnXJ0YJ
         senAxBo0ZfO95fL0EiFV5Ygde+9zMs2cea4bG76kdGqN4Bv6OHUiHC4zC4BaQ7ctMud4
         YGBzayJUtPAYxiw7Sn1c6m1MDdOEtu9OqIi9FM4BurpQfsPq+KITrPqqN3PGsRFkbe7H
         vuEyAYMP/7ld0ddvIrAL/WxHSTmHnVhOjfVyc/04VKAwVEBr0oepsjHsTgv3d+2+fjbf
         2zfw==
X-Gm-Message-State: AOJu0YwxsQdsYDIV90QKPt4aYKRSoVhlXy3VbDTP5QLl8XrQb1bUTgFw
        TwVhZtZFFlkEnze2wSTFonFNJQ==
X-Google-Smtp-Source: AGHT+IH91D5GnSETRj0u3DPt3bzPi4croUy1p68YiToywW5aS9a6UlkxNDxyQkW6FnSr1PCZ1vpbrw==
X-Received: by 2002:a2e:8550:0:b0:2b9:b9c8:99 with SMTP id u16-20020a2e8550000000b002b9b9c80099mr104092ljj.22.1691608834133;
        Wed, 09 Aug 2023 12:20:34 -0700 (PDT)
Received: from [192.168.1.101] (abxi185.neoplus.adsl.tpnet.pl. [83.9.2.185])
        by smtp.gmail.com with ESMTPSA id o3-20020a2e9b43000000b002b9ed203af1sm2863218ljj.132.2023.08.09.12.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Aug 2023 12:20:33 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 09 Aug 2023 21:20:25 +0200
Subject: [PATCH v3 2/6] arm64: dts: qcom: msm8998: Add missing power domain
 to MMSS SMMU
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230531-topic-8998_mmssclk-v3-2-ba1b1fd9ee75@linaro.org>
References: <20230531-topic-8998_mmssclk-v3-0-ba1b1fd9ee75@linaro.org>
In-Reply-To: <20230531-topic-8998_mmssclk-v3-0-ba1b1fd9ee75@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1691608824; l=906;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=EM5tWZgcQ/PtQiCuUMktQpuJVbPaCBzE0y/oEdPpoBk=;
 b=DgG5WM7aCnxlKKTKRxJyT1NXqA7+tx0CEHA0dPTjvPgAtp5Ajxf5aVQKXXHPrMj6JtpuzIu7l
 Adop0zBmFK0CA+8JhrdwrZpDm3sn/DQGCO1GR9TImxjwOVAXckjOEC3
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MMSS SMMU has its own power domain. Attach it so that we can drop
the "keep it always-on" hack.

Fixes: 05ce21b54423 ("arm64: dts: qcom: msm8998: Configure the multimedia subsystem iommu")
Reviewed-by: Jeffrey Hugo <quic_jhugo@quicinc.com>
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index e40f6461f4fd..39db67211fae 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2770,6 +2770,8 @@ mmss_smmu: iommu@cd00000 {
 				<GIC_SPI 261 IRQ_TYPE_LEVEL_HIGH>,
 				<GIC_SPI 262 IRQ_TYPE_LEVEL_HIGH>,
 				<GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
+
+			power-domains = <&mmcc BIMC_SMMU_GDSC>;
 		};
 
 		remoteproc_adsp: remoteproc@17300000 {

-- 
2.41.0

