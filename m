Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 626121A1DA
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 18:49:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727864AbfEJQtt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 12:49:49 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:36832 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727723AbfEJQts (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 12:49:48 -0400
Received: by mail-wm1-f66.google.com with SMTP id j187so8194240wmj.1
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 09:49:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Is7gD3yeObgU922o5rXJFDawZvTxttvDjfnW9eFtyrw=;
        b=fBkrLJ1E5OA+08cH9MslvzFXxoKtzBq2o6KYAEOStp1jVLEwYxnEGZ5LY773CCHu1N
         e1feqfn5tkpY51KyGEPTgYBIHFRrpWN/7s7eaQMOzChMnoq0eRDSklFUQLC5DUHOFAKx
         uKG9NUhPFBVoLbo1O9nR8gFEckRBstGu0uUVchZnQdzHcsmGc1Pl4UQCVZBjkbEOAY0z
         UgJ5zuHRK3jsilfgLJRH3IFTWyPvuNUNajH2I6VaBJKDoQZb9viLbNhLjHFjv/qsr0G3
         hnPhCTicU9Z9eAIZlj8r1zspYcXdNnRZ2H91rYQqjzP6RqpBsU8C2am/2h6cPbsRArXj
         JNAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Is7gD3yeObgU922o5rXJFDawZvTxttvDjfnW9eFtyrw=;
        b=nJANBnpnrf7dntOmPnYQuv6eqnY4KDIyWs+s/Mg3rThNysj4uobpc1lC42aE3V0QIA
         MYuyhleSo8x08BGTrmuhQg69tRQwwDuYHFiGOV6Kgf2QebBhna7Tg0VR3qVMuA2Vdb2Q
         86VMcIVu9wvkXDyh4uEKqmGqhOlb7w5ldNdz7wS15XQSHS3xPR9+E0bx11Qz1xraGgNT
         bVk+fPHo1Uvh+NzP1ImAyxcZ9FqlU1yos4952SiLmSzx3QT5lPbPSfBdq0sKVWcqC2xe
         01MU684wTDGyXRpVBHCh2i7vuUGHK0FuTDF0WqsG4dFYuP66RX3JMSk/u/hz8kDT704u
         i0zA==
X-Gm-Message-State: APjAAAVOwX4OOL9ImOiQakvLuR2wqxu0QF4xzQt4E8uARb9nm6OmL0jC
        5Hy2xMC4/sdgvg2TMIw18qoccA==
X-Google-Smtp-Source: APXvYqwMuN/bOnJi5zVCfLtc6oWWWxdwzjc1a80rDT+920MwLAt+4SZyEIccA37+vnMs1aIt2Rev3Q==
X-Received: by 2002:a1c:1d4:: with SMTP id 203mr8178833wmb.76.1557506986314;
        Fri, 10 May 2019 09:49:46 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id q26sm5114308wmq.25.2019.05.10.09.49.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 May 2019 09:49:45 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 1/5] arm64: dts: meson: g12a: add ethernet mac controller
Date:   Fri, 10 May 2019 18:49:36 +0200
Message-Id: <20190510164940.13496-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190510164940.13496-1-jbrunet@baylibre.com>
References: <20190510164940.13496-1-jbrunet@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the synopsys ethernet mac controller embedded in the g12a SoC family.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 2f4f4dd54cba..a32db09809f7 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -102,6 +102,27 @@
 		#size-cells = <2>;
 		ranges;
 
+		ethmac: ethernet@ff3f0000 {
+			compatible = "amlogic,meson-axg-dwmac",
+				     "snps,dwmac-3.70a",
+				     "snps,dwmac";
+			reg = <0x0 0xff3f0000 0x0 0x10000
+			       0x0 0xff634540 0x0 0x8>;
+			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "macirq";
+			clocks = <&clkc CLKID_ETH>,
+				 <&clkc CLKID_FCLK_DIV2>,
+				 <&clkc CLKID_MPLL2>;
+			clock-names = "stmmaceth", "clkin0", "clkin1";
+			status = "disabled";
+
+			mdio0: mdio {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "snps,dwmac-mdio";
+			};
+		};
+
 		apb: bus@ff600000 {
 			compatible = "simple-bus";
 			reg = <0x0 0xff600000 0x0 0x200000>;
-- 
2.20.1

