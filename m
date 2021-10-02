Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD72041FA04
	for <lists+devicetree@lfdr.de>; Sat,  2 Oct 2021 08:09:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231691AbhJBGLA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Oct 2021 02:11:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40250 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229591AbhJBGK7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Oct 2021 02:10:59 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED4ECC061775
        for <devicetree@vger.kernel.org>; Fri,  1 Oct 2021 23:09:13 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id v127so8674130wme.5
        for <devicetree@vger.kernel.org>; Fri, 01 Oct 2021 23:09:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CpKLS1d74uMlVWoAjljLqamIbO1VwhrophNuwn4Fb34=;
        b=jVYSvmlCnf216Ppb59clZ4UQpZcuw73mh57yyrFMd2oZ0/nTx4nKW/fmKYKVPm/RFb
         CMEjJzMn5tq+clCPWbRmF/oZuPEImV6EJ9oFM3u0y/Vdbm9ivb2byggWzvkd5k7alfGY
         5uXQR317JDp0d4+UYtFeMK1V0UYPoxZv8oGklVdt5f8ZFZvgQcrM4gp3aoSEcxDU/RSG
         UTVvs9HtqtUiN4fopEzSGEp7AuvIt1YSH5BLJpYG7OpMbsk4p+tDov7aTS6WNPmRMaC4
         M5OKSNLSmW5YDCG2QK/GaJAzRF6H4riSLNGE5i6yzbU53y11oqAj8rbZoFxnsvUf3ZEm
         l4Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CpKLS1d74uMlVWoAjljLqamIbO1VwhrophNuwn4Fb34=;
        b=uT+tmETcnEOETQOKOYa1hmcqGO/CK/pyfeXDJptQhf+MbOVJOtAsr/o/mDHmEGG61+
         boHS+4P9vPg0pR0hh80ki56VCd6XThMZ5mvC6VBKDFCdql/AsaGPOE+hKE1HsHDuZxSD
         bkuJJJ+/OQ/kPWbo8vvUoWguCwsN5LO7cg0NG4sisV3CfKZEdUPoq6hQl2wsjAWHXeqi
         vKVFRJSh/q8VQkki29elYYv4Sq7Ny+ZLAbe72w8hxguqxlMBwgJRjGv0Tc6TT53ESP0r
         r5pcNYFwciaMSw0WobA2vchIYVvBtPllVd1f+ZLgJOEIl+5Er/e4J9SbN3sUtEM3NzBs
         jhwQ==
X-Gm-Message-State: AOAM530zMpXZ2cyb+xtglPP1M/JyCA5PaIG8btCsP/KrRu7otheUJRuL
        pZeUTQFXw/ULUtPYp/+nuCIZ1Jbnriw=
X-Google-Smtp-Source: ABdhPJzWBWtHHMwG/GDc7gU90T1+7dSJvFXE4IDBClqA0Xb5Rnp9vJokOmBOKHi/7UcotHtLDD7Afg==
X-Received: by 2002:a05:600c:1d16:: with SMTP id l22mr8136694wms.44.1633154952301;
        Fri, 01 Oct 2021 23:09:12 -0700 (PDT)
Received: from localhost.localdomain (252.red-83-54-181.dynamicip.rima-tde.net. [83.54.181.252])
        by smtp.gmail.com with ESMTPSA id m21sm8409901wmq.37.2021.10.01.23.09.11
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Oct 2021 23:09:11 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, neil@brown.name
Subject: [PATCH] dt-bindings: memory: add binding for Mediatek's MT7621 SDRAM memory controller
Date:   Sat,  2 Oct 2021 08:09:10 +0200
Message-Id: <20211002060910.30613-1-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for Mediatek's SDRAM memory controller present on
MT7621 SoC.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
 .../mediatek,mt7621-memc.yaml                 | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/memory-controllers/mediatek,mt7621-memc.yaml

diff --git a/Documentation/devicetree/bindings/memory-controllers/mediatek,mt7621-memc.yaml b/Documentation/devicetree/bindings/memory-controllers/mediatek,mt7621-memc.yaml
new file mode 100644
index 000000000000..85e02854f083
--- /dev/null
+++ b/Documentation/devicetree/bindings/memory-controllers/mediatek,mt7621-memc.yaml
@@ -0,0 +1,30 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/memory-controllers/mediatek,mt7621-memc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: MT7621 SDRAM controller
+
+maintainers:
+  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
+
+properties:
+  compatible:
+    const: mediatek,mt7621-memc
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
+    memory-controller@5000 {
+        compatible = "mediatek,mt7621-memc";
+        reg = <0x5000 0x1000>;
+    };
-- 
2.25.1

