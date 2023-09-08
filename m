Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DAF0798855
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 16:12:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232491AbjIHOMt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 10:12:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238207AbjIHOMt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 10:12:49 -0400
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 734C51BF8
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 07:12:45 -0700 (PDT)
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-6bc9353be9bso300207a34.1
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 07:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694182365; x=1694787165; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HzihPKehuLLf5Ziw4aq+UFoETeZFoITfVyzhodM3aAc=;
        b=qIxACTOOO2g/Ar+rhVCej3bBJAcbe7VRCPFH288UJM2/9LLi+XwWDohBUyw074k204
         wPgO9ESBI8eFqb83lQRzqYC+iolJr6X1Y7riSZIfg0qTkFSHC6WGk/S0rn2KbLOqknx7
         yTBWkqbcMqwziuj7cdN6TrmSwdIG7DMpdmEAjjBvluEoh78A0UGy0pHYd1dz2m5xW4u/
         9s0RzySFQw9lPVRM5MbDJnQbKvukQZSOrQBSAZjRWNQ10Jt1WkxY7j68Dz4k5zkkvPkL
         uFB8lh1Vx2l32iXC/kxbsr1EQ240Xh7z/x+MIBFaKeMX2csVCdLubPfK/XY7WqQuvFf7
         qabg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694182365; x=1694787165;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HzihPKehuLLf5Ziw4aq+UFoETeZFoITfVyzhodM3aAc=;
        b=JK2GZWYenU9Tkq9UxrJTRzbj0VbLYwU9RRatZ9h9nlCUC51yvlTxR2EjhRA/oGBfLF
         ImrZGYHLeoUksJAbtkKlz6AKmfQKX5uxqiWRlqxUYMaKomViyjc5tELCVF1LgEmS8z1D
         Jo8dK9cDsEN4GLPNFr2r6gqYC5GbMIFMwDXNdIC/Tsg25oPSFk7cbfj/L58dRORQMTtF
         RXWsP7Uhs6VwQn6o8NwQHEWLFMw4uos51+PRXpYAHb2EvSPZtqPyBh+ky15yEIphYlhc
         MH1+suPxFGNFSMZ0FS5arKsuOp2wkBr84dpisafy6Tri/raPCvhTjJGttuFdE2ZY3jh+
         pYDg==
X-Gm-Message-State: AOJu0YwrO7T39zz3fY3AGSiYdkDqqK1KPzydpo6CGNl5Vj8lf/1zulV+
        6xU0r5WHobbkqu7fiDHIayA=
X-Google-Smtp-Source: AGHT+IH/4YUXTxqb14Z3oJcctpWGuiGYHIZ8JQ+3wgJNhgv/UNfvz4hwBIvAhMixaKq74bxxEWb9GQ==
X-Received: by 2002:a05:6830:468d:b0:6bf:5010:9d35 with SMTP id ay13-20020a056830468d00b006bf50109d35mr2403560otb.3.1694182364765;
        Fri, 08 Sep 2023 07:12:44 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:71e9:644b:bd6f:e558])
        by smtp.gmail.com with ESMTPSA id y22-20020a056830109600b006b74bea76c0sm731833oto.47.2023.09.08.07.12.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 07:12:44 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] dt-bindings: imx8-jpeg: Add clocks entries
Date:   Fri,  8 Sep 2023 11:12:37 -0300
Message-Id: <20230908141238.642398-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The JPEG decoder/encoder present in iMX8QXP and iMX8QM SoCs need
the PER and IPG clocks to be functional, so add the clock entries.

This also fixes the following schema warning: 

imx8qm-apalis-eval.dtb: jpegdec@58400000: 'assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/media/nxp,imx8-jpeg.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- None

 .../bindings/media/nxp,imx8-jpeg.yaml           | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
index 3d9d1db37040..7899e17aff3a 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
@@ -31,6 +31,14 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    maxItems: 2
+
+  clock-names:
+    items:
+      - const: per
+      - const: ipg
+
   interrupts:
     description: |
       There are 4 slots available in the IP, which the driver may use
@@ -49,6 +57,8 @@ properties:
 required:
   - compatible
   - reg
+  - clocks
+  - clock-names
   - interrupts
   - power-domains
 
@@ -56,12 +66,16 @@ additionalProperties: false
 
 examples:
   - |
+    #include <dt-bindings/clock/imx8-lpcg.h>
     #include <dt-bindings/interrupt-controller/arm-gic.h>
     #include <dt-bindings/firmware/imx/rsrc.h>
 
     jpegdec: jpegdec@58400000 {
         compatible = "nxp,imx8qxp-jpgdec";
         reg = <0x58400000 0x00050000 >;
+        clocks = <&img_jpeg_dec_lpcg IMX_LPCG_CLK_0>,
+                 <&img_jpeg_dec_lpcg IMX_LPCG_CLK_4>;
+        clock-names = "per", "ipg";
         interrupts = <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
                      <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>,
                      <GIC_SPI 311 IRQ_TYPE_LEVEL_HIGH>,
@@ -76,6 +90,9 @@ examples:
     jpegenc: jpegenc@58450000 {
         compatible = "nxp,imx8qm-jpgenc", "nxp,imx8qxp-jpgenc";
         reg = <0x58450000 0x00050000 >;
+        clocks = <&img_jpeg_enc_lpcg IMX_LPCG_CLK_0>,
+                 <&img_jpeg__lpcg IMX_LPCG_CLK_4>;
+        clock-names = "per", "ipg";
         interrupts = <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>,
                      <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
                      <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.34.1

