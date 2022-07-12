Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 590F2571D24
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 16:43:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230327AbiGLOnn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 10:43:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233696AbiGLOnZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 10:43:25 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89CD2BD393
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 07:43:09 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id 89-20020a17090a09e200b001ef7638e536so11601169pjo.3
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 07:43:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y1MIWnHCM+GAst9qr5uT5FWNOFAzzBmNsrQ4ccKB8sg=;
        b=hxdO99r9yfyFCMgEwYQm1d/CV6Xfyd3Zj4Os/HzbADD63tkQUVmVVf/BUKU8wQAx0D
         5RMsF3wFikKT26yMdzmb2PmJ9/biP3ewiC0bTw8Yw/PHONJjAgA19yIhck53DPjd6MLZ
         gRX/Bu1XCmhxzWQuKyJ6xl2J1q3iQhs1daBFKbl9aiZ3Ts1DamW5tAfpmaFnPZkw7/iB
         XwBIbZAj9sniPllbVgBYtvVzwwgIaGFdjcJPo2VFNlYzfJ99Vl87Qxu+xHmUe+PbNS2q
         0agEP9WmXNZ1wqARJayEDYEhtmsixt74ZpRvy1WUev2S5oBOxPeUal50PDa1RaJIBhgL
         qyMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y1MIWnHCM+GAst9qr5uT5FWNOFAzzBmNsrQ4ccKB8sg=;
        b=mVGKWi8dbf5T1VQ5P6fWMrePLHYWZi69ecLycw90BhW15sBt1D++19q4Q4xSrh1oWt
         d6N1Pdbtgpj0/IPdj4OSASurUFLKKUdEkA3YdZaI1N+/087HH2htd26ZFUuaBd4uPkP2
         2iyjnU2Oo0Q2uSk8kSKKKVw7zjrJL+Jx+gUngCu+UeQmWCBt3o78+8f1SCKmNUM2PuSm
         S2b8bJa9rbBW/Cy+Hd8J/DPNmzhUKxxeMnpoWqqPd8BTyHsyCluOaiHG/Qw+jRfFxqJA
         xLo4PgATyBRDuRDMeOdIotsOlBuBbqSkm6m5x47xGZ6CXTacS6XIN93HqTxaMSvejIU+
         P4mw==
X-Gm-Message-State: AJIora9jTbvh+XIr5y7U0yxsfQXoJ93LZbgC1tBq0UP+iwbO7myG7gm0
        hKSGYHg4MKZBgWExP60u5YCv5UtjB6HYONlM
X-Google-Smtp-Source: AGRyM1uRMDszTYaHsYgtxaU+XxR+k5FcjJVbUUCzasYU6YdZfCL4lfVhqr2hetg5pdK5XfhXuRUfAQ==
X-Received: by 2002:a17:90b:4c86:b0:1f0:3255:542e with SMTP id my6-20020a17090b4c8600b001f03255542emr4816026pjb.119.1657636988815;
        Tue, 12 Jul 2022 07:43:08 -0700 (PDT)
Received: from a-VirtualBox.. ([101.224.225.209])
        by smtp.gmail.com with ESMTPSA id p14-20020a170902780e00b001620960f1dfsm6952748pll.198.2022.07.12.07.42.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jul 2022 07:43:08 -0700 (PDT)
From:   Zhu Ning <zhuning0077@gmail.com>
To:     alsa-devel@alsa-project.org
Cc:     pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
        broonie@kernel.org, devicetree@vger.kernel.org,
        Zhu Ning <zhuning0077@gmail.com>,
        David Yang <yangxiaohua@everest-semi.com>,
        Zhu Ning <zhuning@everest-semi.com>
Subject: [PATCH 2/2] dt-bindings: sound: es8326: Add dtbindings documentation
Date:   Tue, 12 Jul 2022 22:41:53 +0800
Message-Id: <20220712144153.6631-2-zhuning0077@gmail.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220712144153.6631-1-zhuning0077@gmail.com>
References: <20220712144153.6631-1-zhuning0077@gmail.com>
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

