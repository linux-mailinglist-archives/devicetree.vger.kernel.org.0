Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AD4B0641C2D
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 10:44:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230059AbiLDJoy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 04:44:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230060AbiLDJor (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 04:44:47 -0500
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C5B018B0C
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 01:44:46 -0800 (PST)
Received: by mail-lj1-x22b.google.com with SMTP id h10so10273930ljk.11
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 01:44:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6LPik5vhtXGaU+pistjx2wgSVQA4ZHtZSy7EGZ7IuRE=;
        b=r8v20hW7IVm0gTJKZ1NGX0waq8DEEkg9Q/I57XruffZibfgA59TKlQqwzUvv+W/Ui6
         qcQ9jLTdogdHZtvSuWwrQP6RtsJDfytE1/YW35MxYCgLdeQMJ2xSBC3rZIQ55VYI56HB
         92UX4SRKKdSLU3+8wpqe/Yz+y57ZAZ6e488LqxVHOVzdROhf25Ve+ACdTKcLeDHYXI53
         dQmA6ALnA83ZwbM5VYMR44Xp6NKjcW77GVw3kBjzGpml8+kyZhhyDHJCfTWBAWoap63b
         Jk+OJKXNuJ1jTsynl4lbUdvuxD8PVRDAfVWk6uwMdUxSdZ9nttAmPTO0SWnAgVLGlESe
         5a1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6LPik5vhtXGaU+pistjx2wgSVQA4ZHtZSy7EGZ7IuRE=;
        b=16KSgDAEibsYVl4KMF6+WIVExAgLxSVOFLTcqYrhmgETbzuAnnX5fLskug5b5X8Txa
         eT4DUzc2Evu4NGnjxRYjPXzgLPyeELqcTBHdDaFUK0bqTRDfa/1akP1SAZiRn+pSzN9H
         nri5HHu2vj16Sq0MyvvTytIJ6eUIaUuiHIQREHPPMAs6qORsD640X7WqwJAXEeTrIDcs
         btpA15EANtZ0lGYCoyBqutVR7GFmVP3Vs+Ep1f+U95eFlhomzSSlq55RMl33L7Iy6QlE
         xp1DLPvMktsAag577b2KE6Yhqou2IOV7GyOs57a0Gcw64VPelwboTionZ9eF8+0/4EDs
         ggfA==
X-Gm-Message-State: ANoB5pnnJFol3Mi1TIG7uvM0BHT0tt+ExXQMD/AaJ+Nira7fiRe8cT0S
        psZs1XtRN4ZVr0VjzyARU1KsHs2Y/+05cI/s3Ac=
X-Google-Smtp-Source: AA0mqf4RUDR18XiOYMY+RiEryc4y54Nh2pfPLuqz6gRWgro3BffaKv0q4sDO1yXid4+nxkBsDPLP1g==
X-Received: by 2002:a2e:b529:0:b0:26a:c77f:57f8 with SMTP id z9-20020a2eb529000000b0026ac77f57f8mr23002180ljm.465.1670147084756;
        Sun, 04 Dec 2022 01:44:44 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o10-20020a056512052a00b004b07cdef19csm1711593lfc.138.2022.12.04.01.44.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Dec 2022 01:44:44 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/6] arm64: dts: qcom: sda660-inforce-ifc6560: fix no-mmc property for SDHCI
Date:   Sun,  4 Dec 2022 10:44:36 +0100
Message-Id: <20221204094438.73288-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221204094438.73288-1-krzysztof.kozlowski@linaro.org>
References: <20221204094438.73288-1-krzysztof.kozlowski@linaro.org>
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

There is no "no-emmc" property, so intention for SD/SDIO only nodes was
to use "no-mmc":

  qcom/sda660-inforce-ifc6560.dtb: mmc@c084000: Unevaluated properties are not allowed ('no-emmc' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
index cddbeade1ffc..7c81918eee66 100644
--- a/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
+++ b/arch/arm64/boot/dts/qcom/sda660-inforce-ifc6560.dts
@@ -438,7 +438,7 @@ &sdhc_2 {
 
 	cd-gpios = <&tlmm 54 GPIO_ACTIVE_LOW>;
 	no-sdio;
-	no-emmc;
+	no-mmc;
 };
 
 &tlmm {
-- 
2.34.1

