Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F3A1661E40
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 06:14:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234261AbjAIFON (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 00:14:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234293AbjAIFOI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 00:14:08 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D9ACBF4B
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 21:14:07 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id d30so6358559lfv.8
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 21:14:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mxCmYI5w6nxSiqH6mYIJV7nQi3+kDtIa5UINsO5Pmjw=;
        b=o4/UvsEtBooqsTfdDvZ4V6Dw9b6IPeSH3r9D+ICRd3/FqS3ykTsMlhZlKml4B8QYK2
         6pWJ47Uk6IXqPlJVReUTgvFYpltrdnF7w0b90VKB3dnZi4iAe9bjKIVqqZH4JIfrTJNs
         E5oaEdqqno73RolkzszE59NYapReoH6b7MvHwYasTYgImDaG5/bqwrDG0aw6YEBc78ge
         YRLiF5zWwsVHNoFaJG70z7aVAbhUWD02OqBpRf2wpFDBm0NvggaTy3o+Ju2HQxGJrTwW
         fzCG/IkMhiOQBsYwl7gVfJ75Ae+xPGxA2c0sLy/jRLqY0pAN3DCA2HM3DMc+E4jQzpvm
         l0Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mxCmYI5w6nxSiqH6mYIJV7nQi3+kDtIa5UINsO5Pmjw=;
        b=gneHkm3mTt+xlDkLb5nRuTa1JrslOG51QR9g9ML6IB/ATXyY2A/zk1VWwTLAAoQ1j/
         zbEiCIKZLXiS5ly3cqoTgVzk0X2RKbU/cMvMyL8mqLw6iBPJME+OtgVe2tcOUTDpUOp4
         oqh99WjESsqWHD50fblfZ6tiKaAuK+d/3RjHP1QlluZSkaHS7HMW3YYENgi02yscBvfQ
         WSIfHZpavWnE7TvTg1wi1FVS1125Q/jGqaYGr7eX3OLT3VcHV+7IApjwvqeL7xL1Kn4B
         XVK5R1SyMfS8xMbeeKkMr0qfmIU/UaTHlU2RyG2UvPPUJaEB96hzOhxH1QnvDJyIdroe
         ElxA==
X-Gm-Message-State: AFqh2kqJAqTikCI+69dja8KrBIiBd8opXkRyotJD7YRbahB/ygAd9QQo
        MEJhnGzZ+sdSfx8w9HI+49+YUA==
X-Google-Smtp-Source: AMrXdXtzC8ORw8pqBQvThcAQTLn4SruOsYGLbWvNTAJ/HjwV2v5SQsxMPYT2GZ3HsPLYQLBB+dU7tw==
X-Received: by 2002:a05:6512:259e:b0:4b5:5bc6:e3de with SMTP id bf30-20020a056512259e00b004b55bc6e3demr19630790lfb.65.1673241245630;
        Sun, 08 Jan 2023 21:14:05 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id w4-20020a19c504000000b004b5812207dbsm1426880lfe.201.2023.01.08.21.14.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 21:14:05 -0800 (PST)
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
Subject: [PATCH 4/6] ARM: dts: qcom-msm8974: rename mdss node to display-subsystem
Date:   Mon,  9 Jan 2023 07:14:00 +0200
Message-Id: <20230109051402.317577-5-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109051402.317577-1-dmitry.baryshkov@linaro.org>
References: <20230109051402.317577-1-dmitry.baryshkov@linaro.org>
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

Follow the schema change and rename mdss node to generic name
'display-subsystem'.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 0cd59088f9c7..bb69247d7ebd 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1525,7 +1525,7 @@ mmcc: clock-controller@fd8c0000 {
 			reg = <0xfd8c0000 0x6000>;
 		};
 
-		mdss: mdss@fd900000 {
+		mdss: display-subsystem@fd900000 {
 			compatible = "qcom,mdss";
 			reg = <0xfd900000 0x100>, <0xfd924000 0x1000>;
 			reg-names = "mdss_phys", "vbif_phys";
-- 
2.39.0

