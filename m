Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 108526711B1
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 04:17:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229521AbjARDRa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 22:17:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbjARDR2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 22:17:28 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C44CB4FCD8
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 19:17:23 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id kt14so21181725ejc.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 19:17:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/H38JSzifnwb7zs7IwlqqhUAxLsg6bbjCNQsPXDmKcE=;
        b=S0/ecNIzhjTqJgJqGM+ySaF6GeNHGO8yws1sSR6cc7Ib9iXESkQKGsW76Dqwh9iCyp
         tRTW7/INysF97pqqsUKJtO5uI0t3P0ZmSyTB71y5X+AqQzPsUXgZrLs8g8a4CipLeJaC
         fsOszYgN+a6MHL0ffagmo3soqCFqy8Tcb7sIDT7JVD/2m0Ex0tnNQmRJIqGx4phmoLbA
         I/s6vSXGkhLcmR6LqbYkbxb5C8wzIfgkU43rprmR2K4N1W/pvuouV4cpq1uzgDPbuwsf
         ThXncM7jshb96QVbTUEf4hacGvPCySHCwmir0uhRXZ4ugy2rXQxoMzXST5IHgF32GsBq
         77yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/H38JSzifnwb7zs7IwlqqhUAxLsg6bbjCNQsPXDmKcE=;
        b=s+Gvt/4YKf8wmAmBr0j+Bh7tzHRVtOWUV+2/HzfpVOZbQZbaiSHnQm2tVhdnNgNbCM
         iTccCZq2vDBwk0CUOGd5q2GkQKmUWjc5p6IO09WjZVgjnFAdqTVCWlhlhmtBC1YRwDba
         bj8biq/LYPnS2NMPIwak98UzTOls11mCoN7rSHcCmRelwcje/sgsYBIGrXYECBtzaItm
         JmzYL+CmkJI8/mkhKsv7Wwjeg+6C5UBotb2rSAT6qxBo3+Fe6s2rUEsz5p4Pba/WEtJ6
         uMVGDX5NlRFzCByA3Z0es/tFnmwvB90mjcmhnZ0vpRapQFhgMrb+laT8XRzfmgXm8sd8
         6m5w==
X-Gm-Message-State: AFqh2kqGx2oIU60Smzai9hdsKz9I+P+8Ts2GBSmQlUX6qt0cj0bFR/Lk
        QTK6IEAbLQfPGsRgbP5WtEYTiQ==
X-Google-Smtp-Source: AMrXdXuy/67RMVL67giu9fCmAhYbyAzLaNrTa0UAmfawO033JlwKiwAoZZcOuajvnq1/pBuotkybbQ==
X-Received: by 2002:a17:907:a092:b0:85a:4230:756c with SMTP id hu18-20020a170907a09200b0085a4230756cmr5522046ejc.59.1674011842388;
        Tue, 17 Jan 2023 19:17:22 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id 2-20020a170906210200b00876479361edsm535639ejt.149.2023.01.17.19.17.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 19:17:22 -0800 (PST)
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
Subject: [PATCH 3/4] arm64: dts: qcom: sc8280xp-crd: drop #sound-dai-cells from eDP node
Date:   Wed, 18 Jan 2023 05:17:17 +0200
Message-Id: <20230118031718.1714861-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230118031718.1714861-1-dmitry.baryshkov@linaro.org>
References: <20230118031718.1714861-1-dmitry.baryshkov@linaro.org>
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

The eDP device doesn't provide sound DAI. Drop corresponding property
from the eDP node.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
index 4e92dc28e2ce..a3b9c9d0a94d 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
+++ b/arch/arm64/boot/dts/qcom/sc8280xp-crd.dts
@@ -253,6 +253,7 @@ &mdss0 {
 
 &mdss0_dp3 {
 	compatible = "qcom,sc8280xp-edp";
+	/delete-property/ #sound-dai-cells;
 
 	data-lanes = <0 1 2 3>;
 
-- 
2.39.0

