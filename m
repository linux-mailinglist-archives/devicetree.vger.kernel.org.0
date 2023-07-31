Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F162769337
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230365AbjGaKgO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230363AbjGaKgN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:13 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9479E6F
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:12 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-686efdeabaeso2775082b3a.3
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799772; x=1691404572;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tz+NIHRi+Z0NVdKWkPuFdey0+2xQaYMkUfyJvUE2WBA=;
        b=qH30M7b2jCWrJjCuCE9F00sg85kY2uJ4b5H5+HKqr2nJfj6zm5fg3D24YKKug0z4qn
         CfWAdXkpX9oTXMLCZ9vFohEp4/9M5H7KypEOK32z6XWlGnilFeRAOmEb9jRDjfVR6PdG
         D8ku0STw0VFBgmv6ZJr33+zmaQ9BtZxV4L+5cvxgJgYRIlNlY7ykw57HwT0Cyy/zESUC
         IwKsuDrGiAQrlw1aw1pE5jd1M4tfx7TxtnUX2Hts+87J2s9sBRa36ex+Diw7PNBwUmp9
         /QoJ/lCxGwXdvFRIIx/i8GqjWbaE0rjJ9q3Q0KVcWukfPAXVDFl+tVDZwaCwQN1WUebN
         SOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799772; x=1691404572;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tz+NIHRi+Z0NVdKWkPuFdey0+2xQaYMkUfyJvUE2WBA=;
        b=isSsuroV7iRT5bcdT627rIyj8ZIZwW8RjPZQDj2WhCuiicMAzH2wuYAdyOzqDz3dO7
         2FqCsoDdNJXLxNRWNt/o5ceqBq2xkxtbEnm9dLsQDMfWnYT9QGRrAXgsDOHQE55lbvmU
         WRP2bHF/K4zwekC+8/6LLRldAQdDOAajUVuzGHNiGbPT47zr0V43xPsleW3UP35LvjfU
         g2mEv0WlvDBrM/RQMo2THrZ9KAO9Y1b/iMe3XQAKMV+qI8Ro0/66J32HdpJFc1WGBSQx
         g0tyWMvxXIbcwOZ11elj/0k81OPgbNEIwUHWpOJCyNuCSFAFZxl4uoeLsw2agW3JnxWV
         m71Q==
X-Gm-Message-State: ABy/qLaFsaVHrM4VpnroMxvYJsi9qhniBIrYCmTgaSl41T+Tnz1lPZOj
        z08FteyLKjg5jb16Exr06l4AwXUz0QX2V0LIZ1MHew==
X-Google-Smtp-Source: APBJJlG3FKSrLCChJUZ0tZFNWgINIabmfbrCJRew9yYdp9Gn++hEWTxc0nvlu31QTWNzH3jJC0We5A==
X-Received: by 2002:a05:6a00:1795:b0:668:753a:b150 with SMTP id s21-20020a056a00179500b00668753ab150mr10973842pfg.21.1690799772150;
        Mon, 31 Jul 2023 03:36:12 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.36.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:11 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 07/13] ARM: dts: rockchip: rv1126: Add FSPI pins
Date:   Mon, 31 Jul 2023 16:05:12 +0530
Message-Id: <20230731103518.2906147-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add fspi pins for rv1126 sfc controller.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 891e5fb72056..cb31e6bebcec 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -59,6 +59,24 @@ emmc_cmd: emmc-cmd {
 				<0 RK_PD5 2 &pcfg_pull_up_drv_level_2>;
 		};
 	};
+	fspi {
+		/omit-if-no-ref/
+		fspi_pins: fspi-pins {
+			rockchip,pins =
+				/* fspi_clk */
+				<1 RK_PA3 3 &pcfg_pull_down>,
+				/* fspi_cs0n */
+				<0 RK_PD4 3 &pcfg_pull_up>,
+				/* fspi_d0 */
+				<1 RK_PA0 3 &pcfg_pull_up>,
+				/* fspi_d1 */
+				<1 RK_PA1 3 &pcfg_pull_up>,
+				/* fspi_d2 */
+				<0 RK_PD6 3 &pcfg_pull_up>,
+				/* fspi_d3 */
+				<1 RK_PA2 3 &pcfg_pull_up>;
+		};
+	};
 	i2c0 {
 		/omit-if-no-ref/
 		i2c0_xfer: i2c0-xfer {
-- 
2.25.1

