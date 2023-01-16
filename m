Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88DF466CE50
	for <lists+devicetree@lfdr.de>; Mon, 16 Jan 2023 19:05:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230401AbjAPSFv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Jan 2023 13:05:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232878AbjAPSFX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Jan 2023 13:05:23 -0500
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3EA22E0ED
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 09:52:12 -0800 (PST)
Received: by mail-ej1-x634.google.com with SMTP id qx13so11454377ejb.13
        for <devicetree@vger.kernel.org>; Mon, 16 Jan 2023 09:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jfErmyZAWFClEhl0ayKENaiIcOOkglWFws7K0nbLI8s=;
        b=CiZDRrup74sgUxRVU6m1gLeEbwHwbulx2ngc8VyZ9sGs5XEKXQbDgMycQM7zOa3nBU
         TxmnS1YBlX44zfqBABDkM4kQBhkFaKjSNGH0XDKCt0ob4HEhX0IS/+yi6DT10yJkk32T
         Oauww02NGbHbMvSiZpCcZsbGRMP1ICMU1VlKc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jfErmyZAWFClEhl0ayKENaiIcOOkglWFws7K0nbLI8s=;
        b=pE3hZjY0Rl/iZ0hNFqUl9tlQ7XApJc6ZvbA2uqkCD2uTDb48pA7FIl69LRnPyxoyTu
         ZZST4VBbDJ40pIBnVsW5JJxiawx1f7/Rx/5gUSbdEPJ3/99vFt+s6fPYXX2Tl+Wy6evv
         cZbVMprojmNhME8ct/G+CRKhdhBqJXXdNkQi1UgUnXRB/2+NVcq9dvbdAORIcAd/bEOS
         e7gOTQQs6yj3rCMzzh1oRNFmw/dswHQPQ1zqYaGn428V3j9ppAEw4RBpYjY5mQ4Ksw6O
         FJ4ufsk7gORtqqa3pWZg75bXqAexi2CzmsYk/hySLcX3MEE1QI8nKFtubEiK8wGKMu+Z
         BTcg==
X-Gm-Message-State: AFqh2kqEbve1bIS7BC40uNy7WMIlypfAUeoNejWXINUiG9ukCrzPQsQN
        cPaO6wFVKLib6w1RQDvvibCpfg==
X-Google-Smtp-Source: AMrXdXvdC7qxR/+ZPsAJ4YfSSBzNByhVR25GX6cvTzrlWTZzZJOOu7qLFg1I78xQoouF74gkllv2pQ==
X-Received: by 2002:a17:906:1dcd:b0:84c:c121:dc53 with SMTP id v13-20020a1709061dcd00b0084cc121dc53mr46331606ejh.34.1673891531473;
        Mon, 16 Jan 2023 09:52:11 -0800 (PST)
Received: from dario-ThinkPad-T14s-Gen-2i.. (mob-5-90-75-145.net.vodafone.it. [5.90.75.145])
        by smtp.gmail.com with ESMTPSA id fd7-20020a056402388700b00483dd234ac6sm11490723edb.96.2023.01.16.09.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jan 2023 09:52:11 -0800 (PST)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        michael@amarulasolutions.com, Rob Herring <robh@kernel.org>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v7 4/5] ARM: dts: stm32: add pin map for CAN controller on stm32f4
Date:   Mon, 16 Jan 2023 18:51:51 +0100
Message-Id: <20230116175152.2839455-5-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230116175152.2839455-1-dario.binacchi@amarulasolutions.com>
References: <20230116175152.2839455-1-dario.binacchi@amarulasolutions.com>
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
index 500bcc302d42..8a4d51f97248 100644
--- a/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32f4-pinctrl.dtsi
@@ -448,6 +448,36 @@ pins2 {
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

