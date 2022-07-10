Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 723AA56CE28
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 11:00:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229672AbiGJJAr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 05:00:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbiGJJAo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 05:00:44 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93ACE11A35
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 02:00:43 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id bn33so3016754ljb.13
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 02:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Bs8QcdQy1djDK+VwdSiBURhhZ88rl9ZJFN4yb8iwpTk=;
        b=Z5xFyCHBCVYLY1mZfAZfsU5c6pkVZ6MlPczZS71RWrQtF7VcFHZWX+qWZQOndLG8gU
         /QDhAD750LzOVIsSMGx4baiRCUGNJ+eg/BNDKDTmrVbr6LbavUuG0Mw7pl/sF4IS5K5s
         WINEfm+3j8naAu1BDaM2uc1fGxE4hPH+85YzKm9Vl0HvcR+9H0/UrjOz9q18mH0f196y
         Ti+/Nn4PikZKK3HJF3xBiRd6pODr3wESjRBH/sN8LNTbFDZE5t1Xza31PouWU5HT4z+A
         BCFTzxgiuG6mhXVT0km2NOm58Z+WVrmhgiZMGy2bddifwdDYpIC92W95TnPXLGZy+w7m
         xggA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Bs8QcdQy1djDK+VwdSiBURhhZ88rl9ZJFN4yb8iwpTk=;
        b=Var/5wmRmiUtrzeRMzOKwwXVHVUtb6LeTp2gIodLic0urGTSgCxIznDYp844QaCXZV
         65fFXe3Yy18XewFVgUE5VHdUiyKh9UdW8zOXc6RbFknPN0Oz/a+8ALryTgG1l63ogOqi
         pqbqBgg9W94Z0HKN+0LAd2kL+dzyAhtORMJvHY0dvea3K6kriPb9kV8uwN87VIHY5mZ1
         YBdHKWZAgyrvhcMhjFcY+MqnKoim0Q/FvSOZi1rtN1LUSJ/trjdM3UGMKUgPcPi2ENZr
         Qx/djzTvvDIMwp0V0SQD0gdsqTAtvIZVL2jZns3C0osxiQud/qJHJKdVbF8CZa94+9Vu
         TInQ==
X-Gm-Message-State: AJIora/EmImJh4TN5LyboF3nlsMfusFqilygZsMv+qEhpo5As7oIoAj9
        fK4abtqUOkmWtewdiaZUYGrz/ITo61xnJA==
X-Google-Smtp-Source: AGRyM1vAAXRUW/u9eNMC5CQ2DdLm7LWjiipCc6GIG3Ei2jlPeO67YClCuNTtwAwSpvGfp3/lv9hZ7A==
X-Received: by 2002:a2e:bf20:0:b0:25a:45a6:7587 with SMTP id c32-20020a2ebf20000000b0025a45a67587mr6997088ljr.377.1657443641951;
        Sun, 10 Jul 2022 02:00:41 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u16-20020a056512095000b004896b58f2fasm822881lft.270.2022.07.10.02.00.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jul 2022 02:00:41 -0700 (PDT)
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
Subject: [PATCH v2 01/11] arm64: dts: qcom: sdm845: rename DPU device node
Date:   Sun, 10 Jul 2022 12:00:30 +0300
Message-Id: <20220710090040.35193-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220710090040.35193-1-dmitry.baryshkov@linaro.org>
References: <20220710090040.35193-1-dmitry.baryshkov@linaro.org>
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

Rename DPU device node to display-controller@ae01000 to follow the
DPU schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 32ad5972a642..7c66f490e822 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -4265,7 +4265,7 @@ mdss: mdss@ae00000 {
 			#size-cells = <2>;
 			ranges;
 
-			mdss_mdp: mdp@ae01000 {
+			mdss_mdp: display-controller@ae01000 {
 				compatible = "qcom,sdm845-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
 				      <0 0x0aeb0000 0 0x2008>;
-- 
2.35.1

