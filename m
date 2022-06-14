Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77EBE54B7AF
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 19:32:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245360AbiFNRcV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 13:32:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238962AbiFNRcL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 13:32:11 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 25CB140929
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 10:32:10 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id s124so12517737oia.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 10:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ovRjKKYQwFEC2mL1j23FXnc3itwrdH24QXCSn8p4Qxo=;
        b=KcwfIp6L2pVmQITRpyVzpylryrfP8xQYnapk3mgURIKWHRdggukQggeD1Fbmf7iHP/
         2Q3/OIMicMMXQBBPLQQ313nQESQhl3QMlgbPfxlz+u4Q4foUGu4dRnFwpqzCwSbl0GKW
         XhnqkvW9Vrc9WuuGFPcFqvoQbJL2qwnqqnKiDC8i9XRK7cC1Z0EkZKmGT44tpTrBeLMK
         twlIXGloytO/GSM/VgBsRAbb5y1D52hFxfoNd7CrtxmQIJZcKTOP7I3yuXOVKjzHLPop
         pxm045OflkM11m8BTtLtfZzh41S8KEiJxi3QXXK6424D1vNnBOuynZr1h+uI5vfjADI1
         1cZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ovRjKKYQwFEC2mL1j23FXnc3itwrdH24QXCSn8p4Qxo=;
        b=DFAj7uPIdKZ1ZgFwAVwqEM0F3NjgLXhVRowBPuk0C42BpB2C3EKMk/UX2/UXGDmT+7
         fOZfBfRUY4/oap5t5BimQgD60z/zemhOSEa0GVynIy2O7Z232VComn73hRX9FYzvTu65
         38YRGOdMkjloIAXzvyh9WDJw2gafX8m6/TtjMK5owWcb+ewVV8VBiO7b5m+kAONmwGFe
         eizQKEMe/nJvY9mObldGbzrTv40Q++bbx5mNeeM7qwNioVfHptJkyLXj6RrngvTIZvns
         7KpAItAfDimBBCN5eZWyWfXZvtdKZsxD95H0z/XjY3+a0CkH0HThrfNsDFhQfNq442Bw
         RCJg==
X-Gm-Message-State: AOAM532zgxzVTN3h1S2bL7VRuY6tSDlO1DfIr1np7D+au16uaM8MIRld
        ndZDZ9Y0XMSSv3G0nnrIwJI=
X-Google-Smtp-Source: ABdhPJyVAbD6sPxFJtHtrKKdLpz9nQiliQDKL6rXAAvaMyOOblO6AKgirTNxGacxTx/IyciKx7u3/A==
X-Received: by 2002:a05:6808:23d5:b0:32e:c7f0:800e with SMTP id bq21-20020a05680823d500b0032ec7f0800emr2832708oib.91.1655227929487;
        Tue, 14 Jun 2022 10:32:09 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:26e7:df6a:4b67:4fd5])
        by smtp.gmail.com with ESMTPSA id ds41-20020a0568705b2900b000f8851d777bsm5749738oab.39.2022.06.14.10.32.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jun 2022 10:32:08 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, marcel.ziswiler@toradex.com,
        francesco.dolcini@toradex.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: arm: fsl: Decrease the line length
Date:   Tue, 14 Jun 2022 14:32:06 -0300
Message-Id: <20220614173206.2885817-1-festevam@gmail.com>
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

Decrease the line length of the toradex,colibri-imx6ull-emmc boards
to fix the following build warning:

./Documentation/devicetree/bindings/arm/fsl.yaml:684:111: [warning]
line too long (111 > 110 characters) (line-length)

Fixes: bb0fa1533715 ("dt-bindings: arm: fsl: correct 1g vs. 1gb in toradex,colibri-imx6ull-*")
Reported-by: Rob Herring <robh+dt@kernel.org>
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7e5cd4fe5809..1d757af4d05c 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -680,11 +680,11 @@ properties:
       - description: i.MX6ULL Boards with Toradex Colibri iMX6ULL 1GB (eMMC) Module
         items:
           - enum:
-              - toradex,colibri-imx6ull-emmc-aster     # Colibri iMX6ULL 1GB (eMMC) on Aster Carrier Board
-              - toradex,colibri-imx6ull-emmc-eval      # Colibri iMX6ULL 1GB (eMMC) on Colibri Evaluation B. V3
-              - toradex,colibri-imx6ull-emmc-iris      # Colibri iMX6ULL 1GB (eMMC) on Iris Carrier Board
-              - toradex,colibri-imx6ull-emmc-iris-v2   # Colibri iMX6ULL 1GB (eMMC) on Iris V2 Carrier Board
-          - const: toradex,colibri-imx6ull-emmc        # Colibri iMX6ULL 1GB (eMMC) Module
+              - toradex,colibri-imx6ull-emmc-aster    # Colibri iMX6ULL 1GB (eMMC) on Aster Carrier Board
+              - toradex,colibri-imx6ull-emmc-eval     # Colibri iMX6ULL 1GB (eMMC) on Colibri Evaluation B. V3
+              - toradex,colibri-imx6ull-emmc-iris     # Colibri iMX6ULL 1GB (eMMC) on Iris Carrier Board
+              - toradex,colibri-imx6ull-emmc-iris-v2  # Colibri iMX6ULL 1GB (eMMC) on Iris V2 Carrier Board
+          - const: toradex,colibri-imx6ull-emmc       # Colibri iMX6ULL 1GB (eMMC) Module
           - const: fsl,imx6ull
 
       - description: i.MX6ULL Boards with Toradex Colibri iMX6ULL Wi-Fi / BT Modules
-- 
2.25.1

