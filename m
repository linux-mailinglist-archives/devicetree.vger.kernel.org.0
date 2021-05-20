Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3516A38AE19
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 14:24:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232127AbhETMZV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 May 2021 08:25:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232317AbhETMZP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 May 2021 08:25:15 -0400
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2005C0AE13D
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 04:21:11 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id l18-20020a1ced120000b029014c1adff1edso5175039wmh.4
        for <devicetree@vger.kernel.org>; Thu, 20 May 2021 04:21:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=higKOj1p3ok/7nI+zj6z0ZvfY1Ko1k+VC4e6gD2otWI=;
        b=g9Gf1u+Jbh6DYBX9q1rzo3cTRkf5wxluU18iBxD2nboZn34JD7rYfLeuZoHtyfYMzh
         qmvDsnXmCTLcXkhlwtqpztHAaQCf2lFm9PimRUibqmVi5VMJzEZYmu/Qo6dfE49VCGs7
         W1cpAhTo7DBJs4uGujD87YIezUZ6ONMo1DJGshzIs9/RIfi3iAoFBkMNL80jdTLWwNwp
         4Oi8pnkc8qQlkFicJH5U0hHMJATrgl94UKJ7oKAdy3kx1AU9NZElD+zzl4ZlSkBai3gq
         ykXgJ52Detsa640Mx2ru4rjRDvBFB7PWYFQOeqB8O5KzwjWyECGnzc3/byDIUkDLV70E
         36XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=higKOj1p3ok/7nI+zj6z0ZvfY1Ko1k+VC4e6gD2otWI=;
        b=DdxO7qPPdio28rNpteyMtBL/l+ByHsufGuGFTZ5zngPalgpQRRlMbWJc61ByuB/6/b
         BxQnRG1aEQ2uXxc1bzvG+DQlK4zkMr+7j5Bit6RBuI2L85r/jrOOBzA9h7oixNMV9342
         ZlUU4BqlbLjObHNYVuGIHxqpfirs+KF83+9hQtc8F8RWBKQ8AxJLuClZ/VTUOfYht/Tu
         eF3eMhmrVGgx9RoCqVEi2EguyyytdfaMVKTRvCx29PUAswvESkFUjKdmk1KYAIqlemLx
         1WnXpwHlKyFVWqfX6H2ofgEW2b36vbwvqA7qTnximMh437l+6Gcz4mBsy0Ih05j+IPBE
         Vp7Q==
X-Gm-Message-State: AOAM531ckA/wmb2ljuy2/78DuUt1bIXKhg++o4WCTa5PBHNYWhR9CaqZ
        O7SfKPGyZMJ1KutDsAvjI2Tfrg==
X-Google-Smtp-Source: ABdhPJxVIvEDcoDggTJiB4vSdqTDuOsOwbvvKHhNoweVKBATxb0UMt/Jt655qWVNCHb7uHZpTP29TQ==
X-Received: by 2002:a1c:b646:: with SMTP id g67mr3075568wmf.117.1621509670493;
        Thu, 20 May 2021 04:21:10 -0700 (PDT)
Received: from localhost.localdomain ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id o11sm2756646wrq.93.2021.05.20.04.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 May 2021 04:21:10 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Qii Wang <qii.wang@mediatek.com>
Cc:     mkorpershoek@baylibre.com, Fabien Parent <fparent@baylibre.com>,
        Rob Herring <robh@kernel.org>, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: i2c: i2c-mt65xx: add binding for MT8365 SoC
Date:   Thu, 20 May 2021 13:21:03 +0200
Message-Id: <20210520112106.77190-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210520112106.77190-1-fparent@baylibre.com>
References: <20210520112106.77190-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding documentation for the MT8365 I2C controllers.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
---

v2: No change

 Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml
index 41cedb4930de..2c437368532e 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-mt65xx.yaml
@@ -27,6 +27,7 @@ properties:
           - mediatek,mt8173-i2c
           - mediatek,mt8183-i2c
           - mediatek,mt8192-i2c
+          - mediatek,mt8365-i2c
       - items:
           - enum:
               - mediatek,mt2701-i2c
-- 
2.31.1

