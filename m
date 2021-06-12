Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 99C743A4C64
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 05:19:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229584AbhFLDVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 23:21:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230305AbhFLDVU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Jun 2021 23:21:20 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BD7BC0617AF
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 20:19:06 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id i34so3962361pgl.9
        for <devicetree@vger.kernel.org>; Fri, 11 Jun 2021 20:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=iZrBmMYE0pMOpeejrZ6SD6PbgBG0c1CSAN0mNTGXUKE=;
        b=TNgcUBunGafH3meocpCHNnKt/NA0dXXg11PA8MJLnXVu2euTusqY8Y6Omd0109ghCk
         H0AgZU349VZO8eu0pOFsXQzALup4lPXVYpemz/57GnFvlV8QT+sYZytIoXvsbBfXlbTN
         UMVeOMEPggAA0zdhBz2L62mGEBBfcTnLlRksI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=iZrBmMYE0pMOpeejrZ6SD6PbgBG0c1CSAN0mNTGXUKE=;
        b=rAVDE4TVgWTVpKTlbOJloT99+KQJrXyeFKDWdNQuKiNoSO72EKoe0+1HB7dajFwq1y
         psSXQEIIc+7k+59Q00zQPhp+oWIT71YNCSR4wetpNpwkD5B2LKHIdgoCb0fRsNGBM2Jv
         SNorZRBnowILQnDHcyEMnlfKMJBIn1nIwt6rG5dPdvftdpI38yCNwtJSG7sH5Gi7Dl3s
         MtL/sHM0R3brenkCxjRo/qZBXenbPCgJn1Rrp9usz2amDf5wIH3nWszgjT7Z+NN1O3tD
         ouPLc1oAs641x0KiJDSJkdy5XRKSaUq6s7yDb4/fn2QSYlYsAU2Q62l7N18hL/9hl6Th
         N9GA==
X-Gm-Message-State: AOAM530x4lUEF7bKlFY3jdKIX2S3A0CGyp2sji3HETOns4aZIFs2HK1n
        /kl9OUOBjlYKJmPcg4QBRFCKyg==
X-Google-Smtp-Source: ABdhPJzXg020oCP9I7Nnr9yMMU4Dj1q2AfTjBBfaTk9JMIl35vhu5mQFfDgjlMLikbvgRNYDPfH5UA==
X-Received: by 2002:a63:f13:: with SMTP id e19mr6513263pgl.112.1623467942147;
        Fri, 11 Jun 2021 20:19:02 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:cbbc:c8a0:4601:2039])
        by smtp.gmail.com with ESMTPSA id h5sm6688519pfn.127.2021.06.11.20.19.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 20:19:01 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        maoguang.meng@mediatek.com, yong.wu@mediatek.com
Subject: [PATCH v5 2/3] dt-bindings: mediatek: Add mediatek,mt8183-jpgenc compatible
Date:   Sat, 12 Jun 2021 11:18:52 +0800
Message-Id: <20210612031853.3115482-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.272.g935e593368-goog
In-Reply-To: <20210612031853.3115482-1-hsinyi@chromium.org>
References: <20210612031853.3115482-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add mediatek,mt8183-jpgenc compatible to binding document.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
---
 .../devicetree/bindings/media/mediatek-jpeg-encoder.yaml         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
index 5e35ecfd21f1b..fcd9b829e0366 100644
--- a/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
+++ b/Documentation/devicetree/bindings/media/mediatek-jpeg-encoder.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - mediatek,mt2701-jpgenc
+          - mediatek,mt8183-jpgenc
       - const: mediatek,mtk-jpgenc
   reg:
     maxItems: 1
-- 
2.32.0.272.g935e593368-goog

