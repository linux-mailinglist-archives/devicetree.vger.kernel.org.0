Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE33D734274
	for <lists+devicetree@lfdr.de>; Sat, 17 Jun 2023 19:16:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238423AbjFQRQD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Jun 2023 13:16:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236059AbjFQRP4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Jun 2023 13:15:56 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE99519B0
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:15:54 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5169f614977so2651690a12.3
        for <devicetree@vger.kernel.org>; Sat, 17 Jun 2023 10:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687022153; x=1689614153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kPDYBUqR9l7ZWoKsqO3wGVGBzQKRhUym+LyVhNjS9Kc=;
        b=HteCPkFhJQffzVFaLvd6umeUyL7SlMRq6RORzp4o0hyw7uRzMRSu4F72dV75NC2aHX
         z0iJxdS2ztOEgudJU2Fba7CX+Zl44yAq62rKZdjxnKBV6UFvbGJSPaPDzdF1YbEddidi
         k2iAuzLMpm5kewWTLG+7a093qp/M0nmLgxCUl7EqpxJqnxAUgEzK/wLC8ieDcLEd8yMW
         KYuvZusSD4/M94SRt0Uq5ix7gPpDiCzD4Gsu0dcxTFyaLxP9F4AIMiHqcwZr+y9jut0x
         pQ8kRo3fknOKr+e05A76YJfyU/1QHm8UB4MZznDK0Egw7XwhoJHC+T1dKtm0FbCWjpxN
         92sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687022153; x=1689614153;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kPDYBUqR9l7ZWoKsqO3wGVGBzQKRhUym+LyVhNjS9Kc=;
        b=PsaZZIeA+BFevD47NgNx53GD9iq1/XG3UMbNZrZHCdKednM4yTJEnPFZkh8Q4PB/8n
         52JY44jS4uMP8TAaow9EVB6wyGvXltSqZNU26d5am+goUG1XLW4Vphrov4eQEBqbZbmR
         oq7bYZqWLGMr5AGoXxoYHvri/mx2t12PW+5lxVH6GFtarn8EOQ5nV/z577/zzJaiPbUb
         jktdqS8EhoOVg6WcWMiWys/PjIEXoykXnLEy2S+MeTyAAGSP2s97JNA8v1Cl270OYWQh
         13cdEsW2szPN6XM8/aXFoZ1X2JHa1qWJGsPcUVVWaeT9l6FbEg5oFKVemarWRuzY/92F
         tX3w==
X-Gm-Message-State: AC+VfDxsf94E9r04v6MNlHdeNp2CbnFh0gjXbbKbAg7uSJba3wKzwePL
        5n24hABdg8dpzLx4uauyP6RARg==
X-Google-Smtp-Source: ACHHUZ4Cq0GZsuQSaHZn8Rw/ZWdz7BHEt0h0zCZyh62j4vXwIejL/QxrcveNtss5TqiEar5Sp3i0vw==
X-Received: by 2002:a17:907:360e:b0:96a:4ea0:a1e7 with SMTP id bk14-20020a170907360e00b0096a4ea0a1e7mr5307339ejc.50.1687022153375;
        Sat, 17 Jun 2023 10:15:53 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id os5-20020a170906af6500b009829dc0f2a0sm3841897ejb.111.2023.06.17.10.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Jun 2023 10:15:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Nikita Travkin <nikita@trvn.ru>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 07/15] arm64: dts: qcom: msm8996-xiaomi: use generic node names
Date:   Sat, 17 Jun 2023 19:15:33 +0200
Message-Id: <20230617171541.286957-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
References: <20230617171541.286957-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use generic node names for I2C devices.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
index 8c2d6e9e851b..bcd2397eb373 100644
--- a/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi
@@ -189,7 +189,7 @@ &blsp2_i2c2 {
 	status = "okay";
 	clock-frequency = <400000>;
 
-	nfc: pn548@28 {
+	nfc: nfc@28 {
 		compatible = "nxp,nxp-nci-i2c";
 
 		reg = <0x28>;
@@ -208,7 +208,7 @@ nfc: pn548@28 {
 &blsp2_i2c3 {
 	status = "okay";
 
-	typec: tusb320l@47 {
+	typec: typec@47 {
 		compatible = "ti,tusb320l";
 		reg = <0x47>;
 		interrupt-parent = <&tlmm>;
-- 
2.34.1

