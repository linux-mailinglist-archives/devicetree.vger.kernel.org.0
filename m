Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F0F5655CFE
	for <lists+devicetree@lfdr.de>; Sun, 25 Dec 2022 12:58:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231133AbiLYL6x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Dec 2022 06:58:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230512AbiLYL6u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Dec 2022 06:58:50 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E6DA2728
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 03:58:49 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id bf43so12884228lfb.6
        for <devicetree@vger.kernel.org>; Sun, 25 Dec 2022 03:58:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yC00rd5T02wIJphR43PoEyeNsBoek3d63T6Rp4jCNKc=;
        b=toFKYB79ijRWHbuF1t13TgEAxY03wX6AYgM7h7YkAd1p5xp9278Po+xKWJDMVMFLZ5
         tRc8upmWrhpJn/CEI9SjuGf1P8Yno/XC5VXQ/qFp+F9XW/qFXcRyJ13Yf3Fg6qQnLQtY
         NCFajW0ctQ1SN54x7635+NnT9SSQBdbfzByiFMOBBDhp6gft5E0/BB1bm0NPFae2fS1d
         EL+B1les0HQRYiXDMHRLgD8uMMw1w64G6Q9c9gfgtBN+Rwb2fNjSUX9VLqor5kCeV6y+
         atflFPlJ2tcRH87YVE1sKr5+X6fT59Aj+WWiiaaajcRd1rBXk8f6PzjJZ8fnjNHQRlrp
         2chQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yC00rd5T02wIJphR43PoEyeNsBoek3d63T6Rp4jCNKc=;
        b=fk0Um4Go176lvlnMKTMTjSY2fLdAIVbrBfB6gUkHPPkza2REAy/ZozdsZJLRGnzVyG
         URPzuGJpSY8e5yPRNwjtFo6v29/Xdt+i5H6EJlPRzi97pp96niG1Oum20fOHWKVoDBYn
         q42xTwMUxU0nLpp5GF5iSw6s26ks/s1Q75mE+MfRQcfKAZ19TLDXEgkGzDGdOGu2Ha/1
         smzKwILqahAYT4IbxYq8Dq8JBBtGEZJReJgF4aOpe2EPDwIMwWDHrv+0Un4rEdkM5QyN
         uJK1wBEFJMsY2PGBaMLzD4v8fSqMFnQDTvB3X+c0Kel7LwPau46oYMrOC2a/mHDpVeDr
         EnaA==
X-Gm-Message-State: AFqh2ko8oGnYzzJTnSGpmdfTlaxfPXuApspAWc1obJn/Cet80pvigLvm
        /paXPGxw+ToCqHF0m9x8QN7Lbg==
X-Google-Smtp-Source: AMrXdXv9YS3mr7UwwKAyhljjzSi64Kc3pVInM8cgvLBbg4QbXq8ffeKk7QodSOso3WwjODgWXhwWqw==
X-Received: by 2002:a05:6512:3c89:b0:4b6:fddc:1fcd with SMTP id h9-20020a0565123c8900b004b6fddc1fcdmr6385022lfv.23.1671969527736;
        Sun, 25 Dec 2022 03:58:47 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c1-20020ac25301000000b004b5901b8011sm1318141lfh.105.2022.12.25.03.58.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Dec 2022 03:58:47 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/4] ARM: dts: qcom: align OPP table node name with DT schema
Date:   Sun, 25 Dec 2022 12:58:41 +0100
Message-Id: <20221225115844.55126-1-krzysztof.kozlowski@linaro.org>
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

Bindings expect OPP tables to start with "opp-table".

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-sdx55.dtsi | 2 +-
 arch/arm/boot/dts/qcom-sdx65.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-sdx55.dtsi b/arch/arm/boot/dts/qcom-sdx55.dtsi
index 5408ff715fbf..c64088c12c89 100644
--- a/arch/arm/boot/dts/qcom-sdx55.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx55.dtsi
@@ -62,7 +62,7 @@ cpu0: cpu@0 {
 		};
 	};
 
-	cpu_opp_table: cpu-opp-table {
+	cpu_opp_table: opp-table-cpu {
 		compatible = "operating-points-v2";
 		opp-shared;
 
diff --git a/arch/arm/boot/dts/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom-sdx65.dtsi
index d3c661d7650d..aa6439d8763a 100644
--- a/arch/arm/boot/dts/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom-sdx65.dtsi
@@ -61,7 +61,7 @@ cpu0: cpu@0 {
 		};
 	};
 
-	cpu_opp_table: cpu-opp-table {
+	cpu_opp_table: opp-table-cpu {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-- 
2.34.1

