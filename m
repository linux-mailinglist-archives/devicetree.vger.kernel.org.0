Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9104B580EDB
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 10:25:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238242AbiGZIZl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 04:25:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238386AbiGZIZk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 04:25:40 -0400
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E7D52DEE
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:25:39 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id b133so12631657pfb.6
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 01:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=y1MIWnHCM+GAst9qr5uT5FWNOFAzzBmNsrQ4ccKB8sg=;
        b=hCAMyRX5bwda3HXY2lwU+EyjnGLlHgZuasVDr5bzLtOmT92o+1ZiT80LTsgMOvs+vs
         mN6ge2XpEOKH632dXkeQ0tk1tUB8/31iZAnEblxpLRuEZSy71aD/HU1CxuMIfvylCzXv
         FCDkObDuVWq5PeBij4QUGg+Z0gASZST6Xsvrh4T409gkuDMSXlWEvvnc/G8a4ofNR7LJ
         FRGmFtYRQt0eL2qVh9hslZcfL+r/VSsQMBf2RB19g5unRdFViVyZAuNbr1lm8nmyZ1zM
         aZZFRma1hhxZCOW8JXa1J/CgAeXXkIWp/y83NiTLK87R468kiPd0O+npRtWwMrfCxbFA
         wfRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=y1MIWnHCM+GAst9qr5uT5FWNOFAzzBmNsrQ4ccKB8sg=;
        b=N4E0j4ScxNbSRu0WjF0p6ROdcx54aWd+HS6Ieh5kbNpQ8KZDCy6bXZYeOBnR9rxpp3
         hbEnBTttC81AqMiLeCyGeUH54wXXzpF05XzSs0QesC4gUOloejD5kdLhY2s0VQswlvJa
         9F0l8qXXUeViWJIo2ziJw98XDqduzg2DmaU4jxxR518f4GrLKhnIo/peP2ilVScsP9AS
         yz7tCQxaZBPDCbaLEfnmXt/PUbmUKfrBuCr+Pnyx8AHAFElIZ3v4fX19d2HKbY1LglRI
         rO2Ea5XbjCeYs+g9Kgm+ELZ59QwJ4lRbL0lAv4+1vaqL0E+snyOmeuWqsZsENXuzgeM8
         muNg==
X-Gm-Message-State: AJIora/fyysmcfiiLY8wSoTbpfZIKi0oy4Ao+nl8+Anvbq2MflTyiNcJ
        pLUea89JG1mm4nYjC0r9SGs=
X-Google-Smtp-Source: AGRyM1ssGcNsC1CNCZvW1Q+AUnTwTpJEiPoGQ8vm7stODtUF5C2WfXk/WXWB3akQBRNsSkhTPvIKoA==
X-Received: by 2002:a63:1a09:0:b0:415:fa9a:ae57 with SMTP id a9-20020a631a09000000b00415fa9aae57mr13725105pga.181.1658823938419;
        Tue, 26 Jul 2022 01:25:38 -0700 (PDT)
Received: from a-VirtualBox.. ([116.233.75.140])
        by smtp.gmail.com with ESMTPSA id q3-20020a170902a3c300b0016c6a6d8967sm10783991plb.83.2022.07.26.01.25.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 01:25:37 -0700 (PDT)
From:   Zhu Ning <zhuning0077@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        broonie@kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
        ckeepax@opensource.cirrus.com, Zhu Ning <zhuning0077@gmail.com>,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: [PATCH v2 2/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
Date:   Tue, 26 Jul 2022 16:25:06 +0800
Message-Id: <20220726082505.125267-2-zhuning0077@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220726082505.125267-1-zhuning0077@gmail.com>
References: <20220726082505.125267-1-zhuning0077@gmail.com>
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

