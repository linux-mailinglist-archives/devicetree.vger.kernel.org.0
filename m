Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 42F742FD878
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 19:43:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726379AbhATSLi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 13:11:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404227AbhATSKa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 13:10:30 -0500
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BEA3C0613D3
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 10:09:32 -0800 (PST)
Received: by mail-oo1-xc2f.google.com with SMTP id i18so5997290ooh.5
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 10:09:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7K9KBn9bqB04jrZILJlEhKRz8nOBafHD9qg+6ZogXcY=;
        b=Y05L323FDoV6AKTTz392NPub0X8DK+iYUHda1bZLzF/BArGroWw1wNZ3WUQuOIwbQ3
         nenqM5F2urm6eukQ8yCS88NiWyU3gcSCnkLPJnzjAL3HBni+fvUnP/GD4kXaGt/Nw22f
         v218FCXEm9INpFhKzseGOH/LoX86THTAGGRg4e/GXiFV15m7c9ttbjI8oL5YvkEBE97R
         tSEVGcOckszxiBd2aAJSoMA+n2BKCUS3GfuxEHveO4EL5rxX446Nd0NMqStkqiNpnx+o
         rRRZCHUfglWaHjglGMQF3ghqvKEUYWIJj0eilB9QakQpFwz7H0ycDbddYONqyuMQlEHC
         c7/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7K9KBn9bqB04jrZILJlEhKRz8nOBafHD9qg+6ZogXcY=;
        b=ZTGaNVBG29XkKy1jSVGjkm8wnlteN2gI7nSne4gJsQtPD9tue6SbdoIkuNDiuDpK7z
         64cl5ShAtpSTaDF0Yu6jZJP7/J1xWffujyGikHNRedpbHHbcvKX1KWPSxmdsTYKQD9te
         CDjFMuyfuU9XU9NUhEliRbnFn6atEwLcybc7xWe4rb2TK7E93HNY/4dIYmeJ1UcivizV
         iVGzl5i4pFSpSTNLawmpeeLKKVTuKhzPdnl9aQr/BCy93/3qGLQM4Af6MHvuuhtuAhGQ
         lFvCSWQMnQcD0JqHiXbc/bMyAp3mjy8Uw+9KDx6hubQtKVROkn0eCN9P3RAtKIa3pGNS
         iYXA==
X-Gm-Message-State: AOAM530kLvkrrqv5GoTrhvWnPZMVl2IBDB49uy3TMGSrX17vINiBjOj2
        AR3MeMutXjKg9gp+wU6m+ae4n+xbL60VtQ==
X-Google-Smtp-Source: ABdhPJwg/06sM/oK9/QGoc/MFPdAr2NH9zCbF5vyGBQIfPrV63QgbluXPkmyF/waaMwusJjN2+VdTw==
X-Received: by 2002:a4a:9f47:: with SMTP id d7mr6980105ool.23.1611166171359;
        Wed, 20 Jan 2021 10:09:31 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id n124sm513578oig.33.2021.01.20.10.09.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 10:09:30 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        chuanhua.lei@intel.com,
        Amireddy Mallikarjuna reddy 
        <mallikarjunax.reddy@linux.intel.com>
Cc:     dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: dma: intel-ldma: Fix $ref specifier
Date:   Wed, 20 Jan 2021 10:09:39 -0800
Message-Id: <20210120180939.1580984-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The $ref for "intel,dma-poll-cnt" is missing an '/', causing
dt_binding_check to fail. Fix this.

Fixes: afd4df85602d ("dt-bindings: dma: Add bindings for Intel LGM SoC")
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 Documentation/devicetree/bindings/dma/intel,ldma.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/intel,ldma.yaml b/Documentation/devicetree/bindings/dma/intel,ldma.yaml
index 866d4c758a7a..a5c4be783593 100644
--- a/Documentation/devicetree/bindings/dma/intel,ldma.yaml
+++ b/Documentation/devicetree/bindings/dma/intel,ldma.yaml
@@ -56,7 +56,7 @@ properties:
     maxItems: 1
 
   intel,dma-poll-cnt:
-    $ref: /schemas/types.yaml#definitions/uint32
+    $ref: /schemas/types.yaml#/definitions/uint32
     description:
       DMA descriptor polling counter is used to control the poling mechanism
       for the descriptor fetching for all channels.
-- 
2.29.2

