Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 50E211FB02C
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2020 14:19:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726526AbgFPMSZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Jun 2020 08:18:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728696AbgFPMRW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Jun 2020 08:17:22 -0400
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3193EC08C5C2
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2020 05:17:21 -0700 (PDT)
Received: by mail-pg1-x533.google.com with SMTP id s135so8475651pgs.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jun 2020 05:17:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7Ofrbcs6powOIpLHVgUb+s2Y6gSuASwM2PMR2S8GC/8=;
        b=K9GBZe8gNJO/W9HkRUGhLRRenI1uWzOY2VyMcVpQ1qpJoy8XFBU/gN9hplt+ZBwytp
         Vl3FWj2Xe9Qotiq1GXQaR+lcoBmvS22iEhQgk3IrWMNrUgSANF8Ny/DCdDURZNZ9npKx
         4DV78QiAjJ4kj6JhAdhMLmVrC5LAM7JTlQYnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7Ofrbcs6powOIpLHVgUb+s2Y6gSuASwM2PMR2S8GC/8=;
        b=CZBiBieXL27LgpSoyd967fb5HJ4WevVulq9GTUZeZOizVJc+RDugaxlF87DDH1n0aY
         Cyco6Des6RThToKoTy5zSEfkijKqzs0Yn/K1nGqc8AyHMXKiv8gMKIa1E7I6RSc6iEba
         W+/lZ7hmmP7Sur9hV0xUWL6k3XVzBhXUb5GS4Y+Ly82ztejxxr+uke+MIMRfiHIgvNIe
         /VTQxIpg14KqUKHiVSZlfIGK7WgkgWj5bH+val60rciVzN4XnDJV2tu1TJfO7ew0wDkk
         5cCnnAVDm1ZXo74fdvcqF725aCvYVsIbiOGPe70I/BVAVMFWUJ5VdDhPf7JLHOEtLbze
         7E/g==
X-Gm-Message-State: AOAM530DgN9Mheej99sxXQNHRUW0ZhIyiuFbZiGmb4YAsxc2qHccq7PE
        glarLJQ8aGsQoRF+xgMj4Q5XDmmX8fo=
X-Google-Smtp-Source: ABdhPJx2/ZThHxd7TkGqkTWZKS35Q9MJ8+CEueo+tZWGJimgB1gnkJ2ft0DeXHEgR4K/xPkFcWleWw==
X-Received: by 2002:a62:7dd1:: with SMTP id y200mr1787559pfc.184.1592309839077;
        Tue, 16 Jun 2020 05:17:19 -0700 (PDT)
Received: from shiro.work (p1285116-ipngn200805sizuokaden.shizuoka.ocn.ne.jp. [114.171.61.116])
        by smtp.googlemail.com with ESMTPSA id f23sm2360703pja.8.2020.06.16.05.17.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jun 2020 05:17:18 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v4 04/12] dt-bindings: vendor-prefixes: Add thingy.jp prefix
Date:   Tue, 16 Jun 2020 21:15:17 +0900
Message-Id: <20200616121525.1409790-5-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0.rc0
In-Reply-To: <20200616121525.1409790-1-daniel@0x0f.com>
References: <20200612130032.3905240-2-daniel@0x0f.com>
 <20200616121525.1409790-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add prefix for thingy.jp

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 53cd050668e6..c209b3dc7ecc 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1038,6 +1038,8 @@ patternProperties:
     description: Three Five Corp
   "^thine,.*":
     description: THine Electronics, Inc.
+  "^thingyjp,.*":
+    description: thingy.jp
   "^ti,.*":
     description: Texas Instruments
   "^tianma,.*":
-- 
2.27.0.rc0

