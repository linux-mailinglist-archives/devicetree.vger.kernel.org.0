Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E4AD639CD1
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 21:32:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229658AbiK0Ucr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 15:32:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbiK0Ucq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 15:32:46 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC158B1ED
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 12:32:44 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id j16so14499589lfe.12
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 12:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5wctFOz/nSpTN4OSDfsZrkfnC9lhpWkR8Iis9Z6iKT0=;
        b=Sx86bGCOyWNaKmj5BPxdr9MyKwyQeijbpW8Jh7pLwHSF4soVXVHaaz4Pgj7qDi1Yhm
         KmkzySjj2FCvHeWKPEW5H/U4WZ1XQN/8IBKWXd73E7kqAFB8es02kv4D9lGhIyN9igWm
         MyvtD8fn0zADpHPbJzZJ9kibX3TgwlMFWh69MoB4HSUtL/Sp3dAOGTjg/9ANgDQUL2Jb
         S8pYC5H5p+gOUrnxTtGGruMFlU5yFtfTbEumGfggG2q497HUSef7+E5UadoxSZeHPFJn
         bjW2lN3nO49L3Ve035LI+dCoIDzzF6qd1R95re4Lcpe92FypHGH+RHa8mK7jEOk+9V7X
         zd5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5wctFOz/nSpTN4OSDfsZrkfnC9lhpWkR8Iis9Z6iKT0=;
        b=oq34oQ24S9YsXQqgTpG6lo2ntIyO5p2mr5rbqCs58zYvQOoB1ujwVDUJRGCX3XOjuw
         KiIATXKPXB0Km85coR8YnCPENe0a72cyXHOTgERDIrYYyzqEc5gFyLwF9wLcLhEN+mr9
         fI1Icb6S1nxPBTHOmVLmQGn/q2o19lJs4FIaLqyubfFaBpjYvKzCF5SnUWvTsby4BHS2
         Q/SatQCfTHT32mdn3HlEFo89h10YeYV9dIxjWI03rI3BLKSRjI5YwUNWTfjC12wuBjtp
         Yy9BW+ScSWldRnimBvxRziSa57+CVSre+ThMCubhqY7algxQ9QdyVNlZkjEO1c3tsvi3
         EviQ==
X-Gm-Message-State: ANoB5pkRWpXcPWrdZa5Uux92wiw8+Ec4/KdU3EJVK0d6LOfy6lz1bTEv
        Ztj283P3F8hQn9tkkXQswqns9w==
X-Google-Smtp-Source: AA0mqf64W+e/ef0exP7/t4NwMCa6LM0vubj3hAHb04DAerLYPrBLv1lUKmfiVcckYnQzPrbisY/+ig==
X-Received: by 2002:ac2:51cc:0:b0:4b5:a72:1a8 with SMTP id u12-20020ac251cc000000b004b50a7201a8mr2665413lfm.391.1669581163254;
        Sun, 27 Nov 2022 12:32:43 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id w10-20020a05651234ca00b00494942bec60sm1412827lfr.17.2022.11.27.12.32.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 12:32:42 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/3] arm64: dts: qcom: msm8996-xiaomi-gemini: use preferred enable-gpios for LP5562 LED
Date:   Sun, 27 Nov 2022 21:32:38 +0100
Message-Id: <20221127203240.54955-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The preferred name suffix for properties with single and multiple GPIOs
is "gpios".  Linux GPIO core code supports both.  Bindings are going to
expect the "gpios" one:

  qcom/msm8996-xiaomi-gemini.dtb: lp5562@30: 'enable-gpio' does not match any of the regexes: '^led@[0-8]$', '^multi-led@[0-8]$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. New patch
---
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts
index d8734913482f..dbd5f7e2df65 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts
+++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-gemini.dts
@@ -54,7 +54,7 @@ lp5562@30 {
 		reg = <0x30>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-		enable-gpio = <&pm8994_gpios 7 1>;
+		enable-gpios = <&pm8994_gpios 7 1>;
 		clock-mode = /bits/8 <2>;
 		label = "button-backlight";
 
-- 
2.34.1

