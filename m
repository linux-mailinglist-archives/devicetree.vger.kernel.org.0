Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45B7B6F9B0C
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 21:07:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229920AbjEGTHo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 15:07:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbjEGTHo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 15:07:44 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4DC93594
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 12:07:39 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f00d41df22so25277723e87.1
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 12:07:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683486458; x=1686078458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Vi+qNNaZPyxsefGB1oajp1oVBPaOfr1xKPuapQZUe7c=;
        b=TJ2OW2h9+vAdfIimLLcFyqQpLgWeG13d7qrrf6/L4c9rdK2z/x9YfLYFal1s3weaPq
         Qas9IUxu4knuqOr+Qc8iqe7KXNJ3/Ui8jDwznA7k2fRx7LK7ycX3Ge/uor9R/QHsOTsj
         2tU+/KBSNHO0jehJGuAOFL5YKnqHNgTKtAxGHZreISsnHRozBPIBCYZ8Co+Xg8zlho69
         KX7JMZlYmp3+go6LLLSm/AANkOlRsok01w7Dm/NLi2WY0grLrEdqrwE77v97f3sLM15/
         hAj1RheSj8S5M8u+V1W7sjS4HS4KR8RBLpcCn1bZGsp9Amuw2+9V5pjodKvQ7ehDXshs
         nlCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683486458; x=1686078458;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vi+qNNaZPyxsefGB1oajp1oVBPaOfr1xKPuapQZUe7c=;
        b=DqFqz+pNeLMJZUXSasfZCmrovK/nz3BS68jyjzgphzwLDHCuKhGNX7YdP8Jvs7zVZR
         2xaTtxc7zd5r7JqNy2S9Riy6WZb3/3ak5jCYS0fxEH/lAIK6GkZxXj7WHFBDQXhuyK9O
         dqE6aDGl0k23r6mrDVO2IfEzcXbHqKcUwsQBqnsIK3yWdpfKZyjBzzjX+hv2yNspojpV
         lYTb+4rLd/WHXE3rWFo/ujhH0gjuRfJHBTDWu4F9Wy8M7KtYkeyvv+msaKlhIx+VBxtZ
         bWTupdsLvabaBkDY+2pifkPWFsr4pclvyMLudekcdZhhTcFjAWDkJesDMefKhACPDqy7
         SMZA==
X-Gm-Message-State: AC+VfDy2x8Ycs4N8hsQ1OfQ6GqwOHlDqKCFF5D7VyN7tJdDUKgzjZ0Q6
        gwZvAzounYdYrMLAjmTHlHHiqw==
X-Google-Smtp-Source: ACHHUZ54X56ZL4KurSonVDETk5lAq4ryk4zzE4ihXGauROlICUtkYX8683vKfjtxl1NB3mlT5ufddg==
X-Received: by 2002:a19:5507:0:b0:4d8:5de4:e3b4 with SMTP id n7-20020a195507000000b004d85de4e3b4mr2069054lfe.1.1683486457955;
        Sun, 07 May 2023 12:07:37 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id f8-20020a19ae08000000b004f14ecc03f1sm755841lfc.100.2023.05.07.12.07.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 12:07:37 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 1/4] ARM: dts: qcom: msm8974: add ocmem clock to GPU
Date:   Sun,  7 May 2023 22:07:32 +0300
Message-Id: <20230507190735.2333145-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230507190735.2333145-1-dmitry.baryshkov@linaro.org>
References: <20230507190735.2333145-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To get GPU working with the OCMEM, the oxili_ocmemgx_clk clock should be
enabled. Pass it to the GPU to get it to work on apq8074/msm8974 boards.

Fixes: fe079442db63 ("ARM: dts: qcom: msm8974: add gpu support")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 834ad95515b1..fb661c1bd3d5 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -2104,8 +2104,9 @@ gpu: adreno@fdb00000 {
 
 			clocks = <&mmcc OXILI_GFX3D_CLK>,
 				 <&mmcc OXILICX_AHB_CLK>,
+				 <&mmcc OXILI_OCMEMGX_CLK>,
 				 <&mmcc OXILICX_AXI_CLK>;
-			clock-names = "core", "iface", "mem_iface";
+			clock-names = "core", "iface", "mem", "mem_iface";
 
 			sram = <&gmu_sram>;
 			power-domains = <&mmcc OXILICX_GDSC>;
-- 
2.39.2

