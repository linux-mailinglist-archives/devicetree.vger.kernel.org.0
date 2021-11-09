Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF2CB44A657
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 06:33:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240642AbhKIFgf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Nov 2021 00:36:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242915AbhKIFgc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Nov 2021 00:36:32 -0500
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B07DC06120A
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 21:33:46 -0800 (PST)
Received: by mail-pl1-x62c.google.com with SMTP id u17so18858067plg.9
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 21:33:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7VRwqE4mljaTBbEn84HnhMeSkIM9YCg3MxPTKXVa2zs=;
        b=JYk6RuEtncv9Yj8kUzfQQAsHTXqjpqW4CuGBXznkYbTp8u3JXO0hGBhsNowicIqzha
         ZZ4i7LW0HN1mOsgYe2oTm5bjrj8NHDDqjo/42xZxyBWkrVY+hqXYKxGxrZj904NVQMAR
         HCZCaPTv/spHvGvWK3cwodQHmwMF9h5xvoeyI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7VRwqE4mljaTBbEn84HnhMeSkIM9YCg3MxPTKXVa2zs=;
        b=cZvrOcyAchscABKzzCEuMfRR9f3pnFcAePMe79NYjA9YhYaRoz1ma58MV52Um4qhXE
         jhkvbE3c4WOJxRY5pSlXjSsTNlmNJapqDaQnUIh5FGT9NWu3ucu9n86S3RjzoDxABHL3
         7kbtiBOMmXubdUJZa8VtVlZtZvQJ+aM/gNoMUtCJvUHSGkDehect0ZRoayM9OprPl7sm
         6i2LkcnmFYD+kb2nTA4zePDzqtxFnmgxMOojDTwb1T0cXkzun5DnyzOltIghJfnOU/BQ
         sMV+pYkut6pLoXyJ3s6Pt6FAoYZLq2v+1R/e9m1he0GXhDt0M8JbpTWfm7tIU81Bbxyr
         YMpA==
X-Gm-Message-State: AOAM530trkyiIq0Ux0KeDNyknyX6Kvh4Uw+z/mgV3n5SuGUMx0BPGfiH
        FAj4LnrWhfkHJJofe0mtnP50fA==
X-Google-Smtp-Source: ABdhPJyYiw2ESBezPSH2ABAAwdfC34sMPgqeOgJGIZvnyav6y0KjpeuGgvhlTdr2trwcbIe2bNQfyA==
X-Received: by 2002:a17:902:758b:b0:13e:8b1:e49f with SMTP id j11-20020a170902758b00b0013e08b1e49fmr4970995pll.6.1636436026004;
        Mon, 08 Nov 2021 21:33:46 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:cc3e:b71b:e327:fb32])
        by smtp.gmail.com with ESMTPSA id w5sm13741479pgp.79.2021.11.08.21.33.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Nov 2021 21:33:45 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 6/7] dt-bindings: arm64: dts: mediatek: Add more SKUs for mt8183 fennel board
Date:   Tue,  9 Nov 2021 13:33:33 +0800
Message-Id: <20211109053334.1840273-6-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
In-Reply-To: <20211109053334.1840273-1-hsinyi@chromium.org>
References: <20211109053334.1840273-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add sku2 and sku7 which uses different audio codec than other fennel boards.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 7cf0c76cd31006..99e7f8e294cd03 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -147,7 +147,9 @@ properties:
           - enum:
               - google,fennel-sku0
               - google,fennel-sku1
+              - google,fennel-sku2
               - google,fennel-sku6
+              - google,fennel-sku7
           - const: google,fennel
           - const: mediatek,mt8183
       - description: Google Juniper (Acer Chromebook Spin 311) / Kenzo (Acer Chromebook 311)
-- 
2.34.0.rc0.344.g81b53c2807-goog

