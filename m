Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6159079D680
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 18:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236801AbjILQiq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 12:38:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236920AbjILQiq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 12:38:46 -0400
Received: from mail-oo1-xc30.google.com (mail-oo1-xc30.google.com [IPv6:2607:f8b0:4864:20::c30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF3901703
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 09:38:41 -0700 (PDT)
Received: by mail-oo1-xc30.google.com with SMTP id 006d021491bc7-578a49f7e57so71800eaf.1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 09:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694536721; x=1695141521; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=a3xRu+YNAaBODdgaeXRLq5j+CcEvpc1L8H9RF8ulaQo=;
        b=NA+kInnTtJMPNfh9U6ft5NYsE4udsA3hSn+79VAHcQVBgGkyd4Iq9sVs+5EjsZTqmf
         W8EN8jnDeEEjt7wBP2+o7TyFeGO+RoLBF2Ud96ULasl1YPZ1D7d+RZ8xmfmi4Y+gEjJA
         iUczviZRsaNFc8pl/M4neufdSg893+NaLA8S97DgQIYTgJhu/5lDwLynYT1BGEAqDLKN
         SRPYIhYAJtD83eoFuLeo48zpHcNw4rapw69GABqhRFAoCVpAKFW6Q+mjLkuHV77UvnlQ
         P2AneCzWvi2v7FSzi5BtRv+4SrD1NaAJT8xM08Omtbru8fAaBYG+OlM4Xop4xuE4e1vc
         T+FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694536721; x=1695141521;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a3xRu+YNAaBODdgaeXRLq5j+CcEvpc1L8H9RF8ulaQo=;
        b=kIIJZ+sdsuigTDUVAMOsgEoklh3Iuvk+p5nGE3KogtMWJmpMyDss9W4aImRKhb1+9t
         paiJT9+S/281baJfryzZEQePGpxmyvb0A1sbYjXUaQthcWNF9LtGSJHOMPLmWJ64FNv7
         i5kEd8D2QT8iDKPnDDViE8ta6Zpc9LOPYOfyYJjgj0jLX6WdblG9M4Ub7290ZIk7Z/i0
         zq4can+JEfAuUenIJMw2M003ANYqdIL3cFQLmI5OPcpXwDpHuVMWkOcVDuzdY6WZm1KI
         PlAlPgAGlUSO4Ig/2L+OPC9ich2Op7J1jfsSfLK6OXQShUnMPH0mPjZx7mweUuHuDvAA
         YsBQ==
X-Gm-Message-State: AOJu0YzJncSJGFhryn+zyGwWEQAoc57a+tnEXcAnZGTILB1CDaJlfuu5
        FQmhNLSPDYsaKK/0ItcOMPo=
X-Google-Smtp-Source: AGHT+IHEyDy54+csWJetTPUbx8mAityAJ+V61r74welMAlw+I8u8beU6kLbhkV9IcEAcSiFnyzfwhQ==
X-Received: by 2002:a05:6820:80e:b0:576:8c96:15a2 with SMTP id bg14-20020a056820080e00b005768c9615a2mr186436oob.1.1694536720871;
        Tue, 12 Sep 2023 09:38:40 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:676a:5a77:75a8:efc8])
        by smtp.gmail.com with ESMTPSA id v4-20020a4aad84000000b00565fbd0d4c0sm4012426oom.28.2023.09.12.09.38.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Sep 2023 09:38:40 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        alexander.stein@ew.tq-group.com, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 1/3] dt-bindings: imx8-jpeg: Add clocks entries
Date:   Tue, 12 Sep 2023 13:38:08 -0300
Message-Id: <20230912163810.1750488-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Changes since v2:
- Remove clock-names. (Mirela)

 .../devicetree/bindings/media/nxp,imx8-jpeg.yaml         | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
index 3d9d1db37040..3383a275c94a 100644
--- a/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
+++ b/Documentation/devicetree/bindings/media/nxp,imx8-jpeg.yaml
@@ -31,6 +31,9 @@ properties:
   reg:
     maxItems: 1
 
+  clocks:
+    maxItems: 2
+
   interrupts:
     description: |
       There are 4 slots available in the IP, which the driver may use
@@ -49,6 +52,7 @@ properties:
 required:
   - compatible
   - reg
+  - clocks
   - interrupts
   - power-domains
 
@@ -56,12 +60,15 @@ additionalProperties: false
 
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
         interrupts = <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
                      <GIC_SPI 310 IRQ_TYPE_LEVEL_HIGH>,
                      <GIC_SPI 311 IRQ_TYPE_LEVEL_HIGH>,
@@ -76,6 +83,8 @@ examples:
     jpegenc: jpegenc@58450000 {
         compatible = "nxp,imx8qm-jpgenc", "nxp,imx8qxp-jpgenc";
         reg = <0x58450000 0x00050000 >;
+        clocks = <&img_jpeg_enc_lpcg IMX_LPCG_CLK_0>,
+                 <&img_jpeg__lpcg IMX_LPCG_CLK_4>;
         interrupts = <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>,
                      <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
                      <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.34.1

