Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8632E78B72A
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:20:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232921AbjH1SU2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:20:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232985AbjH1ST4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:19:56 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7132713D
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:54 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-6bcac140aaaso2677825a34.2
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693246794; x=1693851594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sZxJ1X5IcmMP5uOQq7URUpycqeONLS78Y9FFjRdR0eo=;
        b=OjM72Qf+lqlfjOd2jwjjag+rrRfJsNwHScMDKzB3PewbOAjBM/13pbDpLralpgoqpH
         o8YnbW7Rrhjt2F8MhaxekH4cTGm3l6HVv6KL76AunQ7bWa3CvyjooHXy0evJOZLWoVtp
         6TsgsHX5FaUKCWScQ6oWFvqNPBajo6UEGk8d0IZSCCcFmBV9Xn8UJmZRYpkKjtrPIDuJ
         8jrNrR6acCzWllSAa33c411qtJy+JQ04DErVUilSSTAD0hUboB3SXgumzCyjelrYgupX
         7tpNZX0rylYNfRjnhZgh0zwBIbJCScrYS1kxN/LAQ2KMxByEwBCQopRlEZCB3Dgrst2X
         Gk3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693246794; x=1693851594;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sZxJ1X5IcmMP5uOQq7URUpycqeONLS78Y9FFjRdR0eo=;
        b=VJ2epKJBT3IjCQ5SAOEVfoKw0vrAwBMkhcbyBuxNhLQLiq1ZySLHS6dolByR8Zmdzv
         vX/gxQx+I/ENsk5TCqVYg5H14RoSYYFXg/E2/OuQRPVGeBrk6qKh1qTdsxDr5AIAMdME
         3FUYB8ZxD0BWbphrGnAWxXYSnyddAMGFFMskDfnz01Oi4oUtKhiNXhe/ZTgGBxY7zlgP
         gkpcqSCleLtQNHH8IGsI6ipGh43ab7yxrcVQYQTRiPDIB0mSzpQUGSMNyQMvW7rwE7aw
         uFaMAZqSe9lGGL+AvU3NNBnFGpIIR+95gXIvOPz43rpGGbLdWUnoTcHMHl+iBnOVxpOj
         Bplg==
X-Gm-Message-State: AOJu0YxPDUes8wV2Jv71IfWpuL8XTSLJLs7X6Lvh0W4uO2IHUwIH0ROr
        ZaiK0Nwpj6lcQQmjnaStIIk=
X-Google-Smtp-Source: AGHT+IHpyMtJZZ+pgUDS6XI+bfZY08aljsVIHgTn339V67ZHc7OjFKRRegIc9nH885S+kBWNeqr8ew==
X-Received: by 2002:a05:6870:b6a6:b0:1c1:19ae:7b23 with SMTP id cy38-20020a056870b6a600b001c119ae7b23mr14675298oab.55.1693246793712;
        Mon, 28 Aug 2023 11:19:53 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a9d620a000000b006b99f66444bsm3695927otj.71.2023.08.28.11.19.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 11:19:53 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, airlied@gmail.com,
        andre.przywara@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
        heiko@sntech.de, jagan@edgeble.ai, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 3/8] arm: dts: sun8i: V3s: Add pinctrl for pwm
Date:   Mon, 28 Aug 2023 13:19:36 -0500
Message-Id: <20230828181941.1609894-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230828181941.1609894-1-macroalpha82@gmail.com>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add pinctrl nodes for pwm0 and pwm1.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
index 3b9a282c2746..c87476ea31e2 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
@@ -414,6 +414,18 @@ mmc1_pins: mmc1-pins {
 				bias-pull-up;
 			};
 
+			/omit-if-no-ref/
+			pwm0_pin: pwm0-pin {
+				pins = "PB4";
+				function = "pwm0";
+			};
+
+			/omit-if-no-ref/
+			pwm1_pin: pwm1-pin {
+				pins = "PB5";
+				function = "pwm1";
+			};
+
 			spi0_pins: spi0-pins {
 				pins = "PC0", "PC1", "PC2", "PC3";
 				function = "spi0";
-- 
2.34.1

