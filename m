Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A560E6C97D5
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 22:45:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229640AbjCZUo6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 16:44:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229471AbjCZUo5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 16:44:57 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED2514214
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 13:44:56 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id y4so28035401edo.2
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 13:44:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679863495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rg7TxcKJoIFSkaCwotCW72pcnT4TJez67v9vLQ/IrGU=;
        b=U+UTXMMVn1I0vIb7JbhI533OPUghGmmVjN7T2j34vRiMiBVyW4+/nCIxsz2JhFQY8H
         y5702uE5WzEV8hZXaJcGeWAVNv8zTSfrYXShWORa+xFrQE/B/ia0nfG+MRFzDH5+/btO
         qI8vbw1VRM91Mnv4RV9AQctI0GzLgn5/r9XDfiIPGsqRTk7lJ3pgTCeIqsCSDMFJ0kCu
         TXV7I0pLmW/zfaqpWxwKJ+M4HLkO4ClV6sl6g6i5CYJxX5njwZ9HLx1HvBI6PgIpwgYm
         bVegUVHuMLyZN6YVVpX0CnGrpZRabRm9usFepaeQ7G9DGvDrmcY9k/n/VfLvPUX6C9hi
         Lz1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679863495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Rg7TxcKJoIFSkaCwotCW72pcnT4TJez67v9vLQ/IrGU=;
        b=yQSYEM1YAYrbdULBBQhVK3MI2Dsx7EMMyHzXJ0NWO2IPZTJsT2rIJgyTzHHJ7KP9q1
         +1Ukia8p+FWhwt6WNw62j8D8IkYh3TbB98lhFfosrFjp1kHiz/NguwHgPEe/aUTiKEEC
         wiHc9Rwj2ItcdbqixG24gsiMsCQNwEZybjP2lsgTIW/mArtol8R8KD7FH3g1hvntFhwN
         +/7z9JsYarQZhe6t3iHfn5Kcn7HKWTnysmntmb+QIXnTwFu5Qh1fxYLF2IBoc0R9Nn70
         8wtRTaZqf2nBnlInn515veP26T3mef4gepO7gF5M9CxD4eka+rZhHcJsGJ/9z/yhFkeO
         7Aiw==
X-Gm-Message-State: AAQBX9eoTpPzMl2k3MBqkXwwYR27dYg7oL7ZWWWGqElTaJvyxzxbepoT
        hLKXPdg1CnGzePXfjLF9Y9Xq9VBJNF3PfhDcLLs=
X-Google-Smtp-Source: AKy350Zi4XPrE6pUIOEiX7g+AIp96m/eMZbCeuwMUcSEy8TD12/vN4JpsMygF2r/RriEcGd5dog4uQ==
X-Received: by 2002:a17:906:4e1a:b0:935:20d8:c3c with SMTP id z26-20020a1709064e1a00b0093520d80c3cmr9918182eju.61.1679863494832;
        Sun, 26 Mar 2023 13:44:54 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6b51:4748:3f3f:ffcf])
        by smtp.gmail.com with ESMTPSA id t27-20020a50ab5b000000b004c0c5864cc5sm13954621edc.25.2023.03.26.13.44.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 13:44:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: stm32mp157c-lxa: drop invalid simple-panel compatible
Date:   Sun, 26 Mar 2023 22:44:52 +0200
Message-Id: <20230326204452.80751-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"simple-panel" compatible is not documented and nothing in Linux kernel
binds to it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts b/arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts
index cb00ce7cec8b..407ed3952f75 100644
--- a/arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-lxa-mc1.dts
@@ -73,7 +73,7 @@ led-3 {
 	};
 
 	panel: panel {
-		compatible = "edt,etm0700g0edh6", "simple-panel";
+		compatible = "edt,etm0700g0edh6";
 		backlight = <&backlight>;
 		enable-gpios = <&gpiod 4 GPIO_ACTIVE_HIGH>;
 		power-supply = <&reg_3v3>;
-- 
2.34.1

