Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1D165237E1
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 15:19:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387759AbfETNOa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 09:14:30 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:36821 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732632AbfETNOL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 09:14:11 -0400
Received: by mail-wr1-f65.google.com with SMTP id s17so14584231wru.3
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 06:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6IVz8trHJceMtUKXTFJMf0iW5MQvs73+t7piDB6eEsY=;
        b=t/Oa0ug/gh8v2UjVr9u3N68HSxROAKAU5Vtzp2apfkj9WbuYMDnkHj+q72LYrLC+TI
         Vwpq3Z75dZl3Kx+wZyvibkDZZh3NQ7YI9b28qhCE+V4lVhsyqBdyG8Ut6H6MnSguqTYd
         uHWU84E6TFWLsyZrnx+iAqdKAtr2jh2wseTpmO23TXm/sghNTJTnFBYS7/2/BGNbp5LI
         eL6i2hKjI1bmAvL4kbamX6FCKlnLIwhyYgiV3dntXgpN+nExsgxA9sP5RGuXaQRCVPYD
         rfw6obIdU4gzhxk1LSO6sCnKwCjCENsNFOugK0Z7OY/b4+wLmK7o1hfBI83zDAi/nT1y
         0/Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6IVz8trHJceMtUKXTFJMf0iW5MQvs73+t7piDB6eEsY=;
        b=i+jbVxIGeyMHar9fTrj3V8zJLMG7CDQNDMK5AHgrt34kT0iAjz38bSxglsEQKsJisV
         6ZsG5xYDzbk2J3OK0H7qIEbTFpHLIdGyfL9xyWMk/LUuuv6OjOPnp4jMpM00+JeMtVia
         yhZiLRBuDm+3Vm4dmXc83vqIrZBmeTr8qWx5C8jb8XZn5ZbVQX58nMkn8nuS/bMHukve
         /eUaUiJcIxl3nZMt+U/CqYxfsk1aJ8e+kHYJZMESZlGxEfSWHcLpenDzSiyVROik1JQh
         8B/aX9lvXPp50C2tSd8OOAlsZY2AjjPsudEo0zOnxZWOcV4nH+TZd8+kQbXyHHpN3q1z
         n3gw==
X-Gm-Message-State: APjAAAWpU0WBfDKA9BUvZFukcUFbnVfntJyzz/yOQ33MQyjYf7nyvlN9
        bu14eybvmSzDdkm5bZ7tAx7Cs9vAYMM=
X-Google-Smtp-Source: APXvYqz9K/jjyMysacjgfl7KOksQHYbNEnXEErMcqBtLCrHy7XK7fIn7QXtDN0QBRM8DBBymdtlRGg==
X-Received: by 2002:a5d:6982:: with SMTP id g2mr29721861wru.223.1558358049506;
        Mon, 20 May 2019 06:14:09 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z8sm18054284wrh.48.2019.05.20.06.14.08
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 06:14:09 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/5] arm64: dts: meson: g12a: add ethernet mac controller
Date:   Mon, 20 May 2019 15:13:57 +0200
Message-Id: <20190520131401.11804-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520131401.11804-1-jbrunet@baylibre.com>
References: <20190520131401.11804-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
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
index fd24fd29f4ed..1d16cd2107ea 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -137,6 +137,27 @@
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

