Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A39A52FDC1
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 17:21:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353468AbiEUPVS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 11:21:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355391AbiEUPVG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 11:21:06 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E52ABC93
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:21:04 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id p22so18773868lfo.10
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+RgTCF6Ae4/KvPMsQo/XxnFRH2qjyDoAGXi+2vATcqM=;
        b=iyLk0Ag4/LMggyRt/kuRFIZRUt/fR3rQYh+BpbV1sjgmt8p8sSSPBv4Gkt59Nqsi3t
         RVD9sey1zXRY1+mbKCm3UP4zheqdosW8H6wLtRRl5xwzp1K2ur8IEmUQZxcAmMetJhkE
         jL/tG8/o3YB3KMv43XNylLdSCEuheIHbGLJBOYb5mp8vzG2H/WUCiQtVyEe8OzPobvhL
         Chq8B5BtIgeZuu7w8HNKHsvkX5pWSsV321j7MHdhyM+GStSov6+Tw6eTZUB9YBrV+VQj
         vTTFF5SqtNw7hzwEU/eEedBunnbFsAdMTYmBnPRih7EQYMbC/TgRhOkp+qHp1fAeEoqp
         W/Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+RgTCF6Ae4/KvPMsQo/XxnFRH2qjyDoAGXi+2vATcqM=;
        b=XRKfzorwnseOeoWC5SuSEtQuAfU0jidbOoIrfHZsF8QNW6z1UioFsQUnCMREEIkrA6
         NRgKCj74kZFmLnA0Wo00NYX0sg1rphzXiSP/vQl9KdptBhY4q8u0KUSbspWEWqtAr7eT
         JAHNOykSh1806pdmcQ5KQ9bvOMSd8U0u0VY9Ouak/eacraD5UbKdP0aP9WVJRrsSHcms
         RU3z2ltr/ro/+7Bgec1XPLxfffLerLOEiLdWqCs8ovmUC5roj2dqBfyGER4GIvkSAVkc
         +43ABuUBYOz6igF4lcKTrMYGXt8WGjzC/Mk7cxi6QZ40r6k2EqWlwjzwjP8NIk9hmVDy
         JRZQ==
X-Gm-Message-State: AOAM530LuTpbkjjqSy7P85HheZyaoDfnZ13UtH4/htTkepus7mQ9noqt
        pkR0YjJ3tPkydxhU4uXdNqvD1g==
X-Google-Smtp-Source: ABdhPJyx3I6pv7/U+QzLxZfStBXWex2MDyVDdB42AjylgqcKcj0gGDkOTK9GjP+c37YI6HtIoDORhA==
X-Received: by 2002:ac2:51d0:0:b0:478:5ae7:e78d with SMTP id u16-20020ac251d0000000b004785ae7e78dmr3665441lfm.684.1653146462727;
        Sat, 21 May 2022 08:21:02 -0700 (PDT)
Received: from eriador.lumag.spb.ru ([94.25.229.156])
        by smtp.gmail.com with ESMTPSA id k8-20020a2e92c8000000b0024f3d1daeccsm739933ljh.84.2022.05.21.08.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 May 2022 08:21:02 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH v6 08/11] arm64: dts: qcom: sdm636-sony-xperia-ganges-mermaid: correct sdc2 pinconf
Date:   Sat, 21 May 2022 18:20:46 +0300
Message-Id: <20220521152049.1490220-9-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
References: <20220521152049.1490220-1-dmitry.baryshkov@linaro.org>
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

Fix the device tree node in the &sdc2_state_on override. The sdm630 uses
'clk' rather than 'pinconf-clk'.

Fixes: 4c1d849ec047 ("arm64: dts: qcom: sdm630-xperia: Retire sdm630-sony-xperia-ganges.dtsi")
Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm636-sony-xperia-ganges-mermaid.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm636-sony-xperia-ganges-mermaid.dts b/arch/arm64/boot/dts/qcom/sdm636-sony-xperia-ganges-mermaid.dts
index b96da53f2f1e..58f687fc49e0 100644
--- a/arch/arm64/boot/dts/qcom/sdm636-sony-xperia-ganges-mermaid.dts
+++ b/arch/arm64/boot/dts/qcom/sdm636-sony-xperia-ganges-mermaid.dts
@@ -19,7 +19,7 @@ / {
 };
 
 &sdc2_state_on {
-	pinconf-clk {
+	clk {
 		drive-strength = <14>;
 	};
 };
-- 
2.35.1

