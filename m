Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 618023DBB1E
	for <lists+devicetree@lfdr.de>; Fri, 30 Jul 2021 16:49:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239412AbhG3Otk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Jul 2021 10:49:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239423AbhG3Otf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Jul 2021 10:49:35 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E5199C06179F
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 07:49:29 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id b7so13575234edu.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jul 2021 07:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=U9K2fCuQkFkuejqJypW0+59cAZpu5FWH3o4en7PCa/U=;
        b=xBHhd9zvnsIklZ1GYG2DllDAjGkCvzS1dG3aJNp2jJBUjGCODD25G5qxsc2ero+kap
         RpCdICsb5OUgHCuWG7tnZnMbM3MenMlhhh6Us32/VRdY3+PzBzn8R4/DOJeoRZZE5rQ8
         uzzVSVy/gCAn685CUUH8MSNnTu8iENv6JV7pC3EscmTCEj6NtZuXP58g8fwocXspBy1u
         MVIeizHdTl5IMp+ptpOLLfPsyg1TX0mDKnSatp61VSaOc1wiTWROa2J9DeGZvd/ygkHm
         X5duQR4eJDCRyu7okuNaMH+BeBYZyhWPWyAxgKidQsPo4pto1ZKIeHiRlfzVqJam76cc
         FA7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=U9K2fCuQkFkuejqJypW0+59cAZpu5FWH3o4en7PCa/U=;
        b=e2zg7oKAcTPeKeyDIQP4F52WvV58Tp7VAlHirPSJJoeG/z5DJH9GO1KYfgp2H8zdh+
         rPY0/RZUN1aXhi111gi/95mfm+yD+kozssohx/iHW6FBFM0Lu6Cp4cB8ywoP1DqBK+zN
         DbLndk+kY1YIBGzQKfc1WJZqpyPy3vDNgFMrgqttH9jSnZqft3Nuw2+3JNbOUbzv1Gak
         5ZoA7/GM6+afhAb6mOBi2pE8jnWtZ1umQf0R6ngo1mABVyOpidD90H0KBBo0OwJO1ud4
         C8vFDbSbnASs4+UOilTtQSBbusqopri/eWhuHQrs0n977PBxcdpsOiOnmNQBZTXa/6E4
         IfFg==
X-Gm-Message-State: AOAM530oxsO7yn3A0DX0KZ5soRCeNjxyv4PV+sK/l9pxUtkEeB2Nced3
        nj+KU5UQ8+49G8/tKEBytcWsor1bW6CD4nfyY/4=
X-Google-Smtp-Source: ABdhPJxvInSByeFK70X/NowaXTvQWPUys9gilEqsi8KsW2g7rqMqdK8b8pF3hHKfCXSK9nyni6+Zqg==
X-Received: by 2002:a05:6402:411:: with SMTP id q17mr3370148edv.29.1627656568574;
        Fri, 30 Jul 2021 07:49:28 -0700 (PDT)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id b15sm622945ejv.15.2021.07.30.07.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 07:49:28 -0700 (PDT)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Tomasz Figa <tomasz.figa@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
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
Subject: [PATCH 03/12] dt-bindings: pinctrl: samsung: Add Exynos850 doc
Date:   Fri, 30 Jul 2021 17:49:13 +0300
Message-Id: <20210730144922.29111-4-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210730144922.29111-1-semen.protsenko@linaro.org>
References: <20210730144922.29111-1-semen.protsenko@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document compatible string for Exynos850 SoC. Nothing else is changed,
as Exynos850 SoC uses already existing samsung pinctrl driver.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
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

