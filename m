Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E02905151AF
	for <lists+devicetree@lfdr.de>; Fri, 29 Apr 2022 19:21:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236421AbiD2RYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 13:24:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52806 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359695AbiD2RYb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 13:24:31 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62E9F527E8
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 10:21:12 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 88-20020a9d0ee1000000b005d0ae4e126fso5548506otj.5
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 10:21:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=N6WuL0jO9VRXWMbI6XwfJX7wIxCjCzycdaIb9uJ7Krk=;
        b=gRS8ekBWuJZBUcwbOgmCs3C6olZpWqyMCZ+RtTo/2awe7k8o9a+LRpHK99LS2bZOYE
         CATmNl/DStmt6V+iHuJgxp0JAevl1VYyGbZuYI0f+597zwSCRW0J+a2CwTuBSNa3m762
         mYJ4RnQ/jHf1dAUARHI5ocm1N5D/FE6MXP0cANsXhcfG9sPMkJ2EkXwB5c2QlqtylUxZ
         ig7zM/ruflHhNMJqCCBG3MV0bj1NljEDw0Avf0A0pmWQxH8Tf6Ad56jK6nUGgcFW+T8M
         aT8F/1GPQHXga5vGV4CHyEmaGW6U7l5yBtFJWE5adJO1HbtjoCWN7wHcfcCvWO11Lz40
         XrNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=N6WuL0jO9VRXWMbI6XwfJX7wIxCjCzycdaIb9uJ7Krk=;
        b=gYbQnjCLGD+LbD3k2YWXaT2ViN0dAu8mPCTXxFOcV5CDiHG4PpkFgpJgSEZUSyWjIX
         LIm3+mHYxbuo1Lhq9Ih5/NGA2YeSeysUsfFZ9nf/ZbISY6EjIYSz2PC4nIVCAY7iuRZi
         cMzhg0wSrxzAEX2JXCEob7N3H7dbJSHdIJoo8vd9BdSEqfokxPSxScmIN6XZcO5KvRda
         gLBstMKLk8K6tqNiUVE4JlUdSBBaXmGlpytx+Q4Xk7i/6DJyjDOswANofwyQuBq7Jmk/
         9D7PAwjrYjs2mCyDperWVSkkQYB/Jnpwgw8kLU70ri2JSzyI34IFwJ89jtRX8C+Rnmvc
         GCbQ==
X-Gm-Message-State: AOAM531BtzhoKdQU0PbPAY21lIytW6qsvRw3lTBRK6kR0ZrCFHtldj4i
        lpHLxXsM1hqDiTpSSyzso9tMScrpKow=
X-Google-Smtp-Source: ABdhPJzBepKukMC7YHbe1QL1xq3+7jHj3DoyVSlzMap4fweT9+Il8Ss53x5KM9h8z46JZOiWrUgQ6g==
X-Received: by 2002:a05:6830:2807:b0:605:5bd2:c02e with SMTP id w7-20020a056830280700b006055bd2c02emr154779otu.272.1651252871665;
        Fri, 29 Apr 2022 10:21:11 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:485:4b69:5013:a749:adb3:2bea])
        by smtp.gmail.com with ESMTPSA id u3-20020a056870d58300b000e686d1389csm3509288oao.54.2022.04.29.10.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 10:21:11 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     sam@ravnborg.org
Cc:     marex@denx.de, robh+dt@kernel.org, hs@denx.de,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v3 1/2] dt-bindings: display: simple: Add Startek KD070WVFPA043-C069A panel
Date:   Fri, 29 Apr 2022 14:20:55 -0300
Message-Id: <20220429172056.3499563-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Add Startek KD070WVFPA043-C069A 7" TFT LCD panel compatible string.

Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---
Changes since v2:
- None

 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 1eb9dd4f8f58..e190eef66872 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -294,6 +294,8 @@ properties:
       - starry,kr070pe2t
         # Starry 12.2" (1920x1200 pixels) TFT LCD panel
       - starry,kr122ea0sra
+        # Startek KD070WVFPA043-C069A 7" TFT LCD panel
+      - startek,kd070wvfpa
         # Team Source Display Technology TST043015CMHX 4.3" WQVGA TFT LCD panel
       - team-source-display,tst043015cmhx
         # Tianma Micro-electronics TM070JDHG30 7.0" WXGA TFT LCD panel
-- 
2.25.1

