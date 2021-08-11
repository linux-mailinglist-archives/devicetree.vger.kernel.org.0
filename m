Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 47EE23E8FB1
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 13:49:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237415AbhHKLs5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 07:48:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237404AbhHKLs4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 07:48:56 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73C0FC061798
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 04:48:32 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id b7so3316607edu.3
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 04:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XqDR8o25I9iZ0astV4MjqX8UHWoiuFZZ1Xjx/J4Frsw=;
        b=CjpV2FHaTieFaab7z65Ddlq+e/euf14JUs8OuIRGO0rjskWhkNfmnkaUSqUCSvjDOW
         E+5XwPWpnADC+Cg7yE4vRXSfwCXE1EUjP/5PvskRI3sUZo2N4FC+POGxIvJtQARNtrF4
         EjlyZ4LG1sXaQlE7uS71SW0LhNOHOmXCPRdnKbRrlLLmRdVmjjiqVi6tyDer51e+M5nc
         Bl9T8J/TTFCbip4kI23JRoV3MTooNsesJdQ3ycHMX+8qie/XqmMMDgkR5ylzrQmaJWkL
         D1xmzdPntg2TDUQhmXs0Vjpl6Asng9pZ5lJ28NRkJ0SHtGWg7N0jitlWn4CY3MIKLf26
         noQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XqDR8o25I9iZ0astV4MjqX8UHWoiuFZZ1Xjx/J4Frsw=;
        b=X8esruGSDdSjNgGdYmIqJrHZtPoOC1dBf/gmKlubFDbQubo9Q2Dy4BJgBw/LAMEAPN
         YU3tshuQ1wDFRoI4mHq2BHnBFEKGD87EIg5gX9QmtLpyBVz1S/0ygduam+WmEBjxiMTW
         wEr1okwkBOcMdQXZvLlcDYqlycLcK8u1Qpphe9+hkjGffuYRMo4Vpmtjt1zVkIqdnTQZ
         6TmbTuuq9r3UGrfVjlzO21S3v8OxboapP12uaLbiwizNvOdnmdH4cA0bKZoRAAKoQxJH
         yZCUIt+TjG9IHNvo5FdEDAdAJzAFzUpWc6VExBczpzK4JXMS2GTeZwryCB6WoQGaFLNK
         kC/A==
X-Gm-Message-State: AOAM530nm1ZTg3Q5/jm6YPwVN/evp29lFRyAm+yFL7XDTZBQEGooml+h
        oYblDXm2m04L+VLwkD9S5mfSHuYWHZBNDjD4
X-Google-Smtp-Source: ABdhPJxPBr/lOttW3KXHEiYkxvP2K+24XoIasoO/NkyDAIWnHAl0QvjC9nJL3wA9vLAPNR8U2zYf+g==
X-Received: by 2002:a50:d4cf:: with SMTP id e15mr10933562edj.2.1628682510972;
        Wed, 11 Aug 2021 04:48:30 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id m25sm5446793edv.81.2021.08.11.04.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Aug 2021 04:48:30 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Jiri Slaby <jirislaby@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Charles Keepax <ckeepax@opensource.wolfsonmicro.com>,
        Ryu Euiyoul <ryu.real@samsung.com>,
        Tom Gall <tom.gall@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        John Stultz <john.stultz@linaro.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org
Subject: [PATCH v3 1/7] dt-bindings: pinctrl: samsung: Add Exynos850 doc
Date:   Wed, 11 Aug 2021 14:48:21 +0300
Message-Id: <20210811114827.27322-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210811114827.27322-1-semen.protsenko@linaro.org>
References: <20210811114827.27322-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document compatible string for Exynos850 SoC. Nothing else is changed,
as Exynos850 SoC uses already existing samsung pinctrl driver.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
Changes in v3:
  - None

Changes in v2:
  - This patch was made the first in the series

 Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
index 38a1416fd2cd..e7a1b1880375 100644
--- a/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/samsung-pinctrl.txt
@@ -22,6 +22,7 @@ Required Properties:
   - "samsung,exynos5420-pinctrl": for Exynos5420 compatible pin-controller.
   - "samsung,exynos5433-pinctrl": for Exynos5433 compatible pin-controller.
   - "samsung,exynos7-pinctrl": for Exynos7 compatible pin-controller.
+  - "samsung,exynos850-pinctrl": for Exynos850 compatible pin-controller.
 
 - reg: Base address of the pin controller hardware module and length of
   the address space it occupies.
-- 
2.30.2

