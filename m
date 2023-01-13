Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 721B6669E15
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 17:28:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbjAMQ2u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 11:28:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42704 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229942AbjAMQ2W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 11:28:22 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6EAC8142A
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 08:22:56 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id u9so53528777ejo.0
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 08:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Khdx3Ga85eCQb6IsMCjx6CynZpib1E9o545AtXQA2Fc=;
        b=ma3jG4N5B5obz0s2JVeNyEQIdR0S3Qr8HitCRFHWCXv+EP5PmijF5R6rartbKOGBVM
         u4T2VnKPd6BV0S9kNFWV6K1AeuwhnD7+mKeHvqqijcs1vC2dwRMad9OHguFvV19XzAM6
         K5y1lcEEh29q0TxuCMVaAa5wRxQY9v+pQYb+EN7ZfTtfBd5A+ziJPM60LzHx2H9SMIqz
         M+HsHD15mX4Ie7OMr2oeCNvbmgHoXYpfvd8hLW215rjbrWQkxrVJ3aj+91kw2XueM2UC
         hoqw0ZAFNpjQrF0YHnuJv/zc7aNxJp7cAaqmeOVbX/mVofbEvLdXHRiSOqCs8lPqY6HE
         Cizg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Khdx3Ga85eCQb6IsMCjx6CynZpib1E9o545AtXQA2Fc=;
        b=4wZlAjDEGSHkQOglSRv7una88KbhFer6/oWb9qqfiKxzOxeZWlCAAka5LwF/kdm0vT
         f80JfOaW2Lnmh1tlO8sv3O30gKnkW9OZ6nRFdi3T4AeiiNh8n/wD/S+kRLfe0hOKSVrj
         kfx6MSCLJSDK9eDt7kloxBa4NtsyUtViWbtoLfKRER1vf86a/+rJ5v3Tj1E0DujYkTi2
         XCG9WXeuxFsRchcMsyGlgDSj+kv8IkyNA0BCowA7GSI5S1o2xn6gQvESnsod7n9UjKWf
         sx0hunLKvrFt1+xpmiyt9ozdNIFohWVfJkBgq/U4YSeCDqkZxmRCUsg2A93AYtdgtUn/
         SFRg==
X-Gm-Message-State: AFqh2ko7HsYHR06pAgiaH3looXzcrXs2+KfEHazHn/orMfUEoZvrKDQS
        3RK/87iNl1E8dWqYxdIViI+dcN6enfoV50os
X-Google-Smtp-Source: AMrXdXvCnqHQGC7HhNpBGI6RSDinwcsGecCbYlNsp2MP+CXZiXAXxUz7BwOnVYgyPjs+Rq3pKRCc8g==
X-Received: by 2002:a17:907:88cd:b0:85c:dc1b:dfb0 with SMTP id rq13-20020a17090788cd00b0085cdc1bdfb0mr13422734ejc.47.1673626976344;
        Fri, 13 Jan 2023 08:22:56 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q1-20020a17090676c100b007c0d4d3a0c1sm8739479ejn.32.2023.01.13.08.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 08:22:55 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 6/6] arm64: dts: qcom: sc8280xp: drop unused properties from tx-macro
Date:   Fri, 13 Jan 2023 17:22:45 +0100
Message-Id: <20230113162245.117324-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230113162245.117324-1-krzysztof.kozlowski@linaro.org>
References: <20230113162245.117324-1-krzysztof.kozlowski@linaro.org>
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

tx-macro does not have children and does not allow address/size cells:

  sc8280xp-crd.dtb: txmacro@3220000: Unevaluated properties are not allowed ('#address-cells', '#size-cells' were unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index 5f2bb35a39bf..4986db9d35ad 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -1788,8 +1788,6 @@ txmacro: txmacro@3220000 {
 			clock-output-names = "mclk";
 
 			#clock-cells = <0>;
-			#address-cells = <2>;
-			#size-cells = <2>;
 			#sound-dai-cells = <1>;
 		};
 
-- 
2.34.1

