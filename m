Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C02185BEB9A
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 19:09:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230508AbiITRJu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 13:09:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbiITRJr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 13:09:47 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EFC7BDE88
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 10:09:45 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id o64so4506879oib.12
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 10:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=xLE/KMkN6oWOgP71Pba5WPZGD9ngcwIQDqZNkJgFhWY=;
        b=gUGVPWLKHVWqdBHBLmTHQzwRCfadaeEArwQWsGTjd50Iehet6tbWH17xZ2WlXB8Ao/
         cwsRo5pwuptXH4v944Z0miy2vWura7Una2z6oH9WQ4PwW0ZvCZSE3HwEIQw3qYsZVfHY
         Vc+zECP+79n8lXNc/rIdddjkNEe8xpLkGKlbTpUihVvIKqew0RzZ5Xu6kxL+ApTt/ksI
         5W+8/mZvCRCNcCBCpKspI9ehFiDHz1qgS+ASGE/A88pNy8Ubf41yffP9y5Fcyk6gxQ9M
         K8CX1YQLVyzFQe5FMX4PoLx+0UhwSkLnvhdBPhLswPSf9UOcZmkmdGNSlziVouM2/wKp
         zhQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=xLE/KMkN6oWOgP71Pba5WPZGD9ngcwIQDqZNkJgFhWY=;
        b=zUz7f+XCxtQZwev0jQUEwaTQTftwjGtWrs2p0XrvExtLFPNaIFV5ggaBNOB0rimnPS
         0CzVnKWd4Nqlo1NZWTEf39WR0KbohaeFCgCEIA/TMMJpGvZhAadYHEWlAqqFZWyO5d/e
         GIsXxXqNr3TH6oOkpIc2Vkkz0dMqzeXh/4BcjtqZWP+5kZOIE97/ZmGdczdPSQWuEZkD
         mFI1XCJBOuYg+D5eRryRNbKdkXIn3w/r3nYW5pMoTt7iXaTGtgwJrXKKssbn/OwNysle
         qm8Wczi1UGcYzdIJDFi4CnFY7kFetNFma+6+rIP542cyGm75ho5DpvRsMZtaNYItBCXt
         0bsQ==
X-Gm-Message-State: ACrzQf1Vw9WvR/QkV6XHpJmrIj6g5z1XLb3b106Wsnq+2EiGFHTPlCqV
        SSCkDG8xn1lmT5MfKkCDKQU=
X-Google-Smtp-Source: AMsMyM4Gb5RoR8uwoNErq5clxV2eINJIk9PZtaEqYIUzg3OBloriaHFSAUKyJ0CeH///dNewpwCbig==
X-Received: by 2002:a05:6808:140a:b0:350:cf96:8294 with SMTP id w10-20020a056808140a00b00350cf968294mr1960948oiv.169.1663693785305;
        Tue, 20 Sep 2022 10:09:45 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v13-20020a9d69cd000000b00636956b3080sm121468oto.43.2022.09.20.10.09.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 10:09:44 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/2] dt-bindings: display: panel: Add Samsung AMS495QA01 bindings
Date:   Tue, 20 Sep 2022 12:09:36 -0500
Message-Id: <20220920170937.14486-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920170937.14486-1-macroalpha82@gmail.com>
References: <20220920170937.14486-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add documentation for the Samsung AMS495QA01 panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../display/panel/samsung,ams495qa01.yaml     | 46 +++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
new file mode 100644
index 000000000000..08358cdad19c
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/samsung,ams495qa01.yaml
@@ -0,0 +1,46 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/samsung,ams495qa01.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Samsung AMS495QA01 4.95in 960x544 DSI/SPI panel
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    const: samsung,ams495qa01
+  reg: true
+  reset-gpios: true
+  elvdd-supply:
+    description: regulator that supplies voltage to the panel display
+  enable-gpios: true
+  port: true
+  vdd-supply:
+    description: regulator that supplies voltage to panel logic
+
+required:
+  - compatible
+  - reg
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    spi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "samsung,ams495qa01";
+            reg = <0>;
+            vdd-supply = <&vcc3v3_lcd0_n>;
+        };
+    };
+
+...
-- 
2.25.1

