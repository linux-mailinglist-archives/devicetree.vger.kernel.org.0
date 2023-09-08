Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED304798AD6
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 18:47:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234583AbjIHQrt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 12:47:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232332AbjIHQrs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 12:47:48 -0400
Received: from mail-oo1-xc32.google.com (mail-oo1-xc32.google.com [IPv6:2607:f8b0:4864:20::c32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B103D199F
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 09:47:43 -0700 (PDT)
Received: by mail-oo1-xc32.google.com with SMTP id 006d021491bc7-57328758a72so467584eaf.1
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 09:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694191663; x=1694796463; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=eZfQzG8lRnstr/ITqHYjpvmWNZJdM5R2Z5bV48aXhms=;
        b=knaHfdj/Ws3/5+315nUelBx0LppKQzRvaKlkcF+/WPtzSHfBwnUg0n7/hJ7A/xEMCg
         LG0jbnVcs93Q9HWdxY8sTDVMSVVcxL5DdDK8FGVtPMQy2zf8g0PR3bBDS3vh3c6GXkjW
         xBCcjLSJkzB5/sYECDaNuJxlb70tac0g96O5Z0+i3o5plL2RjOpFZyKJjimZKYGt1sLj
         CguQ7K67brmi75LB3O8kQYHxiKXBAuDLAYxz4FBV8+qfbwy7/1+sXjA6yiKoXdn0W9o4
         qhJx/pSa1rHi42dfqhS5g/SSOhdBYLdy79VdpMqKeSsJ9TuNdTvoP8/NxqsVftROuUGj
         iVjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694191663; x=1694796463;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eZfQzG8lRnstr/ITqHYjpvmWNZJdM5R2Z5bV48aXhms=;
        b=mmpjsnlKOBZ4fU7DB0jwppzG3NovIjZPdFzRpzrk5idaHBrdCYoPLBnA0xr98CFG63
         yzMR0U6TWghR72HGm6k1m8JgmsGhIyKKlm9R0X0xPhUPz+bthX0KuQQN/Cp0FbphaGl6
         Nu/fzQtByNF5nC14xAuomJAkno1F/cpNmBNYx3p1P7UfWemCKxee9qepkFPGZIa5zED4
         97KcSst7SBht10W7yNr04jgGXUYLxdq60p29aeseqgKpecYq3iSkgrrzJTzNOrawXAc9
         UHwhEp+K32nqt/RI84esIPWs/6r4P6SxhuqIl+uK45NPB0bU7jPWgz242kva6CvdQVWz
         zP/A==
X-Gm-Message-State: AOJu0YyUvS7glj9QLQCQVPqlHb7Miblf7tZFxR6EjzeyImuEmOfBVgL5
        NrMgJcL0lWPafLw+wuz9js7xUk+xkcE=
X-Google-Smtp-Source: AGHT+IGfB6Q4MUDt69NFi0LZ8w0J/HJtgtKEm5pGmDq21nLoZZ7VH9uysPhDKK6VtxjXsKxMQP0waw==
X-Received: by 2002:a4a:a602:0:b0:573:2a32:6567 with SMTP id e2-20020a4aa602000000b005732a326567mr2818093oom.0.1694191662876;
        Fri, 08 Sep 2023 09:47:42 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:71e9:644b:bd6f:e558])
        by smtp.gmail.com with ESMTPSA id g63-20020a4a5b42000000b005760ec1708esm910913oob.38.2023.09.08.09.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 09:47:42 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-imx@nxp.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] arm64: imx8-ss-lsio: Add PWM interrupts
Date:   Fri,  8 Sep 2023 13:47:35 -0300
Message-Id: <20230908164735.666655-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The PWM interrupt is mandatory per imx-pwm.yaml.

Add them.

This also fixes the followig schema warning:

imx8qm-apalis-v1.1-ixora-v1.2.dtb: pwm@5d000000: 'oneOf' conditional failed, one must be fixed:
	'interrupts' is a required property
	'interrupts-extended' is a required property
	from schema $id: http://devicetree.org/schemas/pwm/imx-pwm.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
index b3987dd45372..49ad3413db94 100644
--- a/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-ss-lsio.dtsi
@@ -30,6 +30,7 @@ lsio_pwm0: pwm@5d000000 {
 		assigned-clocks = <&clk IMX_SC_R_PWM_0 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		#pwm-cells = <2>;
+		interrupts = <GIC_SPI 94 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
 	};
 
@@ -42,6 +43,7 @@ lsio_pwm1: pwm@5d010000 {
 		assigned-clocks = <&clk IMX_SC_R_PWM_1 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		#pwm-cells = <2>;
+		interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
 	};
 
@@ -54,6 +56,7 @@ lsio_pwm2: pwm@5d020000 {
 		assigned-clocks = <&clk IMX_SC_R_PWM_2 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		#pwm-cells = <2>;
+		interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
 	};
 
@@ -66,6 +69,7 @@ lsio_pwm3: pwm@5d030000 {
 		assigned-clocks = <&clk IMX_SC_R_PWM_3 IMX_SC_PM_CLK_PER>;
 		assigned-clock-rates = <24000000>;
 		#pwm-cells = <2>;
+		interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
 		status = "disabled";
 	};
 
-- 
2.34.1

