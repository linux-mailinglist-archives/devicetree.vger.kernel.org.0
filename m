Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6A46713677
	for <lists+devicetree@lfdr.de>; Sat, 27 May 2023 22:51:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229486AbjE0UvA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 27 May 2023 16:51:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229472AbjE0Uu6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 27 May 2023 16:50:58 -0400
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12283B4
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:50:58 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id 006d021491bc7-555486c9196so189494eaf.0
        for <devicetree@vger.kernel.org>; Sat, 27 May 2023 13:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685220657; x=1687812657;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LVHAM2nj34AJGmXfPHhgYz7QijWKM/Pqv4RS++GB2i8=;
        b=LGyVcAPpD/i3PUC0ZFIiZi4NMOnjXmQR9/yW243XgnG2BFwmfNnVuFGDVqpsUQNEvf
         gcA+T84zWTfCy13XtYVXxsMOfObN4K2RFYMZ9ZKLP1gbUIgS+MgZ9FxYGIf3o/PihRx/
         iRb8Q2kokkd7M14RyohzDBzmPQG0GT71xawfw6RrtEw2W1aDLDy0W63S3bqeh1MfUCij
         6zm5k4Bkos9VhZQtbpsxwt8/PuGymaltBJlkQ91PPmrwSxgm4gug9rqDGAr8j03qjxjI
         HCVrEbC0PP7uOcMyXu1bU+hRI9LXiJFKAH519m7gjNAg8pv8636jLtDoEw8ALfW+9DdF
         5dng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685220657; x=1687812657;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LVHAM2nj34AJGmXfPHhgYz7QijWKM/Pqv4RS++GB2i8=;
        b=EML8ZxkwjdiQ+jiOOs5GviMCL1/DUFwsMV2rVE+m5ILnIlltIuNgZ43C9paozezVQz
         Ky3XtL4mEmdARQt9D8HRoJwkGnWWg4uxiDSgjsOiUF3jo+EyteHyBEkFP/7YNPvVYfEH
         rbptD3PkipesN13gFJruXFemPiM9HZTJMmQoWbv6/0IeINemOGugoWWbKIuBHmQ5wAYb
         Q21UtY5xYTcZk0x5abau0PNNyz/3bKXax+hylUE4kbCT4bO/ylbW61yZ7KnqJGYv9MOe
         2peFl4H3+BxeyW66H3V8IQKS0PYMSZvCkUEXVfVcOVuTG2/5PhERZb1ErMthIu/WJUFr
         rWCA==
X-Gm-Message-State: AC+VfDypiG2oGdS/2LBDc69DWo2BerbWfVAnZNCaeJMDyU3D8Us4l91L
        V3sORpOsDf3oiJlTfL8q6e7xzLXJE/E=
X-Google-Smtp-Source: ACHHUZ4Lvhi8H2vVfTK/BLwOmz1Q/+O0v9ThqZqLdQyB6mnpa+L9SyE9LpuPqwXw6LUkq2zF7mo/jw==
X-Received: by 2002:a4a:d24c:0:b0:547:50b4:9236 with SMTP id e12-20020a4ad24c000000b0054750b49236mr2480761oos.0.1685220657184;
        Sat, 27 May 2023 13:50:57 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:e287:a09b:c5f3:bedf])
        by smtp.gmail.com with ESMTPSA id v131-20020aca6189000000b003941c3b9f0dsm3106458oib.41.2023.05.27.13.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 May 2023 13:50:56 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: pfuze100.yaml: Add an entry for interrupts
Date:   Sat, 27 May 2023 17:50:46 -0300
Message-Id: <20230527205048.418360-1-festevam@gmail.com>
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

The PFUZE100 PMIC has an interrupt pin that can be connected to
the host SoC. Describe it in the dt-bindings to avoid warnings like:

imx6q-zii-rdu2.dtb: pmic@8: 'interrupt-parent', 'interrupts' do not match any of the regexes: 'pinctrl-[0-9]+'
From schema: Documentation/devicetree/bindings/regulator/pfuze100.yaml

Signed-off-by: Fabio Estevam <festevam@denx.de>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v1:
- None. Only collected Conor's Reviewed-by tag.

 Documentation/devicetree/bindings/regulator/pfuze100.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/pfuze100.yaml b/Documentation/devicetree/bindings/regulator/pfuze100.yaml
index 67a30b23b92c..e384e4953f0a 100644
--- a/Documentation/devicetree/bindings/regulator/pfuze100.yaml
+++ b/Documentation/devicetree/bindings/regulator/pfuze100.yaml
@@ -36,6 +36,9 @@ properties:
   reg:
     maxItems: 1
 
+  interrupts:
+    maxItems: 1
+
   fsl,pfuze-support-disable-sw:
     $ref: /schemas/types.yaml#/definitions/flag
     description: |
-- 
2.34.1

