Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6955848B820
	for <lists+devicetree@lfdr.de>; Tue, 11 Jan 2022 21:15:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242953AbiAKUPo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jan 2022 15:15:44 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:59810
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S243294AbiAKUP1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 11 Jan 2022 15:15:27 -0500
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id BAAF840A9C
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 20:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1641932123;
        bh=0E8C+Rn44ME6Cw5HlKSiXCVhNrRzFh1mSIEr4Fb5X7A=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=gIPMKeJSg0ONdtU1DVWqbnmfaA/kHLD2GI4dFbZYW4ZSLeLSt0F61aI5HP6aCwoeL
         Rz3s2ZADelD5GqTpDFBFtmqk7QaixaL/XfDV+RjxWw4jNtzQ+sLFYxI7qwko6wv1km
         +dRMHQrkqUQJXAPy9DDqAuziZPfzUO3iJudWdn7MpQYIeJ7KVpc4YghG/AtMeXuZwH
         d06uFvGmXMIwEb0ofc82ZTiiGwi4xV2LWGQ6kMx47bR6JBHmZRLUte1nHiBYRqcgwn
         8RLYDmppQhuTdsepqh0SouSfEZx0tQ5Nf7xotLGe5eMlEpNgG1SEENLWAuT0GRCqjJ
         d2xBWd1dL8SuA==
Received: by mail-ed1-f71.google.com with SMTP id z10-20020a05640235ca00b003f8efab3342so212310edc.2
        for <devicetree@vger.kernel.org>; Tue, 11 Jan 2022 12:15:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0E8C+Rn44ME6Cw5HlKSiXCVhNrRzFh1mSIEr4Fb5X7A=;
        b=hZvuas5ogHIb72hFvN7uBtpgEQdl0SZtd0OBo5gQEOQntb/j9Yd2mr5zYsc8YEj5aY
         w3BrjAIOGYWksi7kC+KPx9LBeUE08MGloPWdLniXLD02vExqM2deg8adbIPp7UhQAq+n
         H1LkLzMQmtocqS27Gqw899ztbXhl/5RA4qSwmnFAaA44px8KI4RxFU3htbml7RvAH4VW
         6XI3tEjl+w2lPent94ZSYA2LRH96U7+j/nDX+oI5YyNGJN1qW1RKZeQtwvQLyNZ60DjT
         VoxVZmUGXfNiRBqTh9lX2xXTDkfH1C8cc9gEluonz/AivBkL4SPu56rzE/1XZ9CtV9P+
         aZ+w==
X-Gm-Message-State: AOAM533VyXAPRuNvaIKFOvGK6Ik8qotx6o3gVJQu5Vy2EeEFlljW/xA8
        laSXwnWuKOXqkQPK57+oH3j4eJKLmYv6LDSOACZikA2qnK17YUfsEOsvFX/yEeknzORrclQ31ey
        iTki1PLKywAVBg5zu6+3sY3zzNBao0UAjQfjoO/M=
X-Received: by 2002:a05:6402:27d1:: with SMTP id c17mr5816284ede.128.1641932120318;
        Tue, 11 Jan 2022 12:15:20 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyxmKnh6k/r5saDaFnr23ktoJ0Yoax352pKuEdFGzGl6uMI2aNb5xw/3cVDNKUongBZpE21yw==
X-Received: by 2002:a05:6402:27d1:: with SMTP id c17mr5816269ede.128.1641932120133;
        Tue, 11 Jan 2022 12:15:20 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id f23sm3852212ejj.128.2022.01.11.12.15.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jan 2022 12:15:19 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Tomasz Figa <tomasz.figa@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Marek Szyprowski <m.szyprowski@samsung.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Chanho Park <chanho61.park@samsung.com>,
        Alim Akhtar <alim.akhtar@gmail.com>,
        Alim Akhtar <alim.akhtar@samsung.com>
Subject: [PATCH v2 03/28] ARM: dts: exynos: drop unused pinctrl defines in Exynos3250
Date:   Tue, 11 Jan 2022 21:14:01 +0100
Message-Id: <20220111201426.326777-4-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
References: <20220111201426.326777-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The PIN_OUT/PIN_OUT_SET/PIN_CFG defines for pin controller pin
configuration are not used.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
---
 arch/arm/boot/dts/exynos3250-pinctrl.dtsi | 25 -----------------------
 1 file changed, 25 deletions(-)

diff --git a/arch/arm/boot/dts/exynos3250-pinctrl.dtsi b/arch/arm/boot/dts/exynos3250-pinctrl.dtsi
index dff3c6e3aa1f..a616cb1aca29 100644
--- a/arch/arm/boot/dts/exynos3250-pinctrl.dtsi
+++ b/arch/arm/boot/dts/exynos3250-pinctrl.dtsi
@@ -19,31 +19,6 @@ _pin {								\
 		samsung,pin-drv = <EXYNOS4_PIN_DRV_ ##_drv>;		\
 	}
 
-#define PIN_OUT(_pin, _drv)						\
-	_pin {								\
-		samsung,pins = #_pin;					\
-		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;	\
-		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;		\
-		samsung,pin-drv = <EXYNOS4_PIN_DRV_ ##_drv>;		\
-	}
-
-#define PIN_OUT_SET(_pin, _val, _drv)					\
-	_pin {								\
-		samsung,pins = #_pin;					\
-		samsung,pin-function = <EXYNOS_PIN_FUNC_OUTPUT>;	\
-		samsung,pin-pud = <EXYNOS_PIN_PULL_NONE>;		\
-		samsung,pin-drv = <EXYNOS4_PIN_DRV_ ##_drv>;		\
-		samsung,pin-val = <_val>;				\
-	}
-
-#define PIN_CFG(_pin, _sel, _pull, _drv)				\
-	_pin {								\
-		samsung,pins = #_pin;					\
-		samsung,pin-function = <_sel>;				\
-		samsung,pin-pud = <EXYNOS_PIN_PULL_ ##_pull>;		\
-		samsung,pin-drv = <EXYNOS4_PIN_DRV_ ##_drv>;		\
-	}
-
 #define PIN_SLP(_pin, _mode, _pull)					\
 	_pin {								\
 		samsung,pins = #_pin;					\
-- 
2.32.0

