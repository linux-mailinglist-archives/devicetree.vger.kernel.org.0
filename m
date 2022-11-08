Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46738621AA9
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 18:31:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234527AbiKHRbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 12:31:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34960 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234108AbiKHRbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 12:31:34 -0500
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CE8A1D0EC
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 09:31:32 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id d10so14408482pfh.6
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 09:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=72IOHn8vTUxOevqJbd/ETpT4pRNMPQp/jDGduzjTALE=;
        b=VEJ2q/r7txvFf04Pu+R7l0ULoTowiUNocRVuGrw41WQo0QGuc0t1X5QNelVK1GFGn/
         2XTXR6mk9QFZHyhfCybYonUjFDd+jI0gThOaRtfMyclbt6q+/VtmPI16OcCop3hGcuRf
         Zk9Pcq5v3Yp3V/UtDL4C1k9teCcDKCw06btt7JXvh+l17B+Co11zHOEXXVyimnHEJShm
         CjjY8ksL/PaKUl/3qOb12k9DqTKIiK04pjBeaRuyFqurXMUi/b3TBd1Gc9tNbSiZV879
         K/JnIrzwiL/+umx5pHezuu2MK/Y8R9MOgayt01P3Bl6iTNKREzeWDdXH9o548ggmB2fS
         6v4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=72IOHn8vTUxOevqJbd/ETpT4pRNMPQp/jDGduzjTALE=;
        b=Fog15Wl+eCrUTmxY3n9G/X3YOCKM4yosvZxYi7zPFeK1S2H10aKTBahe4f3PhKbuL7
         fyPoHZeG/zsax36+sBvaAbu66g+RhguxxE0BbTx1I/tjes9320uALOztnTfYw2i15JSE
         xUomudL1eIEOEsxC1wRHcfdrng+6fLZiQ3mPs4vp9Gkh/QYRXM7Uv9Na9Dg8BAP0njtK
         iCxtYiLmnbh9xlG+eK5YzOKxIwAxw+qp3Vardp+JTi8JnRjbE2G+wMvc3HQotf5esG7j
         8C/5iRegXplfjK4mIWyj85W0/eyV5w+FFeKCvG6+QYOEqa04KVzqjoDjYKUxIAuKw59p
         xSdQ==
X-Gm-Message-State: ACrzQf2Eqjcw2ruTsU6QOjAVI4V215fGjybBwrsMhyMzxryu/q7mie7n
        Xdg6DirM1a+6msipJ1+X1hyBZw==
X-Google-Smtp-Source: AMsMyM56h3FPIKoCclAH9FzFxmvrkU7agu1MEyij+PXN3hapuNyz/AsxWctUUSqR4Ub64HPaDyg8bg==
X-Received: by 2002:a63:f012:0:b0:46f:59be:2cb0 with SMTP id k18-20020a63f012000000b0046f59be2cb0mr49865184pgh.99.1667928692025;
        Tue, 08 Nov 2022 09:31:32 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:c2c:74c3:d3ed:4dfa])
        by smtp.gmail.com with ESMTPSA id h3-20020a63df43000000b0046fd180640asm6018517pgj.24.2022.11.08.09.31.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 09:31:31 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/4] dt-bindings: vendor-prefixes: Document Chongzhou
Date:   Tue,  8 Nov 2022 23:01:17 +0530
Message-Id: <20221108173120.618312-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Chongzhou is a professional is a manufacturer of LCD panels
from Shenzhen.

Add vendor prefix for it.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v4, v3, v2:
- none

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index eae3bc8a4484..08264594a99f 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -246,6 +246,8 @@ patternProperties:
     description: ChipOne
   "^chipspark,.*":
     description: ChipSPARK
+  "^chongzhou,.*":
+    description: Shenzhen Chongzhou Electronic Technology Co., Ltd
   "^chrontel,.*":
     description: Chrontel, Inc.
   "^chrp,.*":
-- 
2.25.1

