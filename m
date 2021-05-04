Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E698C3729D2
	for <lists+devicetree@lfdr.de>; Tue,  4 May 2021 14:07:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230149AbhEDMIn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 May 2021 08:08:43 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:40996 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbhEDMIm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 May 2021 08:08:42 -0400
Received: from mail-qt1-f197.google.com ([209.85.160.197])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1ldtq7-0008SX-99
        for devicetree@vger.kernel.org; Tue, 04 May 2021 12:07:47 +0000
Received: by mail-qt1-f197.google.com with SMTP id c12-20020ac8660c0000b02901cca95615b9so661802qtp.13
        for <devicetree@vger.kernel.org>; Tue, 04 May 2021 05:07:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UVesYaENPQnmH0Y+0cgUhUAMs63SA+oD/fSsjdC26ig=;
        b=OfKuC3uVQ5SE1I3+zEbGhYL5Qra0flQWlxvhHBYQjTxOcYQ0mzUYYw4BfyqLTnch8W
         x66jKKOF7xBZqmRb1RH0MDqyGmLOMANYaA7qqqF49sbQ5iYbinci+PZi+W2tw5tYKYCz
         rGREfkPVv+nbf3v+ovCYX7ZoAWUpw/lYt69vGLe+1XMoK3R1Bm1QEruMykHusDFAEqxv
         FGqqWFaA+PgcX9zK9+Wr4VmJgTtdKRC3Dw/nELlsqLnkbBr/nbz+t4QG9wWsqyQrArps
         tvB8vEyNqiRCUDC1hMFGtrFYc66VRLGBsLPXHzMk0dJodIxB/38MCt6W4QYKXEcvNtYc
         0lIg==
X-Gm-Message-State: AOAM533PgfYfyjW3A0AerkKArRxinNR9a7+1UlGmdmW81XInMxNwAlOo
        iKaEascxPxz0sP7B4pqM4mHqdqi8rdgdnnf3y3bpME6cIfnBw0L9ssLCWViT1HjL3zaZ8jSL8V4
        Tym5B2EMn9zdxeW//oJQUoTwdWKs+J5eXF6sbNfM=
X-Received: by 2002:ac8:4d92:: with SMTP id a18mr22604002qtw.312.1620130065895;
        Tue, 04 May 2021 05:07:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxoYrnnQOO1oFrRDt4NmqosElKRk+sv3Q4DZYT7DYboiQ2X0BbNl4S/vdfqvGbVcXiuckPC/A==
X-Received: by 2002:ac8:4d92:: with SMTP id a18mr22603979qtw.312.1620130065684;
        Tue, 04 May 2021 05:07:45 -0700 (PDT)
Received: from localhost.localdomain ([45.237.49.5])
        by smtp.gmail.com with ESMTPSA id d68sm10805112qkf.93.2021.05.04.05.07.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 May 2021 05:07:44 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: add vendor prefix for Insignal Ltd
Date:   Tue,  4 May 2021 08:07:42 -0400
Message-Id: <20210504120742.12922-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for Insignal Ltd (http://www.insignal.co.kr).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b868cefc7c55..92fa427d2a80 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -533,6 +533,8 @@ patternProperties:
     description: Innolux Corporation
   "^inside-secure,.*":
     description: INSIDE Secure
+  "^insignal,.*":
+    description: Insignal Ltd.
   "^inspur,.*":
     description: Inspur Corporation
   "^intel,.*":
-- 
2.25.1

