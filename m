Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ADB9F97C78
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 16:21:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729433AbfHUOVD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 10:21:03 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:42884 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729402AbfHUOVD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 10:21:03 -0400
Received: by mail-wr1-f66.google.com with SMTP id b16so2212036wrq.9
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2019 07:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0ugngOdLxigFZemdrr4eu8WpRfTmu8+1TiC9WgYeXhU=;
        b=CVdltlJ+0GpGDymZlihjbeAuNTaI4yJ74G3OZ8zyICLH6U5wQg7gVyorSEPUxWPchC
         TpSxORmVobChRkZ9l9nGGl7/JYa0hoDqFntjUdTu0lwQ3T+5tpHc3jisJXwPmtuq/tB6
         iB+Z7rDm3246/RJQyqFzm0iSxr63epeG0jfZXPHqszwQdKQ1HhtNIAL0Bx9mCNz4TpIv
         DnsVyefnJFUFvEjNt7azQNeXbtuJjiJj5tyyX2APyoIQm3/2/mYXPQZpRJurThv99kO/
         e43RbJSTD3tyjx3EIN0l7PwyOhKtI/SMeXxegF1APCftI8tsUFU2qlApVFAwMLzrau4Z
         8pRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0ugngOdLxigFZemdrr4eu8WpRfTmu8+1TiC9WgYeXhU=;
        b=qedU/X73yTBcpHwo0Efsx/v0pGDHcnLzPJk5qeFQqpS/PN6ssV79zFLJZw2PMqyQeV
         BKKcxw+bAbGHwV3SNkNmzRTwkDf/DZcI9B5KmcWLlcA/JerN7zNbE4U4jsQGRvhsLyVc
         RBLbrcBfZQiD8eGxIeGXWTUmGpgAOVWt3tYopHvTVX0y9C/U3dgXK9F0c4r4DnBZhRyV
         yu7FQvhiK+1OUsRS+q1He4vNvSNcbJ6ocZKIPsM4szIFgNALhw8imN4ZjOyo6FttK++u
         flhZz436mAkQRAxKgbPaU6zesrP0dVMx+bLJuHlWyiBXwdPCgQFLrQwBNcS0emeYFz/D
         LuEg==
X-Gm-Message-State: APjAAAVxRszuokGKzNmFBssWHQ7kvXz4iLHQmP052mhTliFEZtplrgdA
        XRRD5kHuAlbp+/pLIBezgwFuDg==
X-Google-Smtp-Source: APXvYqwSD79nk88x7e6MpuJ7uI9b+ep5KWOY2LfGTvIApMFVEqrcd2lvgI3fGWMtA+/eD2tBRB6+sQ==
X-Received: by 2002:adf:f206:: with SMTP id p6mr42438473wro.216.1566397261043;
        Wed, 21 Aug 2019 07:21:01 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o9sm33418939wrm.88.2019.08.21.07.21.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Aug 2019 07:21:00 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v2 07/14] arm64: dts: meson-gx: fix periphs bus node name
Date:   Wed, 21 Aug 2019 16:20:36 +0200
Message-Id: <20190821142043.14649-8-narmstrong@baylibre.com>
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
meson-gxbb-nanopi-k2.dt.yaml: periphs@c8834000: $nodename:0: 'periphs@c8834000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
meson-gxl-s805x-libretech-ac.dt.yaml: periphs@c8834000: $nodename:0: 'periphs@c8834000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index d8127f863b55..a7735d2f0037 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -437,7 +437,7 @@
 			};
 		};
 
-		periphs: periphs@c8834000 {
+		periphs: bus@c8834000 {
 			compatible = "simple-bus";
 			reg = <0x0 0xc8834000 0x0 0x2000>;
 			#address-cells = <2>;
-- 
2.22.0

