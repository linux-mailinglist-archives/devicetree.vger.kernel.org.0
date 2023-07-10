Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 354F274DCE9
	for <lists+devicetree@lfdr.de>; Mon, 10 Jul 2023 20:00:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229469AbjGJSAI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Jul 2023 14:00:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229786AbjGJSAI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Jul 2023 14:00:08 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC219127
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 11:00:04 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4fa16c6a85cso7223775e87.3
        for <devicetree@vger.kernel.org>; Mon, 10 Jul 2023 11:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689012003; x=1691604003;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=c0FClAnEAZjf0gYJyzsgqEK+uqeg8TNFsNjOYjwKQOE=;
        b=qvJrRzuidTlzxqg/po5n7X5sKrrBucr4zecTlz3yIjiu0hd28XPovlU2jrZ1Wi3N9p
         UCE1p2Lo5a13/c5F9cEYZhMkCNTPVM8xqHG0ey8oHGSVdBhF8YFYjVbfIGVEczzVJb/O
         fpYxcw6jH7NtAR4MFJ3cPvl5AQGrkG19lApu+LIsGIt/6Cf3HJgIKCd0yG/DHUYKPq3/
         44jgxAIsVVh2Pri28uy/JnVpzikRd91RxmgYYF0nw+1tjNeJOEgpvrmXwr+M0IHR8Var
         Ndm+2OYo2Ez6NaE1f0ceIiHh0IF+ZbQvY15bWbNJxpjrzSvSQVKsZlAJc4jCrZobUQDL
         bAuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689012003; x=1691604003;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c0FClAnEAZjf0gYJyzsgqEK+uqeg8TNFsNjOYjwKQOE=;
        b=eJ95LW4y7n4ZluuCGLDUNuXP/c5T5GnWhPc5gyX9vc6GvPx/bGHUQfKSR7bmZLS9Pu
         U06itpcst8Vornubdd1oZQhh3O4s/AhC31IgG20XF4zf2uKVQpSslsg3YnQYAz0X05Bk
         e6tWrZr3RTHXhZPg5LMm+JpB2gzBp/QsbWSNZTVXE92ApnxRQDk6CBH+ng+G3SwRr9Sl
         9V9VxoFkAAgSW7R+gP9XJi4Y0AUwxKNLwMNOoIVDSTUWYuruROS/AjlZKthjJKzvPRiV
         rEUb5Ic/TM+GBI2D2hv3gLbe9EV+ez108WTDMsyb+rmAPUa+Ei5ecVg2jYOAaYKH2pjl
         7fHQ==
X-Gm-Message-State: ABy/qLbgSFtQjoR8v1h1I5r9c1tCwo8Z4Fh4neF0OBhgpRyy6gi2b5Wu
        MskbZX16q3N1SQaP7uZ7r2t6lt5kLlM=
X-Google-Smtp-Source: APBJJlGiiFWeXBndymUwCKWb7BhWYvo6zPqoX7VpRi501EXwxtsT+p1qO5Yu/ZH+5/W9C9a7zDKFDA==
X-Received: by 2002:a19:5013:0:b0:4f6:6b:a43b with SMTP id e19-20020a195013000000b004f6006ba43bmr10110325lfb.52.1689012002690;
        Mon, 10 Jul 2023 11:00:02 -0700 (PDT)
Received: from localhost.lan (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.gmail.com with ESMTPSA id p4-20020ac246c4000000b004fbe7b01b15sm2079lfo.62.2023.07.10.11.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jul 2023 11:00:02 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V3] dt-bindings: arm: bcm: add BCM53573 SoCs family binding
Date:   Mon, 10 Jul 2023 19:59:44 +0200
Message-Id: <20230710175944.32631-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM53573 is a family derived from Northstar with some important
differences:
1. Cortex-A9 replaced by Cortex-A7
2. XHCI controller dropped
3. Two Ethernet interfaces removed
4. Two 802.11ac cores embedded

Linux already contains DTS files for some on those devices so add a
proper binding for it.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
V2: Add -v1 prefixes to Tenda AC6/W15E. There are more versions.
V3: Use dual licensing
---
 .../bindings/arm/bcm/brcm,bcm53573.yaml       | 39 +++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
new file mode 100644
index 000000000000..81b9a4a641c1
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
@@ -0,0 +1,39 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm53573.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom BCM53573 SoCs family
+
+description:
+  Broadcom BCM53573 / BCM47189 Wi-Fi SoCs derived from Northstar.
+
+maintainers:
+  - Rafał Miłecki <rafal@milecki.pl>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: BCM53573 based boards
+        items:
+          - enum:
+              - tenda,ac6-v1
+              - tenda,w15e-v1
+          - const: brcm,bcm53573
+
+      - description: BCM47189 based boards
+        items:
+          - enum:
+              - brcm,bcm947189acdbmr
+              - luxul,xap-810-v1
+              - luxul,xap-1440-v1
+              - tenda,ac9
+          - const: brcm,bcm47189
+          - const: brcm,bcm53573
+
+additionalProperties: true
+
+...
-- 
2.35.3

