Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F2A374F0869
	for <lists+devicetree@lfdr.de>; Sun,  3 Apr 2022 10:18:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233657AbiDCIUu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Apr 2022 04:20:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237382AbiDCIUt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Apr 2022 04:20:49 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2475913F3F
        for <devicetree@vger.kernel.org>; Sun,  3 Apr 2022 01:18:55 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id w18so1356081edi.13
        for <devicetree@vger.kernel.org>; Sun, 03 Apr 2022 01:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zjIw75ZQdp7MJvbRG37XmPoOfYXyjdA6z7hzyGD4X7U=;
        b=ePbICS4Nle9krQ+1Rw4HQyX79qmYd5Y221gZjaVTJvdlNHPktyvE5Gi4Mt8eA/NfPK
         2MPL4t97PWBF1uhGusHLmw7YAgcT10uZwLbyqVS73Eyed2AB7t0JEXXDuEwG2Y2pfcum
         pPZJ8sjztYp5rVW8Inf30lNYjFpfqerZdWnIMb3nofUj90nC+Q5Gbpj3Apsclfbgqs3S
         RiV5zf8d4mNffHjjz4uZHNGCruemhNoEjqFItbmlrtYCrDASHsNIWcRhD9xEp3Tp98yV
         AE5+OmVi1+3CDwmJGentyBNpHKMkLR7FXFFYIFs3ulQE26eCSObSecW7ynV9/A+FgMQZ
         uUJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zjIw75ZQdp7MJvbRG37XmPoOfYXyjdA6z7hzyGD4X7U=;
        b=4V/ogA+t2lg8B4ItL2hVlNyAflyKG54GfAbrOx1ExPhMdNZyljMFl0k9qWjmpy1u8H
         2sEK3sgTjjepqsy6tNa6VlaILF3273pBxcCG+Q2k3vHBtsFCScGEPF2iyCsnmd7N5fwQ
         FWEOa3WXsgBvtFLBnnEF/9axhV6ieGrj8lUfCY2v4R619oUr4BzXTWiQ3INyRkiI780m
         m3f4Z7Pm1Im0dRapGSe+Yi2J+BCKZZdZnLZrcB99Cy9Gk1KEp1RK4grw83KexoprtaVS
         wVLULMj5WD0sfRPuLO51Xin2tDiAmwU2iEyg0lZU1B5QAAV/CPMYPWDrWCWSxjlMd5Q7
         kTfg==
X-Gm-Message-State: AOAM530xLq8AvLK7fcFCdyv3kG3H5pH6SoCp8hsocdiCzxG/Q27w3OO1
        o2hd5dmWOer7wvv5VUjdbJpevQ==
X-Google-Smtp-Source: ABdhPJyUcj/hNd1jzIjhAS8rb3fkZUbOOSwJm17iYVjG9Wltzxe6juoL3P9jZSILUNIiF8zkB5tYuQ==
X-Received: by 2002:a05:6402:3496:b0:419:82d5:f1d9 with SMTP id v22-20020a056402349600b0041982d5f1d9mr28246795edc.36.1648973933569;
        Sun, 03 Apr 2022 01:18:53 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id h7-20020a1709066d8700b006d4b4d137fbsm2989105ejt.50.2022.04.03.01.18.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Apr 2022 01:18:53 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/2] docs: dt: writing-schema: mention coding style
Date:   Sun,  3 Apr 2022 10:18:49 +0200
Message-Id: <20220403081849.8051-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220403081849.8051-1-krzysztof.kozlowski@linaro.org>
References: <20220403081849.8051-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mention the usage of YAML coding style.  Describe explicitly that
four-space indentation in DTS examples is preferred, because:
1. The YAML's default two-space indentation for DTS code makes it
   significantly less readable.
2. Linux coding style tabs would introduce inconsistency (entire file is
   indented with spaces).
3. On the other hand, eight spaces would not align with example's
   opening '  - |' part.  Four spaces makes the code nicely aligned with
   it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/example-schema.yaml        | 14 +++++++-------
 .../devicetree/bindings/writing-schema.rst         |  6 ++++++
 2 files changed, 13 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/example-schema.yaml b/Documentation/devicetree/bindings/example-schema.yaml
index 80a28781845d..8e1a8b19d429 100644
--- a/Documentation/devicetree/bindings/example-schema.yaml
+++ b/Documentation/devicetree/bindings/example-schema.yaml
@@ -249,13 +249,13 @@ examples:
   # be overridden or an appropriate parent bus node should be shown (such as on
   # i2c buses).
   #
-  # Any includes used have to be explicitly included.
+  # Any includes used have to be explicitly included. Use 4-space indentation.
   - |
     node@1000 {
-          compatible = "vendor,soc4-ip", "vendor,soc1-ip";
-          reg = <0x1000 0x80>,
-                <0x3000 0x80>;
-          reg-names = "core", "aux";
-          interrupts = <10>;
-          interrupt-controller;
+        compatible = "vendor,soc4-ip", "vendor,soc1-ip";
+        reg = <0x1000 0x80>,
+              <0x3000 0x80>;
+        reg-names = "core", "aux";
+        interrupts = <10>;
+        interrupt-controller;
     };
diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index 95ecf55559e5..2916edf829db 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -108,6 +108,12 @@ The YAML Devicetree format also makes all string values an array and scalar
 values a matrix (in order to define groupings) even when only a single value
 is present. Single entries in schemas are fixed up to match this encoding.
 
+Coding style
+------------
+
+Use YAML coding style (two-space indentation). For DTS examples in the schema,
+preferred is four-space indentation.
+
 Testing
 -------
 
-- 
2.32.0

