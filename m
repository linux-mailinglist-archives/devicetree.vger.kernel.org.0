Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5BC656C9691
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 18:03:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232623AbjCZQDk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 12:03:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231842AbjCZQDi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 12:03:38 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 982E04229
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 09:03:36 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id b20so26335431edd.1
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 09:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1679846616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QV3iGa8KiUlr1LClhXl1D1BGw0maVF3hcUmABXx2qKM=;
        b=rq5dyFnUl7RahLZHNlkhn8nQ8r1SCLpS07sZ1IVPZQJ3gVy0TCL2nFSO4YipbN3KkF
         cqTPtfp304/6vW5DlnooqxktttCdVjUHlOTqCWhTxmLShyqTJQYFn08BEWKvPXMfEDxa
         6QhqrddIx+rQQal8P4izUsMxr75QpKTnFYBYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679846616;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QV3iGa8KiUlr1LClhXl1D1BGw0maVF3hcUmABXx2qKM=;
        b=ggsbPZc6uM4rKmumuPS0NsoDxc1ogLsH8oGmVu9JVLbUUzKZkjxuckWex14a1vmNwe
         rVuWkN3DRgsMIU4yVkK8+L3Cm42YVK4Qfd/s/ax11zfR+8Hwe3tleIEycVY4P9MRHSgm
         64wYL+92cXMttxmhDjghGY3xomHY6yynbKgF9nZa2k4aTfjhErE4oWFlj8Ktqi52EJqB
         NnDUM2aXsgv5ji9Kfkd+CLpWM+sxytWmuiMB+AiwpmfK89MemNdWthhlTCouirt7TiZG
         JVQW3t4/VjesAmr7vU2lukxuiBx+S4mJM/cLHQE9eL7tlpxMx+m9ISRbIjRzzjpncSv7
         HGOg==
X-Gm-Message-State: AAQBX9eRbKm0XWCyBY+MwKwWyc0w+0cC/OIfUhEu+cJ9wOcrxAiwoPcW
        cMBydrFJTrQBBhzgE5T5O8Mn2w==
X-Google-Smtp-Source: AKy350aWHhGJriWVrLf6TakD+wy8UiRbEvNVXeYw5vTRA6TEpbcBjqXWsqfoa/9hQ0foQ3aDVKRFZA==
X-Received: by 2002:a05:6402:70a:b0:4fb:9b54:ccb8 with SMTP id w10-20020a056402070a00b004fb9b54ccb8mr9305209edx.21.1679846616252;
        Sun, 26 Mar 2023 09:03:36 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-0-102-254.retail.telecomitalia.it. [87.0.102.254])
        by smtp.gmail.com with ESMTPSA id m2-20020a50d7c2000000b00501fc87352fsm6869333edj.13.2023.03.26.09.03.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 09:03:36 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        michael@amarulasolutions.com,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v8 4/5] ARM: dts: stm32: add pin map for CAN controller on stm32f4
Date:   Sun, 26 Mar 2023 18:03:24 +0200
Message-Id: <20230326160325.3771891-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230326160325.3771891-1-dario.binacchi@amarulasolutions.com>
References: <20230326160325.3771891-1-dario.binacchi@amarulasolutions.com>
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

Add pin configurations for using CAN controller on stm32f469-disco
board. They are located on the Arduino compatible connector CN5 (CAN1)
and on the extension connector CN12 (CAN2).

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v3)

Changes in v3:
- Remove 'Dario Binacchi <dariobin@libero.it>' SOB.
- Remove a blank line.

Changes in v2:
- Remove a blank line.

 arch/arm/boot/dts/stm32f4-pinctrl.dtsi | 30 ++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
index 4523c63475e4..3bb812d6399e 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -447,6 +447,36 @@ pins2 {
 					slew-rate = <2>;
 				};
 			};
+
+			can1_pins_a: can1-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('B', 9, AF9)>; /* CAN1_TX */
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('B', 8, AF9)>; /* CAN1_RX */
+					bias-pull-up;
+				};
+			};
+
+			can2_pins_a: can2-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('B', 13, AF9)>; /* CAN2_TX */
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('B', 5, AF9)>; /* CAN2_RX */
+					bias-pull-up;
+				};
+			};
+
+			can2_pins_b: can2-1 {
+				pins1 {
+					pinmux = <STM32_PINMUX('B', 13, AF9)>; /* CAN2_TX */
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('B', 12, AF9)>; /* CAN2_RX */
+					bias-pull-up;
+				};
+			};
 		};
 	};
 };
-- 
2.32.0

