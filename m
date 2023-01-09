Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B30C3661BC2
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 02:11:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233170AbjAIBLK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 20:11:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbjAIBK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 20:10:59 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15B7B1094
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 17:10:56 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id v25so10685086lfe.12
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 17:10:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yO6+pl3S8OkJkK2cFQimnv5gJx6WicWkwN1eiLMeT7Q=;
        b=Vsz2WQvesd6Tz/AJqarptl/OBMOqv9EH82JbvOaC98ZXf1mgVYR+eLkGuG3ygXVYSP
         fi0uRsd/UvZwjmeJjrDHo8TkeRzCpMJ7vPKDQgAPslTSCKBouJ1P4c8iuvU3d0WVji8s
         kPtpuMZiw9T+NXwtWb8OGTxwTYif2D0rOoylBtaHLEsxq2SiDavUT3q+VctVo5g2U8hf
         GPQsNHyZEI+HeES2uVxYhKdrM3X2U4ZS5IMSeGnS+8szqCt+084vcziYC4E3MdhR4aZt
         yxoz1xN7ienhEzr/j2J/HDwNj+JaFWRSZPBv43hQ3gUJzeq7xIgOjysEZcZ7yX8kEoEj
         pSXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yO6+pl3S8OkJkK2cFQimnv5gJx6WicWkwN1eiLMeT7Q=;
        b=I7UvE+bs4+CK1pHm56n/TX7HQR47ck4f3U4+KuAUO6xexEXIrW6pY9ekyl2fVvAN3+
         jrLkTT3TkDdkjBfeZOSl1JXY1fScka3Y1jlwxmH8bBBUSRdKx5bxEn2sR/X43ia9i54j
         Lj06DOmQlQjBsPkAnjweb8chki7wz0n1zau0m4wN/os+SUw1t6oAhN2Th/EHJGMeSp1p
         QvR7oB91GKdFZ8hhy0cGagxsnMrsT80pr2ljy/FePOQpCKOvgSUixftGErwhUkANgyYV
         k0Y1ZSfLtPwbxZBLpq8Q6mzoFWDMiyn8VFozCxJ7ZW3h7CPw/hSPTEUTp12CovwZkDrC
         jnXg==
X-Gm-Message-State: AFqh2kq23ekL+pEMXoU8ZRCns+/6cDSqjph9BNei5egenlU86hgEuJdz
        +fX5pe1dV5nvp3h0hHgtuc4lCQ==
X-Google-Smtp-Source: AMrXdXv2hWpbxPQMuDdYGKPXDGoAnivFnkcYWNDLosztuDcFM30jI24yfADvP/twwdv+3nd0CpkU5A==
X-Received: by 2002:a05:6512:23a3:b0:4cb:6bcb:de4e with SMTP id c35-20020a05651223a300b004cb6bcbde4emr5312952lfv.24.1673226654486;
        Sun, 08 Jan 2023 17:10:54 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y4-20020a0565123f0400b004cc590975f7sm1324346lfa.183.2023.01.08.17.10.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 17:10:54 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v4 3/4] ARM: dts: qcom-msm8974: add SoC specific compat string to mdp5 node
Date:   Mon,  9 Jan 2023 03:10:50 +0200
Message-Id: <20230109011051.263391-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230109011051.263391-1-dmitry.baryshkov@linaro.org>
References: <20230109011051.263391-1-dmitry.baryshkov@linaro.org>
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

Add SoC-specific compat string to the MDP5 device node to ease
distinguishing between various platforms.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 8d216a3c0851..0cd59088f9c7 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -1549,7 +1549,7 @@ mdss: mdss@fd900000 {
 			ranges;
 
 			mdp: mdp@fd900000 {
-				compatible = "qcom,mdp5";
+				compatible = "qcom,msm8974-mdp5", "qcom,mdp5";
 				reg = <0xfd900100 0x22000>;
 				reg-names = "mdp_phys";
 
-- 
2.39.0

