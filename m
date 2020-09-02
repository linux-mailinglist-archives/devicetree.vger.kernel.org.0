Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CC8125B6A6
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 00:48:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727019AbgIBWsp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 18:48:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726742AbgIBWsV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Sep 2020 18:48:21 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAD27C061244
        for <devicetree@vger.kernel.org>; Wed,  2 Sep 2020 15:48:19 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id a65so898432wme.5
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 15:48:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kRjzeLTTvVC/pVywMMSpoqYXBJa0RCC6WlbXQw/96II=;
        b=mLrY3jTP/5wNY8i0NagH3fWy6lgHvpgKHYpBuGGMdbwENbv1YBF9yOBXt4v3K4+5EK
         1Hmt5HCy9KKOK4VP36X6UMOb3L1o73zL9v7fhKaq9FGDvs/cjxC0eAZtiC0WCZBZ6I4H
         khHkoOsE/jTlxOIP/AFwsakeRFIOIDaYIcVsY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kRjzeLTTvVC/pVywMMSpoqYXBJa0RCC6WlbXQw/96II=;
        b=a1bEgIQAh/QWQxtZ9TcKYoTDdU2A6qA685JQBXIHYSFn9Pe3wFoSV3+jVeaAI3fSor
         n0hUmGGUBE8kz4YQesrFCsELaKTmdpvMcn0aVzdavfTEfH9WlQS6JWYzW0xux0gzDhD2
         wCvSIJCM6RZZU3T611kRjGN1uo14b/pc/7omdM61539sLULFFJ2UbaIz+XdG0hYnIQ/s
         0OOvapCDZo8J8AAzDyihzQNAfNHRRJLmzfL6ZFZwdXTMe6PToIF5jFu42vqayPDAP9p+
         LwYFP+gJiFtO4s2FIIulfbvniOvkYHRdVHm84tzYP34by13DHhTYsN0FJtu6c8o+LEPe
         6NEA==
X-Gm-Message-State: AOAM5338zdmTM5BiBAAGJIDqGBjQBubV9wTwpXL6zooyGbDW+DNldqhb
        GoOLrAvoYKh3hp2adJRh7vtjKA==
X-Google-Smtp-Source: ABdhPJzLymc0ZD48sjZ2JI71lePzK3yN5KdMnrHePIvBbh0HexVtldeyJXMn/U5OqkLgKlG3R8eQFQ==
X-Received: by 2002:a7b:cbd4:: with SMTP id n20mr342473wmi.105.1599086898285;
        Wed, 02 Sep 2020 15:48:18 -0700 (PDT)
Received: from tfiga.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id m125sm1557568wme.35.2020.09.02.15.48.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 15:48:17 -0700 (PDT)
From:   Tomasz Figa <tfiga@chromium.org>
To:     linux-media@vger.kernel.org
Cc:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Hao He <hao.he@bitland.com.cn>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, drinkcat@chromium.org,
        Xingyu Wu <wuxy@bitland.com.cn>, dongchun.zhu@mediatek.com,
        sj.huang@mediatek.com, darfur_liu@gcoreinc.com, hao.he7@gmail.com,
        Tomasz Figa <tfiga@chromium.org>
Subject: [PATCH v4 1/4] dt-bindings: Add a vendor prefix for Galaxycore Inc.
Date:   Wed,  2 Sep 2020 22:48:10 +0000
Message-Id: <20200902224813.14283-2-tfiga@chromium.org>
X-Mailer: git-send-email 2.28.0.402.g5ffc5be6b7-goog
In-Reply-To: <20200902224813.14283-1-tfiga@chromium.org>
References: <20200902224813.14283-1-tfiga@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Hao He <hao.he@bitland.com.cn>

Add a vendor prefix for Galaxycore Inc. as a prerequisite for adding
bindings for a new imaging sensor.

Signed-off-by: Hao He <hao.he@bitland.com.cn>
Signed-off-by: Xingyu Wu <wuxy@bitland.com.cn>
Signed-off-by: Tomasz Figa <tfiga@chromium.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 450630092296..07cd3b69b512 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -385,6 +385,8 @@ patternProperties:
     description: Freescale Semiconductor
   "^fujitsu,.*":
     description: Fujitsu Ltd.
+  "^galaxycore,.*":
+    description: GalaxyCore, Inc.
   "^gardena,.*":
     description: GARDENA GmbH
   "^gateworks,.*":
-- 
2.28.0.402.g5ffc5be6b7-goog

