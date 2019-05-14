Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3B8341C795
	for <lists+devicetree@lfdr.de>; Tue, 14 May 2019 13:15:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726201AbfENLPn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 May 2019 07:15:43 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:36096 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726490AbfENLP1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 May 2019 07:15:27 -0400
Received: by mail-wm1-f67.google.com with SMTP id j187so2403222wmj.1
        for <devicetree@vger.kernel.org>; Tue, 14 May 2019 04:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mU8ejWHy+W5AYtnGGvQAFcqui30OeOfdUF4Rimt6ejQ=;
        b=GrLWanG/uCTvdYXVZJknxkFiKNgW/j9vvGBCnZGnRIy98x3TPbc4wVRPJuIeVgLREw
         PuB3uuz4WOf9LdlFEzX3WgQCRXsSHSbzv+h8Ea1deY/yxdKU/ROlZC8tKyGzyY8P3izB
         3PrCDuiyANEuLQp3sMZJIrkbrZ5mLdC50mMIzJPmO26/J4Os8bTM0fCA2LDSzmPoUFnD
         Yc+gmZZSdbF56ClMM4PXms+Xrm4bAOzI8FxWkaaiyle10F6PyA+fNpLX1jateVkv+Hnn
         J1jDQV0h333B2KJhRCT7TJALRYXLwDmVwmQWFSkrgE2DUzQ1G091G0Me928VC1ADZxD3
         vaiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mU8ejWHy+W5AYtnGGvQAFcqui30OeOfdUF4Rimt6ejQ=;
        b=l2ee7DMwAtjIE3vfxdsC6Ff/SaBY0eE1rHRl6U93LMjpSI9+xeZ8VTiHw1xULdSgLZ
         lmhO0fyKmR9F2mkWftAqAZsf/vz2Zwk5Sonlv2xJPfFZJJ2tqZkhhI0N/HFRCvCaPU2k
         Skw6dhLA8BW4WqdloCVXb9SdFl+nnlbA+kmH3BLIS29gGfhfrwWD0tAJtRpDkoLZEZrP
         hvSA6x+RXfWLP5bsio2b+C4qz1dkX/ZYPIkh4rnYGeWjdPstnsfKn6TC0/i4IAG/frwZ
         T4cYRF8lToaeelnw+zgjeNTHziXkWFVGH/Zq0lSdgmjUXwJ6Wj2ttjE52GgWF7BEsxXb
         6xbg==
X-Gm-Message-State: APjAAAVZhQh1HSSVl94jMF8emeD121kO6TpAMuIcE2qK5H/Jl1tRW3Bo
        gGpvaosN/TFzm3QQoJlBlkpU2COtTHQ=
X-Google-Smtp-Source: APXvYqwNYfIz+EntwTRpSxz3e5FlMiLk8xhRV0KoFKpWfBnG4xI9Vgeb/o/oIp3AfLznSOJCmCvPgw==
X-Received: by 2002:a1c:7dd6:: with SMTP id y205mr15308582wmc.90.1557832525211;
        Tue, 14 May 2019 04:15:25 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id c130sm7289922wmf.47.2019.05.14.04.15.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 14 May 2019 04:15:24 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 8/8] arm64: dts: meson: g12a: enable hdmi_tx sound dai provider
Date:   Tue, 14 May 2019 13:15:10 +0200
Message-Id: <20190514111510.23299-9-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190514111510.23299-1-jbrunet@baylibre.com>
References: <20190514111510.23299-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

At the moment the sysnopsys hdmi i2s driver provides a single playback
DAI. Add the corresponding sound-dai-cell to the hdmi device node.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index d4fc645f0ff3..5c8c93ff4816 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -158,6 +158,7 @@
 				clock-names = "isfr", "iahb", "venci";
 				#address-cells = <1>;
 				#size-cells = <0>;
+				#sound-dai-cells = <0>;
 				status = "disabled";
 
 				/* VPU VENC Input */
-- 
2.20.1

