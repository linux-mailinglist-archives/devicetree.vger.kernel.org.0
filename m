Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9760854E858
	for <lists+devicetree@lfdr.de>; Thu, 16 Jun 2022 19:08:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377428AbiFPRIG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jun 2022 13:08:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1377416AbiFPRIF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Jun 2022 13:08:05 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFB3339172
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 10:08:03 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-fe023ab520so2602109fac.10
        for <devicetree@vger.kernel.org>; Thu, 16 Jun 2022 10:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WLFIs5jlb1+CBbxlN1+EJI7/dZq71zrZHH813Hz9bSY=;
        b=FRYKwxdmi/412pSSFMSd1qAHzowkGOTGM+ebZe2LEZatxgp1lC2iYVmAKVKGpVdIqe
         VmL3G8JlYK577mkRCyDoqFJx9kpZvGUymB2foeZ9Vx0Q5Bb6f0g86WrYewGGLpragi6c
         Ny5slSQvlmEwWrNBuB2Kb2DlD1uwzoFceuRKs5nyy4Iajt7oSMJRKKuP3hItPZirr4KA
         lczvtODLX0fhBn0Vjd1DJvlb7wo3mYTSegpUSkR7vu8T8TdYmvUAkzQ+mkv03xfQRv1u
         hsr5kXUTndeuorWqHKTIWXqjPtSPAloEwixUyuGoy6bM99spwIQRbTsO9Gcir96ucU4K
         9XEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WLFIs5jlb1+CBbxlN1+EJI7/dZq71zrZHH813Hz9bSY=;
        b=is6KFJz8xH1W5L5ewaMJ9BdCwIJ3/hz6qHtHxFzCczTj+XBTvrcLAQDvO8QoZTyRbM
         /joTr1PIdlW9bv/cuz/SlGywwxWUT8phzdiZoKFB6wQIhsllDbemGdk+bAkw/gybFpZb
         axB2jQMb5ZEj0gpZivnWlJm6EmKF+muARQmSQv+qRdxrflWZ7GdggC6mH8rDTQVfoYdV
         XC11s6wmxOYReDKsRRNmDXBWX7CnWtrPS9WkrX79yQ048bUxQ0y0vO+0oqRv3y2DSj2C
         TwUjU6n5+/dogJL1yHL301lxOqD5RmcqDzFBVwPyvhl8dYxj+bi2ZjdW4MS/prZOjR7p
         yP1Q==
X-Gm-Message-State: AJIora/SpR79ryFtoORA73UkEE7GJphEYKyIFAuGBA+FjsG+guQHZpwX
        JiBtzxEZOxXEsf9q9NCuiH8=
X-Google-Smtp-Source: AGRyM1vM+2/pxN4a/1TX9NL2isms9n2VTSnLyPV4XRTg0y+bJm0RQ+WsxA9NJXIKE3Sim9Wdi3yksQ==
X-Received: by 2002:a05:6870:a193:b0:100:fc8b:b3bd with SMTP id a19-20020a056870a19300b00100fc8bb3bdmr3335281oaf.128.1655399282923;
        Thu, 16 Jun 2022 10:08:02 -0700 (PDT)
Received: from localhost.localdomain ([2804:431:d77f:bce2:2f5f:681b:e2ba:cfee])
        by smtp.gmail.com with ESMTPSA id v47-20020a4a8c72000000b0041b9125cef6sm1232638ooj.46.2022.06.16.10.08.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 10:08:02 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        francesco.dolcini@toradex.com, marcel.ziswiler@toradex.com,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] dt-bindings: arm: fsl: Decrease the line length
Date:   Thu, 16 Jun 2022 14:08:00 -0300
Message-Id: <20220616170800.3218914-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
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

Decrease the line length of the toradex colibri boards to fix the
following build warning:

./Documentation/devicetree/bindings/arm/fsl.yaml:684:111: [warning]
line too long (111 > 110 characters) (line-length)

The description already contains the SoM name, do not repeat it
in every single line.

Fixes: bb0fa1533715 ("dt-bindings: arm: fsl: correct 1g vs. 1gb in toradex,colibri-imx6ull-*")
Reported-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Do not repeat the SoM name in every line as the description already contains
the name (Rob).

 .../devicetree/bindings/arm/fsl.yaml          | 32 +++++++++----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7e5cd4fe5809..4bc638b485fe 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -670,30 +670,30 @@ properties:
       - description: i.MX6ULL Boards with Toradex Colibri iMX6ULL Modules
         items:
           - enum:
-              - toradex,colibri-imx6ull-aster     # Colibri iMX6ULL Module on Aster Carrier Board
-              - toradex,colibri-imx6ull-eval      # Colibri iMX6ULL Module on Colibri Evaluation Board V3
-              - toradex,colibri-imx6ull-iris      # Colibri iMX6ULL Module on Iris Carrier Board
-              - toradex,colibri-imx6ull-iris-v2   # Colibri iMX6ULL Module on Iris V2 Carrier Board
+              - toradex,colibri-imx6ull-aster     # Aster Carrier Board
+              - toradex,colibri-imx6ull-eval      # Colibri Evaluation Board V3
+              - toradex,colibri-imx6ull-iris      # Iris Carrier Board
+              - toradex,colibri-imx6ull-iris-v2   # Iris V2 Carrier Board
           - const: toradex,colibri-imx6ull        # Colibri iMX6ULL Module
           - const: fsl,imx6ull
 
       - description: i.MX6ULL Boards with Toradex Colibri iMX6ULL 1GB (eMMC) Module
         items:
           - enum:
-              - toradex,colibri-imx6ull-emmc-aster     # Colibri iMX6ULL 1GB (eMMC) on Aster Carrier Board
-              - toradex,colibri-imx6ull-emmc-eval      # Colibri iMX6ULL 1GB (eMMC) on Colibri Evaluation B. V3
-              - toradex,colibri-imx6ull-emmc-iris      # Colibri iMX6ULL 1GB (eMMC) on Iris Carrier Board
-              - toradex,colibri-imx6ull-emmc-iris-v2   # Colibri iMX6ULL 1GB (eMMC) on Iris V2 Carrier Board
+              - toradex,colibri-imx6ull-emmc-aster     # Aster Carrier Board
+              - toradex,colibri-imx6ull-emmc-eval      # Colibri Evaluation B. V3
+              - toradex,colibri-imx6ull-emmc-iris      # Iris Carrier Board
+              - toradex,colibri-imx6ull-emmc-iris-v2   # Iris V2 Carrier Board
           - const: toradex,colibri-imx6ull-emmc        # Colibri iMX6ULL 1GB (eMMC) Module
           - const: fsl,imx6ull
 
       - description: i.MX6ULL Boards with Toradex Colibri iMX6ULL Wi-Fi / BT Modules
         items:
           - enum:
-              - toradex,colibri-imx6ull-wifi-eval     # Colibri iMX6ULL Wi-Fi / BT M. on Colibri Eval. B. V3
-              - toradex,colibri-imx6ull-wifi-aster    # Colibri iMX6ULL Wi-Fi / BT M. on Aster Carrier Board
-              - toradex,colibri-imx6ull-wifi-iris     # Colibri iMX6ULL Wi-Fi / BT M. on Iris Carrier Board
-              - toradex,colibri-imx6ull-wifi-iris-v2  # Colibri iMX6ULL Wi-Fi / BT M. on Iris V2 Carrier Board
+              - toradex,colibri-imx6ull-wifi-eval     # Colibri Eval. B. V3
+              - toradex,colibri-imx6ull-wifi-aster    # Aster Carrier Board
+              - toradex,colibri-imx6ull-wifi-iris     # Iris Carrier Board
+              - toradex,colibri-imx6ull-wifi-iris-v2  # Iris V2 Carrier Board
           - const: toradex,colibri-imx6ull-wifi       # Colibri iMX6ULL Wi-Fi / BT Module
           - const: fsl,imx6ull
 
@@ -791,10 +791,10 @@ properties:
       - description: i.MX7D Boards with Toradex Colibri i.MX7D Module
         items:
           - enum:
-              - toradex,colibri-imx7d-aster   # Colibri iMX7D Module on Aster Carrier Board
-              - toradex,colibri-imx7d-eval-v3 # Colibri iMX7D Module on Colibri Evaluation Board V3
-              - toradex,colibri-imx7d-iris    # Colibri iMX7D Module on Iris Carrier Board
-              - toradex,colibri-imx7d-iris-v2 # Colibri iMX7D Module on Iris Carrier Board V2
+              - toradex,colibri-imx7d-aster   # Aster Carrier Board
+              - toradex,colibri-imx7d-eval-v3 # Colibri Evaluation Board V3
+              - toradex,colibri-imx7d-iris    # Iris Carrier Board
+              - toradex,colibri-imx7d-iris-v2 # Iris Carrier Board V2
           - const: toradex,colibri-imx7d
           - const: fsl,imx7d
 
-- 
2.25.1

