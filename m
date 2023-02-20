Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 546C069C802
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 10:54:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229604AbjBTJyJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 04:54:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230138AbjBTJyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 04:54:08 -0500
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3C14A5C1
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 01:54:06 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id i31so7640618eda.12
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 01:54:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0r6evuuX2LogY7v1aaZb5aDQHyHFxjAE901T9VWuy7Y=;
        b=lR3W42+SAwfBhlIZlChAdmwEEbnC+K1Ajh0pfzFnI09f5QEjI6XM/owwu49X4B6hF/
         EhJOJh9ntKDsoaVs9Tn1m+Me5+7EEf0yXztIVa/+FaqtsJU93jIE/ZDWj4bPvz33Hx+n
         Qi0X6yawWLmp/oI5hdw8jMPxEOjzYRcO8pP4z/whO9Jg7FBC2AfJf/dRHLv4kmvfVvKE
         TAHW3/zerX/Lmi7jHeIbQsMx1jkMtwTNDzjTMWXa2QE+MF7J6qugSl4sgltBvxHczOdK
         7MaBrCqOv677tzdVddqpRag0KYrxaKVib9tM+Fxx8S0MgsF5xVuhKI3+/Xt/97pRSjNQ
         lc6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0r6evuuX2LogY7v1aaZb5aDQHyHFxjAE901T9VWuy7Y=;
        b=RjsBH2W/Dh6LrsDnjatOdIm3LNc4RukB+Mv8c4DEUVKCSFaZmT3yuP0c9ZKk1P5Kdf
         caqVSeS1xMNxOa2o5eqUerwE66QPUXKuvAQkOihnEfC8M0wZv2eWSXrqVNV9dSF4UGL1
         Qh6YPM4ViyjKoV8OAl8Of3CCzl5EI80meAAJjvDiFxbCyots7TiSw8kqFDN5tVrCpNJF
         MbGO/UFuosFk9YpZj83tZh0pKTIm2R30huksJQjFqUuXl39KxteWk4l2xQYSzz26Vfwn
         cYGyrPSAozs4WAdk/USqBJHmIP/LRBqEa60iKxcJA9WxvD5xwnrVvf6HMPlnlZ60tjJR
         Hazg==
X-Gm-Message-State: AO0yUKUs/XHFbFvtPd49GFAvrpEu2gfhW1mUECxFWXFqX64bjBS7mmT4
        a6Va+bcQzV8qpMXwNUou/byMzA==
X-Google-Smtp-Source: AK7set8bLN+H8LkFYqZxXMIHpQPWdN46X4dylYWUEdeUvyOlKl4XoEFpl5KhgdTgLf/FaKk6StBzUA==
X-Received: by 2002:a17:907:76ad:b0:8b1:749f:b2c0 with SMTP id jw13-20020a17090776ad00b008b1749fb2c0mr13309805ejc.74.1676886845183;
        Mon, 20 Feb 2023 01:54:05 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b11-20020a1709062b4b00b008b147ad0ad1sm5499236ejg.200.2023.02.20.01.54.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 01:54:04 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: qcom: sc7280-idp: drop incorrect dai-cells from WCD938x SDW
Date:   Mon, 20 Feb 2023 10:54:00 +0100
Message-Id: <20230220095401.64196-1-krzysztof.kozlowski@linaro.org>
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

The WCD938x audio codec Soundwire interface part is not a DAI and does
not allow sound-dai-cells:

  sc7280-idp.dtb: codec@0,4: '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 8ebcf763b3c7..cff0e0d31c15 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -480,7 +480,6 @@ &swr0 {
 	wcd_rx: codec@0,4 {
 		compatible = "sdw20217010d00";
 		reg = <0 4>;
-		#sound-dai-cells = <1>;
 		qcom,rx-port-mapping = <1 2 3 4 5>;
 	};
 };
@@ -491,7 +490,6 @@ &swr1 {
 	wcd_tx: codec@0,3 {
 		compatible = "sdw20217010d00";
 		reg = <0 3>;
-		#sound-dai-cells = <1>;
 		qcom,tx-port-mapping = <1 2 3 4>;
 	};
 };
-- 
2.34.1

