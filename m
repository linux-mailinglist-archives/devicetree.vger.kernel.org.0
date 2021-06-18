Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A128E3AD3F4
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 22:55:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234270AbhFRU5x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 16:57:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234249AbhFRU5w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 16:57:52 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7B41C06175F
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 13:55:42 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id c9so12120265wrt.5
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 13:55:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sTMrkLH33QcTYAmCmYzm6ZHr2W5AOWeg+lqcFyiCyr0=;
        b=O3dGmcXCtw9lYBqWTYYWBPbQzzstHy0LKNyQBUOmq3wzI5TxW0FvlMhvSWqyn64iCg
         RVLmEil0rlpF411jvMMfrn1ZcScnhIqmBUhszkSy21FREulFqltV0pTgeQ3p9SQvJKmR
         cI6JKwuXDqwfnSkZ/Iy4eFHCmW03phedmjxXAgyV+r7ygBmxpy27cEjA1XdHCzoc5/Fj
         XAjBpOVgoCgwzG4ZDKYS+S/6EyMAfw/jvxJHumD+Hea33wxCjDsCgAupd4sUoKfv8qXE
         BhUXMu1ij9xcaCUmHRk1Ygyqup9LZJV9Uxn9mQQ73nA0yKEPTDCg5m1oEkufuuZwTK3K
         HYPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sTMrkLH33QcTYAmCmYzm6ZHr2W5AOWeg+lqcFyiCyr0=;
        b=APyxCd/f+n39M48/HGEavz/2yGTEHlaN1L9D97ed2IJ2CIJ6X2vIlETunJs0UCOycs
         O1pwRF6oJ2OsLIxR7PrSdnR5KWjcWfSsYKV7PSypF3EIEC5IGkFfhLMdAhOS9Xne6N1C
         Dih4WLKkq83lWtdFhCZmAjqk1uxzUuoQR+mAh/H45gNYSs5iD6weZaNDjDTPOv2kHVAc
         jnNxNoyY8d12YaTMrv9WL6DlNT1YmcpYuhZnXGJbKwGM5vBwxQCfbPQUSi4nM6vJtgNY
         KheRtGCV32zKNwdDZy7H/rAn3NKNDxZ70VQJMqZh/1zO50cLzdcHp0IUdUKXTU7DLOji
         5zHQ==
X-Gm-Message-State: AOAM531Xw3eDGF4XUwFb43hTa4xVVuW7sjKxGICJdYW+o4zCAZgfzt5H
        KTVAN2GQ33L7UgNgyN0VnxqSdg==
X-Google-Smtp-Source: ABdhPJzecFQwRn7K69AaWw6n1KwseQmQ6firgw6Oi59mrVcis9F+GSZhd+3uZB86CVKZ5AW+ggmAhw==
X-Received: by 2002:a5d:698a:: with SMTP id g10mr13319533wru.129.1624049741534;
        Fri, 18 Jun 2021 13:55:41 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j12sm9745476wrt.69.2021.06.18.13.55.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 13:55:41 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     arnd@arndb.de, linus.walleij@linaro.org, olof@lixom.net,
        robh+dt@kernel.org, soc@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 1/5] ARM: dts: gemini: add labels for USB, IDE, flash and ethernet
Date:   Fri, 18 Jun 2021 20:55:29 +0000
Message-Id: <20210618205533.1527384-2-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210618205533.1527384-1-clabbe@baylibre.com>
References: <20210618205533.1527384-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adding label will help simplify boards's dts.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm/boot/dts/gemini.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/gemini.dtsi b/arch/arm/boot/dts/gemini.dtsi
index cc053af3c347..9fe0fd93ac9e 100644
--- a/arch/arm/boot/dts/gemini.dtsi
+++ b/arch/arm/boot/dts/gemini.dtsi
@@ -16,7 +16,7 @@ soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&intcon>;
 
-		flash@30000000 {
+		flash: flash@30000000 {
 			compatible = "cortina,gemini-flash", "cfi-flash";
 			syscon = <&syscon>;
 			pinctrl-names = "default";
@@ -322,7 +322,7 @@ pci_intc: interrupt-controller {
 			};
 		};
 
-		ethernet@60000000 {
+		ethernet: ethernet@60000000 {
 			compatible = "cortina,gemini-ethernet";
 			reg = <0x60000000 0x4000>, /* Global registers, queue */
 			      <0x60004000 0x2000>, /* V-bit */
@@ -365,7 +365,7 @@ crypto: crypto@62000000 {
 			clocks = <&syscon GEMINI_CLK_GATE_SECURITY>;
 		};
 
-		ide@63000000 {
+		ide0: ide@63000000 {
 			compatible = "cortina,gemini-pata", "faraday,ftide010";
 			reg = <0x63000000 0x1000>;
 			interrupts = <4 IRQ_TYPE_EDGE_RISING>;
@@ -378,7 +378,7 @@ ide@63000000 {
 			#size-cells = <0>;
 		};
 
-		ide@63400000 {
+		ide1: ide@63400000 {
 			compatible = "cortina,gemini-pata", "faraday,ftide010";
 			reg = <0x63400000 0x1000>;
 			interrupts = <5 IRQ_TYPE_EDGE_RISING>;
@@ -421,7 +421,7 @@ display-controller@6a000000 {
 			status = "disabled";
 		};
 
-		usb@68000000 {
+		usb0: usb@68000000 {
 			compatible = "cortina,gemini-usb", "faraday,fotg210";
 			reg = <0x68000000 0x1000>;
 			interrupts = <10 IRQ_TYPE_LEVEL_HIGH>;
@@ -442,7 +442,7 @@ usb@68000000 {
 			status = "disabled";
 		};
 
-		usb@69000000 {
+		usb1: usb@69000000 {
 			compatible = "cortina,gemini-usb", "faraday,fotg210";
 			reg = <0x69000000 0x1000>;
 			interrupts = <11 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.31.1

