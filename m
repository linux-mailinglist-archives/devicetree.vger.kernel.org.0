Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB892581408
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 15:18:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238545AbiGZNSL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 09:18:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238581AbiGZNSK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 09:18:10 -0400
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 059792C65B
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 06:18:10 -0700 (PDT)
Received: by mail-pf1-x42d.google.com with SMTP id y9so13164676pff.12
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 06:18:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=y1MIWnHCM+GAst9qr5uT5FWNOFAzzBmNsrQ4ccKB8sg=;
        b=o1HzOE9lUNVPGwqVE2FDPK2rOjOpLpgApfnD7kpTCXkG8EI30Vq5i13MZ5OMR8Zdt7
         AE/awwN36Dj98SubOLFQHyBF3uRf+JNhy3NHAhJeYbzg4g8BmHAlkWxZt9nLkCs3DvaR
         KnwK32oVM5srGEDtPXYIeqb4rkvKzy5XVYTN0yyb1oSIuv71yXS7NtvVHBlGKzZcC10C
         Ku2MMd0GNgyyFDIqKwz+LcDZLW0Sy/3KZ1Ra8emHI2m0YK+18myNaJUbEn6R2/ZIH1TZ
         peZJ5H1mXP6eDGyhRSG1rKEUCOcKy9rc6gO/7WJUusQGqNYF/oMsZT4RHLldnVA89kJr
         qwNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=y1MIWnHCM+GAst9qr5uT5FWNOFAzzBmNsrQ4ccKB8sg=;
        b=46YsWaGYZSBNqLnnnUEdSpuoWkoeBoScFVbJatENveNwb9y6oakPc6wUgJjAiY51UR
         gF6KO/LseBGshtfG2Qpq8cKk1gBbgffzDHlMBruQuPc0xBfZhtOAVdJZ5Wk7t27KUoL2
         fJ0cxb9yyMfKXfzkglfjotgXVCApc5OO0IQ/8upOtI49ZlHPNVEsSuOcdYGoJm2mcvxk
         iEEe749pAjtgsKvlfOsbpgfdjMlVQnMQ91R9Rh9tAqyloAijMNH0xz2dFU4uxeH4JTda
         SMdgW4kIdzAiI12Eek1gTRRAdhABetMy69JcwXOW4sKsvLpwsOh/8UlpqODlegcC1U9K
         76Ow==
X-Gm-Message-State: AJIora+2bJWi0SQFAMQvNKDwalzEgb5wnGohD/LXDdeNIUcu1PIhEJEu
        H8vMFwaQ/UnD/+DYv45L5to=
X-Google-Smtp-Source: AGRyM1vYo1jZTJrNdxAIRCKJQ9eRaZlRJ156Fc326My3lXKm/sEHa+Rib2ZfX54N27PMqc2QQOOsuQ==
X-Received: by 2002:a05:6a00:21c5:b0:52b:fc9c:295b with SMTP id t5-20020a056a0021c500b0052bfc9c295bmr8184968pfj.56.1658841489433;
        Tue, 26 Jul 2022 06:18:09 -0700 (PDT)
Received: from a-VirtualBox.tendawifi.com ([101.224.225.209])
        by smtp.gmail.com with ESMTPSA id ru6-20020a17090b2bc600b001f229f8d7bdsm11227459pjb.16.2022.07.26.06.18.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 06:18:09 -0700 (PDT)
From:   Zhu Ning <zhuning0077@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        broonie@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
        ckeepax@opensource.cirrus.com, Zhu Ning <zhuning0077@gmail.com>,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: [PATCH v3 2/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
Date:   Tue, 26 Jul 2022 21:17:47 +0800
Message-Id: <20220726131747.127992-2-zhuning0077@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220726131747.127992-1-zhuning0077@gmail.com>
References: <20220726131747.127992-1-zhuning0077@gmail.com>
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

