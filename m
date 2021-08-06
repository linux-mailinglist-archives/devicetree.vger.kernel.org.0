Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 482AD3E2D85
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 17:22:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244370AbhHFPWI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 11:22:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244342AbhHFPWI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 11:22:08 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B828C061798
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 08:21:51 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id h11so12340455ljo.12
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 08:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=STuelqivOnZa8VRkRK+ew1QSDD7r5w5Z8u4aGP2OxYA=;
        b=mnyT35mN8VvOlTxEChcB0LEUKSCo5I0GC1WGXJI638du0CxgmTv2F5Cd2A8gvjcbi1
         tVeX/Y19Qsd45v0r3DlLlBL27BgNI4JDt4jR+wK1XYUcjr7IzuJc9YLftama6wToBwxK
         8/SLexk+u+Rwr9mas2DiwKzge2RT6T3nsJR/MxopX3BW5Uv0UDy554Ux6gmK2qol2YJc
         f7FZ0t0FFJDxjUxz7Ew4p9BAFwJMRoCGAvbCGTjPuK/DELnh3A4Pk+iFbLPndnoiYUe2
         OsAiuUn5Q9EinY99lqaIhfumaF+nPG1aONl2/0hD8zVMJZTMuIx4QjNvcaLVMyO3QMkN
         6jnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=STuelqivOnZa8VRkRK+ew1QSDD7r5w5Z8u4aGP2OxYA=;
        b=WPVJIUe8G8qmD5NrLjz7baWDTbEeM0CViOKKbFmKH2dIyayHm4w8J/UoGSd010LuEH
         nvMJjOid5xykJWczjUCCvw/i4H5fd70g/L771Vx27TBJ5RVEuGceZKykHXlWLJ7I+DTf
         ABuAYyR3wwxXUJz1nKt/0Az61Pj/MTbBqgZ8v5BvHDBfukZ9MJRFCshc+sZ2DOt6fSO3
         cIUeheP8HvrTL62Coaom6PNSOn6TgJjOwRaUfvxUpylrZdAzKwfxahJUHXnoMo8QCd2u
         BU2Xg32T0/dTfjqhsf57+7qRL0EXr9g6I164UMiT8oLVm4NQo3Rf1kO66xwjXUTnF+pS
         AQpw==
X-Gm-Message-State: AOAM532yIZuVKPbtRarHfJ25gEWCXUidHOztOtgHUd3VnfCqAj7kTQIX
        8Q7tKYMSU7p7zTjKsIzKj82aRA==
X-Google-Smtp-Source: ABdhPJz/e9lTFK1drlZriiriQGSKglh47zGRDkhpPNfb5v4oqA/ilS5QQKa6oXazLQa1EZjfc1OO5A==
X-Received: by 2002:a2e:557:: with SMTP id 84mr7003003ljf.507.1628263309656;
        Fri, 06 Aug 2021 08:21:49 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id c3sm862252lfi.199.2021.08.06.08.21.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Aug 2021 08:21:49 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        =?UTF-8?q?Pawe=C5=82=20Chmiel?= <pawel.mikolaj.chmiel@gmail.com>
Cc:     Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
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
        linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
        linux-serial@vger.kernel.org
Subject: [PATCH v2 1/8] dt-bindings: pinctrl: samsung: Add Exynos850 doc
Date:   Fri,  6 Aug 2021 18:21:39 +0300
Message-Id: <20210806152146.16107-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210806152146.16107-1-semen.protsenko@linaro.org>
References: <20210806152146.16107-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document compatible string for Exynos850 SoC. Nothing else is changed,
as Exynos850 SoC uses already existing samsung pinctrl driver.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
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

