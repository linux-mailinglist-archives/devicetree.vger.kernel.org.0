Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2258247A9F0
	for <lists+devicetree@lfdr.de>; Mon, 20 Dec 2021 13:51:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231839AbhLTMvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 07:51:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231838AbhLTMvy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 07:51:54 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D8E8C06173E
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 04:51:54 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id n14-20020a7bcbce000000b00332f4abf43fso5144946wmi.0
        for <devicetree@vger.kernel.org>; Mon, 20 Dec 2021 04:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PuZC+K3Kaok5hXKjmR3Gu9qJFZKj26rdkdsCekbAVko=;
        b=ljJMnVDbZcI+Dhh1HqX3uLyt6uBCnSN4UvdQbPsKlmIbiDrVZC511h+pT5usnu7aiV
         BgmkAZntnTgcBoJwQdjsnNhR0Kmsr8BTJmaCjylV7Li4HTMYK9rVh2l7Izbad+yB1JxJ
         b1FynDH0BiZGaHieJE6XmA9hnlA7RLxQSOWsZwykM7SfcgYQq7WCjMfc4Heo6u2d1X31
         VB8vC75zwNzSfVEsHBsbYZ5pHPRrWM+N+5zkJhZFikGaYVsAOiiBILRIAEP1qzc3Mxrn
         MyS/E/XRJNiQpaiW+ldMC8NRNKXUN6JahdTQmQ0FXfnNfDjYiHqpjJ7DoZFRhYZEijvA
         GbbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PuZC+K3Kaok5hXKjmR3Gu9qJFZKj26rdkdsCekbAVko=;
        b=co0SXr1TC3cmkLPz9cDCjPeZ5jZAENzW+uT16UoiRfc7sJGDcXOEbjJJUsbkGY3VTM
         p9jHWXnEuI4vE+ZqB9zS+DBx8z81baY7dfE6KprTt1dDpjky3ztM1gT8XPbxgXNGSjZK
         /W89Ml1auUfdP0Dvsdbmo6so2K3rYI3rMJnRXJteDK3Inmr7uID8tkuIpw6ybzb9icia
         F383WbWpFkta8bmgDouD4NYzeyr9o9ZePmdaQ/kDA/Fs3AruL5oaU+wwy6ST2IbA0Vay
         mhvZAc2j/dnjOvREr7Yzvo4/Ze8nL4EkBQg/doORYGRswEewQft4BePubb82XO/gmw7i
         fnOw==
X-Gm-Message-State: AOAM531L4pN94t/2W5xLZu5vaLCe5HBTuoAwIJdqBPxT1sSNh8LHbr6J
        uzwRplTQsm3Lh0cFOhxsGxw=
X-Google-Smtp-Source: ABdhPJz0IQEiVaLK1pt3cm9gdzR58X+4LPKSU6c7UShi1z55pyRFRJidt5rlF2ufCR+OCN0Q7FpMiA==
X-Received: by 2002:a05:600c:4e46:: with SMTP id e6mr3222669wmq.132.1640004712601;
        Mon, 20 Dec 2021 04:51:52 -0800 (PST)
Received: from localhost ([193.209.96.43])
        by smtp.gmail.com with ESMTPSA id r11sm15316245wrw.5.2021.12.20.04.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Dec 2021 04:51:51 -0800 (PST)
From:   Thierry Reding <thierry.reding@gmail.com>
To:     Thomas Zimmermann <tzimmermann@suse.de>,
        Marek Vasut <marex@denx.de>, Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: display: bridge: lvds-codec: Fix duplicate key
Date:   Mon, 20 Dec 2021 13:51:47 +0100
Message-Id: <20211220125147.519880-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Thierry Reding <treding@nvidia.com>

In order to validate multiple "if" conditionals, they must be part of an
"allOf:" list, otherwise they will cause a failure in parsing the schema
because of the duplicated "if" property.

Fixes: d7df3948eb49 ("dt-bindings: display: bridge: lvds-codec: Document pixel data sampling edge select")
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../bindings/display/bridge/lvds-codec.yaml   | 43 ++++++++++---------
 1 file changed, 22 insertions(+), 21 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
index 708de84ac138..5079c1cc337b 100644
--- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
@@ -94,31 +94,32 @@ properties:
 
   power-supply: true
 
-if:
-  not:
-    properties:
-      compatible:
-        contains:
-          const: lvds-decoder
-then:
-  properties:
-    ports:
+allOf:
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: lvds-decoder
+    then:
       properties:
-        port@0:
+        ports:
           properties:
-            endpoint:
+            port@0:
               properties:
-                data-mapping: false
+                endpoint:
+                  properties:
+                    data-mapping: false
 
-if:
-  not:
-    properties:
-      compatible:
-        contains:
-          const: lvds-encoder
-then:
-  properties:
-    pclk-sample: false
+  - if:
+      not:
+        properties:
+          compatible:
+            contains:
+              const: lvds-encoder
+    then:
+      properties:
+        pclk-sample: false
 
 required:
   - compatible
-- 
2.34.1

