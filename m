Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1BC93C6EF2
	for <lists+devicetree@lfdr.de>; Tue, 13 Jul 2021 12:51:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235697AbhGMKxk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jul 2021 06:53:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50670 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235496AbhGMKxj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jul 2021 06:53:39 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 518E1C0613E9
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 03:50:50 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id b5-20020a17090a9905b029016fc06f6c5bso1831852pjp.5
        for <devicetree@vger.kernel.org>; Tue, 13 Jul 2021 03:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VovCFljnf1vTBUJ7EdFbbYpvvdVza8LaWe5CrOJSY7g=;
        b=POuW7HR8+JRq0XcNb2gwX87+Cdjg734uF/GDz9PpL8tv7tfi4R7JI4s3lyzjd2HTky
         etuO4Xl+zc7ofYqTlHgCoeEuDnEJAUvuD59GNUTQJofDM4e9n8MVO2Udb5UWRTw9AQWE
         QgYDoVAvfyhm1eK6OHAJen6/cxYL6xox1/+zVUMCQQ4rD83iGXwWdj5AMUl6DhxxS3b5
         8TVnfRubFFifGeIY6CRsrgy4lJeF25GP00i+yiscR/aM4wYTi2rRgT3SzaGeuxkZ2aBY
         HGFkrDpEonK2gGrgOrQIJvCVmsz2HQbt5ijEbpE3Z0DmCaTBIxFT788zMADnVE8F4MQM
         Gk5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VovCFljnf1vTBUJ7EdFbbYpvvdVza8LaWe5CrOJSY7g=;
        b=euu+E2/zLAwMfB44YazCC4OKYpeNQ5HEwWV3RSca6Zv7o45mXp6SOay/OWvjRTuVDX
         IUUww6yx4EThSfHHmr8+PsC0Zcv42XxSlg0PqcM3BVPT8RmXqc3C4WTFTIKT6TXKHBxC
         i/h6+MVm8pjkZ+XgwU+0aZ+a4OFoacWRYgi1eVuXtw03fHa0ovvVpK1xy36ee6ImE7QJ
         eCEjXQd0/LZ8EyRWi5Vg4VD1fKMYSi62M5rWLqqlCXGLC693yqE8JwNufmg9lCL6OJLk
         aFmbbGvuj7G3tnT3ahoctNWzrYRWWcvTOJs2GI1VYx+f1u4845wdjeKpuKr/DdvHpH4q
         BeBA==
X-Gm-Message-State: AOAM532Ly1zIy3jLdSHRuQyjaAPW4s4WHSQGy+E0lNq5RcZhzEAed3ye
        7LNfhQPBhYI89yw5B/CVhtaUuA==
X-Google-Smtp-Source: ABdhPJxfSRrVqHX7TowizBcJeXp3Vooup9t0ZmJr+Y2H9dkwyZZxmOQynaJr596l4TvHmyCKKrHzzg==
X-Received: by 2002:a17:903:184:b029:12b:3b0f:a7a3 with SMTP id z4-20020a1709030184b029012b3b0fa7a3mr472500plg.24.1626173449854;
        Tue, 13 Jul 2021 03:50:49 -0700 (PDT)
Received: from localhost ([106.201.108.2])
        by smtp.gmail.com with ESMTPSA id h11sm5086664pjv.57.2021.07.13.03.50.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 03:50:49 -0700 (PDT)
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Cc:     Viresh Kumar <viresh.kumar@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        =?UTF-8?q?Alex=20Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        virtualization@lists.linux-foundation.org
Subject: [PATCH 1/5] dt-bindings: virtio: mmio: Add support for device subnode
Date:   Tue, 13 Jul 2021 16:20:30 +0530
Message-Id: <aa4bf68fdd13b885a6dc1b98f88834916d51d97d.1626173013.git.viresh.kumar@linaro.org>
X-Mailer: git-send-email 2.31.1.272.g89b43f80a514
In-Reply-To: <cover.1626173013.git.viresh.kumar@linaro.org>
References: <cover.1626173013.git.viresh.kumar@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow virtio,mmio nodes to contain device specific subnodes. Since each
virtio,mmio node can represent a single virtio device, each virtio node
is allowed to contain a maximum of one device specific subnode.

The device subnode must have the "reg" property, and its value must
match the virtio device ID used by the virtio mmio node.

A phandle to this device subnode can then be used by the users of the
virtio device.

Also add a symbolic link to uapi/linux/virtio_ids.h in order to use the
definitions here.

Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
---
 .../devicetree/bindings/virtio/mmio.yaml      | 41 +++++++++++++++++++
 include/dt-bindings/virtio/virtio_ids.h       |  1 +
 2 files changed, 42 insertions(+)
 create mode 120000 include/dt-bindings/virtio/virtio_ids.h

diff --git a/Documentation/devicetree/bindings/virtio/mmio.yaml b/Documentation/devicetree/bindings/virtio/mmio.yaml
index d46597028cf1..e5f9fe6ecb5e 100644
--- a/Documentation/devicetree/bindings/virtio/mmio.yaml
+++ b/Documentation/devicetree/bindings/virtio/mmio.yaml
@@ -31,6 +31,31 @@ title: virtio memory mapped devices
     description: Required for devices making accesses thru an IOMMU.
     maxItems: 1
 
+  "#address-cells":
+    const: 1
+    description:
+      The cell is the device ID if a device subnode is used.
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  '^[a-z0-9]+-virtio@[0-9]+$':
+    type: object
+    description: |
+      Exactly one node describing the virtio device. The name of the node isn't
+      significant but its phandle can be used to by an user of the virtio
+      device.
+
+    properties:
+      reg:
+        description:
+          Must contain the Virtio ID of the device.
+        $ref: /schemas/types.yaml#/definitions/uint32
+
+    required:
+      - reg
+
 required:
   - compatible
   - reg
@@ -57,4 +82,20 @@ additionalProperties: false
         #iommu-cells = <1>;
     };
 
+  - |
+    #include <dt-bindings/virtio/virtio_ids.h>
+
+    virtio@3200 {
+        compatible = "virtio,mmio";
+        reg = <0x3200 0x100>;
+        interrupts = <43>;
+
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        i2c-virtio@0 {
+            reg = <VIRTIO_ID_I2C_ADAPTER>;
+        };
+    };
+
 ...
diff --git a/include/dt-bindings/virtio/virtio_ids.h b/include/dt-bindings/virtio/virtio_ids.h
new file mode 120000
index 000000000000..6e59ba332216
--- /dev/null
+++ b/include/dt-bindings/virtio/virtio_ids.h
@@ -0,0 +1 @@
+../../uapi/linux/virtio_ids.h
\ No newline at end of file
-- 
2.31.1.272.g89b43f80a514

