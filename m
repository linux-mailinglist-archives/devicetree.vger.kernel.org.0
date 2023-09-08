Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C438C79884A
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 16:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235086AbjIHOJh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 10:09:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41124 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233484AbjIHOJg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 10:09:36 -0400
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31D0213E
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 07:09:32 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-56cae50792fso252404eaf.1
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 07:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694182171; x=1694786971; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=caQzbRb6FH27SdC/OAyGyk73pRUH2oGs6GXHL2oV8fA=;
        b=Mu4MbvL8OxtngqRvX9MTnFi4MEjQ7bnXO76VrQZRIm6Ku3VHVJbHs+aq4vSS1PzMAG
         xqQWSiHdTUFx5LXWJbt3fMQF9UIoriAkg3TyZWZZ4ZCxPP/b7wV11i1QXgrWOmBqQXdR
         gWTAQN5Eyb8MG+15sEWRFeLLGk+8xnB0S9Z5WdYyZL55418MAIdjOL/TZn1uK5XugUVT
         MFdXI0bQcYM+QyKlBqshHzhR1fHsRUT3ELoH7z7CB+SZ1FN2nl8bErkXb5DAM6W07ncD
         lT1+qtA0DNlfyBqILdN0Pd0UuD1UmLkJRiZBtuDm4NV0Z0GZxTKYTj/XQt6XOPaoWKfb
         DWpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694182171; x=1694786971;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=caQzbRb6FH27SdC/OAyGyk73pRUH2oGs6GXHL2oV8fA=;
        b=OPbVE6H2gASynh4LN/a8WKp56nE5QvlEpUGBGrNSZ7YWxU53DTtE8D8+jSWcBE6FiW
         bBSu664EzDN3cqqZ0y0tFOg9tZHCL6ZQ14Cr041ywVB/3eAhG1Wxhtgkp6K5Gh46Z82c
         +e7rMtOqR3fAaYj8IdW/T7BzfIjdax98KWnMzUxYXyZ3oaXvl11hnWQyRLEdNCLCDOuG
         GU/xVKabOBWQZcWTiSI74oLOL9TBw1Tdpa5XdraruE0Sy9h+CS3bmyJ0gA7VdGy6dgea
         ydgzB/eIwPym595o8O8uR8hajnnnd79ksWPxcfMPypsLRxIXhaRQAr7uFS1D5bQ3LZvX
         BVfA==
X-Gm-Message-State: AOJu0Yz+Y+qVD5tvUzJ29FPrfHN/lRGx4hMGuIG1OgnyIe+ynxhMRWt0
        XG1rWv5aXjgtO+0oIAZ7ZqI=
X-Google-Smtp-Source: AGHT+IG6O3DuTFxAoCLa5/YeFaucbi3DrIMZuSNptCmbzcm5iiEJ6JekWqEAX0Q6Vu/4tR0BsVvCUQ==
X-Received: by 2002:a05:6820:a0e:b0:56e:94ed:c098 with SMTP id ch14-20020a0568200a0e00b0056e94edc098mr2563335oob.0.1694182171323;
        Fri, 08 Sep 2023 07:09:31 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:71e9:644b:bd6f:e558])
        by smtp.gmail.com with ESMTPSA id i10-20020a4aab0a000000b0054f85f67f31sm662669oon.46.2023.09.08.07.09.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 07:09:30 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH 1/2] dt-bindings: imx8-jpeg: Add clocks entries
Date:   Fri,  8 Sep 2023 11:08:49 -0300
Message-Id: <20230908140850.642001-1-festevam@gmail.com>
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

