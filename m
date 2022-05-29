Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 237805370B2
	for <lists+devicetree@lfdr.de>; Sun, 29 May 2022 13:14:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229952AbiE2LOt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 May 2022 07:14:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49864 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229951AbiE2LOs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 May 2022 07:14:48 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 463549809C
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 04:14:47 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id y13so16148041eje.2
        for <devicetree@vger.kernel.org>; Sun, 29 May 2022 04:14:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rGhstKLsyi2KJ+CtRUGYDx9gAOcoBt1ORpXxBhyJ8eY=;
        b=rhxV0Z1V3zfgBPgVVe7tv/AAiK+DBDDaEkHv94ZUbrB648F2ZB3DSr5iKqOPw2ro1H
         MQx7LFkJXU6LnLfrt9CyoIo74GtkJgmQuYUheoxin73O52csTjjQEjal86Qe5UCVPnN6
         qh/eA6sZZ7gIGVFKb/WWM4zFkdpZIXtCXIlM9D0VeQRmwaC1bVm2MiPXzVajeuFn6g0I
         jjKCWfaElOuqCfu3RxCbdXPToPZrfEg3LfGHgbRhmaWhoWwTJhjsrHWWcQ/15jNbPmIj
         rsOWAupXYfk2YQErqdnu90NRds7ejSw55TZKFkpDPggXqxxWuShcoqa1Cxculjw89YYc
         u54A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rGhstKLsyi2KJ+CtRUGYDx9gAOcoBt1ORpXxBhyJ8eY=;
        b=irA9wCqkddqGIE/o6TTJbfwOaTHbhsnzYg+zz/ITNnvA5MSPWImbe0BU73P9LIlNA1
         FQ0o4Q9cVDYeXr5yatyVGDzC2E1ehVYTDwXS00BmN5aNadHq0vBl7WifwO9ldVRTJCa+
         PenHOpGiGqVCON6U1hrnWoFh0O0L1fqNE3qT/Aoe3WOffXI5xgDuzSpndrvBYA31AIgZ
         qOpP36XvqWY0RbtWhHmyn2YzS62m3JAzL54P6ESvI3ldFogex39yENv5fYAXJhkHqbez
         NZrHrFlAFtWMcKhmQtDjdIV1g1185DXMlr/JcgwBrC//r3x4kbYqtCCwyBMpIRVPNLei
         kaGQ==
X-Gm-Message-State: AOAM531Fvm78VDy8wBB8tXqhU5GqU6omhDJhJjkYzJfMKWk2/HSGCqiO
        7RyZCmP316CWUFvrtYoCPZtYRA==
X-Google-Smtp-Source: ABdhPJwqfJO8L/+sv/ODyACstbNznQsCsqUfk45ZMaUmJejvzc8E1H5Mro8SHweV6EA3FC1iq9ujKg==
X-Received: by 2002:a17:907:9805:b0:6fe:c719:f45d with SMTP id ji5-20020a170907980500b006fec719f45dmr31475165ejc.43.1653822885846;
        Sun, 29 May 2022 04:14:45 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id hp17-20020a1709073e1100b006fecb577060sm3086313ejc.119.2022.05.29.04.14.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 May 2022 04:14:45 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Joel Stanley <joel@jms.id.au>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: aspeed: vegman: drop unused fttmr010,pwm-outputs property
Date:   Sun, 29 May 2022 13:14:42 +0200
Message-Id: <20220529111442.182722-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

The "fttmr010,pwm-outputs" property is neither documented, nor used in
Linux kernel driver, so remove it.  This also fixes warning like:

  aspeed-bmc-vegman-n110.dtb: timer@1e782000: 'fttmr010,pwm-outputs' does not match any of the regexes:

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/aspeed-bmc-vegman.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-vegman.dtsi b/arch/arm/boot/dts/aspeed-bmc-vegman.dtsi
index 1a5b25b2ea29..43af63910571 100644
--- a/arch/arm/boot/dts/aspeed-bmc-vegman.dtsi
+++ b/arch/arm/boot/dts/aspeed-bmc-vegman.dtsi
@@ -166,7 +166,6 @@ &sdhci1 {
 };
 
 &timer {
-	fttmr010,pwm-outputs = <5>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_timer5_default>;
 	#pwm-cells = <3>;
-- 
2.34.1

