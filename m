Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF24767E400
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 12:47:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233569AbjA0Lrk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 06:47:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233593AbjA0LrG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 06:47:06 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBCD372663
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 03:45:18 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id f12-20020a7bc8cc000000b003daf6b2f9b9so5216128wml.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 03:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ix6uSq7+eaM/mrHEkG5TL//sAXSE8QmH+pieZcKcbXI=;
        b=HcoN1x+r5Ss1Lt0MY2O+MJ5UjL5rgoCYsQAiPv8Z7YdiXVruWHAsuMU4NBEU0VGqOQ
         rG+Cu+HTSfdAjXuTIyMQb0FIpPcnBePJjnofQaNlOPWBijurlEwUUYBjPWBKgunKEguu
         EpfiFU7zvRihEKljBvBM1GEPTCSqHzZIClkxz7lPjVe49sOsw1/lUJSdGJhpCpeu9kAi
         5oO0sg35FVgRsbcYTdqrJ4DtnYUxSWsFHFqjwjrzgGzY0S0CNHFba11NPHST8Wjo1NKc
         cjxXwxBDjpjkD5Y3AMUeQ6PkCTwsiqIfn+ApiHiGpz6oTHi7mSmErz7CKp4eQGlHS+hd
         tVGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ix6uSq7+eaM/mrHEkG5TL//sAXSE8QmH+pieZcKcbXI=;
        b=m7/NKKRBfjY8Kh6omXbW9bnVxTX4Vsei9wZ/kQ6ZRcRtaYObQWvO/uVUp8qsYkUrzj
         HT4s0i6YX6fxj3akgArD6G+/uOK5W5bXFUvS225kga3gf6GMAWznHj5LHvh04+cpCvNM
         nrUoix6KjWzYaqx0tuiKeVDPjn/fJk9VbTKnHi5XrP+ipvFe4TcZD9moi/gSbxStWyIa
         a4+SqN8gsoQi5sdKqQ37IkqiostjWkH9MR24BTD97rP+y9ZYWg1h+d+M8cjLi7Cb38st
         xuJdNdi9+r5JUDYZEGXZ73Zne0jP3ftbU1xbqzKJGu0vpAVHzRyoxFlxYejYM/W7UbXi
         Wgdg==
X-Gm-Message-State: AFqh2kpduzxq0PcjwK1P1E7fkL4xZGj8oKqXSeBCUAy1kOXhRUthkAcP
        RuW70bc8YBGB/Z386BpGFCs+2A==
X-Google-Smtp-Source: AMrXdXviMgoTrYlDDvt0YMY6p6tQFfmPQP42tyVq9e83/08hQycI4VR1WctbFw+lmXMmvX0mh3Pf/Q==
X-Received: by 2002:a05:600c:a690:b0:3d5:64bf:ccb8 with SMTP id ip16-20020a05600ca69000b003d564bfccb8mr37868319wmb.12.1674819860648;
        Fri, 27 Jan 2023 03:44:20 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z14-20020a5d4c8e000000b002bfc2d0eff0sm3807760wrs.47.2023.01.27.03.44.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 03:44:20 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 07/11] arm64: dts: qcom: sm7225: align RPMh regulator nodes with bindings
Date:   Fri, 27 Jan 2023 12:43:43 +0100
Message-Id: <20230127114347.235963-7-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230127114347.235963-1-krzysztof.kozlowski@linaro.org>
References: <20230127114347.235963-1-krzysztof.kozlowski@linaro.org>
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

Device node names should be generic and bindings expect certain pattern
for RPMh regulator nodes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
index b86a1c6f08be..52bb48c02536 100644
--- a/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
+++ b/arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts
@@ -115,7 +115,7 @@ &adsp {
 };
 
 &apps_rsc {
-	pm6350-rpmh-regulators {
+	regulators-0 {
 		compatible = "qcom,pm6350-rpmh-regulators";
 		qcom,pmic-id = "a";
 
@@ -244,7 +244,7 @@ vreg_l22a: ldo22 {
 		};
 	};
 
-	pm6150l-rpmh-regulators {
+	regulators-1 {
 		compatible = "qcom,pm6150l-rpmh-regulators";
 		qcom,pmic-id = "e";
 
-- 
2.34.1

