Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E4AD3769334
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 12:36:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229941AbjGaKgE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 06:36:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230363AbjGaKgD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 06:36:03 -0400
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 187E7E53
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:03 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-686b643df5dso2946739b3a.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 03:36:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1690799762; x=1691404562;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=utxlkfanW7kYrfwCYvBRNcFoo1mhiAs/aD6BqaXTjZU=;
        b=WqkMwMJmsLp7LYdbWrNPUzjLxNAxrdAGxjHOWr4TvynjuySuEuvtStXX0bVt8e1RJq
         6WfKs20SUKgNkZX+dU3Vneyt+iIpn86/biPFwme3stoo1YTdUS0Y6JCFAT6tM6S51iR8
         CO0iopDKdiWxMWefdHfsNCXjaLC9sAo+J33Gs9F4ZbzsRkLnP9eO9WyMN8oSVKoQ9/TJ
         Rsz95mAJ1dCeuo5+BUYPpguzD5ZBkHjKeaopG0710ylLHINaAiIQ16o0nX7/n6YCHsDU
         VuhDVA70rwgj6/kLrT/qAlylIbPccrF1HllSyqG4pSnVYmLzI/Gj3mAjHNI5xZn+0SGy
         sfKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690799762; x=1691404562;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=utxlkfanW7kYrfwCYvBRNcFoo1mhiAs/aD6BqaXTjZU=;
        b=EXqWk/VNNyxpKZVn6KWYRFSWQ9tcHnsqWjrwdrUO40hLlnPi8bphRVo5k6DJa/TJi6
         nyLuZHFzMjRiEqHCCMGI8IEtKjvZpZBZoPz816kApSu4a0e7hCr7i+H1nBFMhki29n33
         H2AdTKH51jb/XoZ0Z/W+O4VX3v9Q7HEGUGdMROBLCY/WDP3p9/McGeF5ZV1G1PrZ+3Sr
         mtK/X0t9CgZfZiP3T23JeKPNw5mfnb5T7bXZK6f3Dvcktsoa/ZVedOYBUWmoH8HwoJhu
         8+bqHfsF2/We8d8GYPSmAr2ObSttxusEwfx1mnL+99/KyDWA7sV0FLgSxomqiwg4IPRm
         a8Jg==
X-Gm-Message-State: ABy/qLaoeT1CheBJZm1pCc3xgK6zKC0PlztvLS3DfoNLPqHoO+ZzGBVK
        fWOI3zr3rPKSHEwMnMgdxAKTSw==
X-Google-Smtp-Source: APBJJlEnMlpjzoXVw8bx+Ao7uyDpYsS0oum1LfzVdzWNui/ITpHtpb5INHHdmtbl2ms6zJmXXSwjtg==
X-Received: by 2002:a05:6a00:3916:b0:686:f84d:a4ec with SMTP id fh22-20020a056a00391600b00686f84da4ecmr8883915pfb.27.1690799762566;
        Mon, 31 Jul 2023 03:36:02 -0700 (PDT)
Received: from localhost.localdomain ([49.205.243.15])
        by smtp.gmail.com with ESMTPSA id c13-20020aa7880d000000b00640f51801e6sm5906115pfo.159.2023.07.31.03.35.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jul 2023 03:36:02 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 04/13] ARM: dts: rockchip: rv1126: Add pwm11m0 pins
Date:   Mon, 31 Jul 2023 16:05:09 +0530
Message-Id: <20230731103518.2906147-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add pwm11m0 pins for Rockchip RV1126 PWM11.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
index 239a1dd9360f..891e5fb72056 100644
--- a/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
+++ b/arch/arm/boot/dts/rockchip/rv1126-pinctrl.dtsi
@@ -77,6 +77,14 @@ pwm2m0_pins: pwm2m0-pins {
 				<0 RK_PC0 3 &pcfg_pull_none>;
 		};
 	};
+	pwm11 {
+		/omit-if-no-ref/
+		pwm11m0_pins: pwm11m0-pins {
+			rockchip,pins =
+				/* pwm11_pin_m0 */
+				<3 RK_PA7 6 &pcfg_pull_none>;
+		};
+	};
 	rgmii {
 		/omit-if-no-ref/
 		rgmiim1_pins: rgmiim1-pins {
-- 
2.25.1

