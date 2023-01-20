Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53D8C674DF1
	for <lists+devicetree@lfdr.de>; Fri, 20 Jan 2023 08:21:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbjATHV1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Jan 2023 02:21:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229960AbjATHVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Jan 2023 02:21:19 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56D968536A
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 23:21:18 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id m5-20020a05600c4f4500b003db03b2559eso2961934wmq.5
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 23:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fCX2TwLI9aZum1c9pglq0JwNjkxZ7mpNRJm/F/xcr8c=;
        b=vq4TbAhTMVqW4gP0N05b07VYOCZw3XqziYyP5JF2ScPu7l+yvrLXhKojfbM4JuErmI
         l419sAQWpkN509zV1FX1Nzod05/LMScB7b4IDfYXZlpaRzYeY778kuHOl/vqgMwZy9Xj
         /LSyb7cyeddUK/sZlgJ2i0Qcn7RVoL44WszRvo5KbfOxPVq/9o/X9xcdkYv3wRCbLBZG
         AD9O66sG/SuEZvg5P9oZdkf5yb/ffWRmeVOR0ANBCPZhuT5n44B8Eg75fB8aLysw1FAX
         H9xVGbzNrcZuGRxEw49Ed2I2EK+EoT00/u1wTK+gW6xeq8GzcwE/p140IjrAMziFPFvj
         b8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fCX2TwLI9aZum1c9pglq0JwNjkxZ7mpNRJm/F/xcr8c=;
        b=W0Pl/X7CZiougn+6+smRncwXyLAxzQka7D7OBa4U9q0zpjYGIxcaXhu++1imuKSTI0
         32yUVZj0VsK/bV8j+2vkRyomHAbNuqh9sh4m+L5uDOVRwtbljRtx9o4McEy5X6tAbcgP
         dwElSS0TxROCNBM9ursbww0Rt8lcqINj+49KkB/mQ2GER4QJ1S0XUaSbdDLNmm1kk5Ft
         PhFHs885rxHAsnrLzf6iipHKbt9zqkceNC2qc8In59xZR5eecJGSSOnixMHBu7BfVAc1
         QMFZiW8ZExPThXsH3T3YhKG2ar3+/AV+FOA6wnXZWFgLA34/qH/Pw8JL8PFPnnlGJxxh
         4onQ==
X-Gm-Message-State: AFqh2krFMkTJ3vsn7OjJP7ZZ12tZYR5OQYV7Ku9VgK701phsWLnTLOT3
        AoyQToOV8cAyedK5iAzOFSbqTQ==
X-Google-Smtp-Source: AMrXdXviFfNYl8EabixQ/X1Hi8N3VyHUwXxJT+xuel3TqqHEU3qGjb3354MHeFTyx/DT6HYAdIXuYw==
X-Received: by 2002:a05:600c:3b82:b0:3d2:392b:3165 with SMTP id n2-20020a05600c3b8200b003d2392b3165mr13164586wms.12.1674199276885;
        Thu, 19 Jan 2023 23:21:16 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z4-20020a05600c0a0400b003db01178b62sm1465652wmp.40.2023.01.19.23.21.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jan 2023 23:21:16 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: qcom: align OPP table names with DT schema
Date:   Fri, 20 Jan 2023 08:21:12 +0100
Message-Id: <20230120072113.138656-1-krzysztof.kozlowski@linaro.org>
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

DT schema expects names of operating points tables to match certain
pattern:

  qcom-ipq4018-ap120c-ac.dtb: opp_table0: $nodename:0: 'opp_table0' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/qcom-ipq4019.dtsi | 2 +-
 arch/arm/boot/dts/qcom-sdx55.dtsi   | 2 +-
 arch/arm/boot/dts/qcom-sdx65.dtsi   | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/qcom-ipq4019.dtsi b/arch/arm/boot/dts/qcom-ipq4019.dtsi
index a73c3a17b6a4..02e9ea78405d 100644
--- a/arch/arm/boot/dts/qcom-ipq4019.dtsi
+++ b/arch/arm/boot/dts/qcom-ipq4019.dtsi
@@ -106,7 +106,7 @@ L2: l2-cache {
 		};
 	};
 
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table {
 		compatible = "operating-points-v2";
 		opp-shared;
 
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

