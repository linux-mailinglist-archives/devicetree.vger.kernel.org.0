Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B997953F8B7
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 10:52:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238668AbiFGIwx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 04:52:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238661AbiFGIwn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 04:52:43 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1C92167C9
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 01:52:41 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id er5so22021989edb.12
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 01:52:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rlAyjG/ASEH9lkdR7oWFs9vFWhwp02iIcUlYOkOaVuw=;
        b=kVMBiTct5U/sBJCc1FIJRY3oS4Kkxy2XYA+Ih/SxcyJTV8fRfQU6MCthnyXEaZzL2F
         9s81Co83DvLvuhCTBAQzfhnPeInknSRe3VzyMIZ4l+JEnkPqLJweQOzM8fFt72ercIpx
         wV+kKVQH6evxv1mWUq5+hmvf2vXhDmWXSTzV5LloTQlkgkMdRtPP9Isz5T8FA77faaew
         t2hpZ1Q+uHDYPszss9HBt9BkjexWQq4OKuY5fLXljU1kY5YWINSaPHGLax3KbTsv56Jn
         ffUQqBVCAOfT02VNP7NdDnCzdAHkfTNi3UW0n8nWor0NxJQdElXZgBBJQgspwO4D4QIs
         pEPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rlAyjG/ASEH9lkdR7oWFs9vFWhwp02iIcUlYOkOaVuw=;
        b=ID3B7dbcXNhJAjV4uAJZ7GhvcoZOPYdDSuSEII4pGPFxhQ11wA0V6z15rtEIu4wr7R
         eMIawtEK6R6KTqy5FUttwDKF5SxlWxaSyhmnZwA/pMikVsjQBX4b0CGofLr9rk2eCs6q
         GPizjOWv6JUdH9pKboXijK2Q2qkAeAg8DB1VqCU5wxVfFo/hZaW5buQy6Z/nK+LsUz/y
         X7RFO58y95hZ6HaCl1KjJHLJs4J0ctcb1fut0KteeeiZ6vXpVDAXuw/RAGJtGTLCYgDP
         T4Uuy06jTkLf222sA7fKMA1dzBA4HaNf9X4PP/iv/i5BdrWa7PfxTRxWOR4F5GyyL0xo
         MfWw==
X-Gm-Message-State: AOAM533jmUkHwoxDaMrpbomPCeY/fQdqaLaxhrz/gIz2/SJBD3hJ2uoa
        MWxXu5SQiZ1toFAlY7aNsYdAoQ==
X-Google-Smtp-Source: ABdhPJwvfq0pZU/jwwN7TA7/6NbjYMX7QU10t5HE07xWyILDQjRdAZHlPLv8olWPgri2BGyJD9ei2A==
X-Received: by 2002:a05:6402:542:b0:42d:c7d6:4121 with SMTP id i2-20020a056402054200b0042dc7d64121mr31500562edx.302.1654591960316;
        Tue, 07 Jun 2022 01:52:40 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id lk24-20020a170906cb1800b006fa84a0af2asm7458137ejb.16.2022.06.07.01.52.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 01:52:39 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 6/8] ARM: dts: exynos: add function and color to LED node in Odroid HC1
Date:   Tue,  7 Jun 2022 10:52:29 +0200
Message-Id: <20220607085231.72246-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607085231.72246-1-krzysztof.kozlowski@linaro.org>
References: <20220607085231.72246-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add common LED properties - the function and color - to LED node in
Exynos5422 Odroid HC1.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/exynos5422-odroidhc1.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/exynos5422-odroidhc1.dts b/arch/arm/boot/dts/exynos5422-odroidhc1.dts
index d91f7fa2cf80..d7cf427c1bb5 100644
--- a/arch/arm/boot/dts/exynos5422-odroidhc1.dts
+++ b/arch/arm/boot/dts/exynos5422-odroidhc1.dts
@@ -8,6 +8,7 @@
  */
 
 /dts-v1/;
+#include <dt-bindings/leds/common.h>
 #include "exynos5422-odroid-core.dtsi"
 
 / {
@@ -20,6 +21,8 @@ led-controller {
 
 		led-1 {
 			label = "blue:heartbeat";
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_BLUE>;
 			pwms = <&pwm 2 2000000 0>;
 			pwm-names = "pwm2";
 			max-brightness = <255>;
-- 
2.34.1

