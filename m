Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6343C97C8B
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 16:22:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729400AbfHUOVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 10:21:01 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:42875 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729387AbfHUOVB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 10:21:01 -0400
Received: by mail-wr1-f66.google.com with SMTP id b16so2211881wrq.9
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 07:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VmjppQ9kSJIbmhrJG4zlGsF2GtCs0UQY5wgxZMdQ2C8=;
        b=qe/OLHqYfp7Cha4Xtsn+k5Rie/1zqnA6BkAn3UbobgKnv99doCcDfCsT9raoT3DwWT
         Duhbp2Hwv0aRCwQfhGw5tpmTAmWOdGnULdiMCy1yEbqByk2k1lKkTFiC7zmAO5gUqxAP
         3Et7hXC7VNpt42QmpSkjWQEYIJAM8GvqXKv5Ho5g04tcn1eIaUVzTQ5NKz0E373InoI3
         zRHRK62m8CFRYBP7dJloJs3OSI4her46DbZH5FpPa/cYLZKzTHBAt6dzB1I/84vjA3rH
         wJoKT6EGUV2Ye9SNj2kpA9pguKVzpJndsNGqN45Lle5YHxz651jNSUvzeGORzqbmC9JL
         aFDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VmjppQ9kSJIbmhrJG4zlGsF2GtCs0UQY5wgxZMdQ2C8=;
        b=OrcIl1BzHu+V63JfWLc3nHv/rXyCdXtNERI80t19P4/AAZ6mE63ojkojXuwYsFW52w
         KfNheiOqyzQDCItigHccLSQ+tB7fbFm4xNgFlQtyvIJso0iFolM7uP2JRbhidLpocwg3
         cCB1KzAKX9hEnrJZ5PTwBPY4Ul7F0M5wVPSHePF5oCBYMnqpXAl2cfhjuiGZGAJBMVVx
         X2oPOjuVBE01ukXfzhUtRtmeeiIYTOK4Cv+UDZa2m+YY/9S1fM/y9pj0sxP3tEWg8l7c
         jndFxQoDpvoQejTpdUTqHI/PUu9SYnjo1NRao3LS5Wla2Y2kXuE6ivA2xUVS9vgf5TaP
         PrIg==
X-Gm-Message-State: APjAAAUmTzFLr9iHDEr62zSj75RMJYLXMXeNe5gLip5VQBEDxPAfReXG
        zPzBDrKF4QnwCJl7/4BmjUP99g==
X-Google-Smtp-Source: APXvYqyuJkv1+UxkiRrWbP6jf1b1y5tgQuhS+XTokxV95Wiw+0BUZP4OEBBqYv5ZWcVHzVadhPsHZw==
X-Received: by 2002:adf:eac3:: with SMTP id o3mr688501wrn.264.1566397259055;
        Wed, 21 Aug 2019 07:20:59 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.20.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 07:20:58 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v2 05/14] arm64: dts: meson-gx: fix watchdog compatible
Date:   Wed, 21 Aug 2019 16:20:34 +0200
Message-Id: <20190821142043.14649-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190821142043.14649-1-narmstrong@baylibre.com>
References: <20190821142043.14649-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: watchdog@98d0: compatible:0: 'amlogic,meson-gx-wdt' is not one of ['amlogic,meson-gxbb-wdt']
meson-gxl-s805x-libretech-ac.dt.yaml: watchdog@98d0: compatible:0: 'amlogic,meson-gx-wdt' is not one of ['amlogic,meson-gxbb-wdt']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index e2cdc9fce21c..00215ece17c8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -325,7 +325,7 @@
 			};
 
 			watchdog@98d0 {
-				compatible = "amlogic,meson-gx-wdt", "amlogic,meson-gxbb-wdt";
+				compatible = "amlogic,meson-gxbb-wdt";
 				reg = <0x0 0x098d0 0x0 0x10>;
 				clocks = <&xtal>;
 			};
-- 
2.22.0

