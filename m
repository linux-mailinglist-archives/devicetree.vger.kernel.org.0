Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 375BD41B82F
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 22:12:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242612AbhI1UOL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 16:14:11 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:56209 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242609AbhI1UOL (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 28 Sep 2021 16:14:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1632859951;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=3BRf/BoVQQhGwaFtZ+fvHSqHQV1racwbJknBUgVnbCI=;
        b=iIvjH+8BY5CyJ6X18PJYSeP4P9phZks1k1e36fmhWpieeyhwQ6M53MzIvnjB0JuYzl0aKA
        cYgRiXkIMe5W14pm01Omxi1/T1OmF0CE+yhEyvBAHNWgpu8Ia7bayv2ps87tWKEkhzj5pj
        t1owmcPjl02WJtKyyvRLw434H9ZO/GA=
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com
 [209.85.210.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-456-7bl4Ymy1Nm-JXPWZJh8GYA-1; Tue, 28 Sep 2021 16:12:29 -0400
X-MC-Unique: 7bl4Ymy1Nm-JXPWZJh8GYA-1
Received: by mail-ot1-f70.google.com with SMTP id h15-20020a056830034f00b00547597245c2so19823253ote.19
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 13:12:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3BRf/BoVQQhGwaFtZ+fvHSqHQV1racwbJknBUgVnbCI=;
        b=UBrHQ10TXugR6alBnGiDNymnKnJaV4T9MEVlh8hHcnyG/jQI0zRP+S57GlHwkplOJX
         FB28GeI5IGQ3oledw4YDQifI51YVUgdGchTfCEMhrGw5MH+lmQ5oKLojPCx0KrYPqb/v
         oUPw7p64+m+egFTupazPOEiFZAeGAEXNxSUsjDcNlmgvIgq+b5pc7oRVxnY2nA4UmeNM
         tEZrkFad4OA0GSIiBojWIEKKPS7IGW2/188ZKkC74eRiXwnFXNUWuYAYXSedgFu54WB1
         a8wS0w7QyZiAIUL9laIAN/r10Mrk4P7kt9dSjiRmPF5+DZ8G3o0MWj7rr+cxXB+sWrbC
         3+xQ==
X-Gm-Message-State: AOAM531YyH8qY/amYUT/OPVmTtspGTmHC9WQ+n8vS3A1UUwQVCnkWP41
        HFt1/BkeDK1Htyq4kVrA0rQFKLTIk7lLWTEraxwsH476mEgbJZcORajdoaFmmSX39aaZUOIYrIv
        rSVD1cv7PzzRRhmHRlNXn/A==
X-Received: by 2002:a9d:7751:: with SMTP id t17mr6823667otl.276.1632859949030;
        Tue, 28 Sep 2021 13:12:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4Aj9jK75RLkBh3LSiNl3n/TgPSKPaDUroxVKiDxiaDWymphftid12DXqezUM3wGC8T8cNCQ==
X-Received: by 2002:a9d:7751:: with SMTP id t17mr6823656otl.276.1632859948835;
        Tue, 28 Sep 2021 13:12:28 -0700 (PDT)
Received: from localhost.localdomain.com (075-142-250-213.res.spectrum.com. [75.142.250.213])
        by smtp.gmail.com with ESMTPSA id z83sm30895oiz.41.2021.09.28.13.12.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 13:12:28 -0700 (PDT)
From:   trix@redhat.com
To:     robh+dt@kernel.org, frowand.list@gmail.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Tom Rix <trix@redhat.com>
Subject: [PATCH] of: remove duplicate declaration of of_iomap()
Date:   Tue, 28 Sep 2021 13:12:14 -0700
Message-Id: <20210928201214.294737-1-trix@redhat.com>
X-Mailer: git-send-email 2.26.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Tom Rix <trix@redhat.com>

A ranconfig produces this linker error
irq-al-fic.c:252: undefined reference to `of_iomap'

The declaration of of_iomap() is dependent on OF
The definition of of_iomap() is dependent on OF_ADDRESS
These should match.  There are duplicate declarations
of of_iomap(), remove of_iomap() and the
of_address_to_resource() duplicate.

Signed-off-by: Tom Rix <trix@redhat.com>
---
 include/linux/of_address.h | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/include/linux/of_address.h b/include/linux/of_address.h
index 45598dbec269..a190996b4b0b 100644
--- a/include/linux/of_address.h
+++ b/include/linux/of_address.h
@@ -122,13 +122,7 @@ static inline bool of_dma_is_coherent(struct device_node *np)
 {
 	return false;
 }
-#endif /* CONFIG_OF_ADDRESS */
 
-#ifdef CONFIG_OF
-extern int of_address_to_resource(struct device_node *dev, int index,
-				  struct resource *r);
-void __iomem *of_iomap(struct device_node *node, int index);
-#else
 static inline int of_address_to_resource(struct device_node *dev, int index,
 					 struct resource *r)
 {
@@ -139,7 +133,7 @@ static inline void __iomem *of_iomap(struct device_node *device, int index)
 {
 	return NULL;
 }
-#endif
+#endif /* CONFIG_OF_ADDRESS */
 #define of_range_parser_init of_pci_range_parser_init
 
 static inline const __be32 *of_get_address(struct device_node *dev, int index,
-- 
2.26.3

