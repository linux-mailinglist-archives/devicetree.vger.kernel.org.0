Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ABEC2786252
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 23:27:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237808AbjHWV0l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 17:26:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237586AbjHWV0G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 17:26:06 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C994DCEE
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:04 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id 5614622812f47-3a7d7df4e67so4164204b6e.1
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692825964; x=1693430764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sZxJ1X5IcmMP5uOQq7URUpycqeONLS78Y9FFjRdR0eo=;
        b=GZ+HvLjXK7DanLsla8bkLp/K/qJMMAIQBhCE3ZKCnVMoo1wLY58bJM15JElW+JSyXl
         ntRvdlEqTyfJQwXyGTN4DWpsccf3SoaU5NwYd9wnF0vsmEI0CBNYO268Q93AOhcJhj/Y
         mcFGM9Om+WdmW2P3RviaeN1mWR0Sh0nAfECH/0ODtIwYslrVl5eaBAaBZsDGhq8aqgk9
         L/VsUQpTpgjpPHvo0dtOjKMBIIKX9613kiuGZ0SIfePVchpU/lix/y+iW9lmvHXzrtpr
         S/dp0B0R248cWxN7I7PnGOp8atOpCaBU0E+GUtlXARozIPfrQDwEsiYOsO2MSfCT1NUu
         VD1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692825964; x=1693430764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sZxJ1X5IcmMP5uOQq7URUpycqeONLS78Y9FFjRdR0eo=;
        b=DNa8LFcVQ7mHPSWbWQdn7SUIR0gEGY7s3U9jxwJcFjmaiAJeL4iM+9S+jSkVkOSKMc
         dauuL4nElvntJzfyl0KLU6aenaRfNS4MwMi6C2Nuj7BC02nfjJTqENxmqwzAbUsthUUm
         yvYWPp9baeIre1rMcRMwKFrFPpJoj2e3S6SQmax0O45gLJNQDmCRsExPU38HKnI0Dz/P
         vm0v2ZhBgret1y9v/tmXOCdIYmnyikGN7PIAwjDR+TN9Ux64EizL6fKHbeZldZ6RNmHn
         ZNv2x0KCe9VEBT2nrGSVLDvKFEzZH29G7RZSFDQ5WmuyfUGRfkGfz+sUApDZieWg80Nf
         pvvA==
X-Gm-Message-State: AOJu0YzsikoST6lVdyZM7BVjk5QRRAUdIIkB4YgHRnKRY/TRN9bCl5Jn
        mShYLtgowFs4wgGX8a1oBdc=
X-Google-Smtp-Source: AGHT+IGttHzA9ZAubh4JXxNS/58jl4cMgwK4kWOq/HDtZ6E0volg9jJkPSkgcbqopg8EWr/nfDCcCg==
X-Received: by 2002:a05:6808:148e:b0:3a7:53a8:aed2 with SMTP id e14-20020a056808148e00b003a753a8aed2mr18448110oiw.7.1692825964002;
        Wed, 23 Aug 2023 14:26:04 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d26-20020a05680808fa00b003a1d29f0549sm771127oic.15.2023.08.23.14.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 14:26:03 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, jagan@edgeble.ai,
        heiko@sntech.de, uwu@icenowy.me, andre.przywara@arm.com,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 3/8] arm: dts: sun8i: V3s: Add pinctrl for pwm
Date:   Wed, 23 Aug 2023 16:25:49 -0500
Message-Id: <20230823212554.378403-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230823212554.378403-1-macroalpha82@gmail.com>
References: <20230823212554.378403-1-macroalpha82@gmail.com>
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

