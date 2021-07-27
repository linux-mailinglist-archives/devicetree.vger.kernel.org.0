Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 40AB73D6DF6
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 07:24:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235253AbhG0FYB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 01:24:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235217AbhG0FYA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 01:24:00 -0400
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AA4CC061764
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 22:24:01 -0700 (PDT)
Received: by mail-pl1-x62a.google.com with SMTP id c16so8889524plh.7
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 22:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=pli4HJidOpxsK8M83Hgdvi+NbofSGQAN0jGG2SdYKog=;
        b=tmUUUVQweZacwI01RO3nQ+0SYtgnKAmFfjVdsxkSGafeGPRhnTcLzjTLff3NffemQY
         bZu8YkYmdFOpGUTi16lwRipdAGxhIG8f3gUx/zul1mAKBVuM/5a+U0P6tek/bCJMSmg7
         pAK9hhWPFL95tv8ujz7S8F4eboM80B5NqLUPXCd89AQ2M6d7jz8N0lVYykfcVJjqAUp/
         0rlneCGVpuCvfhLmjX4H+prUiaNneK6Rk4cD1d/wMkKpnhJy4srY0MDs3dQWjhHlKp4e
         MpvBBqv0iHX2esEKoBxiSfCvdzsjqGBlzRx/54ojkbKa5Kg/jJJ2wCBCrX+FSi+VgsrZ
         ltIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=pli4HJidOpxsK8M83Hgdvi+NbofSGQAN0jGG2SdYKog=;
        b=gatCyEb8gLn/Ih19bcpDr96Fd6oYS7DwI768dXoex7N/K3KPJu6K91U8BnksNMK5dE
         nJRBPZmL0JW5hI+7LG1+ov+XO3gieTq0K4/aBGNus5uY1kvU6hx1eg2qong4yER7XqkO
         j3YtmLFlvbGzw5y1aK9doHjPso6I5mRCiaspXQFZH9mFpJzdJAcdJDkyLaXptnJzS1z/
         Lb5PilSyrbNVq/wEvuzfFYGGBbDKuD8ZXPBWpLbgGTVIYzB6I7busToVj1L1veRZDpZY
         jzKnwu0UxvkAM+9vc65vov6Nd32CzbOZLxDsMoctATSg/y9dT0SjcsoyJ+WGA5lxlFo4
         +EZg==
X-Gm-Message-State: AOAM5313ftbjFpThI8VUN+dR36LhPPL/C4CDu2vH8sqe0cELtKMHI6OI
        DctVd7+rVJWcb3iaHymwfJferw==
X-Google-Smtp-Source: ABdhPJwAnh3q4vqWYwvyBP9fDWHP5b7kHzp+NypFNMPFy81hzVzSo8ecGiy/KFxUx7hzVgSekIso8Q==
X-Received: by 2002:a17:90b:a0c:: with SMTP id gg12mr20634688pjb.165.1627363441015;
        Mon, 26 Jul 2021 22:24:01 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id f3sm1433531pjt.19.2021.07.26.22.24.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 22:24:00 -0700 (PDT)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        virtualization@lists.linux-foundation.org
Subject: [PATCH V4 1/5] dt-bindings: virtio: Add binding for virtio devices
Date:   Tue, 27 Jul 2021 10:53:48 +0530
Message-Id: <d8319fd18df7086b12cdcc23193c313893aa071a.1627362340.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
In-Reply-To: <cover.1627362340.git.viresh.kumar@linaro.org>
References: <cover.1627362340.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow virtio device sub-nodes to be added to the virtio mmio or pci
nodes. The compatible property for virtio device must be of the format
"virtio,device<ID>", where ID is virtio device ID in hexadecimal format.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 .../devicetree/bindings/virtio/mmio.yaml      |  3 +-
 .../bindings/virtio/virtio-device.yaml        | 41 +++++++++++++++++++
 2 files changed, 43 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/virtio/virtio-device.yaml

diff --git a/Documentation/devicetree/bindings/virtio/mmio.yaml b/Documentation/devicetree/bindings/virtio/mmio.yaml
index d46597028cf1..4b7a0273181c 100644
--- a/Documentation/devicetree/bindings/virtio/mmio.yaml
+++ b/Documentation/devicetree/bindings/virtio/mmio.yaml
@@ -36,7 +36,8 @@ title: virtio memory mapped devices
   - reg
   - interrupts
 
-additionalProperties: false
+additionalProperties:
+  type: object
 
 examples:
   - |
diff --git a/Documentation/devicetree/bindings/virtio/virtio-device.yaml b/Documentation/devicetree/bindings/virtio/virtio-device.yaml
new file mode 100644
index 000000000000..1778ea9b5aa5
--- /dev/null
+++ b/Documentation/devicetree/bindings/virtio/virtio-device.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/virtio/virtio-device.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Virtio device bindings
+
+maintainers:
+  - Viresh Kumar <viresh.kumar@linaro.org>
+
+description:
+  These bindings are applicable to virtio devices irrespective of the bus they
+  are bound to, like mmio or pci.
+
+# We need a select here so we don't match all nodes with 'virtio,mmio'
+properties:
+  compatible:
+    pattern: "^virtio,device[0-9a-f]{1,8}$"
+    description: Virtio device nodes.
+      "virtio,deviceID", where ID is the virtio device id. The textual
+      representation of ID shall be in lower case hexadecimal with leading
+      zeroes suppressed.
+
+required:
+  - compatible
+
+additionalProperties: true
+
+examples:
+  - |
+    virtio@3000 {
+        compatible = "virtio,mmio";
+        reg = <0x3000 0x100>;
+        interrupts = <43>;
+
+        i2c {
+            compatible = "virtio,device22";
+        };
+    };
+...
-- 
2.31.1.272.g89b43f80a514

