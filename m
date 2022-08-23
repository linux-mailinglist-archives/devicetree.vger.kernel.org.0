Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B08159EC9E
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 21:44:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232645AbiHWTnT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 15:43:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232756AbiHWTnD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 15:43:03 -0400
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46D2D1AF32
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:43:28 -0700 (PDT)
Received: by mail-pj1-x102c.google.com with SMTP id c13-20020a17090a4d0d00b001fb6921b42aso2368845pjg.2
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 11:43:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=/Gk8idZu6xfew/ZPKgs8Tkfx2JJE7Z7PYuO6QkuQZzo=;
        b=RmmPL1zNHh5iJvZEQxgCTunhFTNJBWKTToEEK0HRP3yM34CslkUGd3eTfsSKpEzbj8
         vKDIbMD1QT4brpQp4Rj1baYxn7w3fRPYWaadrfRiubLoBYiko1933WprYDsmXl+7qi2q
         RThz80Cny7+lYjJO2b0YSdHuT6CXsvUR5JjtGznWK1ArfHjAFvbBG1IoLOKyYXypfAkR
         EFXnR8vcpp7C8sCxQXCrzQHVHM8RZgoM+FVJluvCDzIXcKcS7YfEzy6+Ob9jyA/fiBFk
         vEi+iKGaIcCizfd+hbuPO7hqLaW5tOZLdpDlXKlfIZNbR5saIOCDMqvCxEFBcIll/Z0d
         ziMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=/Gk8idZu6xfew/ZPKgs8Tkfx2JJE7Z7PYuO6QkuQZzo=;
        b=6PBkR3JvqKiG6A11tiR8ST2YXyz9YHgfL1ycd9aYHhtFr6m7IJRN7OR96JFmj3icWa
         hXMmboTRb0xC5wAMXnnyPBryoY4B99VKevQlN1MO8LYBA/6GgvC1LXrM5ISfMNEBGA3F
         BHAkKP1b8UjJKXFFdHS8Y6wkFIs+Wtb5Wr77QlMswRkd/I9MtKWLPdxdUD1ldi+mghb9
         mlD4iHwAhNiMFSCWi9chG6VGG0ujbnvSzo5FEVFmXFTLxEArs5i2PwFGeERhI1Mb1yEF
         x5lE4daBbdMllU82SRpJjkcHeVC5LLcBW1Vupnt2T0YvrVVHi6E2fAUFQ486543WlrC5
         wvag==
X-Gm-Message-State: ACgBeo1C8j4ltwEDHFL7lnf++zE+ZSYMrpGvhmqafxVUuPcgmN3SfTOJ
        j7BM3xNGYQ6rOGHVDimCLIvgZ3IZBsVrenNUJE8=
X-Google-Smtp-Source: AA6agR69/cFaxSVfrkIRGoMXSCUut4VtkLPcZfaeq5nWxr/ST+uOSEsLuO1HqkuEs0629kneofftBQ==
X-Received: by 2002:a17:90b:514:b0:1f5:59b2:fceb with SMTP id r20-20020a17090b051400b001f559b2fcebmr4551737pjz.82.1661280207491;
        Tue, 23 Aug 2022 11:43:27 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.55])
        by smtp.gmail.com with ESMTPSA id b187-20020a62cfc4000000b0053641e66825sm7767647pfg.173.2022.08.23.11.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 11:43:27 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/4] dt-bindings: vendor-prefixes: Document Chongzhou
Date:   Wed, 24 Aug 2022 00:12:39 +0530
Message-Id: <20220823184242.3554472-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Chongzhou is a professional is a manufacturer of LCD panels
from Shenzhen.

Add vendor prefix for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2f0151e9f6be..e8ee5084cb89 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -244,6 +244,8 @@ patternProperties:
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

