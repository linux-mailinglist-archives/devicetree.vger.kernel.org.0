Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB45F480359
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 19:33:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231751AbhL0SdG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 13:33:06 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:45366
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231730AbhL0SdF (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 13:33:05 -0500
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com [209.85.208.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id C25723F32E
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 18:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640629983;
        bh=3Q76L02spV6rbbuHR2sV57AudkwFdOfi5uJcF47/ZVw=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=FDQNMg1UR5tuBhmC05kar3Pdl8TtNpCecm2xOO7nOeFIpxcwVq3B7tT3yi48dVF/x
         u+o8cGwsxAHIfQRMO64lLmuIeJxuTHjRZvIbx0IEVPUfPsPdxfqMqHu2yLR2FtwRDb
         H2w5LH/+ZdcNm6KsotJQI4qCVV/i8sszdIJx+p4A7lv1sYspFe9KQsAYy/itHXdS3Z
         9Z88lIb0RljwmdXv0OCvomeNxTuSG7OutFbN+2lTnoU6BX5n6rNKHonG6y5OcVr3iD
         iryfUfb9L9yKq084BVa2xkaxYpBByuwhk05hWzF5WiDyKMAuseECqT+UNXhJ8/WNdf
         MRNinV8vPM4lA==
Received: by mail-lj1-f198.google.com with SMTP id v19-20020a2e87d3000000b0022dbe4687f1so2506167ljj.7
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 10:33:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=3Q76L02spV6rbbuHR2sV57AudkwFdOfi5uJcF47/ZVw=;
        b=jOmfCmgbOiV1W1K8YLtBbepI5WD10d43JhVmKp+zTVLFW7hYLPQmAOOotdiTyl+mAB
         X90xts4JBmlRlJLl46QNTjVb22O1CPnwMEYOA0VPMKlmSZGYagNLayFfXGGw7asdHK2T
         MNCxm9vx+zXecW2gRGBUbhYTuEtSJy4eXb52qjQI7vOEjGYLsMbEU4n76Yak3LDpW7Dv
         pYThTTa/Sz0w0HpbLc650yq1NA0RJcmvjCbylH/5H8dAAeAbbpVQsHDaeYNtBVkndwCA
         Ge8FaKuIjH39pXjjkyoGUPCRuP514wUKplvhNWDBAE3TYKEyTMv33lweErzgxiU9VmFR
         O0cw==
X-Gm-Message-State: AOAM531pWbnjoM2zhn9tx3fk1JQUWrqkIQS9Pc8aXd0NOZmov2UrHlbr
        0EFfIHVwqIDhfMdVcew64HMZtwL72kaF61TmUo1ob229gXbdcbdiUorscQDjEgr5rLe2ff4sEg/
        ygZyQaltB1TL6gtzxjTf36SA5RAgegPjKuA3mFXk=
X-Received: by 2002:a2e:141c:: with SMTP id u28mr15227842ljd.338.1640629982305;
        Mon, 27 Dec 2021 10:33:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJy3O/GRYpaNdG1mlwpRYPezP3gDyMQfsP+6AvdRKYOdbC4zcWygSTmf7lt1HtEIyYzxmmRdEw==
X-Received: by 2002:a2e:141c:: with SMTP id u28mr15227822ljd.338.1640629982100;
        Mon, 27 Dec 2021 10:33:02 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id o12sm1299622ljc.5.2021.12.27.10.33.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 10:33:01 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Matt Mackall <mpm@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Khuong Dinh <khuong@os.amperecomputing.com>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        =?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
        Tony Lindgren <tony@atomide.com>, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, openbmc@lists.ozlabs.org
Subject: [PATCH 5/8] dt-bindings: rng: nuvoton,npcm-rng: convert Nuvoton NPCM RNG to dtschema
Date:   Mon, 27 Dec 2021 19:32:48 +0100
Message-Id: <20211227183251.132525-5-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
References: <20211227183251.132525-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Convert the Nuvoton NPCM RNG bindings to DT schema.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../bindings/rng/nuvoton,npcm-rng.txt         | 12 -------
 .../bindings/rng/nuvoton,npcm-rng.yaml        | 35 +++++++++++++++++++
 2 files changed, 35 insertions(+), 12 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rng/nuvoton,npcm-rng.txt
 create mode 100644 Documentation/devicetree/bindings/rng/nuvoton,npcm-rng.yaml

diff --git a/Documentation/devicetree/bindings/rng/nuvoton,npcm-rng.txt b/Documentation/devicetree/bindings/rng/nuvoton,npcm-rng.txt
deleted file mode 100644
index 65c04172fc8c..000000000000
--- a/Documentation/devicetree/bindings/rng/nuvoton,npcm-rng.txt
+++ /dev/null
@@ -1,12 +0,0 @@
-NPCM SoC Random Number Generator
-
-Required properties:
-- compatible  : "nuvoton,npcm750-rng" for the NPCM7XX BMC.
-- reg         : Specifies physical base address and size of the registers.
-
-Example:
-
-rng: rng@f000b000 {
-	compatible = "nuvoton,npcm750-rng";
-	reg = <0xf000b000 0x8>;
-};
diff --git a/Documentation/devicetree/bindings/rng/nuvoton,npcm-rng.yaml b/Documentation/devicetree/bindings/rng/nuvoton,npcm-rng.yaml
new file mode 100644
index 000000000000..abd134c9d400
--- /dev/null
+++ b/Documentation/devicetree/bindings/rng/nuvoton,npcm-rng.yaml
@@ -0,0 +1,35 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/rng/nuvoton,npcm-rng.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton NPCM SoC Random Number Generator
+
+maintainers:
+  - Avi Fishman <avifishman70@gmail.com>
+  - Tomer Maimon <tmaimon77@gmail.com>
+  - Tali Perry <tali.perry1@gmail.com>
+  - Patrick Venture <venture@google.com>
+  - Nancy Yuen <yuenn@google.com>
+  - Benjamin Fair <benjaminfair@google.com>
+
+properties:
+  compatible:
+    const: nuvoton,npcm750-rng
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
+    rng@f000b000 {
+        compatible = "nuvoton,npcm750-rng";
+        reg = <0xf000b000 0x8>;
+    };
-- 
2.32.0

