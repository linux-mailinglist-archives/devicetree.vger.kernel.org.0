Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F38254475B0
	for <lists+devicetree@lfdr.de>; Sun,  7 Nov 2021 21:29:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236434AbhKGUcd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 Nov 2021 15:32:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236386AbhKGUcc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 Nov 2021 15:32:32 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA906C061570
        for <devicetree@vger.kernel.org>; Sun,  7 Nov 2021 12:29:48 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id s24so25467685lji.12
        for <devicetree@vger.kernel.org>; Sun, 07 Nov 2021 12:29:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fB9ob4LNIR2u2sgphH9lU6cuRm+hn58c7lOXUO4ktBs=;
        b=vOL0kGMnYshUb/PsTpfeURp/YT0JgkqGon/OnJhKim1Adc8XVKRrxPVgNyQoYylGHD
         L3IWHdIHRKXBKxeCjfaLS72gyENJ/duhyiIes3IrZyeYVXCKvPwHjIpxpZQMAkqu7kQM
         +uGZKzzkmL+VjCNtBKNMHsErHMFADkZplOGhAnpPoBzNMeWYxTi0RPYxaIA/57ZcPZmW
         C5kkzzwGn0numO3nZZtPe9pO5QFwkrtsUjX96IrAR83qQLcjvY3fGLRCOMmkvBtCBICm
         byK3XC3fQtwwozC8MwCsrh1XV7IioiM99V4oWDBXb/AOPfa6rAmYTd7Q88xW1JIhEUVz
         oPtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fB9ob4LNIR2u2sgphH9lU6cuRm+hn58c7lOXUO4ktBs=;
        b=hTdtaJRsMyqSQpWN6a6BW4ZvP7q9dux4J26ocYp/z56XfrNmTkqUK0fpEZwitcdjlV
         BjFREKdFvvx+XD8JfpH0E0NnbUo6RGIR8UDwezH+IXwjtJ7P1We5lWebjGxLYq6StXPw
         NT7jHwWDIkpI+oAH6Gplojve4psZpvgjrhVwGpwR+GTvZsSDKvKmHDw8+KjLVpfJdOs2
         XdSH/xSQgVaa5j7sS3NOiOVRcUV7TnBdUaXRFmPxsWqm8/jKceZIxosZiaqM1uUY9fqs
         BSTQcYtfkyqOhCRtUsEkdZC5YqmsppKT7q15lQlzygdE1sEu76AFrYClvpIoliIBn9XO
         /CFA==
X-Gm-Message-State: AOAM532Z8/rc+1HsOHURVnIeyx5bSi9z2kDPItDOxzk2M3k4WJmXrB9f
        ddf+A7enHgMIYWg4TaiG8rwlSw==
X-Google-Smtp-Source: ABdhPJy4vBcWfqjg1/hSuRkd/Z+6z/H7WYEzyZLU7G4cAO8MPEkz6SfknIAVDTKCh4XzvQxKHD3YLQ==
X-Received: by 2002:a2e:391b:: with SMTP id g27mr78258688lja.126.1636316987253;
        Sun, 07 Nov 2021 12:29:47 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id o14sm1566490lfu.253.2021.11.07.12.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Nov 2021 12:29:46 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v3 01/12] dt-bindings: watchdog: Require samsung,syscon-phandle for Exynos7
Date:   Sun,  7 Nov 2021 22:29:32 +0200
Message-Id: <20211107202943.8859-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211107202943.8859-1-semen.protsenko@linaro.org>
References: <20211107202943.8859-1-semen.protsenko@linaro.org>
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
Reviewed-by: Rob Herring <robh@kernel.org>
---
Changes in v3:
  - Added R-b tag by Rob Herring

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

