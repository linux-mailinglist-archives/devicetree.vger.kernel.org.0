Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 11CB1744F33
	for <lists+devicetree@lfdr.de>; Sun,  2 Jul 2023 19:44:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230175AbjGBRnk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jul 2023 13:43:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230177AbjGBRnO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jul 2023 13:43:14 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E18FE6C
        for <devicetree@vger.kernel.org>; Sun,  2 Jul 2023 10:43:12 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b6e7d7952eso3952401fa.3
        for <devicetree@vger.kernel.org>; Sun, 02 Jul 2023 10:43:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688319791; x=1690911791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ok9P9IpAQTcPv0Tlft8NotdgEZSuFIkwvtwYagpVMWE=;
        b=hU2u4lruLLK/+LV27c2moyQ9G1WO52cbfcHrN98FdIE14mmzSeSFniW4Zz5l/wm//M
         dFR61fG/NE1TiYv/42Np0q7NiJgRYEttBvQSvQEJxwtSriS3ZrA4zV8SzJ2k1elAlr3w
         losoEpzkcskMxQ2JOo+RYFZsR79d6b0caJaUn3rGM0n0KLwatwVC0egwwwsDNJTxKc6W
         z9lPjVPEDT8k+NObH3PSoz3eG/gWDKU8kDW4ke1avRPvDIPpgYr/2ZAEBrhAosMqAcp4
         0pnAbB3rKKo7Vce4EBAPs/DvCQcXEpb2TNAp/EEEMLQUfnKUIhr9JGqzB/s8YncxEPWd
         ZMpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688319791; x=1690911791;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ok9P9IpAQTcPv0Tlft8NotdgEZSuFIkwvtwYagpVMWE=;
        b=Wj7nXRY2pouPc01M+i3T0H7tddgyDL5pkErgxOvDqawH5g8QCiL5QauoIt7gIZOT+L
         ASX8K8XLJmG5AzUdkKyVuGhHl+FouP4ybRPEUUZ+Tz6eO3kE/5XHHgmVOFusWZvykwNy
         1Xfu2dl5AkexuRi89MMXkMGtPVZDrPmzGaTuvQShJ4k2N8HXc1ooeBL5xyTzY6lrH6tV
         1mhGE6nBi5HuygVeEDinhEy6Siphttdm7IKRhTUckR7DmfZFZk1QqXcLKWIlJ+E2h+rC
         CDr/7pv4pn6hdv67f5tNQpIAIELutPTusSnwJFx2/qQryEoV8MJbTbLlPDwwLh+QsAyG
         aHdQ==
X-Gm-Message-State: ABy/qLadOEmDu3V3q5FCKmPFE3ppSH5NAxFBhQZv0YaBp6FAc2/03Kvd
        NUUlnl4gQ+hiqbsEJz0s0yYiwg==
X-Google-Smtp-Source: APBJJlGrwOZUDJObS9p4hbTu2Q7j7tqTM3w0NsR7pT0qKaTIsfP3sSBaw8ZXbOkisLykRKHjXM1l2A==
X-Received: by 2002:a2e:7c0f:0:b0:2b6:d7a0:c27d with SMTP id x15-20020a2e7c0f000000b002b6d7a0c27dmr3136344ljc.37.1688319790947;
        Sun, 02 Jul 2023 10:43:10 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id v23-20020a2e9917000000b002b6daa3fa2csm1372550lji.69.2023.07.02.10.43.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jul 2023 10:43:10 -0700 (PDT)
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
Subject: [PATCH v3 25/28] ARM: dts: qcom: apq8084: drop 'regulator' property from SAW2 device
Date:   Sun,  2 Jul 2023 20:42:43 +0300
Message-Id: <20230702174246.121656-26-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230702174246.121656-1-dmitry.baryshkov@linaro.org>
References: <20230702174246.121656-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SAW2 device should describe the regulator constraints rather than
just declaring that it has the regulator.

Drop the 'regulator' property. If/when CPU voltage scaling is
implemented for this platform, proper regulator node show be added
instead.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-apq8084.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-apq8084.dtsi b/arch/arm/boot/dts/qcom/qcom-apq8084.dtsi
index 8f178bc87e1d..6a2ff30a2f3c 100644
--- a/arch/arm/boot/dts/qcom/qcom-apq8084.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-apq8084.dtsi
@@ -652,7 +652,6 @@ saw3: power-controller@f90b9000 {
 		saw_l2: power-controller@f9012000 {
 			compatible = "qcom,saw2";
 			reg = <0xf9012000 0x1000>;
-			regulator;
 		};
 
 		acc0: power-manager@f9088000 {
-- 
2.39.2

