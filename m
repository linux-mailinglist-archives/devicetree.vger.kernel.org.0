Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 61FA35B947
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2019 12:47:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727403AbfGAKr4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Jul 2019 06:47:56 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:36414 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727605AbfGAKrd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Jul 2019 06:47:33 -0400
Received: by mail-wm1-f66.google.com with SMTP id u8so15369475wmm.1
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2019 03:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MHTJ257kdPP2T0j92u2xSaWnQO7aRf9hGbv+c9l6pxM=;
        b=VFZrfRQ1F0iwy+14EMyBHVHHM3dPYVsVYIq1rXoHN6fFnW+W8hmKNQ7soUw1ak0be7
         4691jHA+qEJU4qfw4xoKufSACls4wAxo2FRRQVWIWBM7kb4Wj0WVCiEeYShwaxUqsK64
         djk32jQQkE4bSOx0OpOS//c5qraxGSmseV4lHJXwi/MvzyH4LnhqDOOditZlNZNoXw+J
         ym+9OuFBbWTsqLWsCo9ZKZl8RqknErs3PoeM37wlrlDbdVgGMG+iU466lGUkQzPHmLAg
         WtPtyfs+HUNdr1nXtcRYNMNEUQ0DFJ2gcSUdyvShP+rk+nIAqthppc1dQgVk97n61bum
         +elQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MHTJ257kdPP2T0j92u2xSaWnQO7aRf9hGbv+c9l6pxM=;
        b=BL3hSg7/Q5H7RuLvKdO725Vxya5iKM5tisE7HInTq02PV4uoRTQMbX5UPhExA017gn
         ToCY0M/cqdA9OON6pZXp/6YUfDTnCCbO8c399thwiLD1ng80OnCMqhwI2NVvGBxAB4cj
         rIDy3VseaTluhXj0xOnS3sXFU0tm4FrM0kaPpeeY7rxOO9pJSjmIfGqi/t/cS+R+23wA
         wq+wCGVwCUUZRqQ/t2jjS0KJiKyVnJAR5JurbJvXneMMb2oHauhICKm6cOxlkYvOmHqd
         gMVjUC2NNhO/KjZHlSk0JxqgH6Adoa4M/1wqWxWNEOdERYoKmIpuSy+XDOm96k0+97sf
         0jDw==
X-Gm-Message-State: APjAAAUwT1yp19K8EvupB7Mu6Ze5clZkCr4UZddWPMyuoyBsGlOHcklZ
        rvlYtq/2P3qNwSU8Bn5BmY6TYQ==
X-Google-Smtp-Source: APXvYqxo4flzhYOz0OrHaqCdbrMX3sdAJGvFI0sixUo7zYPrRJ8p4Kl9rrP13WwllpyHoZzl7aNzDA==
X-Received: by 2002:a1c:9cd1:: with SMTP id f200mr16321534wme.157.1561978051524;
        Mon, 01 Jul 2019 03:47:31 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id d24sm11658802wra.43.2019.07.01.03.47.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 01 Jul 2019 03:47:30 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     jbrunet@baylibre.com, khilman@baylibre.com,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [RFC 07/11] dt-bindings: media: meson-ao-cec: add SM1 compatible
Date:   Mon,  1 Jul 2019 12:47:01 +0200
Message-Id: <20190701104705.18271-8-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701104705.18271-1-narmstrong@baylibre.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add AO-CEC compatible string for the Amlogic SM1 SoC family,
a derivate of the G12A AO-CECB controller.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/media/meson-ao-cec.txt | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/meson-ao-cec.txt b/Documentation/devicetree/bindings/media/meson-ao-cec.txt
index c67fc41d4aa2..ad92ee41c0dd 100644
--- a/Documentation/devicetree/bindings/media/meson-ao-cec.txt
+++ b/Documentation/devicetree/bindings/media/meson-ao-cec.txt
@@ -5,10 +5,12 @@ to handle communication between HDMI connected devices over the CEC bus.
 
 Required properties:
   - compatible : value should be following depending on the SoC :
-	For GXBB, GXL, GXM and G12A (AO_CEC_A module) :
+	For GXBB, GXL, GXM, G12A and SM1 (AO_CEC_A module) :
 	"amlogic,meson-gx-ao-cec"
 	For G12A (AO_CEC_B module) :
 	"amlogic,meson-g12a-ao-cec"
+	For SM1 (AO_CEC_B module) :
+	"amlogic,meson-sm1-ao-cec"
 
   - reg : Physical base address of the IP registers and length of memory
 	  mapped region.
@@ -16,9 +18,9 @@ Required properties:
   - interrupts : AO-CEC interrupt number to the CPU.
   - clocks : from common clock binding: handle to AO-CEC clock.
   - clock-names : from common clock binding, must contain :
-		For GXBB, GXL, GXM and G12A (AO_CEC_A module) :
+		For GXBB, GXL, GXM, G12A and SM1 (AO_CEC_A module) :
 		- "core"
-		For G12A (AO_CEC_B module) :
+		For G12A, SM1 (AO_CEC_B module) :
 		- "oscin"
 		corresponding to entry in the clocks property.
   - hdmi-phandle: phandle to the HDMI controller
-- 
2.21.0

