Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19244786250
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 23:27:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237679AbjHWV0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 17:26:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237659AbjHWV0I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 17:26:08 -0400
Received: from mail-oo1-xc31.google.com (mail-oo1-xc31.google.com [IPv6:2607:f8b0:4864:20::c31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AD5010DB
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:07 -0700 (PDT)
Received: by mail-oo1-xc31.google.com with SMTP id 006d021491bc7-570e63f5224so158002eaf.0
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 14:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692825966; x=1693430766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LUbFm+fOmzrazp9sKgGhqqbV60lKK8Psc75Jfutf4LY=;
        b=Hb/j/w9DqSkKcyLd9rKgOvHuEs2VTClPtpSA3sdjYKd3es6CSjdm8MGQDYwd2HQQGV
         mkvPYdUAyX0vYFn+zjbu+e6fLyIU3nI++ryzDjPDqGV9spoCVLZ4dBdnu9++nfCJIOSj
         rBX9tyqTz55UK9UFRqghGhZ1tY+3DwMJ1K249ijppg/DVGqgnRKk8llKkxdIp6/7TXEK
         TOTrjA/w7g9PjTmK2cLtm/03t/DJfR2Umq6e8AEIf9BICobuguWYbL2IemfpVbfe3phc
         ATU1yzR8XXmoV+huT1YrbSZi3Fv8ydr5OsKZroOETZ/96Y/QIq/Rvbk+/3TE82Af+7a5
         LrSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692825966; x=1693430766;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LUbFm+fOmzrazp9sKgGhqqbV60lKK8Psc75Jfutf4LY=;
        b=D7QxnmdviolMRyi9YeazU4QocP4vtODZY3bAMB9z05Y7rdvsE/2hQYyWFigz4LA/VD
         4dlNJOUIkTUiEDhZlJnXgO8WHZJOBxap9sWm3r+1Dy0QhA7yBWK9NQWk9YFni93T2bHg
         7b6zA8UEMeKxK4PZw4BEXvzADV274Em5oOXEDve3kpAWtAZjGuyiST2b1K6teAzbhsk/
         /HU10bmnQaI58CN9lyC1APghoUJjCKyupkUXq2gvEiAMoR5gldcGkxsiVUtR7Sl6IciZ
         Yez/NyoIykz/yDIptk0sm/xYkMj+8hGTu1xipAZuf55X/RekeOTy5OlygnSwiStT9oGR
         8hkw==
X-Gm-Message-State: AOJu0YzLPuqRS7bPDZLDSEVG2hfKWylkFeL11xAnFpozksqDPBfkFaA/
        JwP2x2AsxlXgs58Wcoq6B7A=
X-Google-Smtp-Source: AGHT+IHVRJKoTFQ8uIPo98eSBe+TlfALpm8H98CvemrVDCQWd4sAnPjYgvc1qscn7NGAuINEQEsBPA==
X-Received: by 2002:a05:6808:1882:b0:3a7:46c4:e8cd with SMTP id bi2-20020a056808188200b003a746c4e8cdmr9304735oib.12.1692825966291;
        Wed, 23 Aug 2023 14:26:06 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id d26-20020a05680808fa00b003a1d29f0549sm771127oic.15.2023.08.23.14.26.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Aug 2023 14:26:06 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, jagan@edgeble.ai,
        heiko@sntech.de, uwu@icenowy.me, andre.przywara@arm.com,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V3 6/8] ARM: dts: sun8i: v3s: add EHCI and OHCI to v3s dts
Date:   Wed, 23 Aug 2023 16:25:52 -0500
Message-Id: <20230823212554.378403-7-macroalpha82@gmail.com>
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

Add the EHCI and OHCI controller to the Allwinner v3s to support using
USB in host mode.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
index c87476ea31e2..eb63dd274305 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
@@ -319,6 +319,25 @@ usbphy: phy@1c19400 {
 			#phy-cells = <1>;
 		};
 
+		ehci: usb@1c1a000 {
+			compatible = "allwinner,sun8i-v3s-ehci", "generic-ehci";
+			reg = <0x01c1a000 0x100>;
+			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_EHCI0>, <&ccu CLK_BUS_OHCI0>;
+			resets = <&ccu RST_BUS_EHCI0>, <&ccu RST_BUS_OHCI0>;
+			status = "disabled";
+		};
+
+		ohci: usb@1c1a400 {
+			compatible = "allwinner,sun8i-v3s-ohci", "generic-ohci";
+			reg = <0x01c1a400 0x100>;
+			interrupts = <GIC_SPI 73 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_EHCI0>, <&ccu CLK_BUS_OHCI0>,
+				 <&ccu CLK_USB_OHCI0>;
+			resets = <&ccu RST_BUS_EHCI0>, <&ccu RST_BUS_OHCI0>;
+			status = "disabled";
+		};
+
 		ccu: clock@1c20000 {
 			compatible = "allwinner,sun8i-v3s-ccu";
 			reg = <0x01c20000 0x400>;
-- 
2.34.1

