Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B59B43E3820
	for <lists+devicetree@lfdr.de>; Sun,  8 Aug 2021 05:50:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229977AbhHHDvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 Aug 2021 23:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbhHHDvP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 Aug 2021 23:51:15 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA424C0613CF
        for <devicetree@vger.kernel.org>; Sat,  7 Aug 2021 20:50:55 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id m18so7101878ljo.1
        for <devicetree@vger.kernel.org>; Sat, 07 Aug 2021 20:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mvlrtM+yBNUdex1HY9xYdk9KI9SkZNw8iEdfyc3oX4o=;
        b=nAK40s/rqTAOtL/6azfYvLR60IX4nNzmH4gEJWXDP2xA/0ZdiK2EfFvbfNCjyNkF4Q
         H/hMU2ukO9kUUFcY3NCW0YtU0vFDtABOAaS5WpuH/8ohwsWrpNB/nB0XVx9foeT90Y8r
         XMRxwBmyl6evABCnAtIQ4rvtkS8S4cOIr2izCfYKA8CWxAl0ZHInZ7/2VXmbPCnu2gyF
         Ss1rF93hOJ9AkCONHsGJVVYGFBLzUfySJSyM7xbZPu8x1pYovrbkeZ9v/GP0ZAgf8WnT
         HiIcCK2iYl4uFVruSEEIicDEA22pwvC8PeB+30rs9r8n8d9ciE7NlryKGUa9ZM33wYCL
         o7Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=mvlrtM+yBNUdex1HY9xYdk9KI9SkZNw8iEdfyc3oX4o=;
        b=ggZFdE9T8Oqw/Gji+M1jvduBq0ZMToBf/bypO2y0CEBpBSX4g70zdhDVRei3W/ma0j
         LzqDYZNfs0d5P7A8wXezFTM/cS6WkIaO99J+4BOZgFSkwKVZpYJd/IYtSpwfb83l9nLs
         ne5cB2JY6UDvonS9jxGl/eaRQLapmRDYpzFd0+QX5Xi6gSAGceVoW+4GOKZpU4Dvaszd
         MR5kubwwsdz8/dW2fRJK7HcjCr5+7dofOyJFrCOZMuXh3bI1zSDxKiZ6jun9TItqnGHt
         TiMmsAl+9baLrrI6+huxHXW56doGq8cseZ7hfsOEne04zFcWfsv2NCV+BPzdry7ufy8a
         zTiw==
X-Gm-Message-State: AOAM530qmlwTqj7/0SzvsHEDOHe0u6mXp+tMNbdjNu4IO2edr1lT+kaP
        avWsBcbUNJAJtDS+dhHkOfooQQ==
X-Google-Smtp-Source: ABdhPJzQfBSCmGTUgsreBNAD6M+Ta2IA1JJIjYcQAPVgnZTM/97yGYPEp0sADjA69RdFRhgNjCn14g==
X-Received: by 2002:a2e:2f05:: with SMTP id v5mr11336246ljv.66.1628394654090;
        Sat, 07 Aug 2021 20:50:54 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id o1sm1307998lfl.67.2021.08.07.20.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Aug 2021 20:50:53 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: add bindings for the Sharp LS060T1SX01 panel
Date:   Sun,  8 Aug 2021 06:50:52 +0300
Message-Id: <20210808035053.58074-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree bindings for the Sharp LS060T1SX01 6.0" FullHD panel
using NT35695 driver. This panel can be found i.e. in the Dragonboard
Display Adapter bundle.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../display/panel/sharp,ls060t1sx01.yaml      | 51 +++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml b/Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml
new file mode 100644
index 000000000000..e749f20d34aa
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/sharp,ls060t1sx01.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/sharp,ls043t1le01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sharp Microelectronics 6.0" FullHD TFT LCD panel
+
+maintainers:
+  - Dmitry Baryskov <dmitry.baryshkov@linaro.org>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: sharp,ls060t1sx01
+
+  reg: true
+  backlight: true
+  reset-gpios: true
+  port: true
+
+  avdd-supply:
+    description: handle of the regulator that provides the supply voltage
+
+required:
+  - compatible
+  - reg
+  - avdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "sharp,ls060t1sx01";
+            reg = <0>;
+            avdd-supply = <&pm8941_l22>;
+            backlight = <&backlight>;
+            reset-gpios = <&pm8916_gpios 25 GPIO_ACTIVE_LOW>;
+        };
+    };
+
+...
-- 
2.30.2

