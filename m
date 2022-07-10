Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB6F456CE2E
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 11:00:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229482AbiGJJAu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 05:00:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229579AbiGJJAr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 05:00:47 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4AF6013F17
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 02:00:45 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id z25so4294046lfr.2
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 02:00:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iAQx/uD//KZplcIf17mKmrkwaSgdfWCTgLFjJOi8JBA=;
        b=rOjMZ43DqoxJgFj3QPiMHbZR9iTkTBjzhTPtTgr8fzHTouwAvwktMoUdvYXZNGZa+6
         ZSGmyuFkAoDUINlKhQaIfm1+oOAGUCodgVNjnz3W7QctgogCpIB6rcMMDLY24xb0JjdO
         /RCxluPQupBeX8K/7kX7FPGbiiHieY5PkjlDktMIHqyb1Q+cx1kmgaEMA1QiAeFBIi54
         yUD0YjhXrfYkTeV1tObWK3ZPtnN8cUKJEPP+90E3nF+zZ3gVsG+ViIZWG878phsADem9
         rsgwg2yqvPird2j+ydB8iS94eqosnrOSEF4alCR55Pd32RoieQsjecpNj0TzK+m0iAiV
         //kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iAQx/uD//KZplcIf17mKmrkwaSgdfWCTgLFjJOi8JBA=;
        b=s14lyP87JFR4Tjh0ghxzEC5ZWfIasjQDxJsXYh22HWZ5yKuz9XS4+efh80Qs9X0sJ6
         Rr2Kj04xu3EoZilmqj2Dgb0CU13J2GMrcBgDc6XpMxa28r+AVfrqp8VavxNrh7x6xuur
         zs0I2ZcObVGA77NzRxH547IaFcgzgzF03O8fRsJzqfl0x+yaVBET32SJBuOl8OHYLta/
         AHdBMC/0acCkel0NWWrYKeEXTvtTf/uD5iX8UH/s9uGiAWJ3Xq42Wuzf83TjrEzYrvOG
         ypB5/O0ODs4KLGBydfYc7HjXbNEjoAeNwyba76C9rpHIQs8hW3I/ELL3QT5Nc6ovzOG3
         G6SQ==
X-Gm-Message-State: AJIora/wlzVMG9+ANJIVkAZuyhkMfgggwWbiUrYEtNaNSLSlHSJmk5g5
        PM5T+ddyarI7LRvEZQBYiqB4Yw==
X-Google-Smtp-Source: AGRyM1uPGPmg6YRGI5I8EVD1Xyyv+ctzqdaU2D7fon7kgwpGTp3SHUsZa4iW2yqenvkC1QIPdnLMDw==
X-Received: by 2002:a05:6512:108c:b0:489:d110:a8a4 with SMTP id j12-20020a056512108c00b00489d110a8a4mr2866086lfg.648.1657443643626;
        Sun, 10 Jul 2022 02:00:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u16-20020a056512095000b004896b58f2fasm822881lft.270.2022.07.10.02.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jul 2022 02:00:43 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 03/11] arm64: dts: qcom: sm8250: rename DPU device node
Date:   Sun, 10 Jul 2022 12:00:32 +0300
Message-Id: <20220710090040.35193-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220710090040.35193-1-dmitry.baryshkov@linaro.org>
References: <20220710090040.35193-1-dmitry.baryshkov@linaro.org>
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

Rename DPU device node to display-controller@ae01000 to follow the
DPU schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 43c2d04b226f..48c60df59080 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -3444,7 +3444,7 @@ mdss: mdss@ae00000 {
 			#size-cells = <2>;
 			ranges;
 
-			mdss_mdp: mdp@ae01000 {
+			mdss_mdp: display-controller@ae01000 {
 				compatible = "qcom,sm8250-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
 				      <0 0x0aeb0000 0 0x2008>;
-- 
2.35.1

