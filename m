Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6AB276BBE98
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 22:11:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232986AbjCOVLS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 17:11:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51856 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232791AbjCOVLQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 17:11:16 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7E9A3402D
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 14:11:04 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id eg48so21474939edb.13
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 14:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1678914663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=90w47meUN1AAVQio6KlRg3XgdW53vJW4u/H89twTllI=;
        b=MsegcRcehzpSfT5JL7t9qBs5Z3LzXzq0kKxWEXzGvwAeNH052yuBvC5uly3NyO9c5K
         GiYXtHo0nZt4qmquwRQ3nhbLkvf74B4x1pnXLKn7ofcjD0MmmSqti2Fujsb12xizNztg
         rDW2bikIcpwXUxQGPbagyiFzDWd3jpvTtT1ts=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678914663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=90w47meUN1AAVQio6KlRg3XgdW53vJW4u/H89twTllI=;
        b=MyyCqdp9+byomDEm0m6cC7pvCh/jmX9X9ZoyuTyaJayBOZPkeR8UP69ZXPdovUBXIz
         ylGMLGuX6u0b0E4w3f7a/CjvHJ3HxQshDEHxoRp9U+a4mRKdw3BVUkrSzkGcWTpKDkQe
         tPYqbIyizPV/J+N5FEdv0LSOOPAZPxOTk8q5TU66UUsEiLQoQV6sC8A3ulz4zmq8ErnB
         WRT9cmrq007hJNnfr2VYuQyauBl6QOkAW7+a+kQAEidJdrWcTnFyVTr/rhOr5zGc9xID
         Gl8YvOcc14YcfEgJ8zULPakVPG27D+33m4zPH7B2tCK2ZFIGKj/kuUhSa2qJwrqlOVgD
         CkBQ==
X-Gm-Message-State: AO0yUKVyMUaIgAc/XndpIh3+hu3i4PzMvJy3ep9nuTJ67wYJAvmxWPwt
        trWcQSl2DoiFIfvaBg33J8u9SA==
X-Google-Smtp-Source: AK7set/6gZCgZuysHt4eIbR8wps4ZYsDjM2t04rbduqEPsWRQRNIUfAvDR4zTQM9gyudtep7KGqQ1A==
X-Received: by 2002:a17:906:fc0a:b0:91f:c56a:4dd2 with SMTP id ov10-20020a170906fc0a00b0091fc56a4dd2mr7906865ejb.62.1678914662947;
        Wed, 15 Mar 2023 14:11:02 -0700 (PDT)
Received: from dario-ThinkPad-T14s-Gen-2i.homenet.telecomitalia.it (host-87-0-96-89.retail.telecomitalia.it. [87.0.96.89])
        by smtp.gmail.com with ESMTPSA id o15-20020a170906600f00b0092b5384d6desm2965366ejj.153.2023.03.15.14.11.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 14:11:02 -0700 (PDT)
From:   Dario Binacchi <dario.binacchi@amarulasolutions.com>
To:     linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Amarula patchwork <linux-amarula@amarulasolutions.com>,
        Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        michael@amarulasolutions.com, Rob Herring <robh@kernel.org>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Dario Binacchi <dario.binacchi@amarulasolutions.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [RESEND PATCH v7 3/5] ARM: dts: stm32: add CAN support on stm32f429
Date:   Wed, 15 Mar 2023 22:10:38 +0100
Message-Id: <20230315211040.2455855-4-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20230315211040.2455855-1-dario.binacchi@amarulasolutions.com>
References: <20230315211040.2455855-1-dario.binacchi@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for bxcan (Basic eXtended CAN controller) to STM32F429. The
chip contains two CAN peripherals, CAN1 the master and CAN2 the slave,
that share some of the required logic like clock and filters. This means
that the slave CAN can't be used without the master CAN.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v6)

Changes in v6:
- move can1 node before gcan to keep ordering by address.

Changes in v4:
- Replace the node can@40006400 (compatible "st,stm32f4-bxcan-core")
  with the gcan@40006600 node ("sysnode" compatible). The gcan node
  contains clocks and memory addresses shared by the two can nodes
  of which it's no longer the parent.
- Add to can nodes the "st,gcan" property (global can memory) which
  references the gcan@40006600 node ("sysnode compatibble).

Changes in v3:
- Remove 'Dario Binacchi <dariobin@libero.it>' SOB.
- Add "clocks" to can@0 node.

 arch/arm/boot/dts/stm32f429.dtsi | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index c31ceb821231..809b2842ded9 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -362,6 +362,35 @@ i2c3: i2c@40005c00 {
 			status = "disabled";
 		};
 
+		can1: can@40006400 {
+			compatible = "st,stm32f4-bxcan";
+			reg = <0x40006400 0x200>;
+			interrupts = <19>, <20>, <21>, <22>;
+			interrupt-names = "tx", "rx0", "rx1", "sce";
+			resets = <&rcc STM32F4_APB1_RESET(CAN1)>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(CAN1)>;
+			st,can-master;
+			st,gcan = <&gcan>;
+			status = "disabled";
+		};
+
+		gcan: gcan@40006600 {
+			compatible = "st,stm32f4-gcan", "syscon";
+			reg = <0x40006600 0x200>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(CAN1)>;
+		};
+
+		can2: can@40006800 {
+			compatible = "st,stm32f4-bxcan";
+			reg = <0x40006800 0x200>;
+			interrupts = <63>, <64>, <65>, <66>;
+			interrupt-names = "tx", "rx0", "rx1", "sce";
+			resets = <&rcc STM32F4_APB1_RESET(CAN2)>;
+			clocks = <&rcc 0 STM32F4_APB1_CLOCK(CAN2)>;
+			st,gcan = <&gcan>;
+			status = "disabled";
+		};
+
 		dac: dac@40007400 {
 			compatible = "st,stm32f4-dac-core";
 			reg = <0x40007400 0x400>;
-- 
2.32.0

