Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C6C79444466
	for <lists+devicetree@lfdr.de>; Wed,  3 Nov 2021 16:11:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231386AbhKCPOK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Nov 2021 11:14:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231693AbhKCPOI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Nov 2021 11:14:08 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8A5AC061714
        for <devicetree@vger.kernel.org>; Wed,  3 Nov 2021 08:11:31 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id p16so5869862lfa.2
        for <devicetree@vger.kernel.org>; Wed, 03 Nov 2021 08:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mSyypkrWYgiv2lYkLPORKCamq3LsikHsGPZpbO/m2so=;
        b=GWd3XNjwQm26tEVgFJwfFAJAAL+GISP8YDwzIOp6hmL82ybSnQgjKv6MPtXILELaqw
         ExAwETo2G4M8ZxVMKT/V7lh7GGLmc//XqbLnb1KP/BV77Kc6iTgd+toEBfbIWY2xr8Bb
         GN4GmOdM6fQdcCrXdLC95JWtSEhIQDaPYhfS+5aAt0MkitLiDTfYhIqLWXSnq114IBYV
         CRK/DjEC8kdHAWnfsffFLavV2vnubiSubB+d/fHNhiuUQOCEAo/nu6a3fyE5QMePGQrM
         fZZTty68XasKq0E9r/Mlc2ZJ7VG+8SM7+8oejEQ2dHAfwsOghT2u/eTy3MO9KTE3lPaV
         ncdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mSyypkrWYgiv2lYkLPORKCamq3LsikHsGPZpbO/m2so=;
        b=1TOzNqyBUJuHSlVADffrZJVVXnAxGbtpWAthQBCLUCZQbpzfA4E0nQoaf0i7/jTjwx
         OMfHkNV3W3SM4KOEsyh7e4mQl56OHK5wZI40jnO3zzhr4U3gh4YTRXzg3U3CgOX9xdL2
         HdTZKm32oRqTVbquqSQlXzi00JDWY875BjHrZ+FbMLFAyKfIhtHf1+j65ybUFPpZatPD
         Ay6bDOiYcXDRm8yWNyHYZsPt4gxSfD8MAnAW+VYwGSVN+cNgq1HGWxu5+Xd2CHH3rKyG
         9DF39s+9DWGMz3CllCGTQdxlA1VfqrY9Yw8eg+6amil1GexhSOyjBaryVRN+Z8/Pjo7Z
         QTvA==
X-Gm-Message-State: AOAM533HAy9R47daeM0Q/c/nMQTvlMxu70Vl7FztJ3cuG5R2l5VqXfa3
        x8esNbUCmyEh8I3VkkxkXMc=
X-Google-Smtp-Source: ABdhPJzwhggvOEBCB7W1AcLLAV7uQJEMNZhut0ObYJ1T484MA3TIwZoAtPa1DD1INzU8y1iuOG7qkQ==
X-Received: by 2002:a05:6512:2609:: with SMTP id bt9mr41705858lfb.202.1635952290027;
        Wed, 03 Nov 2021 08:11:30 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id p3sm224107ljc.25.2021.11.03.08.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Nov 2021 08:11:29 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Brian Norris <computersforpeace@gmail.com>,
        Kamal Dasu <kdasu.kdev@gmail.com>
Cc:     linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/2] dt-bindings: mtd: brcmnand: add "no-wp" property
Date:   Wed,  3 Nov 2021 16:11:16 +0100
Message-Id: <20211103151117.18690-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

It's required to properly describe boards without connected WP pin (e.g.
Asus GT-AC5300).

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
index dd5a64969e37..49c7860c0dad 100644
--- a/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
+++ b/Documentation/devicetree/bindings/mtd/brcm,brcmnand.yaml
@@ -111,6 +111,11 @@ properties:
       earlier versions of this core that include WP
     type: boolean
 
+  no-wp:
+    description:
+      This property marks boards with WP pin not connected to the NAND chip.
+    type: boolean
+
 patternProperties:
   "^nand@[a-f0-9]$":
     type: object
-- 
2.31.1

