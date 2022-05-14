Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 03E0E52719D
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 16:10:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231211AbiENOKt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 10:10:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232932AbiENOKs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 10:10:48 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD300140E4
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:10:46 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id y19so13333940ljd.4
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Tuq5sCaVtmkjPi9RkbWXYl4iAUGc0Sy3jGc43YOB5ng=;
        b=lnRUNjD5lUvoOtp5wPhBZCOmV9eqAVPdpQ1P5QTMNXOxx5/27dToQK5gZYcsvsctfm
         Kcrf6lZiybF50ADpmhaAAAM2hWWs3sqN2XdWuVyylIKAvs4atpUYhUAMWm2ZSWHRowYT
         oacCXDQmxgqcEe5Gj/6D5UC78Ig0YzbfdlA4CYT/X5hdubSN4AouaW1JCwQLNPPoj8gl
         ZPMdw2/6pVTyYVOem32BPH/sfFtDxu8L+WhzE2TsNZFt/BmynzIZ3o/EaCgwXyydasma
         qO20keiFbw6HEW98pXMFwApj6UwSTI8+TGbQCCjROVREJZlCltCt5CuJovRyE3AT1GwL
         dnfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Tuq5sCaVtmkjPi9RkbWXYl4iAUGc0Sy3jGc43YOB5ng=;
        b=DLCHuG7nLU7V0lIdE1BYGqLB9SwPZX1hhFFYaaci21fZaxPAj09i2CjohsFdP9HeSC
         vGiHV75a5YwsaxDwhKuvOJklA6aAIP8UHR9mu/4iGkKdKgRTqRbp0Goey7LEk+UlhLd+
         2n4GMsoyMx5MSd3K63IOIckY+qdlrD7hvgjqRA4TfA3NoleHC0qpjUBjJE6gGnFllZQe
         ZBEzPMSsL8GWAIHkimEjUV5IyMJUU9EOAk7//EvGtOL3G7FiCdp7E8CG0feeRnn69N3d
         QJw93guuM9mJb7sY+QstNJKaJWV3ovmU5RBAkdOnuUvIG/TfatrJAjhFGXsK5mynd53P
         eCCw==
X-Gm-Message-State: AOAM532BlcXElnR1z52BcdtXKk2ZxSEA30Dd2FoZ2ydS61QDHIH2oGzQ
        Su6CllZ2DQBRhg544riv4FnrRA==
X-Google-Smtp-Source: ABdhPJwwTWgZshaJf/ToGct2p5ekmmYJA1mT9ow/zKUwY3qdnvEI6m18k3Ay1+9o6CsnWif5aArP5g==
X-Received: by 2002:a2e:978c:0:b0:250:8db3:d1cc with SMTP id y12-20020a2e978c000000b002508db3d1ccmr6052669lji.370.1652537445073;
        Sat, 14 May 2022 07:10:45 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x9-20020a05651c104900b0024f3d1daedasm845912ljm.98.2022.05.14.07.10.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 May 2022 07:10:44 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v4 03/12] arm64: dts: qcom: sdm630: disable GPU by default
Date:   Sat, 14 May 2022 17:10:32 +0300
Message-Id: <20220514141041.3158521-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
References: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
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

The SoC's device tree file disables gpucc and adreno's SMMU by default.
So let's disable the GPU too. Moreover it looks like SMMU might be not
usable without additional patches (which means that GPU is unusable
too). No board uses GPU at this moment.

Fixes: 5cf69dcbec8b ("arm64: dts: qcom: sdm630: Add Adreno 508 GPU configuration")
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Reviewed-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 8697d40e9b74..e8bb170e8b2f 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1050,6 +1050,8 @@ adreno_gpu: gpu@5000000 {
 
 			operating-points-v2 = <&gpu_sdm630_opp_table>;
 
+			status = "disabled";
+
 			gpu_sdm630_opp_table: opp-table {
 				compatible  = "operating-points-v2";
 				opp-775000000 {
-- 
2.35.1

