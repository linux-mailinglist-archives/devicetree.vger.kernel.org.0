Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 967419A823
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392596AbfHWHDm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:03:42 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:39695 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404039AbfHWHC7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:02:59 -0400
Received: by mail-wm1-f68.google.com with SMTP id i63so8015344wmg.4
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QPoIVNTOyXYZTC/cgAG7gahdttdsAPpU7OveXGHBbvU=;
        b=YfxImhG+22XDen7JHzl0JDxmhGa7/ESUm4mJtSmdvZZTAOX26RHAl0qk5t/UO+X36E
         6RInxOsMCTA97hEWnyoWvP4c8d/pgUlRkrPXZ9gfGK7CUqDWH8WNbWxzq3tlvqeOqxPF
         XqL5CSjR2oCGJ2pwYBq93hVb/vNQGZRrTTw7xwyYKYaMvT+Kr+g9yWI0ZxdNPWtEwtqg
         MoZs9LdcH4SYPLWmUYCuDXWCvRpKMbQ1KU4sAiuAl8DJygbyXaH8CjupU499pz+fHNMn
         eHotGOnYvhJVaa4mUcUjQi3SIBv+tJIYoAp7K59mwNBi7TUEay91nnn9Igw4nA7NAkvd
         7vFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QPoIVNTOyXYZTC/cgAG7gahdttdsAPpU7OveXGHBbvU=;
        b=DNM3E4enMpV/D/fMw87zN9ASq7ZSGeQtfJAwirEXtw90eFRC12OTGoO7cWEiifRnPT
         hfDHSy4RqdzUEujSwOxgYpR0LKZcTbLEndyLJxeXf08HNX5zsCu6pClDpnl/ZbSp7elh
         dc1qhKH22cA1LU0j3HmA2n5fhLhRJTU42Z3BFfpn3wVtx3lT4e2hewqR2DC7m/Rk98w+
         CPat6nQljebXTgVmwp/H1gWuVFEz6hKHIE49JuoRvzhpCg9vx9D0B7rFYPaFDdj50eJt
         t1GeSHkLkYFApRgLKEXNOe5inYAd8GolmbvDTfhWPPx/uC3pw+c2t7jrmsRuom8Hpevc
         ohPQ==
X-Gm-Message-State: APjAAAVQYTiPSh3OmKpdglWpOM73zCCnB9oXPokCT/gQdWorZwRx95wI
        NAZ17izY2ebi7pnM9uHAHlT5UQ==
X-Google-Smtp-Source: APXvYqzRycjTAeMvnARLoalSZo6AnDl57rvyZAJDxY3tg33MTQOXf9kfJt0kHqntUwrkIABojGsTnQ==
X-Received: by 2002:a7b:ca5a:: with SMTP id m26mr3076694wml.134.1566543777680;
        Fri, 23 Aug 2019 00:02:57 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:02:57 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [RESEND PATCH v2 04/14] arm64: dts: meson-gx: fix spifc compatible
Date:   Fri, 23 Aug 2019 09:02:38 +0200
Message-Id: <20190823070248.25832-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxl-s805x-libretech-ac.dt.yaml: spi@8c80: compatible:0: 'amlogic,meson-gx-spifc' is not one of ['amlogic,meson6-spifc', 'amlogic,meson-gxbb-spifc']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 08c01e11ba1b..1c580f42e818 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -317,7 +317,7 @@
 			};
 
 			spifc: spi@8c80 {
-				compatible = "amlogic,meson-gx-spifc", "amlogic,meson-gxbb-spifc";
+				compatible = "amlogic,meson-gxbb-spifc";
 				reg = <0x0 0x08c80 0x0 0x80>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.22.0

