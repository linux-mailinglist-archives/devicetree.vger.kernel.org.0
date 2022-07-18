Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 416F6577A69
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 07:34:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233037AbiGRFcy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 01:32:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46058 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229585AbiGRFcy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 01:32:54 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9984512762
        for <devicetree@vger.kernel.org>; Sun, 17 Jul 2022 22:32:53 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id e132so9640071pgc.5
        for <devicetree@vger.kernel.org>; Sun, 17 Jul 2022 22:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y1MIWnHCM+GAst9qr5uT5FWNOFAzzBmNsrQ4ccKB8sg=;
        b=Ub3V4kc6uYBT+k7hO9YNU7BjpbU6FMDrE+unXj904tiry9yZTcUqRTK3YPKFhFUG/L
         4zEDC+SOhBeqj24B8X0IrG+Tz4NSX8hq7HkYnNVMZZYOqKvcVGn4j7p8DdKGlmRQEu+T
         HTxiA0RAslNanpH9isa3mAheR0dQXzDNBBQXEoMAta2iPhjV4c9faklZFCoObTMpqAyC
         Hnivu/7HrHz5mEgx8weqAfVV5GOUEjHNtGRMtI1Ij3fCBeTpFZZZSESbhdHPB3B7+nRO
         reIV2BYXIV4XMltG1kNXqOwFFMzMKoPg5fibDqta+p+5LPdKW6x4F9QV+5pgOsSHi8KG
         vk5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y1MIWnHCM+GAst9qr5uT5FWNOFAzzBmNsrQ4ccKB8sg=;
        b=fA+o7HZaunyGxd6INz1BBnrphxH/AI1Z1Tq5SClVdOSVI3ZVHw+zl08TKMU0CtkA5Q
         9M6su46glU55DIPD9AwmKTht6eRqHXQ7POfF4EC1S3lYYDPhcCDM+abDld55DhYdFnnW
         XIlTs8ddjulyUuw6QBq0h64ZVa1jF/qcGFTpWE8AdpUOsGqEaeJWOmnFDT76/NnxuC1n
         61fTMAH5BqvOY15M3DczUcYmqaI8hctsfBt9QHaZfmrsfg2pXU4y/gr4MWGg3Q7LyfEK
         WwExZ3Ol+PteHmUW/wFxYdJX7JaXX3MWYoKzidLlJow25CRahOF77yfXlEWlMihz4LpP
         yXQQ==
X-Gm-Message-State: AJIora8puvwYIXU5rJ/mOtn3Sbphx3CFfwRnhRIY0os6yNHl+rJq7Ood
        7O6ZG7CrdTrTwXBEyt7B7QDhBCNAJ0yR2a+M
X-Google-Smtp-Source: AGRyM1uTyVXJX80zULwBp6WzGBGgEFUaO37MFo99BymiR31Ks0Pfy+FNWzMSHEebm2uIzC6Nx2PPRQ==
X-Received: by 2002:a05:6a00:198f:b0:52a:dc25:cc78 with SMTP id d15-20020a056a00198f00b0052adc25cc78mr26553547pfl.20.1658122373186;
        Sun, 17 Jul 2022 22:32:53 -0700 (PDT)
Received: from a-VirtualBox.tendawifi.com ([101.224.225.209])
        by smtp.gmail.com with ESMTPSA id z6-20020a1709027e8600b0016c1fdaa38fsm8227608pla.231.2022.07.17.22.32.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Jul 2022 22:32:51 -0700 (PDT)
From:   Zhu Ning <zhuning0077@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        broonie@kernel.org, devicetree@vger.kernel.org,
        Zhu Ning <zhuning0077@gmail.com>,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: [PATCH v1 2/2] dt-bindings: sound: es8326: Add dtbindings documentation
Date:   Mon, 18 Jul 2022 13:32:37 +0800
Message-Id: <20220718053237.20146-2-zhuning0077@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220718053237.20146-1-zhuning0077@gmail.com>
References: <20220718053237.20146-1-zhuning0077@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
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

