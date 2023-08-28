Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DBED78B72E
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:20:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233020AbjH1SUc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:20:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232999AbjH1ST6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:19:58 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 815D513D
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:56 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6bc9811558cso2595683a34.0
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693246796; x=1693851596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gOToEWW9oYkhmZvCwLkbRporhBTeE07PbdEwTviPJZQ=;
        b=UhoMcow9LlhFh6uIuldPYTlXXYwGhZi32OXNrhfshaLtJFlWYSPHMia58Cbf5ux9Xe
         oiTZbhRV9dldNk5hoG2jUFiEBsxZdGiwkcTjBYtlDi1Vhve7RoHon0X6h9Xd2RVZt1N/
         wi2AKLPSeLjVeGSeH+epPdujl1ZXai2jt9cG9SMFqzK7MM7SK3ll1saZzZd2Wr2g57F+
         3bw8Z55I240+8s9VQhLWFh4B/C2iUYVfa+j/t56nF5J4K8mz3d7A+U4MV6AyNBU+B43H
         Bc3vImiPjT0eRr2xiLCuHV1zxt8z6J0aQtiA2MiG2GzQ69Ody8plYCrZidYnmKrXJPaD
         qC/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693246796; x=1693851596;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gOToEWW9oYkhmZvCwLkbRporhBTeE07PbdEwTviPJZQ=;
        b=WJxGnYE8L15KhJm7RBJfRm98yDOgz0tv2HpN8PCSMA+wmYT3W5G0PtqxDyOR0Sdzrp
         7UfwhT5x81nkaTmlRgEEAxQp0TJcXwwJzhDpk0ifX9FteWLpmrVrdd/S66SBPUsY+G65
         gO3+6OWoTmGP+G8bFQrD9Q116pB83m8ugM6yNAVqgDXBs+nbXdbfTHgdWL7bTohad2im
         fgEFZn+ymz23rYKiY+KcwvK5qBZlAo7RMWITMF/aQYWx3tHFbtpEMfGZchib1yozVLrx
         Smxf1DV/hMCaZX/OTYcHm1/O1IqgJDz0VW9ecUyArqSkRnhcPQZCFR3H4mfp+RCr1szu
         dJTg==
X-Gm-Message-State: AOJu0YxxA2d5Rt0zD3KCZrinsqyyuPI/ziOQp7M+Ig85Jd54Pj+aN3Wg
        hT5alHPWxuAIfl0onBdki3c=
X-Google-Smtp-Source: AGHT+IGGnix0SZ9D+synGgsnmul+2HYw5rUR75ehPHwPEDjW3MsgSc4oJg+nBg2QAZXqKHd+oCvLHg==
X-Received: by 2002:a05:6870:8286:b0:1ba:ddf2:417f with SMTP id q6-20020a056870828600b001baddf2417fmr14158431oae.2.1693246795832;
        Mon, 28 Aug 2023 11:19:55 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a9d620a000000b006b99f66444bsm3695927otj.71.2023.08.28.11.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 11:19:55 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, airlied@gmail.com,
        andre.przywara@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
        heiko@sntech.de, jagan@edgeble.ai, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 6/8] ARM: dts: sun8i: v3s: add EHCI and OHCI to v3s dts
Date:   Mon, 28 Aug 2023 13:19:39 -0500
Message-Id: <20230828181941.1609894-7-macroalpha82@gmail.com>
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

Add the EHCI and OHCI controller to the Allwinner v3s to support using
USB in host mode.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
index c87476ea31e2..e8a04476b776 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
@@ -319,6 +319,29 @@ usbphy: phy@1c19400 {
 			#phy-cells = <1>;
 		};
 
+		ehci: usb@1c1a000 {
+			compatible = "allwinner,sun8i-v3s-ehci", "generic-ehci";
+			reg = <0x01c1a000 0x100>;
+			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_EHCI0>, <&ccu CLK_BUS_OHCI0>;
+			resets = <&ccu RST_BUS_EHCI0>, <&ccu RST_BUS_OHCI0>;
+			phys = <&usbphy 0>;
+			phy-names = "usb";
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
+			phys = <&usbphy 0>;
+			phy-names = "usb";
+			status = "disabled";
+		};
+
 		ccu: clock@1c20000 {
 			compatible = "allwinner,sun8i-v3s-ccu";
 			reg = <0x01c20000 0x400>;
-- 
2.34.1

