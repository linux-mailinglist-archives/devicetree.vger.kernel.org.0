Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A3B485E36F
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 14:08:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726640AbfGCMH6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 08:07:58 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:35723 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725943AbfGCMH4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 08:07:56 -0400
Received: by mail-wm1-f68.google.com with SMTP id c6so2126645wml.0
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 05:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=3nDWpJDfpOQfXawVusespJk2SyBgud3JYRZ5ZXC0wU4=;
        b=BWYV3U428Gc8QR7aKZY4nWtDDgoYNuQo2A3i0xocI7A1OdX/bXOHlzZbpoM9HpZmu5
         w2eYh3sthQswiY9VQBzBrJA/+2OlKshkF9G/8p28Jf9knhlhOXiQd6jE/8WJgbvP5mzO
         8jyDCL1dq/c999yNYGKrDCJssPk/zSlvY4AQrzN68K3tX50+QFWAfb6I+LneNIxK1CVp
         75CXk6f1JvxnxN6ria/lK5C9QmHE3C1pGG2a+/8V7UjhZ7VtfjD2HVJp8v3+ICLd3189
         6Ocyz1v/BB5Zms/+78h+0r1N4ckL3eh/r0S3CTS9XS8F6LUiDwoZSOUpilo/CwiEA7JP
         C7BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3nDWpJDfpOQfXawVusespJk2SyBgud3JYRZ5ZXC0wU4=;
        b=WWfctaDX3IjR2W8CPcJziozEMt/ReY57OroVoOqXxws1M1kkJu8M5BIMscy1w227sZ
         FwcRQ1vRcGUKfoguX9bAszQQVBk6HqWRFLlHagA8z6ZVORtLJ/mJa+P47iMNFToDchYp
         8/BxhHpoCSzfGGAeU0ZEGW0A2JEtWASuiQzxlV4eXAGKT7fC1w8wpN5Ujwb5xS5pQflZ
         2ZpaaiaC9gU/zzE8DDWCuFjGujofhuS9u0WIzV33V3NutM/PcSz6CZDO4bldFNp6C6qt
         FekdxFpppyHFEyLEfs3E970gyCIt8ymAsCQiD7HYFcPLECnT2lCaMNpEX3gljTwNItd5
         Mimg==
X-Gm-Message-State: APjAAAV+9wrwelz6bIsz8WEmwpvrCn2aZ53JsE3aWRlPOjnugu2IJvgC
        v1gMuprLpc6Rr+NpAhw3weUirw==
X-Google-Smtp-Source: APXvYqzol6Ot5n5vTIYz4kULwGeZdgCKUF/deXcHiE+/rQ3Rb/Lb4EzxU0wc9AZz6JzdmHnS4EQ/7g==
X-Received: by 2002:a1c:4041:: with SMTP id n62mr8190423wma.100.1562155674760;
        Wed, 03 Jul 2019 05:07:54 -0700 (PDT)
Received: from starbuck.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z126sm2767638wmb.32.2019.07.03.05.07.53
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 03 Jul 2019 05:07:54 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-amlogic@lists.infradead.org
Subject: [PATCH 1/2] ASoC: meson: axg-tdm-formatter: add reset to the bindings documentation
Date:   Wed,  3 Jul 2019 14:07:48 +0200
Message-Id: <20190703120749.32341-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190703120749.32341-1-jbrunet@baylibre.com>
References: <20190703120749.32341-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an optional reset property to the tdm formatter bindings. The
dedicated reset line is present on some SoC families, such as the g12a.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 .../bindings/sound/amlogic,axg-tdm-formatters.txt           | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
index 3b94a715a0b9..8835a43edfbb 100644
--- a/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
+++ b/Documentation/devicetree/bindings/sound/amlogic,axg-tdm-formatters.txt
@@ -15,11 +15,15 @@ Required properties:
   * "lrclk"    : sample clock
   * "lrclk_sel": sample clock input multiplexer
 
-Example of TDMOUT_A on the A113 SoC:
+Optional property:
+- resets: phandle to the dedicated reset line of the tdm formatter.
+
+Example of TDMOUT_A on the S905X2 SoC:
 
 tdmout_a: audio-controller@500 {
 	compatible = "amlogic,axg-tdmout";
 	reg = <0x0 0x500 0x0 0x40>;
+	resets = <&clkc_audio AUD_RESET_TDMOUT_A>;
 	clocks = <&clkc_audio AUD_CLKID_TDMOUT_A>,
 		 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK>,
 		 <&clkc_audio AUD_CLKID_TDMOUT_A_SCLK_SEL>,
-- 
2.21.0

