Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0FE50237DA
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 15:19:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387599AbfETNOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 09:14:15 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:39652 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387534AbfETNOP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 09:14:15 -0400
Received: by mail-wm1-f65.google.com with SMTP id n25so12590963wmk.4
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 06:14:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=m47c/l62ndl1BZoIquVCAdRz64Yquba0Nph44qgFKpU=;
        b=a9+TNBgqnV2CrEHXljT0uw9ovdO7ia1lACaaNVfaHCiyWMp9hbktkPEO4xtWN1wlZN
         /OBe+lIsQLHY/0oZNXeEgz7oYLTwoFmTtfqvfznfqiPjmj41i2mcgXCmFoBBwI4Btee5
         Yc5+MbcTTrqcHSdI2/CUu9w4m+/+ikRZoCEZWuRv8I/cqhW3DcRvommSzq8FCT5dGrc6
         GwT053sPmg6D496MIDo1xNreR+nnWNVKCVDwzRp23MROzcQNcgMc5WnB/MK4ZjUrVQvX
         8vF8a6r0j8rUGlCKW+pLIqfIY0IAryRP1rUldHXTX42E9n3Gai9fok4OSqOL0CA62yFi
         22cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=m47c/l62ndl1BZoIquVCAdRz64Yquba0Nph44qgFKpU=;
        b=GGoRixKdb5u/C84hoAoPUvCaRkw6O49/IiTxcqwZtESbmcGLIU4vN857bqMxr5M85d
         1C4q5MRFbwXy2HrNz7KnWEwreECMuX03vB/FpE6iR12txbSWjIabM3IGTI316/jSZIbT
         iL/dmPP+fBqoCqRtiut0nRx0MnKxOv3D5A8SjUloL9s4TL2/pisqZmXYeyiYCICTxBJt
         fYKYhjhrg38jbSoW96B7o36KRyzY4arI92/HreRtSAzUOXNi1FaWYLssCMaGkTNOvScj
         WqqLtjG46+xI4zVKJNCJKogIyFR/jyI82PZWAgRUCXNg9c8+HCci7jU32+9pVXU4PSge
         YI7w==
X-Gm-Message-State: APjAAAUp2SOc+0eiCdqA4UctfqsdNi/ah/tmgiBHmiBJhDtHNKcK9yOo
        xHq9jsmxaitP2piKqtmTMq0q1Q==
X-Google-Smtp-Source: APXvYqxLfvHVZc8cuXZUlVVEnCemwaArTi91A2WfQOsaaIfxLFsAdBOHU81+/ps8QxtzRG1xz26+Ng==
X-Received: by 2002:a1c:cb82:: with SMTP id b124mr12189669wmg.107.1558358053429;
        Mon, 20 May 2019 06:14:13 -0700 (PDT)
Received: from boomer.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id z8sm18054284wrh.48.2019.05.20.06.14.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 May 2019 06:14:12 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/5] arm64: dts: meson: sei510: add network support
Date:   Mon, 20 May 2019 15:14:01 +0200
Message-Id: <20190520131401.11804-6-jbrunet@baylibre.com>
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

Enable the network interface of the SEI510 which use the internal PHY.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index 484b93ef11d8..be1d9ed6d521 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -29,6 +29,7 @@
 
 	aliases {
 		serial0 = &uart_AO;
+		ethernet0 = &ethmac;
 	};
 
 	chosen {
@@ -149,6 +150,12 @@
 	};
 };
 
+&ethmac {
+	status = "okay";
+	phy-handle = <&internal_ephy>;
+	phy-mode = "rmii";
+};
+
 &hdmi_tx {
 	status = "okay";
 	pinctrl-0 = <&hdmitx_hpd_pins>, <&hdmitx_ddc_pins>;
-- 
2.20.1

