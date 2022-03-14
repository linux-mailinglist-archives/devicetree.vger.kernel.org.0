Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1CF94D8BAE
	for <lists+devicetree@lfdr.de>; Mon, 14 Mar 2022 19:20:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243813AbiCNSVf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Mar 2022 14:21:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243766AbiCNSV3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Mar 2022 14:21:29 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 352E53525C
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 11:20:19 -0700 (PDT)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 04519405BB
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 18:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647282018;
        bh=ZZZmUkbhHody3cQg6YTtcASZbjcHkXRB0CKHR4Vfcs0=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Smi1a+olD8MFzZIGaniNbvWQGH7jreHN8dN+Lp9Hx/0d8ofdKlo2S0IugyUAa/S5j
         iyI9up8ozQjPxGbpQ3uBTy4eJL+CjTSY8JKwzVu31qGksUQIatQBy3N+pSQrOS22WS
         DnSYmfPpW62FLnfXl/M0hIju2/qbMm0B3Fje88PhmKmpFGmSZ3jP4zPrDXOfhieblN
         XvxzV0Hge61bO7A6jMF1Mka9pSquwW+tapLUjDWb57io5me0J1zBisX8Ne/E79E9kB
         C8mtFvMxXB4lFNnVVcWCzBjYxy8xYJ5T8o1Yb6WcOZZ/NEVsbzsJwkXBujSk7gBLez
         HgJGrKDWenmAQ==
Received: by mail-ed1-f71.google.com with SMTP id l14-20020aa7cace000000b003f7f8e1cbbdso9223625edt.20
        for <devicetree@vger.kernel.org>; Mon, 14 Mar 2022 11:20:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZZZmUkbhHody3cQg6YTtcASZbjcHkXRB0CKHR4Vfcs0=;
        b=lN21e1mOjZcbLH5lJzI4NBazDz/bFyj7wrZQrAXTdOirvF1v4Gh27Vh4PUST5TXA2t
         1IB4Xht7hmWypPmBB9YqU2qyPAJcKFg+3USh8qmBp6WBh1tQGWaEhiGHdpfFIlUbsyDB
         WaXB7sUEu+bJ2LrJegCapF7kVFF2r8iA0J3RDpFN+N/BMwaCRIgqid5ZwX9/vy+zLyXk
         K1XJfA0uMDGkJM7IRaHCp3KDGGGLs8Qhw9F6j/w6Wovbv4BRwIPvuhZgm5So6s2y6aZT
         5+PHS6KWCT0p2XAtddQH1qRfJ95WuywZaJ1RgYxTQgBcLw46X6PLIGun1Z1SwPzCbV8x
         ztUQ==
X-Gm-Message-State: AOAM531s66B99+b+UJy1FGtzPierPplqQi76At1cmYLRxpTQIEA29EvX
        4Q/9aMXtVatyqNgjk/a8ZYRY1IO3h9CCIwPD8x3KEKP3fvolPiv3nF9FI5bYacqXYVqQT4g0tLU
        bVeOzhFtVaO7uYQS5S2orUjV3xYTlQZ/B+dKID+k=
X-Received: by 2002:a17:906:174f:b0:6d0:5629:e4be with SMTP id d15-20020a170906174f00b006d05629e4bemr19138901eje.525.1647282016654;
        Mon, 14 Mar 2022 11:20:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxilSk6aR5x6eRg2Sw08ds9XOo2mHj9ui0uVFPKjg2yLuwqGtgXaY6G1Ov0G1h2AdMHYrbneQ==
X-Received: by 2002:a17:906:174f:b0:6d0:5629:e4be with SMTP id d15-20020a170906174f00b006d05629e4bemr19138877eje.525.1647282016448;
        Mon, 14 Mar 2022 11:20:16 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id i25-20020a50fd19000000b0041614eca4d1sm8566449eds.12.2022.03.14.11.20.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Mar 2022 11:20:15 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 5/5] dt-bindings: usb: samsung,exynos-usb2: include usb-hcd schema
Date:   Mon, 14 Mar 2022 19:19:48 +0100
Message-Id: <20220314181948.246434-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220314181948.246434-1-krzysztof.kozlowski@canonical.com>
References: <20220314181948.246434-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove parts duplicated with usb-hcd.yaml DT schema and include it
directly.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/usb/samsung,exynos-usb2.yaml         | 15 ++-------------
 1 file changed, 2 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml b/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml
index ef42c6fce73c..76e25b9efebd 100644
--- a/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml
+++ b/Documentation/devicetree/bindings/usb/samsung,exynos-usb2.yaml
@@ -15,9 +15,6 @@ properties:
       - samsung,exynos4210-ehci
       - samsung,exynos4210-ohci
 
-  '#address-cells':
-    const: 1
-
   clocks:
     maxItems: 1
 
@@ -46,15 +43,6 @@ properties:
       Only for controller in EHCI mode, if present, specifies the GPIO that
       needs to be pulled up for the bus to be powered.
 
-  '#size-cells':
-    const: 0
-
-patternProperties:
-  "^.*@[0-9a-f]{1,2}$":
-    description: The hard wired USB devices
-    type: object
-    $ref: /usb/usb-device.yaml
-
 required:
   - compatible
   - clocks
@@ -65,6 +53,7 @@ required:
   - reg
 
 allOf:
+  - $ref: usb-hcd.yaml#
   - if:
       properties:
         compatible:
@@ -74,7 +63,7 @@ allOf:
       properties:
         samsung,vbus-gpio: false
 
-additionalProperties: false
+unevaluatedProperties: false
 
 examples:
   - |
-- 
2.32.0

