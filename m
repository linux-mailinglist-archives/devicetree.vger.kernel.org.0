Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3C475AF3F2
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 20:52:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229446AbiIFSwP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 14:52:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229504AbiIFSwO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 14:52:14 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 970F1804B9
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 11:52:13 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-1225219ee46so30530135fac.2
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 11:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=MidhS3igYoUpLnAxSJdLelh/Ov0WSVkJewFCKlWvPtM=;
        b=Azs+faEsfXk3//86XNbsAdPMreNFiOcqhTuB4uMpN5PPZ4wClgRTo+oMDFPk8o1M5H
         /ELKD7c62CPYnMaQYa3jZcJgJwE6ZyNYC2N5GfOcLXbyl4zCWJ5zGIdVfPRTMewIS8Ha
         0Y2HeK3XeVg1TJF7eKAIs+DCEQrfm0a+kHQhiWxrZLpzGRr4BCJV9xF26N35tHTrhcR3
         8e9KF0mJn+Xoj0Dcn/YXU89ghZz4jWU4EQyP3cFg1dcEdCnjTil5/yVWB384sbmM39Ea
         0wPLAk8RUeYFqbidFTRD0m0CESO+4usuWAb0z+XI+Qk3TDzbDpSkg3z+vClGVx6TlkNe
         e6Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=MidhS3igYoUpLnAxSJdLelh/Ov0WSVkJewFCKlWvPtM=;
        b=tu1pGrUPM8Qm26oRQzO6Mi0/5GNj7OlAwJy8u8IfuVRl3L2uwsqrRjI1+7EJsg2iWN
         mddWOLIQKNTCN+DWXYIacQzm/fOjvmzX69xXAovii0u/GSgxUXEZuoBPdKXwj2V4v4D9
         0OlgaZLESZ7Zn7im4xz8GRyo/y/aMOm5ztJ2+id+bgrFrc3HGh5G7GOJ+wF3B4FWw+lN
         NaHyc1zbLSNNqXwfNEodJDwXtKNQ4i7bPPyrAgy+ZT2Cm83IdGc69fdBDEa9x0JtrShZ
         6NFmHRNo9BNfsolQWz2f1JMkQAHhF1H2CvREnIYPPpTB5Z7Ku1D6ZeQs72U4Xz9vNY0H
         1Asw==
X-Gm-Message-State: ACgBeo3W/pyr8N2YFMXIrcOAu0rqF9h5CwTd7SXryO4zFamrgb875BN2
        Tt4hVBi8Tfgj1mT/3knXeNw=
X-Google-Smtp-Source: AA6agR4BYZZ1kZJXckhyO4mbuTaJAsiCAB6z0uGN28nhIcyOGFqx4mExeJ8uyakOA9d9+pxgkO/dkA==
X-Received: by 2002:a05:6808:190f:b0:343:ba2:7d4d with SMTP id bf15-20020a056808190f00b003430ba27d4dmr9902396oib.227.1662490333007;
        Tue, 06 Sep 2022 11:52:13 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id f205-20020aca38d6000000b003449ff2299esm5666177oia.4.2022.09.06.11.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 11:52:12 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/2] dt-bindings: display: panel: Add NewVision NV3051D panel  bindings
Date:   Tue,  6 Sep 2022 13:52:07 -0500
Message-Id: <20220906185208.13395-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906185208.13395-1-macroalpha82@gmail.com>
References: <20220906185208.13395-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add documentation for the NewVision NV3051D panel bindings.
Note that for the two expected consumers of this panel binding
the underlying LCD model is unknown.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../display/panel/newvision,nv3051d.yaml      | 48 +++++++++++++++++++
 1 file changed, 48 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
new file mode 100644
index 000000000000..016168d8d7b2
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -0,0 +1,48 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/newvision,nv3051d.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NewVision NV3051D based DSI panel driver
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    enum:
+      - anbernic,rg353p-panel
+      - anbernic,rg353v-panel
+  reg: true
+  backlight: true
+  port: true
+  reset-gpios: true
+  vdd-supply:
+    description: regulator that supplies the vdd voltage
+
+required:
+  - compatible
+  - reg
+  - backlight
+  - vdd-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+        panel@0 {
+            compatible = "anbernic,rg353p-panel";
+            reg = <0>;
+            backlight = <&backlight>;
+            vdd-supply = <&vcc3v3_lcd>;
+        };
+    };
+
+...
-- 
2.25.1

