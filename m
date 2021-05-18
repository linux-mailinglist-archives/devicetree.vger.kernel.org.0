Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25533387762
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 13:23:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231803AbhERLYe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 May 2021 07:24:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233702AbhERLYU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 May 2021 07:24:20 -0400
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72362C061760
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 04:23:01 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id f19-20020a05600c1553b02901794fafcfefso675871wmg.2
        for <devicetree@vger.kernel.org>; Tue, 18 May 2021 04:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oaLFELdmsSuj6jGUpLjdC3C6Wd7IWhp+KmWoppj+Ots=;
        b=VKSM0kO2iOln9CQUfzNDIsaTFKxbenOaoUvS60FBMhhB5nYExLkbpuY82iCC+ohbQX
         F7cHamO4ub1tlhjaLWntbt8A677LWvQxZWIWTWuKA2x6L9yFn+IFCd43RLTbl4mW3RhI
         whmFtFv3pH0pvFuKOKFL8HveAo1pQPXXjIB1/x54gENVkwDGlwCPT4H94WN3/B4dm0V0
         U8iT7kCQ+m1pxzgvAYMYqIVbvl/I5vB22MaaAJnGZdczQh01NYNY6deiijmc6zJNcgcb
         4fx66hXYMQzIfDyZ9mVjCtIh7T/bpJkidlDjcaiFvK1kVRsDxzK59s29Y7sfTYt7fpcu
         AObw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oaLFELdmsSuj6jGUpLjdC3C6Wd7IWhp+KmWoppj+Ots=;
        b=e/LrJl3Sb5BQ3Tt7gzqwC5yF9acbBfuauE1lh+yO+v2et5jrF+0SuVMuTkvPVnYgSf
         B+EkP8S3yS/iPsaFpPTPZctyPZMlzSfw7yWuMuTfPERSnwAQ6VhPS9Li8IF/W9DOstB7
         vgZxCozq1RD0XgRjBQMxoN/9z4DOro/coPWE7bMUjHX9R2HbAFZicOyMfvmGFBKZWyH/
         NO5lZ2gHHrU437ezHR2xCHssLCcKloulxRzFnXIkKpWnMoPnq2xXY7Gu56eoOJUOGZru
         NxLy4hNNvUVUCGcrJR5Z1T7Y8Va1dfDExaRfliCbPpu7hqD3DD50++V/Xy1sY/A1f4aI
         tSQw==
X-Gm-Message-State: AOAM5327Xmw0xwo8NEnB13ixehm72uCNdNwGREjPkx66/bh6wcN5GY6y
        aDia7TM7x21ZCpjLSVlLxlOpfQ==
X-Google-Smtp-Source: ABdhPJzl2Utkm0LkpJMg42RFFaMV0xPUsR/PlhE1Hxe69g5OBNLG/XNR5HueBpJgHnFR0O56vHEiXg==
X-Received: by 2002:a05:600c:4a23:: with SMTP id c35mr4408392wmp.130.1621336980047;
        Tue, 18 May 2021 04:23:00 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id y20sm2881337wmi.0.2021.05.18.04.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 May 2021 04:22:59 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Matt Mackall <mpm@selenic.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Sean Wang <sean.wang@mediatek.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: rng: mediatek: add mt8365 to mtk rng binding
Date:   Tue, 18 May 2021 13:22:50 +0200
Message-Id: <20210518112250.2146819-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210518112250.2146819-1-fparent@baylibre.com>
References: <20210518112250.2146819-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add RNG binding for MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/rng/mtk-rng.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/rng/mtk-rng.yaml b/Documentation/devicetree/bindings/rng/mtk-rng.yaml
index d9731f0ae47d..ccff10b27f73 100644
--- a/Documentation/devicetree/bindings/rng/mtk-rng.yaml
+++ b/Documentation/devicetree/bindings/rng/mtk-rng.yaml
@@ -20,6 +20,9 @@ properties:
       - items:
           - const: mediatek,mt7629-rng
           - const: mediatek,mt7623-rng
+      - items:
+          - const: mediatek,mt8365-rng
+          - const: mediatek,mt7623-rng
       - items:
           - const: mediatek,mt8516-rng
           - const: mediatek,mt7623-rng
-- 
2.31.1

