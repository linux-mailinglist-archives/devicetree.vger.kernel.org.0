Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EF4048D20E
	for <lists+devicetree@lfdr.de>; Thu, 13 Jan 2022 06:37:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229744AbiAMFhu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Jan 2022 00:37:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229798AbiAMFhu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Jan 2022 00:37:50 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52DCFC06173F
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 21:37:49 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id x6so15758105lfa.5
        for <devicetree@vger.kernel.org>; Wed, 12 Jan 2022 21:37:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LMVIf6eidCZlhuBpwEpwVRF+pP+2nKVMi7BQpp34us4=;
        b=Bvsb1h0AIb14iTaT86yWwrvNGz0PAr7ClUuU3fvGQU2XxheDeP9LJblRniC6xYjsvW
         lrKsPV03aO2q8coFCQcLlkAcYArJ4/ZW0xeI2VE2+s7Dxs6Y3EspdKgrMwm/u56iAM8M
         HVD+AtmXg0zZ8ctBSU8ER6sZ7Ro4xu7kVi/eyEV/0HamYpCPTaUeKS4QAlnFQCPeXAQs
         Eu8Mmt3G2MFQ1fxOpqwKRpvUKOyLiG/mjkVPT1PsiLCqcgf5+DIpKmMSKb+J7oHazjy9
         3+LcSq7KB+nLlwkMwmphPyc2vLQqmHZQ58JrVrm30fHjuHuqtGaFDp+OJjbw6hTPE5UB
         wZlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=LMVIf6eidCZlhuBpwEpwVRF+pP+2nKVMi7BQpp34us4=;
        b=5HvkjbCnWSiPt9SxF/7lRv5pzCgM5WJuCUK4OhCMpzEx7aZKasrlFL6QFBANn+kL5b
         +b+TBbtu0Esjn8rIBgFNZ42Ou6hG9agREgtwkqEkTR51uwYNVFG8WbrSi/xVoRFujdef
         1IWW2kkrwdFNcO7mlKWrz8yHJrGzDWzxPfya8tNrNvFh1qA8dPsfDx3Iyg9x79DZjWnP
         spnUlwVuVlFs3FkCK57TU1pGmvSSHYOPT+iFFQk8/kvOZEsN8K/9zomfceMVTMiQ9wmT
         O+LSid5pIUEKvKH8PEmE46MVCIkGRqlLofkfMnX8fkC2aKKVGtDht3d1JH1ucVMEF03Y
         h1Hw==
X-Gm-Message-State: AOAM531AjFME8RXhiRL5Dh34eHogYaTSe2PFFYnqgI4kjj2B58QI8VTz
        z5AH3QpyH8Yj13Pm4HZfNyGbAA==
X-Google-Smtp-Source: ABdhPJxVtxlA4bWuEqA2uFn9Wd95Jc9arVr0nXuJXUGhs2wGi+qnEcxMcnypYqKX6crSvaItGv3kqA==
X-Received: by 2002:a05:6512:b01:: with SMTP id w1mr2194009lfu.301.1642052267729;
        Wed, 12 Jan 2022 21:37:47 -0800 (PST)
Received: from boger-laptop.lan (81.5.110.253.dhcp.mipt-telecom.ru. [81.5.110.253])
        by smtp.gmail.com with ESMTPSA id x21sm180212lfa.296.2022.01.12.21.37.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jan 2022 21:37:47 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@lists.linux.dev
Subject: [PATCH v5 2/3] dt-bindings: net: support for Allwinner R40 EMAC controller
Date:   Thu, 13 Jan 2022 08:37:33 +0300
Message-Id: <20220113053734.105813-3-boger@wirenboard.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220113053734.105813-1-boger@wirenboard.com>
References: <20220113053734.105813-1-boger@wirenboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

R40 and A10/A20 share the same EMAC IP.
However, on R40 the EMAC reset needs to be deasserted first,
so resets property is required.

Signed-off-by: Evgeny Boger <boger@wirenboard.com>
---
 .../bindings/net/allwinner,sun4i-a10-emac.yaml  | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
index 8d8560a67abf..d9ed7b547af3 100644
--- a/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
+++ b/Documentation/devicetree/bindings/net/allwinner,sun4i-a10-emac.yaml
@@ -15,7 +15,9 @@ maintainers:
 
 properties:
   compatible:
-    const: allwinner,sun4i-a10-emac
+    enum:
+      - allwinner,sun4i-a10-emac
+      - allwinner,sun8i-r40-emac
 
   reg:
     maxItems: 1
@@ -30,6 +32,19 @@ properties:
     description: Phandle to the device SRAM
     $ref: /schemas/types.yaml#/definitions/phandle-array
 
+  resets:
+    maxItems: 1
+
+if:
+  properties:
+    compatible:
+      contains:
+        const: allwinner,sun8i-r40-emac
+
+then:
+  required:
+    - resets
+
 required:
   - compatible
   - reg
-- 
2.25.1

