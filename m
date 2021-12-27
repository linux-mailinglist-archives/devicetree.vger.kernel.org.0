Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 93A48480361
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 19:33:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231857AbhL0SdO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 13:33:14 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:59672
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231735AbhL0SdM (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 13:33:12 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4550F3FFDA
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 18:33:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640629991;
        bh=RFPGHmjdhJ/hloNRhgmml05wd4YHMhrSG+GgHjMTnJk=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=hixi4IavblSGyZzxYlP5sTUvXuGTGRK1nt/7tpRTpSkS5MTqnyllsio1X4udX9mJg
         HR1OFkShGmtzYODE46Y6u8PxFO/zdeTfI5J+TAYSJ2jC+gl5l6jGqyAf0wFYMWbndl
         hG+Ysdq4AWRJHJ+WjP9FD+OduDlo4vWuPjp38E9sCHfFm+IIsvK0cmaF7GdxXwGaLP
         01cUn5gzchk4ghdbchtbz5gmnZdSnidjLaRSMIibhzgkVVUSm0yIdegCKRv7xCllTF
         nyOf2kEHpVrxifqR2nf/KZLM98SNnj2OOQrlUt9NgftIqKarxZ4U8etdIihfOIu6W5
         1bIxUNIFB9ANg==
Received: by mail-ed1-f72.google.com with SMTP id z3-20020a05640240c300b003f9154816ffso2440643edb.9
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 10:33:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RFPGHmjdhJ/hloNRhgmml05wd4YHMhrSG+GgHjMTnJk=;
        b=lDVEuIqWFthOzI2t1DiRu2Blm52ugUiN7XnScF5Ai4DH4tLirPJ2I+M6HBZgju/suQ
         5LrlVBD9Sw3PEvxgOa707+KDMDvUU0ulu9v2lq5DqCvcE3KItUmE6QOsI3+DLGtAper0
         u/YsjkmyYV3V7ohnGlQieVyfHs+i3yxQH6hC71HWmVGV0Z158eeSnqt+eeWDlygzPNh9
         0cqIB+MKX+flV+xbG28R/StlnRKxWoAKBk7wonVJ2tsmQK0dguvdcrs6C18RJoRJFhn+
         MADiEcSK0zV+7A2xN6/AhO4ehR7ObyFjYzTOjLXWvinGe8x3fr3h+56QU98UWAPARi2W
         5o8w==
X-Gm-Message-State: AOAM530lvwbzUYqU3nFWdD8H/vhT4dzH5eMpFb7WEVOBbOjvnrAK/8yV
        W304cyKSwZxwn3blTvV/uFa6F8YBzKzFYVvs1LkEis/CgHvrpd/KqGiKUuZ/1ceX0tnvCmyWYiA
        OszDUsU134SSEH/JsTbBmg+gZmkegr7PR/gWSI4Y=
X-Received: by 2002:a05:6512:168b:: with SMTP id bu11mr15627649lfb.401.1640629979254;
        Mon, 27 Dec 2021 10:32:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy/Gt49kywYk1krG8CoXR3xfc8T8Tm6VqX8pnxg2OeXzFbjocvCOPPW2+Ds+ALgMTQuQ1xw9g==
X-Received: by 2002:a05:6512:168b:: with SMTP id bu11mr15627620lfb.401.1640629978994;
        Mon, 27 Dec 2021 10:32:58 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id o12sm1299622ljc.5.2021.12.27.10.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 10:32:58 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Matt Mackall <mpm@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Khuong Dinh <khuong@os.amperecomputing.com>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        Tony Lindgren <tony@atomide.com>, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org
Subject: [PATCH 3/8] dt-bindings: rng: atmel,at91-trng: document sama7g5 TRNG
Date:   Mon, 27 Dec 2021 19:32:46 +0100
Message-Id: <20211227183251.132525-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
References: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatbile for Microchip sama7g5 TRNG.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/rng/atmel,at91-trng.yaml      | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml b/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
index 0324e863dab8..c1527637eb74 100644
--- a/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
+++ b/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
@@ -13,9 +13,14 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - atmel,at91sam9g45-trng
-      - microchip,sam9x60-trng
+    oneOf:
+      - enum:
+          - atmel,at91sam9g45-trng
+          - microchip,sam9x60-trng
+      - items:
+          - enum:
+              - microchip,sama7g5-trng
+          - const: atmel,at91sam9g45-trng
 
   clocks:
     maxItems: 1
-- 
2.32.0

