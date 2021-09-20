Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8E4D64114EE
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 14:53:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238731AbhITMyj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 08:54:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237095AbhITMyi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 08:54:38 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51104C061574
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 05:53:11 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id d6so29276195wrc.11
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 05:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2EhNQJduhIIpt0g9bBw1gJAdUiO0vbmeH1OITalz0ek=;
        b=u7B1IpxjjytDA+htBK/6iD5yIbgYKK7ExlI8p1uLLX4xqVmszSL3rL5nXP1DnKm4Gw
         UMRuYNgHrVjl8ogu8MkmXFc+66RoVrAR12dE1NS+l3BLRfEU+nrunzqgUhLId+s38KPt
         WJ4rsv8q03s0su6YzkJbBX8bgCnAefBEgmo+pUY5HZNqVjXLswedYlTiK1NcZK8FeriW
         G8D0q8mL4eISAYrzfietBe+WWR3qki6YjYTPhhjsEqTU9oBrh/gv9asfuklQJoQXC25z
         2LvkQOGBByRelCv636NWzS0yV06GLDwHmL+k+ducgEJ+GHuPFMRTKXkS7NB62/tZAAj4
         7EBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2EhNQJduhIIpt0g9bBw1gJAdUiO0vbmeH1OITalz0ek=;
        b=2OPFTi81EOD8mL39efJFNcEqUswKrQbakpZI9NBk79Mj3sywIaoUcSJqlkqkjEKLxg
         RsSwqufQawpODZN9f5+UkrC/vHcpin+KhnIdHMIgVoVDyuq8I7WAwC4SSszsHNtQvYrT
         D5/z4pdwBHiWu/Wn3oi9WZsGKn66uDwDaZl9VlpMBy+4Hx8lFB5siOUF72EeD+TZMldL
         0g+ffop8U+MnhzDoOoVE3lsy737Y7Ra/mEYvr4m7nhBt3T7rbjFBfqfEyL6hljVy9y/K
         6IlGwSfwucnToVq5q7fauuXCHLJQnXi3jWo3X5qmGRNTSZaRoILryQ6hi4s6Ea7Kt3xT
         77Pg==
X-Gm-Message-State: AOAM530rUnaa7Zk23Bjh7cp69WhtB+feNqHjFEV4VMBtMw/g9Btv0Z1G
        /W9tl9encglLGVnSLRLglO9Hlw==
X-Google-Smtp-Source: ABdhPJx68KEaF5ggIZnnJ43U+q30rj8y309b7yqfTezWSOWT8G78/S+ydkvbB7XbfPYhOcCj7Tc3Fg==
X-Received: by 2002:a5d:4950:: with SMTP id r16mr28735797wrs.265.1632142389790;
        Mon, 20 Sep 2021 05:53:09 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:aa8a:ef22:59c5:1bf3])
        by smtp.gmail.com with ESMTPSA id j21sm15791643wrd.48.2021.09.20.05.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 05:53:09 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     tony@atomide.com
Cc:     linux-omap@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Gowtham Tammana <g-tammana@ti.com>,
        Jyri Sarha <jsarha@ti.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 1/4] ARM: dts: dra7: add entry for bb2d module
Date:   Mon, 20 Sep 2021 14:53:03 +0200
Message-Id: <20210920125306.12347-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210920125306.12347-1-narmstrong@baylibre.com>
References: <20210920125306.12347-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Gowtham Tammana <g-tammana@ti.com>

BB2D is a Vivante GC 2D Accelerator.
This adds the node to the dts file within a target module node.
Crossbar index number is used for interrupt mapping.

Signed-off-by: Gowtham Tammana <g-tammana@ti.com>
Signed-off-by: Jyri Sarha <jsarha@ti.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm/boot/dts/dra7.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/dra7.dtsi b/arch/arm/boot/dts/dra7.dtsi
index dfc1ef8ef6ae..8a9df5ed5439 100644
--- a/arch/arm/boot/dts/dra7.dtsi
+++ b/arch/arm/boot/dts/dra7.dtsi
@@ -965,6 +965,26 @@ hdmi: encoder@0 {
 			};
 		};
 
+		target-module@59000000 {
+			compatible = "ti,sysc-omap4", "ti,sysc";
+			reg = <0x59000020 0x4>;
+			reg-names = "rev";
+			clocks = <&dss_clkctrl DRA7_DSS_BB2D_CLKCTRL 0>;
+			clock-names = "fck";
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0x0 0x59000000 0x1000>;
+
+			bb2d: gpu@0 {
+				compatible = "vivante,gc";
+				reg = <0x0 0x0700>;
+				interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&dss_clkctrl DRA7_BB2D_CLKCTRL 0>;
+				clock-names = "core";
+				status = "disabled";
+			};
+		};
+
 		aes1_target: target-module@4b500000 {
 			compatible = "ti,sysc-omap2", "ti,sysc";
 			reg = <0x4b500080 0x4>,
-- 
2.25.1

