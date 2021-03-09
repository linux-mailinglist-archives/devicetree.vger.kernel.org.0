Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1F1E033287B
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 15:23:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230325AbhCIOXJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 09:23:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230465AbhCIOWx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 09:22:53 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5EFA6C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 06:22:53 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id q25so27308482lfc.8
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 06:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tnyTHwfgo3BNeOG2y6t1aEDBlJyHSgcp0+DYEDlqSL4=;
        b=K24a1G6/Z/NLuOo71sgaPbZU9Xwucg+jySw+xma7YP7HMyvuuCOe0mkSALqvAA19+/
         uxbhD7Ml37kb/nezGLUxVE+rTyUuCEnZwjYAhVNaMT1ZlE2p3axg0xxM8F4dvkE2oz3h
         jH4QArQ/jWw8mGTpnCHJRzcwwlrLSuCTRQZXksbzzPw9Yib+81csRoBgd85tcSIMjDHZ
         0sAtS7Lhg/rt6VOUvlsdXZa1NtZ22E1p+BT3dALGX/qJ4I4wWpuYSIGKrlnSouRCE4dv
         hS9MPLQJMKshN54+FCZSvaG7RCBmDN+KotnGd5SbLTEqagUplH2TDgL7LZmjggbw0FGe
         rklw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=tnyTHwfgo3BNeOG2y6t1aEDBlJyHSgcp0+DYEDlqSL4=;
        b=kbGhhpsOignJk0aNGEsVAWOvLLkTtotP1DzUkda4RQjHmzm0Qp4syMZ1rszYcD0CtN
         IAU20mKu6eP0npW+XM9+T/lRsa7kAt3+AXE+dCzdgSe+5WDK288EoM0ap4aY0Xyrephf
         SPFxIbKxxhu8vNWZ7bC68Y+jRv3wJfJtSmzudGZ+AqxvBrk1nb7ne4SeqbpM0RfbYxth
         oLHZvnSxTdO0EGPxShLWF6HHuVMAXiOQdl3SVVVx9nQUOCH7tVYovSrZfj4FhyzkLiy+
         O/rTPuOqyJM3N9XLNRPpPr0BP1jxbWXavByiclXcLWcZ4lLDdMvWlnxwGO0kTK2H86XJ
         ODVw==
X-Gm-Message-State: AOAM531pxgCB6288vrewezcplATL5L2/BPYKjg99cnrmzhFTZeh04WgO
        URvOw98ZjeSJSlhhXQbHK/k=
X-Google-Smtp-Source: ABdhPJwToRNjtO+juOKuXpqexHQCM0T8birljIO6aO+9Mj7ESZU+fP6grm1Zk+SU9C/DYZ6MXkoyMg==
X-Received: by 2002:ac2:5103:: with SMTP id q3mr18129402lfb.26.1615299771931;
        Tue, 09 Mar 2021 06:22:51 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id n6sm1867547lfa.290.2021.03.09.06.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 06:22:51 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH robh next] dt-bindings: bus: add Broadcom CRU
Date:   Tue,  9 Mar 2021 15:22:41 +0100
Message-Id: <20210309142241.16259-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

CRU is a block used in Northstar devices. It can be seen in the
bcm5301x.dtsi and this binding documents its proper usage.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../devicetree/bindings/bus/brcm,cru.yaml     | 41 +++++++++++++++++++
 1 file changed, 41 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/brcm,cru.yaml

diff --git a/Documentation/devicetree/bindings/bus/brcm,cru.yaml b/Documentation/devicetree/bindings/bus/brcm,cru.yaml
new file mode 100644
index 000000000000..c3b1ca53a443
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/brcm,cru.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/brcm,cru.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom CRU
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+description: |
+  Broadcom CRU ("Clock and Reset Unit" or "Central Resource Unit") is a hardware
+  block grouping smaller blocks. It contains e.g. clocks, pinctrl, USB PHY and
+  thermal.
+
+allOf:
+  - $ref: /schemas/simple-bus.yaml#
+
+properties:
+  compatible:
+    contains:
+      const: brcm,cru
+
+  reg:
+    description: CRU registers
+
+unevaluatedProperties: false
+
+required:
+  - reg
+
+examples:
+  - |
+    cru-bus@1800c100 {
+      compatible = "brcm,cru", "simple-bus";
+      reg = <0x1800c100 0x1d0>;
+      ranges;
+      #address-cells = <1>;
+      #size-cells = <1>;
+    };
-- 
2.26.2

