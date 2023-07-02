Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B6B1744F4C
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 19:51:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229715AbjGBRuz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 13:50:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229795AbjGBRuy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 13:50:54 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17930E78
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 10:50:52 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fb9fd28025so4877840e87.2
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 10:50:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688320250; x=1690912250;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aJ16m/ajl7p1zsTgljmFxQRg45r/k8PTRIwy2XrAvY8=;
        b=JscLQYUdCjcvpuCe6y1Fk8FLlZcKH2g7obgA8k71qpYxX2ujNpnveD0oFbYWrifjCo
         drTO96MOqQkv+3DwWPX3eIK3p2uSfXhvembCyrU31/7954lA06RenbKGaFEslnOVgyOm
         xmsctiKc+wWEBWb7BkWnr/fOLBVbzjtmbGkBd0VvpfThkn36Y3ORP23mdd/kRSsC30uU
         rz37QfZv+DvnndMadnx3kRxu5huRNJupRe3LLYFi4HgHDkTlGcAwxUjGikNAg/FvUVFO
         5ftUQ7U3k7qccxaY5HUHC2M73In5kqtfbDkrvA0JxBJ3rFuy5SiDQgGfmsNPuB2ptIGP
         hbYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688320250; x=1690912250;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aJ16m/ajl7p1zsTgljmFxQRg45r/k8PTRIwy2XrAvY8=;
        b=X1JRQ1rxyZh8CuLOC51TFTa6WtqkLbs4qT6axVhiTdQVgB6GzOo9yzwTZKz5iE+LCO
         HprSwEijJZrs4dxOtaVSFOBf8KDmoW55cJUIfcysIz03PqOl6+VRUcU8T3bacsDMn5hB
         sUpL+IRzq1OjsHB4MH/1rsdGikMYx6le+LqjJ8EBk5rc81xWyIYqYpxJA14N1uL9CTtw
         mkkTAWVEzophFMYH51fKdVn3Ye88yD8fTitv7VgpV0N60JEUjNF04WOj/NZuuMGNDNKb
         5Dy2HHIs2PtJEdYSR3t6og0Rt9IyADrazSbhfQuNY2ToelTtZRutAS9dmY0XpmcPL8z5
         wcNQ==
X-Gm-Message-State: ABy/qLb2FL+abhtUoSJJucjAnoudq//ykL/hC8Jn5A7XsHk4PJ00UoEj
        YPdXGGOdmOGpXqkJOkTCehoa4g==
X-Google-Smtp-Source: APBJJlEzcX71kZ+fAYfFor4cTdIDzxZ6ktzi5QW1CN5jFoknmxwjJdy3SNIjeXMNBzowXDQbz1U1eg==
X-Received: by 2002:ac2:4bc6:0:b0:4f8:6627:7983 with SMTP id o6-20020ac24bc6000000b004f866277983mr5027251lfq.5.1688320250398;
        Sun, 02 Jul 2023 10:50:50 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id d1-20020ac24c81000000b004fb759964a9sm3354130lfl.168.2023.07.02.10.50.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 10:50:49 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Ilia Lin <ilia.lin@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Georgi Djakov <djakov@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
        Christian Marangi <ansuelsmth@gmail.com>,
        Stephan Gerhold <stephan@gerhold.net>
Subject: [RFC PATCH 5/8] ARM: dts: qcom: msm8960-samsung-expressatt: constraint cpufreq regulators
Date:   Sun,  2 Jul 2023 20:50:42 +0300
Message-Id: <20230702175045.122041-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702175045.122041-1-dmitry.baryshkov@linaro.org>
References: <20230702175045.122041-1-dmitry.baryshkov@linaro.org>
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

Add additional constraints to the CPUfreq-related regulators, it is
better be safe than sorry there.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
index 2e7d98e132be..6bc02bf25120 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
+++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
@@ -116,7 +116,7 @@ pm8921_s2: s2 {
 		};
 
 		pm8921_s3: s3 {
-			regulator-min-microvolt = <500000>;
+			regulator-min-microvolt = <950000>;
 			regulator-max-microvolt = <1150000>;
 			qcom,switch-mode-frequency = <4800000>;
 			bias-pull-down;
@@ -272,7 +272,7 @@ pm8921_l23: l23 {
 		};
 
 		pm8921_l24: l24 {
-			regulator-min-microvolt = <750000>;
+			regulator-min-microvolt = <1050000>;
 			regulator-max-microvolt = <1150000>;
 			bias-pull-down;
 		};
-- 
2.39.2

