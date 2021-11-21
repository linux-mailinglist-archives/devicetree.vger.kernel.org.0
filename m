Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B15A64584F0
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 17:57:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238387AbhKURAB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 12:00:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238307AbhKUQ75 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Nov 2021 11:59:57 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82102C061714
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 08:56:52 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id m27so68909669lfj.12
        for <devicetree@vger.kernel.org>; Sun, 21 Nov 2021 08:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B7xe7ejeuIGEwCH9PIhTk0vWdr6HZ3Wf0VU2/9Zm6Dk=;
        b=zbl6sQX5C2dkHBwnnygq5NvpqE+eB530j/9pzxHLIKdNQruZijsSeZZffHtt8EtEYa
         K68sDGJqxN4H5Co2rIMIXlkSSBY4rWt33dknqwu2jtaHqnGQzVGm2KNjonz/d/SsZZrG
         kX+TviwyQcB7BoAAUCwH/IiOQG3E+ZbGTuwNGK/Ni8YvwZeav84qze3I8hvQ4/ruOD6R
         FvVWzAm32NnKhdE4ub33ocDtt2SNzElp/lUbZGc6W9nIfvwweCWxS+9zLKg4G+LAD94b
         N3oXMsPLJvO4zeqvvJkSMNo3Hf/t3EEEj9gygrFmUwuhEhYvigiXSgnXOZSS8j1H16nE
         SY2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B7xe7ejeuIGEwCH9PIhTk0vWdr6HZ3Wf0VU2/9Zm6Dk=;
        b=NiZAYfydumxtXDmTelkPyBhov2A30DXarAMg7df2whchX/LsEPDyrWAOHWqamiCYfz
         Vj0GpdNAURs4b6zS7s9rjKLN7qpZoi0mj4UuR4OSREJNnN/Q8t9GabakVSkZP86IgBTk
         iAnS5+/1t0iRQipwZGsQ2jvrdzy/rWNrCYpa7JoUtVRd+Mjpel62/rZgCNhMrIWRL68f
         +jtCQPWkCddF5PIr2Fr7a1P7Y+EvlO4dr1v4pbSgNBsZnn9Jc17dm3oFK9Y64VgjD+aq
         IpJwlpsQZb0zZHnFZBK3JMzmI2K3VA/5U7fqND/H89Wb9NGCL092jItYchaTZF47ziUY
         cfOA==
X-Gm-Message-State: AOAM530s9LTMrE5GyrEibipdhXfLDlYqFLeOqlTeauu6nLXa8zdi2hJb
        Oh2n6oJ8eOf5BgeWBhgsH7rw+w==
X-Google-Smtp-Source: ABdhPJzghj3Kx+HzhIzyf2GmhjhBt4dWAhgLyGaVp1SN1lqRgtJLfgif380+kLk4FJg4qGmMoQo6Rw==
X-Received: by 2002:a05:6512:16aa:: with SMTP id bu42mr51785744lfb.477.1637513810856;
        Sun, 21 Nov 2021 08:56:50 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id z2sm690096lfd.301.2021.11.21.08.56.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Nov 2021 08:56:50 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Guenter Roeck <linux@roeck-us.net>,
        Wim Van Sebroeck <wim@linux-watchdog.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH v4 01/12] dt-bindings: watchdog: Require samsung,syscon-phandle for Exynos7
Date:   Sun, 21 Nov 2021 18:56:36 +0200
Message-Id: <20211121165647.26706-2-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211121165647.26706-1-semen.protsenko@linaro.org>
References: <20211121165647.26706-1-semen.protsenko@linaro.org>
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
Reviewed-by: Guenter Roeck <linux@roeck-us.net>
---
Changes in v4:
  - Added R-b tag by Guenter Roeck

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

