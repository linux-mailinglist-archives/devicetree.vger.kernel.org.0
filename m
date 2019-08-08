Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6659186101
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 13:41:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731372AbfHHLlN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 07:41:13 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:39259 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728289AbfHHLlG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 07:41:06 -0400
Received: by mail-wm1-f68.google.com with SMTP id u25so2077099wmc.4
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 04:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FvEHw13SSjNx0rO+Eb5GpaVPObzVB7Z/B/DYj0wmNjo=;
        b=p9L7TRcusWrL03ffcFUatHnu7a3wC88l/KhBLtA+5SK9PFmIMqlVSYH30UPzwIb8OO
         AA1Lnk1arUdN+6hDPDkXQFBLiDuOKO3qx7BQJNrxakZnrnwZdGgJl/fchkidNPmnoadz
         Co6BvOtphLt0hmzPBssqtTHX6KLQR3A4XbkT7liTQUasJpNlM49mPSwB9RKGYpLwEI7B
         HjFxhgKPGz2gi1GR+ReHnuQ78D/NCeeiPEeG6JHa2PosCVkmUiU6oF1SGjrWdFGITNOU
         08aVw/N2Ivy201GalDcBQ94wweclM56AfVzFh+hqTLHTxDjXkNBOvTbkra2hUVgzy/zX
         FqbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FvEHw13SSjNx0rO+Eb5GpaVPObzVB7Z/B/DYj0wmNjo=;
        b=EFexg93PQjYtKMhf7XP4DsRxuKVAiUPl/4jOJXiGXmiaX4MLLBVCk2wonagUVdrHKm
         xOhEqUy+90twbDgpj4g8Xjnv3YeO7vUIGDp8F0GH4GlZieOTZf369zcEWYbd79FKeZPZ
         1jovXVqbqZeXG1ezzD7sWC7Lce3Q7lF2N0JNEcWmBw101V+9+xE0iRuy6dMSnW2iueMI
         PGfv7ch9zlYr4vDZXNri5u+DTYk7yZlSA/2z6ktaa4pODCIecdoLOTudzu0xb5Ys03G8
         UGKuSXcS4KQpjoZliIKdNY2MQ9Iwwh5/4XK7X4elxEfhw3T541VaAKU30kTMkYHqRXR9
         b83A==
X-Gm-Message-State: APjAAAWqXHDwua05+38GQtxajI3O4YM0x0x+1PgzZIsGYH15ocGJDNla
        cZ8aTAaKDF3ksLCxyitgch17gQ==
X-Google-Smtp-Source: APXvYqwwQF4nEozwvl1ltX1EUHmBeoypnEtCvb7R92cEQ+NaOXqnoC9eAitquC1kL/PNebqoN8UHpQ==
X-Received: by 2002:a1c:2c41:: with SMTP id s62mr3995039wms.8.1565264464549;
        Thu, 08 Aug 2019 04:41:04 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id f12sm104555882wrg.5.2019.08.08.04.41.03
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 04:41:03 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     robh+dt@kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org,
        netdev@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v3 1/2] dt-bindings: net: snps,dwmac: update reg minItems maxItems
Date:   Thu,  8 Aug 2019 13:41:00 +0200
Message-Id: <20190808114101.29982-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808114101.29982-1-narmstrong@baylibre.com>
References: <20190808114101.29982-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Amlogic Meson DWMAC glue bindings needs a second reg cells for the
glue registers, thus update the reg minItems/maxItems to allow more
than a single reg cell.

Also update the allwinner,sun7i-a20-gmac.yaml derivative schema to specify
maxItems to 1.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml      | 3 +++
 Documentation/devicetree/bindings/net/snps,dwmac.yaml          | 3 ++-
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
index 06b1cc8bea14..ef446ae166f3 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun7i-a20-gmac.yaml
@@ -17,6 +17,9 @@ properties:
   compatible:
     const: allwinner,sun7i-a20-gmac
 
+  reg:
+    maxItems: 1
+
   interrupts:
     maxItems: 1
 
diff --git a/Documentation/devicetree/bindings/net/snps,dwmac.yaml b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
index 76fea2be66ac..4377f511a51d 100644
--- a/Documentation/devicetree/bindings/net/snps,dwmac.yaml
+++ b/Documentation/devicetree/bindings/net/snps,dwmac.yaml
@@ -61,7 +61,8 @@ properties:
         - snps,dwxgmac-2.10
 
   reg:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
 
   interrupts:
     minItems: 1
-- 
2.22.0

