Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 735AB641F0F
	for <lists+devicetree@lfdr.de>; Sun,  4 Dec 2022 20:05:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230340AbiLDTFv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Dec 2022 14:05:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230308AbiLDTFt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Dec 2022 14:05:49 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 56ADE1402F
        for <devicetree@vger.kernel.org>; Sun,  4 Dec 2022 11:05:48 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id cf42so9662422lfb.1
        for <devicetree@vger.kernel.org>; Sun, 04 Dec 2022 11:05:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tN+9Eb6t2q0VBWQioY+fDSvDW1iJ67j9nKJa3pJNoHE=;
        b=FAtPhEtwKfrpA7H7/CVexgdRiBlyeoL9GOxpY9VjgxGOplHfaH//XnrLS4kgyEi7HP
         yUCiMo3FiivqFgWKdZiTDZmO2It2wBMTj+PXCuC3Wbgd3rgkNYPfDYzErVCGX7tglm6S
         MRHtSW92JMm/8xikcQXyP6GzEHM6KrENe0gv256zfyVU10BLs0mWlcgbjimSRTEO3Lhg
         Nc1GMPSvegrC3/Md0Bv9vS3vnGMnUG6UbspwErRc552yGUpufrR9BVQoZWlgX0hJgCOw
         o4mcW1ce0ULh5J67TTQWBi3Cb0Xp0k2P6Gbzes7k1flAeCrfYAUciVWLBfNhyScXmABY
         H/Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tN+9Eb6t2q0VBWQioY+fDSvDW1iJ67j9nKJa3pJNoHE=;
        b=lyNZPMRW5UI7fek0bZ4QmBMFKTlLQD5aFCwE8wRF6Qsm0lgGvtsF/nalTBQgaIzLJb
         D8sc+FVLd8YU9WjOhw14OqTAeqk0PDLZ2Qgq+318WYiwS0QL7FtbUgQt9h4tjLjKkdsj
         1cQUz4shV6Kef6To8KovVMyJK6hD+L90gKZcNfUver8VzJMz5cz63YIgckEfMwgApVVA
         nD5SWpaQUbatSnJNY5+rgP+UPXXzIDWGQjQBff7O7vodXe+YYqarH+bNAL0yRbqw6cax
         52TjePxCP4Y7TB5EKUIg4omFzX/svWUzrxZTjGmb9NqMi00DM1YRazr7yK6i/0x7G4wl
         1jbg==
X-Gm-Message-State: ANoB5pnEAEVXhFK3UlcQrlqvzZjlkp/LFWSRC1KQnfymy/JRI11/qqQG
        vUDeFg4UoEWyMPeOQmSKL5exhg==
X-Google-Smtp-Source: AA0mqf68JL1m43Z6g7sdxW+3FaligMTVWjde3DBlZw9aHIYbSh615ZEfiokpvAz+OSX/Pdl9Tag7nw==
X-Received: by 2002:a19:2d55:0:b0:4a2:7c6a:5cad with SMTP id t21-20020a192d55000000b004a27c6a5cadmr25939614lft.366.1670180746581;
        Sun, 04 Dec 2022 11:05:46 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bi35-20020a0565120ea300b004ac6a444b26sm1847644lfb.141.2022.12.04.11.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Dec 2022 11:05:46 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: exynos: drop unused pinctrl-names from Galaxy Tab
Date:   Sun,  4 Dec 2022 20:05:43 +0100
Message-Id: <20221204190543.143986-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221204190543.143986-1-krzysztof.kozlowski@linaro.org>
References: <20221204190543.143986-1-krzysztof.kozlowski@linaro.org>
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

pinctrl-names without pinctrl-0 are simply unused:

  exynos5420-klimt-wifi.dtb: gpio-keys: 'pinctrl-0' is a dependency of 'pinctrl-names'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos5420-galaxy-tab-common.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/exynos5420-galaxy-tab-common.dtsi b/arch/arm/boot/dts/exynos5420-galaxy-tab-common.dtsi
index d19bc3d266fa..63675fe189cd 100644
--- a/arch/arm/boot/dts/exynos5420-galaxy-tab-common.dtsi
+++ b/arch/arm/boot/dts/exynos5420-galaxy-tab-common.dtsi
@@ -51,7 +51,6 @@ oscclk {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		pinctrl-names = "default";
 
 		key-power {
 			debounce-interval = <10>;
-- 
2.34.1

