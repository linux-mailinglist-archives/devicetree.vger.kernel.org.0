Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9BA523728AF
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 12:20:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230252AbhEDKUx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 06:20:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230245AbhEDKUw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 06:20:52 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 918DBC061763
        for <devicetree@vger.kernel.org>; Tue,  4 May 2021 03:19:57 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id t18so8778777wry.1
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 03:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=id41Od8pYx5LMqhGC9qBz2AvUabE0Du/p00DmjtijVc=;
        b=qxXvxvrw5LWqq/mKCID6MeJc9JH+0Uc7yRIAey7t3WmnKkOk82CvPaFbfjanOgSFSJ
         2P/kJmX1Zbq2wmH4h+eXLI+O90eQxUnoAxyDM3oMkWaMLzayf2nJcz31smx+m8BdLmuJ
         /pXwWjymCMYbB4YBj+sG2j8Cx5Nup6SURREdbZwaRmsm5+RI/O6JVbZtAzhYwa7A4DHw
         y8JowM3pJEJF/9VDegkAmaBLiEvYkRqnS8uqY5b4oi7xrrPgw0Uuh63IZ4YFTc72uHD3
         Txau/4bXnGS/JikUhARegMOeRIdFM2lcYfqA3dt1CyzqrUH2u5upHi7Y60iAWYzyKCXg
         tNWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=id41Od8pYx5LMqhGC9qBz2AvUabE0Du/p00DmjtijVc=;
        b=oDkapTGWk8qNZdmnGCwqJSCs7/AoY2A2KoClu7kJ4ONmLcxfPTgaBWxThxOgjC449p
         w29dBsvDHfp/coePrNdYwk38bqPz35YJt9HLu3s314KsFcKGW0jIGzlj0KRlQMbMghyd
         0VZ+suZg/9oz3X6Rbn+hQTHBwGMSNJ8G+MVHDZjdi7wr+qzPP4ty5szwuMHfO7QdC7Zd
         032cQDiSuC0ONX1udNafX0y61GAjvdJxnLlKlUFLa/k4fMS0Zz30N9W8KZw7ijBFuSte
         iZPpE2GYhzbycjoSUuExJjUzy/n244yofgEhJV6wHS4NpwQp6gGu4/x7BRmtjK4tRJHH
         MHxg==
X-Gm-Message-State: AOAM532QHbq0hqY5bvsYmhsWT7HKIKMHMTytWRHm+erh4i9e8MiYFs0W
        lQmE5vjlQVDc8riTvYrOzRJ71A==
X-Google-Smtp-Source: ABdhPJwVM0aPU2Jpokjvf6WSOe/F4CGA6PesNk++if+bD0ZvOi3B5SIs/z2KnXYDjb2JGthPvFxOeQ==
X-Received: by 2002:a5d:64eb:: with SMTP id g11mr31147095wri.260.1620123596339;
        Tue, 04 May 2021 03:19:56 -0700 (PDT)
Received: from arch-thunder.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id d5sm16293789wrv.43.2021.05.04.03.19.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 03:19:56 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sebastian Siewior <bigeasy@linutronix.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH 6/7] dt-bindings: usb: nxp,isp1760: add bindings
Date:   Tue,  4 May 2021 11:19:09 +0100
Message-Id: <20210504101910.18619-7-rui.silva@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210504101910.18619-1-rui.silva@linaro.org>
References: <20210504101910.18619-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The nxp,isp1760 driver is old in the tree, but did not had a bindings
entry, since I am extend it to support isp1763 in the same family, use
this to add a proper yaml bindings file.

Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
 .../devicetree/bindings/usb/nxp,isp1760.yaml  | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/nxp,isp1760.yaml

diff --git a/Documentation/devicetree/bindings/usb/nxp,isp1760.yaml b/Documentation/devicetree/bindings/usb/nxp,isp1760.yaml
new file mode 100644
index 000000000000..f1084b64da5e
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/nxp,isp1760.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/nxp,isp1760.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP ISP1760 family controller bindings
+
+maintainers:
+  - Sebastian Siewior <bigeasy@linuxtronix.de>
+  - Laurent Pinchart <laurent.pinchart@ideasonboard.com>
+
+description: |
+  NXP ISP1760 family, which includes ISP1760/1761/1763 devicetree controller
+  bindings
+
+properties:
+  compatible:
+    enum:
+      - nxp,isp1760
+      - nxp,isp1761
+      - nxp,isp1763
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  bus-width:
+    description:
+      Number of data lines.
+    enum: [8, 16, 32]
+    default: 32
+
+  dr_mode:
+    enum:
+      - host
+      - peripheral
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: true
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    usb: usb@40200000 {
+        compatible = "nxp,usb-isp1763";
+        reg = <0x040200000 0x100000>;
+        interrupts-parent = <&gic>;
+        interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
+        bus-width = <16>;
+        dr_mode = "host";
+    };
+
+...
-- 
2.31.1

