Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C4AD5E7F61
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 18:16:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230408AbiIWQQR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 12:16:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232342AbiIWQQL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 12:16:11 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BDB6132D53
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 09:16:10 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id z25so1088655lfr.2
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 09:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=N5iR35AZK7Pq7du6XK86lz6F1DzAFtqNxi6z9fgTPVE=;
        b=esctpbQw2L3nGmKzQHGVd6EzyWPg/sXJ7LJj8Kx3kxp68EOVvSaBIDrHwjrIMxpPM3
         0/crjbEOQuOiO458/IQEDdK0odsu/xkzAq5jBxKUy5hRoGKwypNT9sy7Lz5CAqNy+qAG
         U5Px2Lkfk3Wtv2jHMd08qlymxL9xjSMA+30WMsUEKc+f5jGp+aIo52jSgBbepftg1tyQ
         KUrbmsCCws2dgRIW0LFX+5mb2WzATEC4fjb95XRce9d/wsMiW5BWf4VVAot5AH9PaH21
         HyV3AHsFBCsK5HJu0UwJWjoKiGd0O2WJNV9W6HnB229ruWUGEOihEv2l3cmwulPIzmZ+
         NaAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=N5iR35AZK7Pq7du6XK86lz6F1DzAFtqNxi6z9fgTPVE=;
        b=Cf/u4icBa2awtnXKR3YgrRMIBOOOnEXUYAdy0Y85/FMKn33xUpr0Nth0t5/ukRVS+Q
         /cldat2QqOGMjTq7SVZ99VyUP2vN0kBS/PjwmzJrDuHzUs5iVIch6UBxFT9jVEolMSvm
         RcIUOLInK2jvPbGtyxcNorDaq/wOZotlAd5k5gwzpX2Numkdyy6hicABK9dvH+i3Hw5y
         BgW6T0Wx5EehHbuGxuikmso/uergIQ+d9UwZNcsJ02Ry6QVVaj3DnFNCAUHMuygv1jNL
         9k6PwCggBNT5Bnlr/SJ+9xmsjMhlGe1h6ICZtHJ7tuvWWoFHmy/YxhDP0TeC2rhT4KtM
         7rMw==
X-Gm-Message-State: ACrzQf01zujZqeFQisQ9Ml8kAiS2Oz7snl2ngHx2MZIz2icsdG6NOFMM
        hjF4m8DLD5A8YbtqpijDKw9nMQ==
X-Google-Smtp-Source: AMsMyM6OCdxpQT454Mu9Hj9QhhUmeqWXf80XpGOikOQDBkMj48ZwjGoID0Cq3agtQ4nPGDXl9cZXAg==
X-Received: by 2002:a05:6512:1112:b0:49b:4e7b:9752 with SMTP id l18-20020a056512111200b0049b4e7b9752mr3364249lfg.685.1663949769026;
        Fri, 23 Sep 2022 09:16:09 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f9-20020ac25cc9000000b00492f45cbbfcsm1493491lfq.302.2022.09.23.09.16.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Sep 2022 09:16:08 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 02/11] arm64: dts: qcom: msm8996: drop unused slimbus reg-mames
Date:   Fri, 23 Sep 2022 18:14:44 +0200
Message-Id: <20220923161453.469179-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220923161453.469179-1-krzysztof.kozlowski@linaro.org>
References: <20220923161453.469179-1-krzysztof.kozlowski@linaro.org>
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

Drop undocumented reg-names from slimbus node - there is only one
address range and Linux implementation does not use it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index ae31393081dd..903c443a867f 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -3312,7 +3312,6 @@ slimbam: dma-controller@9184000 {
 		slim_msm: slim@91c0000 {
 			compatible = "qcom,slim-ngd-v1.5.0";
 			reg = <0x091c0000 0x2C000>;
-			reg-names = "ctrl";
 			interrupts = <0 163 IRQ_TYPE_LEVEL_HIGH>;
 			dmas = <&slimbam 3>, <&slimbam 4>,
 				<&slimbam 5>, <&slimbam 6>;
-- 
2.34.1

