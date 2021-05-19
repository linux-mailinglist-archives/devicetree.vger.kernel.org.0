Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25601389380
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 18:18:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355174AbhESQUO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 12:20:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38640 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355168AbhESQUN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 12:20:13 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7A536C0613ED
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 09:18:53 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id x8so14635040wrq.9
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 09:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IK1c2c887ldeHFDtRUuiF3rS58kRAch51Vir1cevvPg=;
        b=K6MirXc9/5vCvyi9STHJmzXDt9RpokogkyAfdnSgHs3AAJAzvHmZE7QZ8j8QxVyboH
         S/tMTUceHg3f/UXIY96B8GEV6s2mKGqJK9mEM55xS1k6QBRI79c9KD5Jltx73rFn0EBe
         0OIa3f+eqhmcx3uc09oSBD0nx9TwBWgPsUCmMV6I5g4aTkwdqxfYPkCdhrzxb5elLnZB
         uU5ETdguVMaxxwrtJTyf32yfAL7ch2NWgDDatUtPBTurFNufFoPIvykqCsulhgS8tU/A
         jNo+3PdmvyI6y2W37zitaXu7RuwJ4+2VETSnqsL9chlDob9/14B3S4e4/hjA8EU7OIGi
         xLBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IK1c2c887ldeHFDtRUuiF3rS58kRAch51Vir1cevvPg=;
        b=DHI8xR7f1Sxs/7aAhRL02vHXfZrcnsWE406+zUNaMfJcAVtWR+ohfUWQ49uqpjxh8V
         66xUypKY8L9Tp9Bs/31oQipl6J6vDtcvL5bslLAPKX7gvgz3EO7Bt8psT7LhYqKvK1+8
         GuBW+Fcye/SOclE3x0tXs6cCyzIYprbL39X3OXnw0RidYjA+b2bLfNuJPv6M/nC2q6OT
         1bzjn++sPsC+urOonhbZCUCbseDSwfH8/dpGil0hZukyyW1WzfN1MROF6a3QTuDrJ0az
         BNt/CyVbxMLETcGtuJ16R0B3Ec2jZuNhOXRTMvY9gIzThanJ9FUUQ0ILoNQXJQwPrMOk
         NMIw==
X-Gm-Message-State: AOAM5326OdKKgyfIm7+XEvum+dw/cQ2iMZ84B8Sjufv65PO9ZfqXgY5n
        w9dnZrcWTZrjwzuYBcDDcM+XMw==
X-Google-Smtp-Source: ABdhPJy4iXKMJIhEbcGAigZSDUzS3P3TsrklSNmpMykJhQ0xtLB1Ke5727ARrMPIKqi47rGUH6fe+A==
X-Received: by 2002:adf:dc8a:: with SMTP id r10mr11005109wrj.119.1621441131973;
        Wed, 19 May 2021 09:18:51 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id m9sm5638547wmq.40.2021.05.19.09.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 09:18:51 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 2/3] dt-bindings: arm: mediatek: mmsys: add MT8365 SoC binding
Date:   Wed, 19 May 2021 18:18:45 +0200
Message-Id: <20210519161847.3747352-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210519161847.3747352-1-fparent@baylibre.com>
References: <20210519161847.3747352-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the MMSYS binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
index a419da33e10b..2d4ff0ce387b 100644
--- a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mmsys.yaml
@@ -29,6 +29,7 @@ properties:
               - mediatek,mt8167-mmsys
               - mediatek,mt8173-mmsys
               - mediatek,mt8183-mmsys
+              - mediatek,mt8365-mmsys
           - const: syscon
       - items:
           - const: mediatek,mt7623-mmsys
-- 
2.31.1

