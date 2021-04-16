Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C38203625D8
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 18:41:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236327AbhDPQla (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 12:41:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236307AbhDPQl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Apr 2021 12:41:29 -0400
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE977C061760
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 09:41:03 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id g16so5407495pfq.5
        for <devicetree@vger.kernel.org>; Fri, 16 Apr 2021 09:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vzcQwijJhfY7OpfvhBJPOdOpXaIv6ebJi2ScpoILz7g=;
        b=PHbuQvOJAqlLg3IDRJ/vUPfugXYBoCBVhndXgCkWJtDPPSxSbeE7zgKRHPtw9XTPVR
         U+nGFHJ8d/HjRZhUNqzBvYSW8ANQDQ2XJH3NQ92El4oeo3eOkuaG1RdnNUI0kM4+49Er
         vpfugcssifS5tZ7S6J9ISCL8p8sdh9bOXp5Vg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vzcQwijJhfY7OpfvhBJPOdOpXaIv6ebJi2ScpoILz7g=;
        b=IgVluMJ1XzWwo8Ru/gKFYwK/zlu/fbIFNrDbHZA/iGBNc7qlCpFsn/8Tj/E4EGDqib
         cfY7Cnfdj37Vl6L2tGmCA5stHMPsEqPsRHrgm/W6pPZzONvR211wuH9U5oddJxNRnoml
         qCgS4MxWLgnu3d6who8dv31plELXB+M3OE/yI88oEUaJO3gw5/z+0JQuxwRQ2ERTXb3K
         Qb2phcC6qwZzBvFydNAAyBl9MmMcqok7uHWVXk5KVYprcMfrf2RRXchU+7Gbs5Hhmv3E
         ZiKSPt0Bccd6H3vW2Z2Xm6w/gfpbLhqTlHmPsM1rFA4dTscak1TFLtBjx9DZ039/1Ix0
         43DQ==
X-Gm-Message-State: AOAM530MmikqUZHtUEHy5KW9E+/p5k7ozXrsZv7f5wVKnXUETt3vGjmD
        fJ4eRuKlfcUjr/xHzf3QbRHcBw==
X-Google-Smtp-Source: ABdhPJxUh/mtVkeY7xRtwh9IW1IBjcLiEAJh0wutc9cPsIFSvErkHlC647yq4IzxXMn86frujypE4A==
X-Received: by 2002:a05:6a00:1354:b029:241:91b9:75b3 with SMTP id k20-20020a056a001354b029024191b975b3mr8547393pfu.5.1618591263275;
        Fri, 16 Apr 2021 09:41:03 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ccd5:218f:365:b90f])
        by smtp.gmail.com with ESMTPSA id g14sm6187186pjh.28.2021.04.16.09.41.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Apr 2021 09:41:02 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v2 3/8] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-burnet
Date:   Sat, 17 Apr 2021 00:40:50 +0800
Message-Id: <20210416164055.3223088-3-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.368.gbe11c130af-goog
In-Reply-To: <20210416164055.3223088-1-hsinyi@chromium.org>
References: <20210416164055.3223088-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Burnet is known as HP Chromebook x360 11MK G3 EE.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 96c401597bd8..0870490aa350 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -122,6 +122,10 @@ properties:
           - enum:
               - mediatek,mt8195-evb
           - const: mediatek,mt8195
+      - description: Google Burnet (HP Chromebook x360 11MK G3 EE)
+        items:
+          - const: google,burnet
+          - const: mediatek,mt8183
       - description: Google Krane (Lenovo IdeaPad Duet, 10e,...)
         items:
           - enum:
-- 
2.31.1.368.gbe11c130af-goog

