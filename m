Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78D99638C8F
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:43:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230130AbiKYOnA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:43:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230132AbiKYOmd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:42:33 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADB9B326C2
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:58 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id bn5so5424577ljb.2
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Si6qyy9rvL8Q05xqNUhlx7N2yMdgpODVZ/yV6TT1Ocs=;
        b=kBJ8ZJ1wVM8mFKy4OJoejxTOEgGHRoaK7AHwef7ssubm39HgJR49D+UAa71Ep5lnig
         uuwMTgEkQWwgZ6SqsaYbqQxmii+FhW9LVLZnLEP3M93qvHHOpImHLmAZf3MB6LtFJMeE
         jJWbPH02V+6/1yUpqjswZSNXSb+epcDtAmAQUC7iBLgqfRdUC5paPTmq5gIBe5lgGubo
         1+Sc7rfmWOX6KT/rRKV0z7ORFCMN/1VgRISU0gQ4WNRj1mT8fqTNVF84OxIp8E9vCCmo
         nKBzJY+PIORJFIQvGruKmYWO1Hj9NwtW6NX1euufOfEpa65gGvYGP1nfiaVM7SG2DkOW
         yKDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Si6qyy9rvL8Q05xqNUhlx7N2yMdgpODVZ/yV6TT1Ocs=;
        b=Szj1gjPHt7D32vmYtYmzDBxTe2qTkud42wpFhaqXssA9VyAfvYrGyKHvc04D5n6Bko
         H6VQhphq9a6CAGiyOD9ReaYnHYFpozKdzfiQwyE1SdOBh9Hgq6uwMNoe+ryRHdUEHktK
         6YdTV8m+EL62zuWkev64VuGX76TrBFbF5BjCRtWK7zcxce44BRWdaUU1ZfDMxBbi5QiC
         htkrOhCKxCnkqWfJtV4wRwLJ1gBvGyq+JZsNChWYdenXt7CXCEGxLVWZLNPaRhV4YAnr
         5r3npL1L5TPED1SEyO0+kWrk7RX16YWUMXz5l3EFWnIwlZ/p5tFjP3CYsBTTMQ/LZ0vz
         jxVw==
X-Gm-Message-State: ANoB5pmaOrvRrcRtBIlY6AspGvfcLEJ2VoVNRDCM/BU+/eqLnzOHszcC
        Ag3KIm6QKzJW+Gs9qmJ9D2c/Eg==
X-Google-Smtp-Source: AA0mqf5oGHHTa4ICeW1NNmSHIIsnFpE+OrH/MTxNMdwy60IDGaUofZUiIjsVneJ67VoajISaUYl9pw==
X-Received: by 2002:a05:651c:223:b0:279:8f7d:9f21 with SMTP id z3-20020a05651c022300b002798f7d9f21mr1197247ljn.98.1669387318246;
        Fri, 25 Nov 2022 06:41:58 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s10-20020a056512214a00b00492f1b2ac0bsm550368lfr.101.2022.11.25.06.41.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:41:57 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
        Tony Lindgren <tony@atomide.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] ARM: dts: omap: n900: drop enable-gpios from LED nodes
Date:   Fri, 25 Nov 2022 15:41:50 +0100
Message-Id: <20221125144150.477290-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221125144150.477290-1-krzysztof.kozlowski@linaro.org>
References: <20221125144150.477290-1-krzysztof.kozlowski@linaro.org>
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

LP5523 LED controller does not take enable-gpios property:

  omap3-n900.dtb: lp5523@32: 'enable-gpios' does not match any of the regexes: '^led@[0-8]$', '^multi-led@[0-8]$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/omap3-n900.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/omap3-n900.dts b/arch/arm/boot/dts/omap3-n900.dts
index ba35cff5b01e..5e78dc990725 100644
--- a/arch/arm/boot/dts/omap3-n900.dts
+++ b/arch/arm/boot/dts/omap3-n900.dts
@@ -636,7 +636,6 @@ lp5523: lp5523@32 {
 		compatible = "national,lp5523";
 		reg = <0x32>;
 		clock-mode = /bits/ 8 <0>; /* LP55XX_CLOCK_AUTO */
-		enable-gpios = <&gpio2 9 GPIO_ACTIVE_HIGH>; /* 41 */
 
 		led@0 {
 			reg = <0>;
-- 
2.34.1

