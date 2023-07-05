Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F67374851D
	for <lists+devicetree@lfdr.de>; Wed,  5 Jul 2023 15:36:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232225AbjGENgh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jul 2023 09:36:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232095AbjGENgh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jul 2023 09:36:37 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B95521722
        for <devicetree@vger.kernel.org>; Wed,  5 Jul 2023 06:36:35 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b69f958ef3so109222691fa.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jul 2023 06:36:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688564194; x=1691156194;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wLuG9KuEJuS9NyZByQeLuBduARgWRDXGrvbnJCmv87Y=;
        b=BVnw0z00jp36hhC2CRXVrcj5uVSHR6InYJBj4hMLIXFa8/SKsh/RaG+1RI+UOGQ/yW
         theNQEoCGiIHclWLQg98wFeSTC+2aaw4YllAjdoqgiTOXGAylJT4GCf3AO/3SiyM69vc
         mtrf0Nv6JTWtJ24owN8rnoBJslj7jxNJYG34l0kNB5HUOol2+jb3IcgVgdJsYxmlMZQc
         dzI3WZEjTfYmCz5TeFMWRrCesbGnNLi3uoMxvKSndNqHQs5ArZcKYlj2reUxzJppDFNp
         twdUCX0z6Nrso70p0+k9IdpqbLNN9S+LOBfGbUgMki8A5tItVrmHpZTtRviPcRA4MP8U
         dgpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688564194; x=1691156194;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wLuG9KuEJuS9NyZByQeLuBduARgWRDXGrvbnJCmv87Y=;
        b=JYEtIgsJz/9TQkLCPN2uUX9PAIjNQKIFyL/XbwdlL9Qjhwu/SMQI2EIiDsHb1maA23
         YbX8jj0ERe43eFU6AapQnS55mUvTKHQcU/OfbWX4X1Lc8Wv7wBmTeHc4HdYxj7Lr594a
         kXRqAmcVbzq2PWLo2my6MZ5BzhEK3Tw9jSDIaSjNXgLyZrpjMiqFYGGVPNsXvyddZAWu
         P01lvG758hia2MDYMkYpxS2vt2FwRqJhwGJx1jOChMvP0TmLRb+UZyAGslqWnIWgslM5
         xV3oUmIo5KNiEzE5fJuiU09fSa3qs+aYfUB+9uO/jHiDhKJklc34dY1kmkscU/62nsCU
         iBaQ==
X-Gm-Message-State: ABy/qLYSjvclKoQK51SdsTmnT131L98idTLWrHDLYVQipYGSvqkmLPGd
        +HIB/YPD/i9qbsDRXLIFocE6NA==
X-Google-Smtp-Source: APBJJlGMJO9Y6xzoHHzL/Xd0vBQ/yUPQ4Kd1fYN38wnDNQp4j3ps1M59oKBlf35m8zoVrKVOfVY/fg==
X-Received: by 2002:a2e:800b:0:b0:2b6:bbb9:b560 with SMTP id j11-20020a2e800b000000b002b6bbb9b560mr10341358ljg.0.1688564193976;
        Wed, 05 Jul 2023 06:36:33 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id z16-20020a2e7e10000000b002b700952298sm246803ljc.33.2023.07.05.06.36.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 06:36:33 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 05 Jul 2023 15:36:23 +0200
Subject: [PATCH 3/3] arm64: dts: qcom: sm8350: Add missing LMH interrupts
 to cpufreq
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230705-topic-sm8350_fixes-v1-3-0f69f70ccb6a@linaro.org>
References: <20230705-topic-sm8350_fixes-v1-0-0f69f70ccb6a@linaro.org>
In-Reply-To: <20230705-topic-sm8350_fixes-v1-0-0f69f70ccb6a@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Robert Foss <rfoss@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1688564188; l=1028;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=3JUnpoYQtL09+7PeKMql4RBG+8C55y1mCnZjG94miQ0=;
 b=ESKn+TvZGOWU0NLEyoasfkSRD43nl9nmnMCc3i4JjgppwwLbDBljAr2Xh+ZVoXLhx9Aq7M9+x
 pNGYcRv1PguBbilxGVBPeccr/PyJsHGhQMruXkh27l6DZTD1N2WTvWi
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the missing interrupts that communicate the hardware-managed
throttling to Linux.

Fixes: ccbb3abb23a5 ("arm64: dts: qcom: sm8350: Add cpufreq node")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 4981a502d4ce..00083782e533 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -3407,6 +3407,13 @@ cpufreq_hw: cpufreq@18591000 {
 			      <0 0x18593000 0 0x1000>;
 			reg-names = "freq-domain0", "freq-domain1", "freq-domain2";
 
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 19 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "dcvsh-irq-0",
+					  "dcvsh-irq-1",
+					  "dcvsh-irq-2";
+
 			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_GPLL0>;
 			clock-names = "xo", "alternate";
 

-- 
2.41.0

