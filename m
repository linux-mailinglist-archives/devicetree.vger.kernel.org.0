Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5521D791C4C
	for <lists+devicetree@lfdr.de>; Mon,  4 Sep 2023 20:04:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245557AbjIDSEF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Sep 2023 14:04:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231436AbjIDSEE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Sep 2023 14:04:04 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3421CDD
        for <devicetree@vger.kernel.org>; Mon,  4 Sep 2023 11:04:01 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5298e43bb67so3659317a12.1
        for <devicetree@vger.kernel.org>; Mon, 04 Sep 2023 11:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1693850639; x=1694455439; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ksy+qMH8R5yMGAjjVFzbsFFI2zjTwEmtMlu8ALYBj/k=;
        b=RvD59zpA12Kzlz1mOvTG0q7BOLYgfrLBiWq4g5UNx0bKVWrCa5/VFVIIS2pk4i5ATg
         uZRmH6tZZjtl2tnG5/7AXICn/bU6GORkmGf+05n6YQ7G8Cm/vG0kOChQ08ZA8zh1NX5f
         aIqQNroorC6CDjyJ7rMpmwZ/yQrx4XwLfmR9w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693850639; x=1694455439;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ksy+qMH8R5yMGAjjVFzbsFFI2zjTwEmtMlu8ALYBj/k=;
        b=N3xvfqj2d9wetW5vfABqxUnW8MYoHYcY15GUu8YfwlhkXAvJu9WpeZ8clBrVyt7Ajs
         pUqIzvA3p0xKQfJjVTDNt62fUI3PFLBDLTG54yLm90qAYpsghZgDC+bCgBFVZ+Ajr0zd
         eNGTH8uHoo+VYVvjI+SV8H6u+PWxEYZONZQst9SkbneTF9iHVFIH5mN2BSb5yPsT0r6u
         vhQjFj5aFgDx7WJ39DvYReMH28so07owhrTCJMeqXQ4ODdu0IYk0mvBUwklUOCFJTwsF
         C5A2qm6TAMhGsCxPqhMxWSWBICX8qPEPtGy9rc86gRiThcOd6xsaNUDLIjbZepQGp5yY
         wUNQ==
X-Gm-Message-State: AOJu0YzrHMXEDg3/7I8j24WvMZjNgzcUNx+ubVhsAVsQCSTiEJaAQt5r
        CDM6xwkbD0Rzuckkxmmn/KxbjQ==
X-Google-Smtp-Source: AGHT+IGq4JH8DOnn0BjrvIwyvYcYGN0s+T35UCtMjciu7zlWRXTb4L3CORMOIrN7+8VqTKIbAY/7pQ==
X-Received: by 2002:a05:6402:4025:b0:52e:4789:bee2 with SMTP id d37-20020a056402402500b0052e4789bee2mr2389806eda.6.1693850639378;
        Mon, 04 Sep 2023 11:03:59 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-79-54-71-141.retail.telecomitalia.it. [79.54.71.141])
        by smtp.gmail.com with ESMTPSA id y24-20020aa7c258000000b0052237dfa82fsm6123289edo.64.2023.09.04.11.03.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Sep 2023 11:03:58 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     linux-amarula@amarulasolutions.com,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        =?UTF-8?q?Rapha=C3=ABl=20Gallais-Pou?= 
        <raphael.gallais-pou@foss.st.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] ARM: dts: stm32: stm32f7-pinctrl: don't use multiple blank lines
Date:   Mon,  4 Sep 2023 20:03:41 +0200
Message-Id: <20230904180341.923038-1-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The patch fixes the following warning:

arch/arm/dts/stm32f7-pinctrl.dtsi:380: check: Please don't use multiple blank lines

Fixes: ba287d1a0137 ("ARM: dts: stm32: add pin map for LTDC on stm32f7")
Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

 arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi b/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
index 65480a9f5cc4..842f2b17c4a8 100644
--- a/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
+++ b/arch/arm/boot/dts/st/stm32f7-pinctrl.dtsi
@@ -376,7 +376,6 @@ pins2 {
 				};
 			};
 
-
 			ltdc_pins_a: ltdc-0 {
 				pins {
 					pinmux = <STM32_PINMUX('E', 4, AF14)>, /* LCD_B0 */
-- 
2.34.1

