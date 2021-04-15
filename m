Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00EE9360261
	for <lists+devicetree@lfdr.de>; Thu, 15 Apr 2021 08:29:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229937AbhDOG30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Apr 2021 02:29:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45318 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbhDOG3T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Apr 2021 02:29:19 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0828BC061574
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 23:28:56 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id r128so10359704lff.4
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 23:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s7OY7MakwSSqZMw1fibwDM0HVWIyMORmoszwjxEGlhc=;
        b=rUjXofSxqgqyGQsGTUa362A6DALK/BPCtO5WJVQ7Nb3iKUyLYCJsBxLOC7q5MvezN0
         flOeebowDXycsqzH3qGTFee4cT32eu2hQbJJLiDg61opLFrWrL7Ny3y/dQvqMCWnJDku
         MZJFPs0jADOGHvnVBMv10pxGirFVzNKBGnCHFrQ57Fz0lRduS7XNiNKQ38EkeFENWA1j
         ph6Wl/3u9Ij6uZrKicFKbuuImx+EBiHb4Qj8n5zcFkarDAnZ7Zu8IB6AHsfmjM2ekEOr
         mNs3Z+dfkW2o8d/qOFNceAbKONJruKIiLibWpsUezEsSK6ZxCd4PRZf6iyhdd78lXsLf
         1kFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s7OY7MakwSSqZMw1fibwDM0HVWIyMORmoszwjxEGlhc=;
        b=VMTTrotsoMg3c5bIYPQ86EORcp/KLmpZXp4EQG6azfA9bfV/I1R6fac9/vaw8FgdyM
         IeIehTOjNMXx7nkrqGkV7PRjnGyuNXELQmz3rb6G9uxBNXtxKR/GhGkPFeqWTvsdHoaZ
         O6cc/JVTNsCc8p0Q68oQyLuS+LgUFxK3payWgnbFfgcqyMoDnkx6pjCww8VMo//h8xsw
         nKk/bcm4hIht8WzOIZmvRzYFw8+ObQpl8E0mWKNWH2x9M2DkXtp3/dHXHSF/6uw/dDkT
         b9JGUOhUYICqTyjJcRaiGH84fX/z0J3QOSlMdexbTwhmLCIhYZuLXKnB1ogMC0ZZJ2n9
         gZ1g==
X-Gm-Message-State: AOAM532ZymgXIrkVaMEa17cVVf2f9zwnqVJRATxzx166gG1uVclD/jr3
        dx/MtKSo3fG55Kv2O04zqE4=
X-Google-Smtp-Source: ABdhPJy9LZhKyNgtSymvsAZYivs6mfqHRrfCDWurWMtiG8u9wi8iDSCWHTpw6QQgdNZcickWOBYp3A==
X-Received: by 2002:a05:6512:2254:: with SMTP id i20mr1461813lfu.56.1618468134507;
        Wed, 14 Apr 2021 23:28:54 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id d25sm535669ljg.96.2021.04.14.23.28.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 23:28:53 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Lee Jones <lee.jones@linaro.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH robh dt/next] dt-bindings: mfd: add Broadcom CRU
Date:   Thu, 15 Apr 2021 08:28:39 +0200
Message-Id: <20210415062839.11713-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

CRU is a block used in e.g. Northstar devices. It can be seen in the
bcm5301x.dtsi and this binding documents its proper usage.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
This is reworked version of the
[PATCH robh next] dt-bindings: bus: add Broadcom CRU
https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210309142241.16259-1-zajec5@gmail.com/
---
 .../devicetree/bindings/mfd/brcm,cru.yaml     | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml

diff --git a/Documentation/devicetree/bindings/mfd/brcm,cru.yaml b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
new file mode 100644
index 000000000000..f5bce6453c33
--- /dev/null
+++ b/Documentation/devicetree/bindings/mfd/brcm,cru.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mfd/brcm,cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom CRU
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+description: |
+  Broadcom CRU ("Clock and Reset Unit" or "Central Resource Unit") is a hardware
+  block grouping smaller blocks. On Broadcom Northstar platform it contains e.g.
+  clocks, pinctrl, USB PHY and thermal.
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - brcm,ns-cru
+      - const: simple-mfd
+
+  reg:
+    description: CRU registers
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+additionalProperties: true
+
+required:
+  - reg
+
+examples:
+  - |
+    cru-bus@1800c100 {
+      compatible = "brcm,ns-cru", "simple-mfd";
+      reg = <0x1800c100 0x1d0>;
+      ranges;
+      #address-cells = <1>;
+      #size-cells = <1>;
+    };
-- 
2.26.2

