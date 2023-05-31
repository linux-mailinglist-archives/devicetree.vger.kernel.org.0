Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0008718EB5
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 00:44:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231287AbjEaWo2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 18:44:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231309AbjEaWoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 18:44:24 -0400
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3BB0411F
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 15:44:23 -0700 (PDT)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-19a336df959so68557fac.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 15:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685573062; x=1688165062;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+qAm6lJtIaXrOiQsiFuIqulJfUX5jtP4++fTCzQGAkk=;
        b=LyJHWMqDhvWOMPsTtIdZ1uvjI5V6dS2TmPwdkmjOzEEbt3X/m1srt6mBrKWlG3z5dk
         0XEXTiApoQOSqV3yTF2iTxpTY+kYitItA5XMMPeKP0yntye6c32efMhM7u3eBmn1ckbo
         GXlxWUOaJCToPCP8wWe/yPzVlpwOALRQ8hnWwevC6gl3G7sWZQ4yXatiX9HGcCYtw5iI
         oJLjvTLJTy12BpNbR7wYuARCw9ZBSJFncR3pnp4afeKl9jEjgQv0gtEchE51i4r3D3RB
         EFZp4OJPkRQmUdk3FGj1vGNlN0d/H5GDwdoSdd5XMQxb82MK8+uLUjPUqmHaHGKIAH5H
         4HPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685573062; x=1688165062;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+qAm6lJtIaXrOiQsiFuIqulJfUX5jtP4++fTCzQGAkk=;
        b=MS+TqC+Dh6bEhgpEPMytsfzaFOm7Jic9i4N9oxF8FTY0zrL3V89AR+lBHbmQl5aSbT
         UXFrPn8E469Lroo5dc5IifLwBchOlDUzYmk1eoqcrE4FxEXhy4lfj/7NCC5IaG9hNClV
         ZhvKkopNkKTOMPd5zwDZ8xbWWMaXhdYz5NqvJ6UI5h7PUgDpnomtamR3z8pO7k2fgHJF
         54ZURB1Vg5EQUWbZs1+yacDZnT0S/8lFmiWVX3B8tVy1s2ZQFEBqWYGGRTaXChEgoMPM
         eK0CqNDDcdxppW4XdSClGbMnZeHHbtMOij8dDJF2bFoc1e2XMVSMg7+PCOxkYspR6zUO
         T/9w==
X-Gm-Message-State: AC+VfDxb7d9fGbw3T7f7iDRq1thWyY2ScdWJUUSftuoB7TpqY04UrhXv
        Pa1pmuIC3xrHMMwMy44Kkjo=
X-Google-Smtp-Source: ACHHUZ4YlgEh71eKJH/OcPJBJuEv/uqrRHNiRWwQWpGLWveQNdS9cmYPwBDa1k2OJ+zcw6KuYnh44A==
X-Received: by 2002:a05:6870:969e:b0:187:7a49:d227 with SMTP id o30-20020a056870969e00b001877a49d227mr3006535oaq.5.1685573062389;
        Wed, 31 May 2023 15:44:22 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:f4e7:b79e:da9b:f89a])
        by smtp.gmail.com with ESMTPSA id g3-20020a056870214300b0019e8deb387bsm1062386oae.53.2023.05.31.15.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 May 2023 15:44:21 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] dt-bindings: samsung,mipi-dsim: Use port-base reference
Date:   Wed, 31 May 2023 19:44:07 -0300
Message-Id: <20230531224407.1611952-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Use port-base reference for port@1.

This fixes the following schema warning:

imx8mp-dhcom-pdk3.dtb: dsi@32e60000: ports:port@1:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpected)
From schema: Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml

Fixes: 1f0d40d88f7a ("dt-bindings: bridge: Convert Samsung MIPI DSIM bridge to yaml")

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Only changed port@1.
- Used Documentation/devicetree/bindings/display/bridge/renesas,dsi.yaml as reference. (Thanks Marek for the suggestion!)

To reproduce the original problem against linux-next 20230531:

- Enable the mipi_dsi node on imx8mp-dhcom-som.dtsi

 &mipi_dsi {
        samsung,burst-clock-frequency = <160000000>;
        samsung,esc-clock-frequency = <10000000>;
+       status = "okay";
 
        ports {
                port@1 {

$ make CHECK_DTBS=y DT_SCHEMA_FILES=samsung,mipi-dsim.yaml freescale/imx8mp-dhcom-pdk3.dtb
  UPD     include/config/kernel.release
  LINT    Documentation/devicetree/bindings
  CHKDT   Documentation/devicetree/bindings/processed-schema.json
  SCHEMA  Documentation/devicetree/bindings/processed-schema.json
  DTC_CHK arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dtb
arch/arm64/boot/dts/freescale/imx8mp-dhcom-pdk3.dtb: dsi@32e60000: ports:port@1:endpoint: Unevaluated properties are not allowed ('data-lanes' was unexpected)
From schema: Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml

 .../devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml  | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
index 06b6c44d4641..4ed7a799ba26 100644
--- a/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
@@ -103,7 +103,8 @@ properties:
           specified.
 
       port@1:
-        $ref: /schemas/graph.yaml#/properties/port
+        $ref: /schemas/graph.yaml#/$defs/port-base
+        unevaluatedProperties: false
         description:
           DSI output port node to the panel or the next bridge
           in the chain.
-- 
2.34.1

