Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6287B769333
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230080AbjGaKgB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230304AbjGaKgA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:00 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E97D2E6D
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:35:59 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-68336d06620so4351363b3a.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799759; x=1691404559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+O9dYEGO+3efs918Dk1CzskP1TNbA7Ik4keIJN4wpYU=;
        b=GiePduPFZZxf0/2j+BJZ8M0wuIYR4ZWGFA7AcOR9HCTO4voUyPO56W+4WFYCJjaoN+
         IxobaZZRDZkxONBjmJbx62U5jzSfns8x6T2cKGLswdR/a7matrvTO1JTSxpa9HxrU/E9
         +r7RVCp4Q1W2/h4W7V1YGc2MHAo89libGXZVYSExHNE4uy7oRLzEQ2HQ+ButZD1XfyTa
         gSUsUbl+vcTkYBj5cQnAJXBbJrlkMQHfxfmFxbG+GnJsLOyQGUhI5R8koanw74gh2WEf
         VKEWMXqKqUdMcIQ89z87YYwHvX/HSHNkhUDO7wbXJHq/Yy2vhVeoD0RX29vzX8aa9nef
         nxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799759; x=1691404559;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+O9dYEGO+3efs918Dk1CzskP1TNbA7Ik4keIJN4wpYU=;
        b=KbvBfwZzYWKvV8h3omzvm5a+uedQZxtqakmlSjzGlrA3xlZKUMz3Hrkxx0y578GUAD
         QjU3MSVMceBgI3NnjO1lCN6her8J/awU261Lf0yOp0j/Q2LenY93fEQypJtJJlQCwGA/
         G90hoHxxDii2rAB0o+tSOhshu0j9ZN5NT8gvR29EjF73KbaTHBHNCjdozDZdR9CHZpV0
         Tm9MlhTaXhRJHbvlggZd43DKeOED9y1GoIXfAnAB6+GW0GBcZNHTa4irTmnTJS0dWDn6
         bmp1nGs6tGML3xahx8/KcsGArZ25Xo4f/flwunJSot3MqkJs6LdZjncTeZiIhXxWI5E+
         /ttw==
X-Gm-Message-State: ABy/qLa31a6E1M3Q21j2EhMYbNuRDB5BFzsd5R7D8S1GAIGt6ZclIXcB
        XlN/d+Wq74WwlgM3CU/9XAmtmQ==
X-Google-Smtp-Source: APBJJlFF1Q475xyZdOQMQKP+0nskvGn40nAkMvD4OPxmTctCjhUxFOpdq6GPn3w8Q2kjBox2LUWo1w==
X-Received: by 2002:a05:6a00:c86:b0:682:5a68:9846 with SMTP id a6-20020a056a000c8600b006825a689846mr11581653pfv.16.1690799759234;
        Mon, 31 Jul 2023 03:35:59 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:35:58 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 03/13] ARM: dts: rockchip: rv1126: Add pwm2 node
Date:   Mon, 31 Jul 2023 16:05:08 +0530
Message-Id: <20230731103518.2906147-4-jagan@edgeble.ai>
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

Add PWM2 node for Rockchip RV1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126.dtsi b/arch/arm/boot/dts/rockchip/rv1126.dtsi
index 1f07d0a4fa73..931a1ffc22e8 100644
--- a/arch/arm/boot/dts/rockchip/rv1126.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126.dtsi
@@ -203,6 +203,17 @@ uart1: serial@ff410000 {
 		status = "disabled";
 	};
 
+	pwm2: pwm@ff430020 {
+		compatible = "rockchip,rv1126-pwm", "rockchip,rk3328-pwm";
+		reg = <0xff430020 0x10>;
+		clock-names = "pwm", "pclk";
+		clocks = <&pmucru CLK_PWM0>, <&pmucru PCLK_PWM0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pwm2m0_pins>;
+		#pwm-cells = <3>;
+		status = "disabled";
+	};
+
 	pmucru: clock-controller@ff480000 {
 		compatible = "rockchip,rv1126-pmucru";
 		reg = <0xff480000 0x1000>;
-- 
2.25.1

