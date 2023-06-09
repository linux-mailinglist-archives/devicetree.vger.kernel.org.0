Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49334728FD2
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 08:21:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237663AbjFIGVI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 02:21:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237118AbjFIGVH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 02:21:07 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D94EB2119
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 23:21:04 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-516a008e495so3094169a12.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 23:21:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1686291663; x=1688883663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2jBqOeBntw2+ThpWf4KE8BMuMRq2HYj3RR0u0oHiddc=;
        b=ZhxX49H7jgfUHEsQNMUk4/a6UbIjuqRJAwYW/LT42aNhof0z6wH4OBGRGgBWA51aek
         ydi0MJqMstzS4h5jqV+tcI9Ok9QO0ULC9vwBrGAQ3/rrlcCa48S6zHTCXcXwo0mqWnAt
         4sVa0oueq6eWCE+ifmpEydDQztHEZ8P9qYdG4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686291663; x=1688883663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2jBqOeBntw2+ThpWf4KE8BMuMRq2HYj3RR0u0oHiddc=;
        b=O7kp/jARDqqmmCH8WMAUfoi2mTwpxJ3cIW9LvUxFF1uzjL1bYU4ZyshVzz8CK8KCMF
         G5BAqFKM2f/fYOdvFuGUE5u6taBh6CizjrLPlEHzGfaxXXKG8tADlZkpNZ9uVlMh1vvA
         ACS5EVGCK5yRAGeSdo04Ukld97OqeHoZnK1QD80u7teP7vaKJpttVxJY2nzaY/j+yYBU
         QDFbttvVceRDI5SY3gYht3ePBHSC2ZGVLrKygX2RunL8jgWVpLDXMjB4HykVce53CQOu
         x5Ks4dMieDMI53a+GeEr/yGjIxCl3IvIFov1OFSFjAap243lp13/j4O332CfaiU3kC2V
         ssaA==
X-Gm-Message-State: AC+VfDwTK2xO1RDdSJ1Inwwj2QCTGU74vUeWlxkY5xhL+X07bup/FHlH
        SB9jgqLrV2QOCJCKA+RHwV9FtQ==
X-Google-Smtp-Source: ACHHUZ7g6j/eAGApo5rh4URafnlF1N8g8+7/FnNy4oGvFK8B9Rr2e2tuFQhL9N04HORhDFvBXMITLA==
X-Received: by 2002:a50:fb8d:0:b0:514:a6a6:facb with SMTP id e13-20020a50fb8d000000b00514a6a6facbmr825875edq.13.1686291663395;
        Thu, 08 Jun 2023 23:21:03 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-95-248-31-20.retail.telecomitalia.it. [95.248.31.20])
        by smtp.gmail.com with ESMTPSA id m7-20020aa7d347000000b005149461b1e0sm1380058edr.25.2023.06.08.23.21.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 23:21:02 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     michael@amarulasolutions.com,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v3 1/4] ARM: dts: stm32: add ltdc support on stm32f746 MCU
Date:   Fri,  9 Jun 2023 08:20:47 +0200
Message-Id: <20230609062050.2107143-2-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230609062050.2107143-1-dario.binacchi@amarulasolutions.com>
References: <20230609062050.2107143-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add LTDC (Lcd-tft Display Controller) support.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
---

(no changes since v1)

 arch/arm/boot/dts/stm32f746.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
index dc868e6da40e..9c4ba0b7f239 100644
--- a/arch/arm/boot/dts/stm32f746.dtsi
+++ b/arch/arm/boot/dts/stm32f746.dtsi
@@ -507,6 +507,16 @@ pwm {
 			};
 		};
 
+		ltdc: display-controller@40016800 {
+			compatible = "st,stm32-ltdc";
+			reg = <0x40016800 0x200>;
+			interrupts = <88>, <89>;
+			resets = <&rcc STM32F7_APB2_RESET(LTDC)>;
+			clocks = <&rcc 1 CLK_LCD>;
+			clock-names = "lcd";
+			status = "disabled";
+		};
+
 		pwrcfg: power-config@40007000 {
 			compatible = "st,stm32-power-config", "syscon";
 			reg = <0x40007000 0x400>;
-- 
2.32.0

