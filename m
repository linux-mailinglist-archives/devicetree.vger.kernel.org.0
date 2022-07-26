Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F923581139
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 12:34:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238483AbiGZKeR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 06:34:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238687AbiGZKeL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 06:34:11 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDA9932079
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 03:34:10 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id bn9so8657001wrb.9
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 03:34:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vs2EUHmxru/gTR6halos1Ywp4+4Ho+TIZLu6GPo9CWs=;
        b=prNXGV7iA98CLi7EMiN9IozmhPsLKVpTUggFQNl6g7BRP11xWMQ+0nZT/FO5kkXMQV
         K/FjNyqGJYOzsMrGlHAK48WCuJl9uFUaG0BJ0/Dzph95hUbtsqvYwcPBUF+ugio3aXUb
         p58HzTKaQODXJUENFXRt1MMY0SacepHCZPTVnl3VqoYOTmJcwzHr3M9M8bAkQs9IBTq3
         4mraQ23IORToSV05s64Dkfeo8ZBZNrdxDIHsfXy3xBR4NolOPNUDUFV9xbdXwI2gNZWF
         qGx6TDfrIaLzSp+0uL5oEDBmwAXkSvMmhqBjUwQe8BBsVERoTuSzCukvRmhQHfVk8Uf6
         OB/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vs2EUHmxru/gTR6halos1Ywp4+4Ho+TIZLu6GPo9CWs=;
        b=B+wPtqkdwIh7Lnmax2kCfC97VvRo1eHmnLcQUEPqLnjp93lfDc3fcGHm7aLKb+qbCT
         tc45/XvFw5wkz0kAipmi1eoGbiRcSS42hGkryVoWFl7Z+G7S//dE/ktqirQX4LTTZ7ch
         fDq42faKkQ09lZUHFwVk4UWCbYI0W5kRW8XNnxn52wFSAM9yykeofNFqQmZSp6x+wte+
         fPNu6518qH6jjMebQXtTIPmaJxqajhqMclGpTu7+riE9VezGJFAA/TMr49s9bQnb+xQA
         UZf0zzvpRIRJxXBGOkXlKR5NvXyWxcX8ueZAHU6Q35+/JwdNsVZok0O9liBEqk/SMNG3
         B/MA==
X-Gm-Message-State: AJIora85jF7atpFNNxfTRHFl05jDoskqc99qbUgNg8vWQTefpiZ4yxX8
        8R7NB/A+1365bitjBimVOUfFvA==
X-Google-Smtp-Source: AGRyM1sv5g+DyuIviwXBexLxKFaqokT4ggkp0H0ZNkKAAr36TnXyvJ+DvG7l4QUOyD8cPrWwVg9kpw==
X-Received: by 2002:adf:f7c7:0:b0:21e:4aab:1641 with SMTP id a7-20020adff7c7000000b0021e4aab1641mr10057612wrq.166.1658831649322;
        Tue, 26 Jul 2022 03:34:09 -0700 (PDT)
Received: from localhost.localdomain (2a02-8440-4641-6f91-91b7-326a-5d27-a1c3.rev.sfr.net. [2a02:8440:4641:6f91:91b7:326a:5d27:a1c3])
        by smtp.gmail.com with ESMTPSA id ay35-20020a05600c1e2300b003a2e42ae9a4sm20617121wmb.14.2022.07.26.03.34.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 03:34:08 -0700 (PDT)
From:   Jerome Neanne <jneanne@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        nm@ti.com, kristo@kernel.org
Cc:     khilman@baylibre.com, narmstrong@baylibre.com, msp@baylibre.com,
        j-keerthy@ti.com, lee.jones@linaro.org, jneanne@baylibre.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 02/11] DONOTMERGE: arm64: dts: ti: Add pinmux and irq mapping for TPS65219 external interrupts
Date:   Tue, 26 Jul 2022 12:33:46 +0200
Message-Id: <20220726103355.17684-3-jneanne@baylibre.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220726103355.17684-1-jneanne@baylibre.com>
References: <20220726103355.17684-1-jneanne@baylibre.com>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Interrupt occurring on PMIC TPS65219 is propagated to SOC
through EXTINTn pin connected to gic500 interrupt controller

Needed for driver testing but official board support pending.
TI commitment is required before board upstream kick-off.

Signed-off-by: Jerome Neanne <jneanne@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am642-sk.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 4daf55b9d61a..7a84223406f5 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -285,6 +285,12 @@
 			AM64X_IOPAD(0x00b8, PIN_INPUT, 7) /* (Y7) PRG1_PRU0_GPO0.GPIO0_45 */
 		>;
 	};
+
+	pmic_irq_pins_default: pmic-irq-pins-default {
+		pinctrl-single,pins = <
+			AM64X_IOPAD(0x0278, PIN_INPUT, 0) /* (C19) EXTINTn */
+		>;
+	};
 };
 
 &mcu_uart0 {
@@ -338,6 +344,12 @@
 		compatible = "ti,tps65219";
 		reg = <0x30>;
 		system-power-controller;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_irq_pins_default>;
+		interrupt-parent = <&gic500>;
+		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-controller;
+		#interrupt-cells = <1>;
 
 		buck1-supply = <&vcc_3v3_sys>;
 		buck2-supply = <&vcc_3v3_sys>;
-- 
2.17.1

