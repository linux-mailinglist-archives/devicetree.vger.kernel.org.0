Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 66F8A3625DA
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 18:41:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236356AbhDPQlc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 12:41:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236328AbhDPQla (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 12:41:30 -0400
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8E0FC061756
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 09:41:05 -0700 (PDT)
Received: by mail-pl1-x62f.google.com with SMTP id h20so14286207plr.4
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 09:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZVDZygvGe/BTbgHX36KkPxWpUuPl3ozKPcg+zh4rMZA=;
        b=Nvig65KUvKpow+wTBPeyA/khnqlD15qIiQnV3qYS/y9qDz4KnnjOL+U/FXC2lIbdoP
         OWJsDOvhltqU0DulUucMBkdNyRMTLvjQhd7ofJYgipKQqxhubyFgsFKIJ+5Gn1rrSzEh
         cJ8h1DoPAf3klAiMqPyYoqFAdTbyHe07TTcKU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZVDZygvGe/BTbgHX36KkPxWpUuPl3ozKPcg+zh4rMZA=;
        b=rleQEZJJNW3rWz/VfgcAfc6DdAbXs+iGa5H0SY0GUUPGszAKBsM1aSvr7fs4zo39Kz
         8tVEIt986wbhB3VXaBFjsibK1GjUi59GfZHVdXNzGSXCGOWue1nP2XTgUS5pWXVVmCA/
         BoJlyFdvFB1mYMYrR7UvYz9pL3X3BiES6A87hULfpfb4ZiTwqtEiVCJxMK61nIMMc+YM
         Mr4OD5xYOiFUZwh0MaVv/s3VpS0HS+ueVwzfQqi6BiNd9I27hSMUlClxZ/4A0md0qfX6
         3Q4wTRfgcAnEXMA55YdNllpXm387yatSBNAKDAWNi7EngtXKJjZI5GpCZVTD7szSE+6y
         qFYQ==
X-Gm-Message-State: AOAM531UxpoTaAoOiPuGCZ4xqXgP+0B8f7WALHqZvfrtcP9JYw5Am5ev
        xzZIwARfWZqowOBDyoIwloWN+A==
X-Google-Smtp-Source: ABdhPJzmnutXAiNcBEs3KBG3jPd1KVE0Cce33MdMWJ0S7JVfs4j0DxzkHdFyNoyyBSpthnE/XmyPQg==
X-Received: by 2002:a17:902:6b43:b029:e6:3d73:e9fb with SMTP id g3-20020a1709026b43b02900e63d73e9fbmr10588126plt.37.1618591265184;
        Fri, 16 Apr 2021 09:41:05 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ccd5:218f:365:b90f])
        by smtp.gmail.com with ESMTPSA id g14sm6187186pjh.28.2021.04.16.09.41.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 09:41:04 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2 4/8] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-kenzo
Date:   Sat, 17 Apr 2021 00:40:51 +0800
Message-Id: <20210416164055.3223088-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
In-Reply-To: <20210416164055.3223088-1-hsinyi@chromium.org>
References: <20210416164055.3223088-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kenzo is known as Acer Chromebook 311.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 0870490aa350..7afd01aad964 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -137,9 +137,11 @@ properties:
         items:
           - const: google,damu
           - const: mediatek,mt8183
-      - description: Google Juniper (Acer Chromebook Spin 311)
+      - description: Google Juniper (Acer Chromebook Spin 311) / Kenzo (Acer Chromebook 311)
         items:
-          - const: google,juniper-sku16
+          - enum:
+              - google,juniper-sku16
+              - google,juniper-sku17
           - const: google,juniper
           - const: mediatek,mt8183
       - description: Google Kakadu (ASUS Chromebook Detachable CM3)
-- 
2.31.1.368.gbe11c130af-goog

