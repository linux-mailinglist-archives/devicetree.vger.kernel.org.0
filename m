Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA9AC617EF6
	for <lists+devicetree@lfdr.de>; Thu,  3 Nov 2022 15:12:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230231AbiKCOMX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Nov 2022 10:12:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230157AbiKCOMW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Nov 2022 10:12:22 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7643E95B8
        for <devicetree@vger.kernel.org>; Thu,  3 Nov 2022 07:12:21 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id 78so1739156pgb.13
        for <devicetree@vger.kernel.org>; Thu, 03 Nov 2022 07:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i+DkswWCfqje3A7Pi2nFIDFwXranpEUi3ZDxbiO4ucI=;
        b=XCLQYGSGscJ/vbuh8hjpoXQl6AWaK0k5L4YKeiU2qyizap5IGhMpnMRbCfNw88IR84
         K20awpNDqQBgFPJSekcXkFYee6BjjUHIH28siNpAIqad0ZAAhQEzh+3MdWw2P1zPQmrt
         nf9bHv/PEMNSswSxp7Dx/eVYUSwJ78ki0bcJwXF0O9vRBsq9TfSSfl57BnvDHkTKU9zA
         2IgIXaTNA0eY40bmAB/QsXz//BUhXH7MD3xU45l5wDvJUuMFq1bDeJyTT+Ynz+S+h/5E
         6CermzzTrvGEzrV6xxWMHczVLhkh+mbjuci42ibeI6mBoKyQZDL7M2hC3LMdF3Tv+QcA
         g84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i+DkswWCfqje3A7Pi2nFIDFwXranpEUi3ZDxbiO4ucI=;
        b=2kFZwH0z5g31n8kvPMN/BX4syWQiOW3raqY1XMo1qCCK5DAucBUmrVti92kIsq0IaN
         4VBq+y7kRN6by+48IVy58mtEhy8OgRTmUP2tXM1ZMMrdyruPvAAWkjpjdRH6E6fAGfit
         dVLutbmkm5T0T3ZebYS21y8Ar2PJuE77Ebcn0HdeWPcF8VmxPCzP3V1nJkj7qIitIvg3
         VY1tR2fymuZqJoaXpwpj6/xzEvZYEIe2F9CezDdmMppiHO4Clg3tJE3Hrs/glVl51hYd
         htqDiS5ep4vJ7Nz3vvRXADhFj6D3R591Ssg0jBg/Ds0rbBowpxlkVQ4mTzImf38LDB81
         Y/gA==
X-Gm-Message-State: ACrzQf0wjaXdXsktXBhMlOLdTDLH5ASSMmWTMUBnqemBbqcduxhwynCo
        F8YPnJS540eYIL9HG4QBsv8QYQ==
X-Google-Smtp-Source: AMsMyM5Glyn5i8I0lPKA/bbpRf5Q7b+BKnqzX3RCQvrWeT2NLiO+osrL04mE9WOe/+Whj/mpMBkTZw==
X-Received: by 2002:a63:5243:0:b0:43c:96a:8528 with SMTP id s3-20020a635243000000b0043c096a8528mr25827682pgl.47.1667484741002;
        Thu, 03 Nov 2022 07:12:21 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a809:3a79:b5a5:9718:3f91])
        by smtp.gmail.com with ESMTPSA id g4-20020a170902934400b001780a528540sm725808plp.93.2022.11.03.07.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Nov 2022 07:12:20 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/4] dt-bindings: vendor-prefixes: Document Chongzhou
Date:   Thu,  3 Nov 2022 19:41:52 +0530
Message-Id: <20221103141155.1105961-1-jagan@edgeble.ai>
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
Changes for v3, v2:
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

