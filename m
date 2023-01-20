Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D807C675F3E
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 22:01:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229888AbjATVBT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 16:01:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjATVBS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 16:01:18 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07039881E1
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 13:01:17 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id y19so8208149edc.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jan 2023 13:01:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5vdvlTIe2SoUdgzeTBXtkOHkXv6c2FDuAp1y22eD7Ng=;
        b=rhSCbwWbjcUJKlgvQOopMWTQNS4FyCSdDOWhsdPizT6q+UQu4iVeyAmPOW5WKRQJgT
         +Nz4dkQwNjkwv6zsd0mbsgyNLAqj00cjWXRd69Cp5ucpmXVs1bV/fVM8wGV4BvO04Je8
         YeNmEXt7GOD9+3EqM/LVf1SyCiMqIlaBhijJ3nmrRCEMxwo0pX950AGQbeZq06vsaiGP
         IZ3hvWDZW/EI2BbE1Tl+kXiI2M//dNGYiYPsZjYiRFunyCT1lgNapZ0DFehZcWGvCW9X
         WYhAvM5EiJsEx0eKK9GRR3X7pu8e8HBGpq+oqpJe4fsIhXAYmvNxCkD0LYMDZngfwGsX
         tg0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5vdvlTIe2SoUdgzeTBXtkOHkXv6c2FDuAp1y22eD7Ng=;
        b=1TgKHfLsrbwIWH/vHjnEbjyShU/xXEcmYaj0h14SfL8KWksZ1c310F5JAswWZkbwqC
         yQ2E3vcP9FcSV2DsWWJsflJNr2rMaS1FmHnUuOXZ49dfdLWypqcD30fSi9H9jl54cIiS
         zRKK6hLV7vHRr6KaO/TMpNzqZAnMQ2qry/7hemaYAoF7WlWNr0Bm4IMhMBz1hBJpRT6N
         IrxkhL/6moHL57+OFieQGY8OrVc+rKwKU68DPQTNoqRRsK+2/bIgkU0wkrq7Vb6G2UN2
         waFUGXmyVUvb34sKSYyB2filLQkF2C3dxW8fK+r6ptno2mvVayG6+NTAg2jY/hFyY3Lm
         7Xig==
X-Gm-Message-State: AFqh2kqD4qGV3gPL7I8B7Ml+yb7WnQACs8NzUmC3qeavJ7JFLY7ZzCoq
        V+6seA6gvFV/F11CPzO8zh65JQ==
X-Google-Smtp-Source: AMrXdXuA4bZe2r10Fa2xb6v7gUYLSpFAEboZqxVdFXr3Y8zk2kJnKU4qwAoDJTd+CPD8UbAuF6ivag==
X-Received: by 2002:a05:6402:1946:b0:48b:c8de:9d20 with SMTP id f6-20020a056402194600b0048bc8de9d20mr17986061edz.32.1674248475600;
        Fri, 20 Jan 2023 13:01:15 -0800 (PST)
Received: from localhost.localdomain (abyk37.neoplus.adsl.tpnet.pl. [83.9.30.37])
        by smtp.gmail.com with ESMTPSA id g22-20020a170906595600b0087221268e49sm6581229ejr.186.2023.01.20.13.01.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Jan 2023 13:01:15 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
To:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Douglas Anderson <dianders@chromium.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rajeev Nandan <quic_rajeevny@quicinc.com>,
        Stephen Boyd <swboyd@chromium.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 2/8] arm64: dts: qcom: sm8350: Add missing #address/size-cells to DSIn
Date:   Fri, 20 Jan 2023 22:00:54 +0100
Message-Id: <20230120210101.2146852-2-konrad.dybcio@linaro.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230120210101.2146852-1-konrad.dybcio@linaro.org>
References: <20230120210101.2146852-1-konrad.dybcio@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Panels/DRM bridges definitely don't need 64bits of address space and
are usually not 32-bit wide. Set address-cells to 1 and size-cells to
0.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index dc84dbed81bb..c0ba67747c24 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -2989,6 +2989,9 @@ mdss_dsi0: dsi@ae94000 {
 
 				phys = <&mdss_dsi0_phy>;
 
+				#address-cells = <1>;
+				#size-cells = <0>;
+
 				status = "disabled";
 
 				dsi0_opp_table: opp-table {
@@ -3084,6 +3087,9 @@ mdss_dsi1: dsi@ae96000 {
 
 				phys = <&mdss_dsi1_phy>;
 
+				#address-cells = <1>;
+				#size-cells = <0>;
+
 				status = "disabled";
 
 				dsi1_opp_table: opp-table {
-- 
2.39.1

