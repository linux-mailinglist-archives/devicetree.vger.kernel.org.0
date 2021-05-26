Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 02F07391D02
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 18:28:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233629AbhEZQ3h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 12:29:37 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:35350 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233212AbhEZQ3c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 12:29:32 -0400
Received: from mail-vs1-f71.google.com ([209.85.217.71])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1llwNz-0008Sw-QC
        for devicetree@vger.kernel.org; Wed, 26 May 2021 16:27:59 +0000
Received: by mail-vs1-f71.google.com with SMTP id d26-20020a67c49a0000b0290245e5a5d320so475075vsk.8
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 09:27:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Jv4RCq2GGtpFX/YkIBJQBGSbcUXH9Iixusyba6gZ0pY=;
        b=s+mfv3dw3gRuF22ZCGhXBjF3FmzHJVhbwk69VOjTt1oZPbH6U10Xakhtsjvo76zH1R
         Gbojd7sreQqz1s+S5u0Pb791PwGmOc3Y2ZBJo0w+IY+yZlPEmMMIlt194xISe7r0mV+Y
         QsKYZU3kHa6V1DbQqtIuG8/2sV1GDgKYO9pV2C5gDRujJ/QiJMR10F9XbwlgXfWJfX7z
         r5CiJz/wir9l0Dx/J/+5UX6XTLRUb+UQ3PZE7ccMDBgxGCq+TzGzJBPVYn7/GAHL1Pot
         ZpUkgFbwRnYSTbYipk4az4WGLWjBlzfrAtbke/2YR21Og4pis0yfZSPYPZtgri0j0bIm
         hn/g==
X-Gm-Message-State: AOAM530W/PXPQtehYiMwPPGVIBdAPZ8iamdXOZu4D57lGFVliVvwDowU
        dbyyDYDSDQBB9f6oglY1lcC69tQANCUKCXUQBVYn0s3JhMkU3qdA3w/+U2K7adgyLWMK25vjLJp
        Eq5HzO8jab0kxQZi2pPqyInmnxagHRML2Y8fq/Zs=
X-Received: by 2002:a1f:c704:: with SMTP id x4mr31787715vkf.9.1622046478121;
        Wed, 26 May 2021 09:27:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvxkeC5RXrpicrG41l+kp8biprBycXmdMTc4vtLYKtowR0ZjBj7tchNvSJOqK7MNbiF1Ja+A==
X-Received: by 2002:a1f:c704:: with SMTP id x4mr31787684vkf.9.1622046477867;
        Wed, 26 May 2021 09:27:57 -0700 (PDT)
Received: from localhost.localdomain ([45.237.48.4])
        by smtp.gmail.com with ESMTPSA id m186sm1541501vkh.56.2021.05.26.09.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 09:27:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     "Paul J. Murphy" <paul.j.murphy@intel.com>,
        Daniele Alessandrelli <daniele.alessandrelli@intel.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND PATCH] dt-bindings: arm: intel,keembay: limit the dtschema to root node
Date:   Wed, 26 May 2021 12:27:50 -0400
Message-Id: <20210526162750.135139-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

The check for the board compatible should be limited only to the root
node.  Any other nodes with such compatible are not part of this schema
and should not match.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Daniele Alessandrelli <daniele.alessandrelli@intel.com>
---

Hi Rob,

Can you take it directly?

Best regards,
Krzysztof


---
 Documentation/devicetree/bindings/arm/intel,keembay.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/intel,keembay.yaml b/Documentation/devicetree/bindings/arm/intel,keembay.yaml
index 69cd30872928..107e686ab207 100644
--- a/Documentation/devicetree/bindings/arm/intel,keembay.yaml
+++ b/Documentation/devicetree/bindings/arm/intel,keembay.yaml
@@ -11,6 +11,8 @@ maintainers:
   - Daniele Alessandrelli <daniele.alessandrelli@intel.com>
 
 properties:
+  $nodename:
+    const: '/'
   compatible:
     items:
       - enum:
-- 
2.27.0

