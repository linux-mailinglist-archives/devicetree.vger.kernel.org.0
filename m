Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C1B7621AAB
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 18:31:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234528AbiKHRbi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 12:31:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233901AbiKHRbg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 12:31:36 -0500
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 624F122BED
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 09:31:36 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id m6so14452904pfb.0
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 09:31:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4RrXg9IuNsuwKt/X/O3Io2Z6HaHHOsDQ/lXq1npKJCE=;
        b=wabhf3rRvveDvsQRQMsvYrADhvfdZX9wH11+cSYzn6KOv8RT3OBg6jbanOZlFsemFp
         0+q/tFIMSTBs66l98EjiozWmni8cVDg3iIihLmaSXBkGQzEVHATxFvWozUawEOABRLNV
         Q/rt1/QX8AdmzmneNZlxAq+kGT0SN6wqDoM81Ok7zTvwUIEWJHYp+rUXORhFCnj7AAOl
         lAuUqVfpsS6WzLKZHhoXVIgs2/Zy2uILSi8cyw+RLrfHt8wpFnqDdKhqC9Wg0lQziujl
         Oj0ZPkhG8lPd4Naf8Yi2wb/v5TpXWnNk9TNrYcu4Vra44qDKiBAkZ8VQg1mudwXLFzIH
         Em8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4RrXg9IuNsuwKt/X/O3Io2Z6HaHHOsDQ/lXq1npKJCE=;
        b=fdVXTIFPWKNmCiF5sWG57wm8eBqeMGO5h/JvldKkxBHsb2wyGxyAZ2oese5Hw+WWoZ
         76fEhP78DcCY8mFpIKxljx5ncwHRg5jrEzr6xemR3/d1rfc9RvquG/AF7fdli+2xil/2
         f72SWl2bRn6HVO34jBwq5OZywcFsV9P3XVpfZYoNGZxRMYjgRZin5Ai1U4wHy4ItVoZV
         DzoNNWTpk8qIz7BxfaKiCnG4vrUiLr8uHpzWiyKCwmMqs6oiSEBPGwy5mMmGSpC8WotZ
         EBoVW46zWIJdyI4ML8FwdGy12TaoUkZvAmu3ZdxgYmeIyw1CgtXO444fh5iW6bjtA2Sk
         jSPw==
X-Gm-Message-State: ACrzQf3/s5bHcjfj7syHVm2Hg8+TR07PYEmNE6DG8ItZtBugwBqiDBcQ
        pCEDR89P0ZOefcf7Hva+fFr29w==
X-Google-Smtp-Source: AMsMyM53repo2Tbl8y4m3P4jbvP5c5dh+RsRfIWxrARxXqfiTP6PIqRzouI1pEzVJZmwcTAyhJUcsA==
X-Received: by 2002:a63:5761:0:b0:46e:b96b:e76 with SMTP id h33-20020a635761000000b0046eb96b0e76mr49714664pgm.534.1667928695856;
        Tue, 08 Nov 2022 09:31:35 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:c2c:74c3:d3ed:4dfa])
        by smtp.gmail.com with ESMTPSA id h3-20020a63df43000000b0046fd180640asm6018517pgj.24.2022.11.08.09.31.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Nov 2022 09:31:35 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 2/4] dt-bindings: vendor-prefixes: Document Jadard
Date:   Tue,  8 Nov 2022 23:01:18 +0530
Message-Id: <20221108173120.618312-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108173120.618312-1-jagan@edgeble.ai>
References: <20221108173120.618312-1-jagan@edgeble.ai>
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

Jadard Technology Inc. manufactures and distributes chips
from Shenzhen.

Add vendor prefix for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes for v4, v3, v2:
- none

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 08264594a99f..c601f5438b02 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -645,6 +645,8 @@ patternProperties:
     description: ITian Corporation
   "^iwave,.*":
     description: iWave Systems Technologies Pvt. Ltd.
+  "^jadard,.*":
+    description: Jadard Technology Inc.
   "^jdi,.*":
     description: Japan Display Inc.
   "^jedec,.*":
-- 
2.25.1

