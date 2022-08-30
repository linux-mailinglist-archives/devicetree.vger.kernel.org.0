Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81C6F5A5E44
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 10:36:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231598AbiH3Igm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 04:36:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44228 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231172AbiH3Igl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 04:36:41 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23CD9C3F6E
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 01:36:40 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id v26so4287472lfd.10
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 01:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=uVZ8ew7rMZ8IHFTKM9FXk4byV8RURYoGvs0OQCurCgc=;
        b=W4JYh2QK+bLseI2w4yMdQdYAKdUmo5ND7SD2Z/CQBt+4i/5Wfk3C7LduyX3wamQ6UQ
         OvPGEpfOVQUHL8J3DiERM1Gq8q+mtVjC9y4p/b7jmTKXcRX2abxyOIkC3JZ555qbW3BI
         GMMwj4OLqm/Onxbbd4xAGyPGw4wPWopYK15jAs7X1RMmzEry8DsYL4+xLMJn6bB2YkCm
         8cRODvIZUsFY1wQIrMCdLXcGdZ7/gllP/VF4l79c1mEUsIO6WE8fGW/AN81axUkQlR0c
         By23z7inCgsN6ms9DMXt3OdWGIet1dkMf/C87qU3MIhuphELvftGetXcISF7zcVZSDct
         8uXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=uVZ8ew7rMZ8IHFTKM9FXk4byV8RURYoGvs0OQCurCgc=;
        b=NSadf7GFjEvitSpJ/QRX/wHU4Dh2swcuOqXz45usYd+k3qxVyoNiP7L+2xjae/52y9
         drdHvLkYC5fs5+oOuifD2u41fxZ8NmVaFPxTl1hrfWRhuafl9NV6Pp9mZaYmZ1gGHwBX
         b7gROB2pEiE5pfVK9FZdn8epFPeJB2AUfoAlPkbKfOrJVx08Eq2hi44bqig9egnauq2J
         lOWjGu4Wih0IYhksHDDg/gDfs6yjbb6k+q4BKg4uyXuA8Cvt+08APFc8SdkyD1HJYEqx
         Codd7Mh3D0/kR8cJ8Fkj5u9YCchjYb4Ki9K6DmC0CgL/E8onKtqqG+0N/dEtmdn5+nm9
         n9Tg==
X-Gm-Message-State: ACgBeo1hD5+PboGGUsv8AUJBSBJ/62KG4S581lLj/kY0F/3cd+H7AdYh
        qYtJcnxXgNtCEYz7QoiT9GC2iw==
X-Google-Smtp-Source: AA6agR6YB/M0m3LUhKM3VQKpGKf5+Qir2sFpNqkaf+/7xq8Vlgf/3W/CFg+unjTaWVN93BRsdCrsKw==
X-Received: by 2002:a05:6512:3e0e:b0:494:75a1:aec2 with SMTP id i14-20020a0565123e0e00b0049475a1aec2mr1413587lfv.7.1661848598300;
        Tue, 30 Aug 2022 01:36:38 -0700 (PDT)
Received: from krzk-bin.. (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id h18-20020a056512221200b00492f294f06bsm245203lfu.110.2022.08.30.01.36.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Aug 2022 01:36:37 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Olliver Schinagl <oliver@schinagl.nl>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] leds: MAINTAINERS: include dt-bindings headers
Date:   Tue, 30 Aug 2022 11:36:25 +0300
Message-Id: <20220830083625.281462-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Include the Devicetree binding headers in LED SUBSYSTEM entry.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 8fd6a1721e69..ebc140e71b49 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11458,6 +11458,7 @@ S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/pavel/linux-leds.git
 F:	Documentation/devicetree/bindings/leds/
 F:	drivers/leds/
+F:	include/dt-bindings/leds/
 F:	include/linux/leds.h
 
 LEGACY EEPROM DRIVER
-- 
2.34.1

