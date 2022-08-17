Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02CB1596A13
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 09:11:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238766AbiHQHK7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 03:10:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238756AbiHQHK6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 03:10:58 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08AD15A801
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 00:10:55 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id x9so12700542ljj.13
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 00:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc;
        bh=q7tkxx+DUUraSTlhCRRT4SEypAZAFfcWmABbJjMeSto=;
        b=w+IjjjnaWbr4KDTiqOKCh2dte4F/4plsBTePdKB/zGCW24OvuFhgSHD1GuzJXicma4
         CRoZCeDAYR3+OP2+y3TPOQ7DMYKvmPxHsjFeiRxbQnAY3rjTx+60yqRsIJSIjE19kOFt
         vVPpU/nKG/X93S9/gwQInV+GYcl/gM/f3bos9ykkt3Y2+3MTmp53q+6+AnFtc8CEId3V
         YGttiaaTQzg4W3G6GZLJWwV4Lj2F3gX3ual30SQA+YKnsN2/U47xj2QrpzTc3IVxBl3+
         OpEhs7nOZ/6UIhzbaFhNEYMmcARytUC0oDVEacXyVcbINvFGwoOsz7HCwHgh0iOaaBHa
         Mo+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc;
        bh=q7tkxx+DUUraSTlhCRRT4SEypAZAFfcWmABbJjMeSto=;
        b=147a09Zibit2MrAG0KhBWHPf24a088Wav0ExgLp06eq3dVIOTZqXlFzVJxsJWUogoD
         ZV8rqQtxauk30Ht0pwsU885dNARGFXweOvtmEjz/Z2tLRA3COCe+/jY2EX+wDhP5hEy/
         yWDnfs7T+yMCXve+9B+ZBsT04lnZRXVLDi4Mma6+UuS3Bgo88xG47rhryn9G1I9LKvcy
         HKQWUNynrejrq/ephGjnPVmaD3q7jIJLLxNw/LuY6UBdSpkRy3kMjl/eh5snmo4ICzws
         nb+jrADZ76TlNL/EW+s2pBY/GmRaRC6Hc1z3fOQM7W23ZXPOzLeZR1x374yGJx8bI7p0
         qiKA==
X-Gm-Message-State: ACgBeo2CKxc2fHBQRkbz/luCqI/1LW2eDIQkDoGOupkNtJlQVBx5fdaN
        D7D9uB7ryZ523P4s7MGGppo4Gw==
X-Google-Smtp-Source: AA6agR7BR/z/SF/R4XqAD0ZR6LO6EpJAoXYZP64KXpPy68DbhG30cNDfVks4FyJFtI3rmjKhaANx4Q==
X-Received: by 2002:a2e:a593:0:b0:25f:e6ac:c28e with SMTP id m19-20020a2ea593000000b0025fe6acc28emr7955177ljp.485.1660720254197;
        Wed, 17 Aug 2022 00:10:54 -0700 (PDT)
Received: from krzk-bin.. (d15l54h48cw7vbh-qr4-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1b1c:14b7:109b:ed76])
        by smtp.gmail.com with ESMTPSA id z18-20020ac25df2000000b0048ad3d1a058sm1595034lfq.52.2022.08.17.00.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 00:10:52 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] dt-bindings: memory-controllers: fsl,imx8m-ddrc: restrict opp-table to objects
Date:   Wed, 17 Aug 2022 10:10:50 +0300
Message-Id: <20220817071050.26149-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Simple 'opp-table:true' accepts a boolean property as opp-table, so
restrict it to object to properly enfoerce real OPP table nodes.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v1:
1. Correct typo in subject.
---
 .../devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml b/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
index 445e46feda69..fc2e7de10331 100644
--- a/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/fsl/imx8m-ddrc.yaml
@@ -47,7 +47,8 @@ properties:
       - const: apb
 
   operating-points-v2: true
-  opp-table: true
+  opp-table:
+    type: object
 
 required:
   - reg
-- 
2.34.1

