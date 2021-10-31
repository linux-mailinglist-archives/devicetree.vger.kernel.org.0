Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1E1C440E38
	for <lists+devicetree@lfdr.de>; Sun, 31 Oct 2021 13:22:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231587AbhJaMYy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Oct 2021 08:24:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231757AbhJaMYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Oct 2021 08:24:52 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2419CC061764
        for <devicetree@vger.kernel.org>; Sun, 31 Oct 2021 05:22:21 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id f8so33361003edy.4
        for <devicetree@vger.kernel.org>; Sun, 31 Oct 2021 05:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YrX17JLN3iZK9elmHvVA7fpxdjI/sdFhycMWQkjxxmg=;
        b=EoJorhiELL6i8YX9P+3PygS5UCUPug1ARREUj9jNmgGMuJ+8cio7Zc3HRIdeQEveTz
         swQRHS1aFNJ+72CRMI1zdgXUe2ds+ldsMQRUBhO3dlShrcmTWOG+3Gcjq3z0EC/zydGw
         VimMqtPezFOWur3Ysv6cc5+/m6TkT+Rqot13TMNA3oOsb51G7+myt48d3LoUZ+lvV1DI
         TmRJsrg9kWimfBRRvzzpSbSwBgF2+m8XdkQAcBRNjyAJIYjPo5Jbm5uwhHlRrjGeTS3o
         cZlOTCMUC2mCQTUxnN/q9DO8yqkaMaI/StRj7xwUC5EqLo2r3SxqGxcUjk+bgNlriJdo
         7RkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YrX17JLN3iZK9elmHvVA7fpxdjI/sdFhycMWQkjxxmg=;
        b=eJamjZl7TW3MBPn84pJO61JTnsr2CtlWaUGr/1wdZjXH5FK6qvrvzEoSMA8QKrgp2S
         yphqBNMFIFNaOky47JOq02nyISZ3RDWlqaNIRBJUVjtziwfn4h7TSHkyAaXonJvK4oJ9
         yJbTB46QMBX1ErUfO2nt/7evhWQ3HLUWzQUgj93N/f9mUJwMgWRv4a70uvSv/mAA0eBe
         FLuMEwxJpBEi1sJjWY+NcQY4xTzG+znIzk4dbdf0wA0IjowWt9Y5XK34r5T8HboD5zmR
         DBZfDJrB98AjJL7Vf2eP4mHZJhhNHqH+Q8TxrP6SxI3FlVzAQYdcXWGjt8T43ZZoIhmF
         WtYQ==
X-Gm-Message-State: AOAM530Rkq7c6tQB0IQJhy6j3l8O2TeSiMqR4fYUmzaJutXxF8Fl52d0
        NkqTmCnWqGUqDaY4syrAJ+C41g==
X-Google-Smtp-Source: ABdhPJxuGF6wQckRdjEtPpGPkF2sf452nvOubT7XXExNKWVcsdUQCtuxKqSxcFUKSExu8kZCUIhqSg==
X-Received: by 2002:a17:907:86a1:: with SMTP id qa33mr28216618ejc.270.1635682939671;
        Sun, 31 Oct 2021 05:22:19 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id ga1sm5738052ejc.40.2021.10.31.05.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Oct 2021 05:22:19 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v2 01/12] dt-bindings: watchdog: Require samsung,syscon-phandle for Exynos7
Date:   Sun, 31 Oct 2021 14:22:05 +0200
Message-Id: <20211031122216.30212-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211031122216.30212-1-semen.protsenko@linaro.org>
References: <20211031122216.30212-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Exynos7 watchdog driver is clearly indicating that its dts node must
define syscon phandle property. That was probably forgotten, so add it.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
Fixes: 2b9366b66967 ("watchdog: s3c2410_wdt: Add support for Watchdog device on Exynos7")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
Changes in v2:
  - Added R-b tag by Krzysztof Kozlowski
  - Added "Fixes" tag

 Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
index 76cb9586ee00..93cd77a6e92c 100644
--- a/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/samsung-wdt.yaml
@@ -39,8 +39,8 @@ properties:
   samsung,syscon-phandle:
     $ref: /schemas/types.yaml#/definitions/phandle
     description:
-      Phandle to the PMU system controller node (in case of Exynos5250
-      and Exynos5420).
+      Phandle to the PMU system controller node (in case of Exynos5250,
+      Exynos5420 and Exynos7).
 
 required:
   - compatible
@@ -58,6 +58,7 @@ allOf:
             enum:
               - samsung,exynos5250-wdt
               - samsung,exynos5420-wdt
+              - samsung,exynos7-wdt
     then:
       required:
         - samsung,syscon-phandle
-- 
2.30.2

