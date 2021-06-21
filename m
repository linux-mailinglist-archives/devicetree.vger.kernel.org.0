Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 340143AE335
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 08:29:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230288AbhFUGb6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 02:31:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230299AbhFUGb5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 02:31:57 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FBBFC061756
        for <devicetree@vger.kernel.org>; Sun, 20 Jun 2021 23:29:44 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id t32so1486869pfg.2
        for <devicetree@vger.kernel.org>; Sun, 20 Jun 2021 23:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=igel-co-jp.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MngqRxxEHl2ppcxz+/r0UlSDgAGtoX4UkbK2llRyjcc=;
        b=oSxSHYT+eynqd9qy7H1VRE5S8rO7PDdIGyCkbpZ7qZu0nWRHBcVr+NE3o3eQT5F3cL
         MpS2CjKCO7Dd7PSDsxpnZPTbeBQAc/qAlZM5hSnkVVp26Sr8XFXTvpGNWjjCYRmoxFkQ
         qndU79LzzhFyDmyHklDcRxAdadOTvcbCs4F3UlnpguJB9x4dzPBQO1yUNGEmCk4B9ed2
         7IXJ5VyfBJhKu2cNXkhnUhn91Cs1kkQmkqpn6zV082No9EoXSaWTMLo9nXlGh7rctoqu
         vAE/qLk9m5jQ1u2KbR2zmQRlU7me3tPr65wDVQiVxpv2GQT20zIrQ0FhhpR5LkIC/Ecq
         mzuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MngqRxxEHl2ppcxz+/r0UlSDgAGtoX4UkbK2llRyjcc=;
        b=JWQ9fIbuQcmbT/gRUbHUneaEhwrAeswL37pHIlrv6VOXSu38gSyySexhSp2aLr+cNw
         8o0/HeKMx7YQlwQ+pNLhUrqYGWjrkY+//fQQkBUUSY3CpaCE9fSPhhx35BOhqFXGZuk3
         H7VVK/9DrQ//c0E4hPrj51Zpu4gZh5NAOlv7RkDq44IEkkUQscV+pQjW02qB5IiORVVu
         1wKkKQ4Loe4yGklYvh8Wq2iEaO0DXEShvA6dq7UvQL8LwWhTaOc6Fj7oE0ViFFJZGbd5
         XMeyeL/X2Ezs4XAhpLnT/kWeDk/iqoBPiCaMCwTDdwXMhoCDWTsCuBtIRGq92X7axDKc
         BMYw==
X-Gm-Message-State: AOAM530C+BU5fOA1q2O2zPd2D5vuXUbSV5fiaMLf+x6kP/7yFLru943r
        proKzCaMlObJo7OGu/FcuRxfiw==
X-Google-Smtp-Source: ABdhPJwHuFs9pzSz4JS1faFxRvnZ6FD31/YEEBp/+vMDIFATaE0H/VU3lriAI4/3wgnQkW2aXdyh8Q==
X-Received: by 2002:a62:7885:0:b029:300:9a33:1720 with SMTP id t127-20020a6278850000b02903009a331720mr14193118pfc.68.1624256983750;
        Sun, 20 Jun 2021 23:29:43 -0700 (PDT)
Received: from localhost.localdomain ([240b:10:c9a0:ca00:61b8:26ec:dc30:8823])
        by smtp.gmail.com with ESMTPSA id j19sm15266018pgm.44.2021.06.20.23.29.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jun 2021 23:29:43 -0700 (PDT)
From:   Tomohito Esaki <etom@igel.co.jp>
To:     Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
Cc:     dri-devlel@lists.freedesktop.org,
        linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
        Tomohito Esaki <etom@igel.co.jp>
Subject: [PATH 3/4] dt-bindings: display: Add virtual DRM
Date:   Mon, 21 Jun 2021 15:27:41 +0900
Message-Id: <20210621062742.26073-4-etom@igel.co.jp>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210621062742.26073-1-etom@igel.co.jp>
References: <20210621062742.26073-1-etom@igel.co.jp>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree bindings documentation for virtual DRM.

Signed-off-by: Tomohito Esaki <etom@igel.co.jp>
---
 .../devicetree/bindings/display/vdrm.yaml     | 67 +++++++++++++++++++
 1 file changed, 67 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/vdrm.yaml

diff --git a/Documentation/devicetree/bindings/display/vdrm.yaml b/Documentation/devicetree/bindings/display/vdrm.yaml
new file mode 100644
index 000000000000..6493bb0fc09f
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/vdrm.yaml
@@ -0,0 +1,67 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/vdrm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Virtual DRM Device Tree Bindings
+
+description:
+  This document defines device tree properties virtual DRM. The initial
+  position, size and z-position of the plane used in the virtual DRM is
+  specified.
+  The current limitation is that these settings are applied to all crtc.
+
+properties:
+  compatible:
+    const: virt-drm
+
+patternProperties:
+  "^plane(@.*)?$":
+    description: Information of the planes used in virtual DRM
+    type: object
+
+    properties:
+      x:
+        type: int
+        description: x-coordinate of the left-top of the plane in pixels
+
+      y:
+        type: int
+        description: y-coordinate of the left-top of the plane in pixels
+
+      width:
+        type: int
+        description: width of the plane in pixels
+
+      height:
+        type: int
+	description: height of the plane in pixels
+
+      zpos:
+        type: int
+        description: z-position of the plane
+
+    required:
+      - x
+      - y
+      - width
+      - height
+      - zpos
+
+required:
+  - compatible
+  - "^plane(@.*)?$"
+
+examples:
+ - |
+   vdrm@0 {
+       compatible = "virt-drm";
+       plane@0 {
+           x = <200>;
+	   y = <100>;
+	   width = <800>;
+	   height = <600>;
+	   zpos = <1>;
+       };
+   };
-- 
2.25.1

