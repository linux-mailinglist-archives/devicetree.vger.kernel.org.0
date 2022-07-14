Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9C65574181
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 04:42:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229664AbiGNCmp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 22:42:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230209AbiGNCmo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 22:42:44 -0400
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1310924955
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 19:42:44 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id g126so659461pfb.3
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 19:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y1MIWnHCM+GAst9qr5uT5FWNOFAzzBmNsrQ4ccKB8sg=;
        b=VGAykDuHuHB7XHdTzqhGGPh3suNG9ojL3cNOlUVl3wihdFm+242Z2LKa2DhH3BTS7q
         xfxmIbGLCEKKaLEtmagBdiycH1pwsb0/OztOauwure4k2ty3gD1+0l4ZOkFcP7cLy0io
         Sr4R0k4/PV/1FoKbPPsXSiAmfGbSsKF7p0dsmnbY8qZcMEwO2GSThfK4z+g54QgrE1Xg
         W8+zntaX1v264P7G8mQ2UfR1q6fi/AMHXHdpyRCloZnn40oykxaF5KVSn9crK8aKsmDc
         eDbyC4D/j8PYebJHMojPkemKzr2CfLKcNDKjmu9XLqoxBdStrLyPYA5VbXgxVChsWnAj
         NUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y1MIWnHCM+GAst9qr5uT5FWNOFAzzBmNsrQ4ccKB8sg=;
        b=qoCoPmMzdWjr7kOGbSbZ1uxerknTyxggXrfO5e87KBzgWY8AQfwegrkjzz7MS2LDHR
         npYXIM8AeCXAWSLPbcGKuvvXI6BNLVIOCpW9AZgj3DhHSnhq+yVkXyXunS4N7UZBSC3y
         TIBdpB82UJBDgOqNzeCZVX6rj8viZJTbNWoPed3/asdDWrZEIXla7YSJAD++y4qsmO2q
         oPSxdogXRv/4ZZsg1kipG2TArcD5XfZAjvfvqRbtFJ5nOZ/9VL6Gt/WkQHnkLB8GE6G+
         m/vg6OwFlZhMrEXT6q2AG4iZfE+b6Nf3v8oBtdeMe3D/qiYKJqwQe3JyxqSi4DZWP11g
         Cugw==
X-Gm-Message-State: AJIora9w6dcvRudjmFDqG5rw2NamINNw4tBChed2podGvYpZoqbc5IMM
        91RbbXmuteipmQ0ZY/UjDsM=
X-Google-Smtp-Source: AGRyM1vHihOayjX1obFQSa35qz0Ym+me7Usz98CaW31Uf+TQO3FBQl35qgY5mbj3IcccLE0CnoUjxw==
X-Received: by 2002:a05:6a00:18a7:b0:51b:c63f:1989 with SMTP id x39-20020a056a0018a700b0051bc63f1989mr5961824pfh.49.1657766563617;
        Wed, 13 Jul 2022 19:42:43 -0700 (PDT)
Received: from a-VirtualBox.. ([116.232.54.164])
        by smtp.gmail.com with ESMTPSA id w188-20020a6282c5000000b0052aee60e058sm261125pfd.102.2022.07.13.19.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 19:42:43 -0700 (PDT)
From:   Zhu Ning <zhuning0077@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        broonie@kernel.org, devicetree@vger.kernel.org,
        Zhu Ning <zhuning0077@gmail.com>,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: [PATCH 2/2] dt-bindings: sound: es8326: Add dtbindings documentation
Date:   Thu, 14 Jul 2022 10:42:03 +0800
Message-Id: <20220714024203.7332-2-zhuning0077@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220714024203.7332-1-zhuning0077@gmail.com>
References: <20220714024203.7332-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree binding documentation for Everest ES8326

Signed-off-by: David Yang <yangxiaohua@everest-semi.com>
Signed-off-by: Zhu Ning <zhuning@everest-semi.com>
---
 .../bindings/sound/everest,es8326.yaml        | 84 +++++++++++++++++++
 1 file changed, 84 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/sound/everest,es8326.=
yaml

diff --git a/Documentation/devicetree/bindings/sound/everest,es8326.yaml b/=
Documentation/devicetree/bindings/sound/everest,es8326.yaml
new file mode 100755
index 000000000000..f6aa3c03d456
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8326.yaml
@@ -0,0 +1,84 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)=0D
+%YAML 1.2=0D
+---=0D
+$id: http://devicetree.org/schemas/sound/everest,es8326.yaml#=0D
+$schema: http://devicetree.org/meta-schemas/core.yaml#=0D
+=0D
+title: Everest ES8326 audio CODEC=0D
+=0D
+maintainers:=0D
+  - David Yang <yangxiaohua@everest-semi.com>=0D
+=0D
+properties:=0D
+  compatible:=0D
+    const: everest,es8326=0D
+=0D
+  reg:=0D
+    maxItems: 1=0D
+=0D
+  clocks:=0D
+    items:=0D
+      - description: clock for master clock (MCLK)=0D
+=0D
+  clock-names:=0D
+    items:=0D
+      - const: mclk=0D
+=0D
+  "#sound-dai-cells":=0D
+    const: 0=0D
+=0D
+  everest,jack-pol:=0D
+    description:=0D
+      just the value of reg 57. Bit(3) decides whether the jack polarity i=
s inverted.=0D
+      Bit(2) decides whether the bottom on the headset is inverted.=0D
+      Bit(1)/(0) decides the mic properity to be OMTP/CTIA or auto.=0D
+    $ref: /schemas/types.yaml#/definitions/uint8-array=0D
+    minimum: 0=0D
+    maximum: 0x0f=0D
+    default: 0x0f=0D
+  =0D
+  everest,mic1-src:=0D
+    description:=0D
+      the value of reg 2A when headset plugged.=0D
+    $ref: /schemas/types.yaml#/definitions/uint8-array=0D
+    minimum: 0x00=0D
+    maximum: 0x77=0D
+    default: 0x22=0D
+=0D
+  everest,mic2-src:=0D
+    description:=0D
+      the value of reg 2A when headset unplugged.=0D
+    $ref: /schemas/types.yaml#/definitions/uint8-array=0D
+    minimum: 0x00=0D
+    maximum: 0x77=0D
+    default: 0x44=0D
+=0D
+  everest,jack-detect-inverted:=0D
+    description:=0D
+      Defined to invert the jack detection.=0D
+    $ref: /schemas/types.yaml#/definitions/flag=0D
+=0D
+required:=0D
+  - compatible=0D
+  - reg=0D
+  - "#sound-dai-cells"=0D
+=0D
+=0D
+additionalProperties: false=0D
+=0D
+examples:=0D
+  - |=0D
+    i2c0 {=0D
+      #address-cells =3D <1>;=0D
+      #size-cells =3D <0>;=0D
+      es8326: codec@19 {=0D
+        compatible =3D "everest,es8326";=0D
+        reg =3D <0x19>;=0D
+        clocks =3D <&clks 10>;=0D
+        clock-names =3D "mclk";=0D
+        #sound-dai-cells =3D <0>;=0D
+        everest,mic1-src =3D [22];=0D
+        everest,mic2-src =3D [44];=0D
+        everest,jack-pol =3D [0e];=0D
+      };=0D
+    };=0D
--=20
2.36.1

