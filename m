Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 641977582D
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 21:43:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726384AbfGYTnO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 15:43:14 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:50334 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726641AbfGYTnN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 15:43:13 -0400
Received: by mail-wm1-f66.google.com with SMTP id v15so46022030wml.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 12:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fJc1atiQz5OEztuHQqSGjdoiIKBAFWAgorgVo68gaaQ=;
        b=jxH8gQG9+QwY+aN4xvMC+QDz2s4wMg21chw6VUnY+kxHdY2WvCjNGfGPBrhfBFzWED
         PqnVkdS5vFVbeJFcHbIl4afpzVwhUtRzuDyrEoleiOCY8EPfczuGBdd5zJEOqLykBeNY
         uAivAzxlDx9irmBuIlLER532F7awvAWTgiuRkWOstlaNGi28VPfD0AIaAiZLYqtC2bpS
         uwmIuM8W1TPTAVbn7HlUokavL3V8UtQ7RoYciJ5CmbASfsPgTscUXuDSOghTjyZZu1R6
         vPep7y8JFYDjYKwCIlHXGWO0SorSaNN9XjZrIqlhNr6MRD8w/bjWzjRbAfuvMLd5cNXH
         MLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fJc1atiQz5OEztuHQqSGjdoiIKBAFWAgorgVo68gaaQ=;
        b=l2ZNYzB/MjYMv4UkAeTHQ+3Xgc6m8kPqMQTcNKXe0AJgt67HQrRDolZvh4/BT/hLYq
         cVf1BLemvcaYzZVzvTfUiPe0FhxZenfFr5ZbpQ0q2Ki0872dXwjHDjJsYlzouEYqVhYV
         EZ4T9VCfdTw07P/HjyXdcitFUdbFsLLROOma6ROgyA7uh+ERzh5dEYMNueRmckrWxAEe
         EOltCQSa93u2SH1pHakRKaDsU2/USS4pPP0JH04bFDhTL4kf2mbscboGXrY7tTKiKOmF
         bKfZwUfsisMNmvSK7yrQtdXNpZI/G7bIXaZs28ZG5Ik0DKcAD83TFHOW92Ee0QrtuwBN
         +EMQ==
X-Gm-Message-State: APjAAAURat/u6Bmt2FUeAlbZq8879XHFqdzsboL/NEMZMlLMpRu/scPw
        4tRGseS+F4IDMZtT0cDIzQsn1A==
X-Google-Smtp-Source: APXvYqyQwu1nmcB4abCQ5zAFUj2iSjiM9xVcT8A6OcXmoRgvpTb6oyQWmgU37KVPZS42Kw0Z+zWV8g==
X-Received: by 2002:a1c:a7c6:: with SMTP id q189mr82252637wme.146.1564083790917;
        Thu, 25 Jul 2019 12:43:10 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
        by smtp.googlemail.com with ESMTPSA id y16sm103410662wrg.85.2019.07.25.12.43.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Jul 2019 12:43:10 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     davem@davemloft.net, herbert@gondor.apana.org.au,
        khilman@baylibre.com, mark.rutland@arm.com, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-crypto@vger.kernel.org,
        linux-kernel@vger.kernel.org, baylibre-upstreaming@groups.io,
        Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 4/4] ARM64: dts: amlogic: adds crypto hardware node
Date:   Thu, 25 Jul 2019 19:42:56 +0000
Message-Id: <1564083776-20540-5-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
References: <1564083776-20540-1-git-send-email-clabbe@baylibre.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds the GXL crypto hardware node for all GXL SoCs.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index c959456bacc6..fdcda12a7113 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -36,6 +36,17 @@
 				phys = <&usb3_phy>, <&usb2_phy0>, <&usb2_phy1>;
 			};
 		};
+
+		crypto: crypto@c883e000 {
+			compatible = "amlogic,gxl-crypto";
+			reg = <0x0 0xc883e000 0x0 0x36>;
+			interrupts = <GIC_SPI 188 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 189 IRQ_TYPE_EDGE_RISING>;
+			clocks = <&clkc CLKID_BLKMV>;
+			clock-names = "blkmv";
+			status = "okay";
+		};
+
 	};
 };
 
-- 
2.21.0

