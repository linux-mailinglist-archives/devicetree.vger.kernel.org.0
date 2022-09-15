Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E7695B9C28
	for <lists+devicetree@lfdr.de>; Thu, 15 Sep 2022 15:42:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229503AbiIONms (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Sep 2022 09:42:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229557AbiIONmr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Sep 2022 09:42:47 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2346E89826
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 06:42:46 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id az24-20020a05600c601800b003a842e4983cso13862967wmb.0
        for <devicetree@vger.kernel.org>; Thu, 15 Sep 2022 06:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=oerVXA75ugeBqclQSZe7qiUmo8gOsXrcx+GIeriLNXE=;
        b=elo3+7bFqKj7ghKIjiZ08JWL1cihsMZ7A7yM/XDMjf9+/7JN8IdIL0XioDLo2wI+aD
         UnGAPM7B6D3rrTv4/Z8xJAe+FIJ57rqp1IDzRZuBYQI02U6ejsobVf0RdA459LpNvfda
         daALJgVXc8zjDKjSaCOCZwB6jWIok4DDEQIZ7pWDm+Ff3Wvvxb3gPCjkg5xSjjVpl9Iz
         Sf/ZmC4zaJt2OOy7jJmuGMSe+VoS7mq44MJs0QMeq/BpCShSaljjM51ocS5+B47Z9E3h
         SCPih7FxVp87zLLIdhzNRjk5mUlgJV0DmujdE8BTSjE+FYq0GobC/MLx0FOXloCga3Go
         631A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=oerVXA75ugeBqclQSZe7qiUmo8gOsXrcx+GIeriLNXE=;
        b=v2KSs3ChkBizl6iMSGsVRFOHfw69eTvpNgkFX60WcuF8p3euf5PkuqC/ZkPRwrH2NA
         at+ufeHOnGR871ufEs5IzGWY4ohZSrcXwEHrtFEGS4vvunBBmUUHM7c43nYmUU4iA0v/
         UUGea968VufMKONruR7hShgUnFXwaN5jfuLpzksFfA0BImn4oOmtLzzIE2RBIN89rfQk
         n2rZfjsFbXreAAh92u8ny1BM79XBvah41BwpRWcGzw2Ka4p5DO1Z9PY0dxiappgJEgMZ
         Xp5WZc9dDueX98f4fvyBS64j3AIoRpTm6TzoU0U78IHHVAwtBl+58evGP4+mzsfRHD18
         5B+g==
X-Gm-Message-State: ACgBeo3Pid+2qkiGcj1TsEIEtl52Kap22dn7AoHXDDBL5LRSZY1pzOb5
        dJjihvwt2JJjDCOo88/0aZzIFLRzTtT+pmjk
X-Google-Smtp-Source: AA6agR7JzuPWL9BTWJCE+PjVwg9E5AGHO3bDm1qb+xmclw2JM0bYVP2xTq0qiqHINskj+bhOvR1lpg==
X-Received: by 2002:a05:600c:3844:b0:3a6:19a:d980 with SMTP id s4-20020a05600c384400b003a6019ad980mr6810843wmr.65.1663249364241;
        Thu, 15 Sep 2022 06:42:44 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id u18-20020a05600c19d200b003b340f00f10sm3176483wmq.31.2022.09.15.06.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Sep 2022 06:42:43 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, arinc.unal@arinc9.com
Subject: [PATCH] dt-bindings: watchdog: migrate mt7621 text bindings to YAML
Date:   Thu, 15 Sep 2022 15:42:41 +0200
Message-Id: <20220915134241.481187-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Soc Mt7621 Watchdog bindings used text format, so migrate them to YAML.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../watchdog/mediatek,mt7621-wdt.yaml         | 33 +++++++++++++++++++
 .../bindings/watchdog/mt7621-wdt.txt          | 12 -------
 2 files changed, 33 insertions(+), 12 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml
 delete mode 100644 Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt

diff --git a/Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml b/Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml
new file mode 100644
index 000000000000..b2b17fdf4e39
--- /dev/null
+++ b/Documentation/devicetree/bindings/watchdog/mediatek,mt7621-wdt.yaml
@@ -0,0 +1,33 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/watchdog/mediatek,mt7621-wdt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ralink Watchdog Timers
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+allOf:
+  - $ref: watchdog.yaml#
+
+properties:
+  compatible:
+    const: mediatek,mt7621-wdt
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    watchdog@100 {
+      compatible = "mediatek,mt7621-wdt";
+      reg = <0x100 0x100>;
+    };
diff --git a/Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt b/Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt
deleted file mode 100644
index c15ef0ef609f..000000000000
--- a/Documentation/devicetree/bindings/watchdog/mt7621-wdt.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-Ralink Watchdog Timers
-
-Required properties:
-- compatible: must be "mediatek,mt7621-wdt"
-- reg: physical base address of the controller and length of the register range
-
-Example:
-
-	watchdog@100 {
-		compatible = "mediatek,mt7621-wdt";
-		reg = <0x100 0x10>;
-	};
-- 
2.25.1

