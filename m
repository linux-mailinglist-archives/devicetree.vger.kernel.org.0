Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBEA6686AD3
	for <lists+devicetree@lfdr.de>; Wed,  1 Feb 2023 16:52:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232720AbjBAPwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Feb 2023 10:52:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232716AbjBAPve (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Feb 2023 10:51:34 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5763E751A6
        for <devicetree@vger.kernel.org>; Wed,  1 Feb 2023 07:51:25 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id q5so17785918wrv.0
        for <devicetree@vger.kernel.org>; Wed, 01 Feb 2023 07:51:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1C3Q8h+7EWu2A7pbOahFR8dcxVnLgx0+BPzMnwUs6o4=;
        b=Y6NwIibekci4ezaRXyd7Dr39Hjy7kELbHtea5yjPZdOeInfKSmEW6RcLVoNfkdHGa7
         9Jbvq6fFLQXnUCYMcHkSprFKhu7Hc089tsqU7mW6A8DemQt5G3ZNcWHu9sdoft0A05pT
         Xf6aAVDSx7S5dthtNGzDIqSgvzcKE1eLjoi46RzwERalqWLm1ME7ZWmwYtRwbOC53iNe
         1SU9HEysi+rMvTYxQRtTeJvFV2W42F19ler8tzgz5de/RwUBK16k422LH9mfu1GaXkEk
         3/vYaD/7D2OU2yvrDyA6XLc97lE7BXJfrFGL3QEd20cY4qZczG+Jed2d4VOERcJQCsIi
         Dy7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1C3Q8h+7EWu2A7pbOahFR8dcxVnLgx0+BPzMnwUs6o4=;
        b=1XpecS8IGzzqXx4EtqHbTob7Ow5DBj3LA0Y/h3f+g4uPpRGzyHD+UWXGo3eEQlg36N
         MD3A5yAvzRsr40+ePVEj2nhSgI02Mg0gNFGR8szJyjdGCgr3xZTFqnZO4wJCR0qKN7u1
         hBXKusCmd1Y0PKlJw/CkwJM3Pw/+KCL0znyhhuwG8D7wFJPnGlKiKxMLlsXd1qYO5C5w
         s6PdmY3v72bTTC/UKnyxtwX8edX1sDoiYPgUv4NV4py8KLoPdWw8ildFmP0ZtcPxcoEZ
         a+5QQ3Zp0wlWmYF3GCFLepL03yMNYooxQM1Vx+7XDhIUFYUfsq3HJwi+EijMMFsNyvyD
         qiKQ==
X-Gm-Message-State: AO0yUKVwbSZ+22DVw3l0AeRv1czwOx/CT5GC8P9NwAdykTpbuVCvlsAr
        IsSmq5y7T9zUD/f3dyADQjIaXQ==
X-Google-Smtp-Source: AK7set/lW0i3rO3MCxv0CymUx1xTZ7DCtsBLbETbzitH9gyRqZbSe5GIUe2r4mN3wWkOpTJXWQZbAw==
X-Received: by 2002:a05:6000:1889:b0:2bf:c518:b060 with SMTP id a9-20020a056000188900b002bfc518b060mr3628462wri.20.1675266684970;
        Wed, 01 Feb 2023 07:51:24 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t1-20020adfe441000000b002bfd524255esm14816189wrm.43.2023.02.01.07.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Feb 2023 07:51:24 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RFT PATCH 12/14] arm64: dts: qcom: sm8150: correct TLMM gpio-ranges
Date:   Wed,  1 Feb 2023 16:51:03 +0100
Message-Id: <20230201155105.282708-13-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230201155105.282708-1-krzysztof.kozlowski@linaro.org>
References: <20230201155105.282708-1-krzysztof.kozlowski@linaro.org>
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

Correct the number of GPIOs in TLMM pin controller.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index fd20096cfc6e..4cd0aa314140 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2278,7 +2278,7 @@ tlmm: pinctrl@3100000 {
 			      <0x0 0x03D00000 0x0 0x300000>;
 			reg-names = "west", "east", "north", "south";
 			interrupts = <GIC_SPI 208 IRQ_TYPE_LEVEL_HIGH>;
-			gpio-ranges = <&tlmm 0 0 176>;
+			gpio-ranges = <&tlmm 0 0 175>;
 			gpio-controller;
 			#gpio-cells = <2>;
 			interrupt-controller;
-- 
2.34.1

