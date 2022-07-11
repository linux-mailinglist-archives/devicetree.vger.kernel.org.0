Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 985A156D7DD
	for <lists+devicetree@lfdr.de>; Mon, 11 Jul 2022 10:27:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229980AbiGKI1Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Jul 2022 04:27:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229959AbiGKI1Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Jul 2022 04:27:24 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D2001EAD2
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:27:22 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id w2so5319587ljj.7
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 01:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4rYTa3JGM6IeieDSa7LDtG3vHNWLhIAb8Q7HiOVEvC8=;
        b=zinFVnq9fQpbCQuwb8BHCAEowVRjH36LHQTHxp5OnTlr8AXGzG+c4lQBsUvi6dPqVP
         p+m3H9SksCgQr5AHTzo9OMgGCiP9QJMiffClQ8E1wkLAMyvXguBdqo+wP4AGSHFwY+NA
         7ee2xPiK/4naKDcwxtsKeiRoiAd2IrE7zQrz0UiAmsICBc+W1ZDj0WkXtp2rW6JGvTau
         VjiZP1GwjwgiAdNoH1K63Tcp0GYIFlazw041c8HEVOuPOkwNm6P4QTYOjzRbvpGk5moO
         5x4tq7mb+YJeuGETn92KXLWJvsBjk9g14aPJdGMDHSXQQPqtqqH3w0bdtPOagwpOWhSP
         ucAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4rYTa3JGM6IeieDSa7LDtG3vHNWLhIAb8Q7HiOVEvC8=;
        b=xteCFm7PQ+wkxoIIPoRW8xmC6wYNunPmsk7On56yCtZIXsXvX1JHwTv6Fq2jWisCg9
         t2YIFstEJMa+Ir7cff2llxhqyN2ofHHkab5Ey+zCYuQ4i+mTg9GPmtZ23lSBNYC67Mjb
         rHDOoXeSjlz6a3pV4CbqJnXAgyu2RrMJmRgqhtqqkvTg7L5mFowUod4C587KZ3C8zrAn
         ixXNBhOjNIz+KWumUoBuz/EYNowJ1dp4pAKa1aMO/BoJRVMMA7DcljskCoFD1ifUa0IH
         uI2dA7v93KZ8egA+qe8VX69E5i1yjj5byOF7+/i11iyLOILmRL9NjHeFYj8WVBszn7MA
         q+bQ==
X-Gm-Message-State: AJIora/qrzpBuyXqeI5Km4x0gpq+nlqr1MD008PtoBG1Njnts+hfSDau
        sEd/MIj4ZAb7Tc1t52r/FgW/Xw==
X-Google-Smtp-Source: AGRyM1stMqKlh8JH5aONT4GAIuHzSJe0Ju8dVYUNNWTNDrM2QWxZpOJRQVYJo/uTieqlDxsE/6ILFg==
X-Received: by 2002:a05:651c:1061:b0:25d:6302:68a2 with SMTP id y1-20020a05651c106100b0025d630268a2mr5368868ljm.212.1657528040761;
        Mon, 11 Jul 2022 01:27:20 -0700 (PDT)
Received: from krzk-bin.. (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id c30-20020a05651200de00b00473c87152bcsm1408994lfp.127.2022.07.11.01.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jul 2022 01:27:19 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Douglas Anderson <dianders@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] arm64: dts: qcom: msm8998: add MSM8998 SDCC specific compatible
Date:   Mon, 11 Jul 2022 10:27:09 +0200
Message-Id: <20220711082709.39102-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220711082709.39102-1-krzysztof.kozlowski@linaro.org>
References: <20220711082709.39102-1-krzysztof.kozlowski@linaro.org>
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

Add a MSM8998-specific SDCC compatible, because using only a generic
qcom,sdhci-msm-v4 fallback is deprecated.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index 91153a0234f5..c98f36f95f3c 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2076,7 +2076,7 @@ qusb2phy: phy@c012000 {
 		};
 
 		sdhc2: mmc@c0a4900 {
-			compatible = "qcom,sdhci-msm-v4";
+			compatible = "qcom,msm8998-sdhci", "qcom,sdhci-msm-v4";
 			reg = <0x0c0a4900 0x314>, <0x0c0a4000 0x800>;
 			reg-names = "hc", "core";
 
-- 
2.34.1

