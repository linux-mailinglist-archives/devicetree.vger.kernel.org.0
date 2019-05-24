Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2A63A29C35
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 18:27:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390702AbfEXQ1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 12:27:46 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:41452 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390731AbfEXQ1q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 12:27:46 -0400
Received: by mail-wr1-f65.google.com with SMTP id u16so6736042wrn.8
        for <devicetree@vger.kernel.org>; Fri, 24 May 2019 09:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Alb5MD+7zgNY6i+eIAuzgu3fZmuChz+Dlfg+Rb4j+90=;
        b=QEepWdCASVfvEWNv6Rv1rxZy0HWeJ1GhFotAuxSfFkpLSXgru4BgCqy+hvOJbN/wmn
         yfi4O6JFqIdd+WyuL56/W884rUwiKE30mlFjThO9IEmN4CRW58h+T8BDkevBc+oRj7li
         nIY4Qq6T+tDprJ7XhtgRMKM6QLyEHUnc6iHkhPz/eFqzExHdY3ZiA/Iq7HpQHeqe4xkT
         Ugckq0St+ovwJmUVW1pyquLuVGEHcwtaB/U28C+1r+715+HEYsB3tz9RkYONPorS93Vl
         JWqgpaKZZrToEQJMJUJfY8yrjj8/+cXBlGGrc9YNO/1brrSp9CbYZoc83G5Yi1tHIUGt
         o2wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Alb5MD+7zgNY6i+eIAuzgu3fZmuChz+Dlfg+Rb4j+90=;
        b=cmYD9MxRBVmYto6DeJ5SugjvYMsM03mYUJ5wc2CjGl4e4cvY9F3d0vHnQzjSJ2JZ9P
         FXBnrtLr96zJZ+QfNeqk97pr0pn4iLKvMp3K/VyqnKnP06Lo9ze8kbSwx2ckPvj38SNP
         dV+NsgcyGnMMjXT7hAvcepKuCr2n7oJWTh9zIgeVBh4O7ED021tt8DXPGtZMST/RUOny
         BS+LIL1kaUQXsxv6Lu5jbhL/xY1WGAkSYqkQzW6lsX7HK5FBgvjlrQNuLrGlTlGSFCca
         8kxZ9s/bDCBxl4LN1PRSxNolK7lL9sh9W+W/qhbwYDup4/sWkaKNRaU21bBHePFJTQVZ
         oiDA==
X-Gm-Message-State: APjAAAXYYvKFtdWe8OZJbZ4WXxNhEA4pdVXERtI8OJ7Z2yrgQIfpQXWQ
        z+Z5lVxr2cY/nzG+BPE/y69RjA==
X-Google-Smtp-Source: APXvYqx1pPfHAuutLd2yAz6r4sxF2ZwPOYA0wuuRKKtw9QN6hpkhYPA2NT8zlW4qBmk2A3EjHWSbkQ==
X-Received: by 2002:a5d:4a92:: with SMTP id o18mr8765887wrq.80.1558715264435;
        Fri, 24 May 2019 09:27:44 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:2042:d8f2:ded8:fa95])
        by smtp.gmail.com with ESMTPSA id l6sm2200320wmi.24.2019.05.24.09.27.43
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 May 2019 09:27:43 -0700 (PDT)
From:   Ard Biesheuvel <ard.biesheuvel@linaro.org>
To:     linux-crypto@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Tudor Ambarus <tudor.ambarus@microchip.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Mika Westerberg <mika.westerberg@linux.intel.com>
Subject: [PATCH v2 6/6] dt-bindings: move Atmel ECC508A I2C crypto processor to trivial-devices
Date:   Fri, 24 May 2019 18:26:51 +0200
Message-Id: <20190524162651.28189-7-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
References: <20190524162651.28189-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Move the binding for the discrete Atmel I2C Elliptic Curve h/w crypto
module to trivial-devices.yaml, as it doesn't belong in atmel-crypto
which describes unrelated on-SoC peripherals.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 Documentation/devicetree/bindings/crypto/atmel-crypto.txt | 13 -------------
 Documentation/devicetree/bindings/trivial-devices.yaml    |  2 ++
 2 files changed, 2 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
index 6b458bb2440d..f2aab3dc2b52 100644
--- a/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
+++ b/Documentation/devicetree/bindings/crypto/atmel-crypto.txt
@@ -66,16 +66,3 @@ sha@f8034000 {
 	dmas = <&dma1 2 17>;
 	dma-names = "tx";
 };
-
-* Eliptic Curve Cryptography (I2C)
-
-Required properties:
-- compatible : must be "atmel,atecc508a".
-- reg: I2C bus address of the device.
-- clock-frequency: must be present in the i2c controller node.
-
-Example:
-atecc508a@c0 {
-	compatible = "atmel,atecc508a";
-	reg = <0xC0>;
-};
diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index a572c3468226..2e742d399e87 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -54,6 +54,8 @@ properties:
           - atmel,at97sc3204t
             # i2c h/w symmetric crypto module
           - atmel,atsha204a
+            # i2c h/w elliptic curve crypto module
+          - atmel,atecc508a
             # CM32181: Ambient Light Sensor
           - capella,cm32181
             # CM3232: Ambient Light Sensor
-- 
2.20.1

