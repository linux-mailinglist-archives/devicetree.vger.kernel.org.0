Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 36DAB33B301
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 13:45:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229660AbhCOMow (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 08:44:52 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:33301 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229683AbhCOMo3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 08:44:29 -0400
Received: from mail-wr1-f69.google.com ([209.85.221.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lLmaC-0004lz-AS
        for devicetree@vger.kernel.org; Mon, 15 Mar 2021 12:44:28 +0000
Received: by mail-wr1-f69.google.com with SMTP id 75so14943572wrl.3
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 05:44:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=K55WVGEcr2NtXAH2/+DotVRx0ugfUG8p/PCXhummaMs=;
        b=M+ldw4DW2ZyqPc2q8AsbgwfJ8qk03AB/3UT/CbxiUz8leChpwRoyCc7OdvkPL7FUT+
         8U+M1LiRhmJ5oTpbOzV+AqIisndb2lP0C0qdCPzf5/6DxwcaimXGl5U+Yr7ep8aLUQMw
         nGW96as5ysDYTicsSh5EF5wKQJk8NuvjrcAmM5g6LiGklcBLn97ClTVUanVWewfS0dhG
         lCtHJ2FqKeRyCbivMBz7IkZN1WdrbvEafzFl4+xi0+kLHRGZMUBUULQYCxV5fmIQrKCq
         JSjLLBUxJLCAF/ZfTvvCoQqfbvBx6r4K1WvGLRBVpMiXYmXs2gpOc1c5zdrRzQk1qUUn
         +rxA==
X-Gm-Message-State: AOAM531qnPCxZXpw/vyxsqQNZSjlBvZy9WsgfSAuktDWBcoqjyaV0n2u
        1LBiNoKTpyTsaDop8qPzZ2cLD+uV4FPEkYTMGoHhg4kBNyPsaGRQwqTpAlI79JY/AvMKgSPKsjO
        bnU+TPLg/5BDqpls28Zj3OkfVXZO18sHsKRsOJVQ=
X-Received: by 2002:adf:ebc9:: with SMTP id v9mr27751598wrn.387.1615812267731;
        Mon, 15 Mar 2021 05:44:27 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwnZzb8xO/UsdGDNLgTt0P/y/hiIF+IirXL3g9IZJNZzI0Zgt9dCY2bkqyWYo1PThNrecz3TQ==
X-Received: by 2002:adf:ebc9:: with SMTP id v9mr27751581wrn.387.1615812267583;
        Mon, 15 Mar 2021 05:44:27 -0700 (PDT)
Received: from localhost.localdomain (adsl-84-226-167-205.adslplus.ch. [84.226.167.205])
        by smtp.gmail.com with ESMTPSA id n4sm12311444wmq.40.2021.03.15.05.44.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Mar 2021 05:44:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/3] dt-bindings: add vendor prefix for Siliconfile Technologies lnc.
Date:   Mon, 15 Mar 2021 13:44:21 +0100
Message-Id: <20210315124423.115039-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for Siliconfile Technologies lnc.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 11d2362f0f35..89d6b0d2cb25 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1026,6 +1026,8 @@ patternProperties:
     description: Silergy Corp.
   "^silex-insight,.*":
     description: Silex Insight
+  "^siliconfile,.*":
+    description: Siliconfile Technologies lnc.
   "^siliconmitus,.*":
     description: Silicon Mitus, Inc.
   "^simtek,.*":
-- 
2.25.1

