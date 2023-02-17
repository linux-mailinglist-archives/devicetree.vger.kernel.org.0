Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CB2CB69AEFD
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 16:07:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230169AbjBQPHF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 10:07:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230144AbjBQPHE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 10:07:04 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B0C26FF22
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 07:06:43 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id cz7so1978817edb.12
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 07:06:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3z185FWU7ZfyyzhLKoYedsNlicLGBx1kFdr349Ea550=;
        b=cPgqSYp5x0RbNey1QoYnp5yYjtPNnxIKHuV0yCV/tGu9ze+BWyKaZrgRC23xqf+aK1
         Aa75MQoEmRnU49ts0JOKIdAsizKdLGtGQ6i3gbPmR/8+6/QlLJNRQKcZLCdwp6qESKLk
         TNeODqdrNmmvu8AAMSwD/f+X9yYhNXjoTESvao7GPYh3/RJyInpDc8tOf328q9nSJfVK
         uNyJqYQAaYyhcRqfLEb141/RcX5WHo476bWoSoAdMBR7U9u64E3NB8EDcq+GHSRjJp5a
         b6Qh4FYtOa1Yw38WNUVZGEnLEWXE6z5y7xchSIgWc6sWTAckOKpnHBoSW1kh3ufDXVwb
         krkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3z185FWU7ZfyyzhLKoYedsNlicLGBx1kFdr349Ea550=;
        b=bGxfcrLH6ba5dJfs/Tb8hiOg3IKbcWvpz5dPx714v3Ytpyhq3kJJVKFJVTF84kPm01
         93H7g+xJQmizoJoR+fMAvR37I4rQ644QGkxuI16baPqxZVUoqo/9WmD+hjlOnKXr+DiI
         JvsWPJDANVVgg8uDlyfkdaXqnoIV/B6VMgM9eorkjJjjxVeXRCU36IeCQYX2LAIxkJj8
         dR3wwPB9Xk8Ol2nTJs6LuzskjZ/mWzJwl4R4ZiiT2cc5dfpZrT1iWFkOh3LFwTgoZGTc
         QW8TS5/PZ+AcAa+NAr9KoAi7sB9Bnjz9mH4+fD12R5KDU+bgkYg0po/N4Mo5J/1wjtaL
         yuAw==
X-Gm-Message-State: AO0yUKUXPpkSmpL+9wGVVnGed00/kK01FAEzGwfyIk9059xubA+l0H9c
        ck1ju6L9tmqRzGiPErq90i6fdA==
X-Google-Smtp-Source: AK7set/pn10vry4YigYRKtWssAPTbvwcClDP3kZTdAu0MAicSLuTBDXhSHoRKivXU0qwmTastoh1hQ==
X-Received: by 2002:a17:906:4708:b0:8ae:e82a:3230 with SMTP id y8-20020a170906470800b008aee82a3230mr10211274ejq.70.1676646399162;
        Fri, 17 Feb 2023 07:06:39 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id fx15-20020a170906b74f00b008b14ba6c954sm2221303ejb.194.2023.02.17.07.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Feb 2023 07:06:38 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        - <patches@opensource.cirrus.com>,
        Adrien Grassein <adrien.grassein@gmail.com>,
        Randy Li <ayaka@soulik.info>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        stable@vger.kernel.org
Subject: [PATCH 2/3] arm64: dts: imx8mm-nitrogen-r2: fix WM8960 clock name
Date:   Fri, 17 Feb 2023 16:06:26 +0100
Message-Id: <20230217150627.779764-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230217150627.779764-1-krzysztof.kozlowski@linaro.org>
References: <20230217150627.779764-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The WM8960 Linux driver expects the clock to be named "mclk".  Otherwise
the clock will be ignored and not prepared/enabled by the driver.

Fixes: 40ba2eda0a7b ("arm64: dts: imx8mm-nitrogen-r2: add audio")
Cc: <stable@vger.kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dts b/arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dts
index 6357078185ed..0e8f0d7161ad 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-nitrogen-r2.dts
@@ -247,7 +247,7 @@ wm8960: codec@1a {
 		compatible = "wlf,wm8960";
 		reg = <0x1a>;
 		clocks = <&clk IMX8MM_CLK_SAI1_ROOT>;
-		clock-names = "mclk1";
+		clock-names = "mclk";
 		wlf,shared-lrclk;
 		#sound-dai-cells = <0>;
 	};
-- 
2.34.1

