Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4483E36678A
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 11:06:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237910AbhDUJGv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 05:06:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237783AbhDUJGq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 05:06:46 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8E20C06138B
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:06:11 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id p12so29178374pgj.10
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=QWgC8UArenPHBW1aYUb6FqZ0mkj1u4DDyNUYpTlPpb8=;
        b=aGvfuUnnCYvkTk5yAEYOXpPO4NCnqVdm/mqDNTkak20CuF2UXTjy5/D52iMKU69WEF
         u34V9v3InRXWf5pTM17jNfgYk3V/tKq5ZI1aw5YqsDLiDec4/ox+zLfrbNw3QlDaOpYO
         AvXZ8PNr0mgKYe398F3I9e6ONhRBXHE8RAjTg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=QWgC8UArenPHBW1aYUb6FqZ0mkj1u4DDyNUYpTlPpb8=;
        b=SyQXUHQTUDJMDUl3NFBKTw5CUsxCJ9d1rFpfNDtxUotL3eX7Cakh1Lam29OeyliuVn
         ncZM7LFecrAwoxUrMCzRxvQIsSDVlCZ5QrLN0RIeiobFY33adVgWlskZIDuajeO2aVr7
         YxJdsFNP3+Qg0pR8+Us2r85cR+tJ4AI3LStGsbMG0tbCdYEQlwIJnqnr31gdi1tZ9x/H
         ragmRlkLAa0cwz5V5ASs4pDPkCUHZl9LY33f5qyd1lzV0fldF2XY4wJfHZTLxa/5GyBg
         X96P6/R+e2vVkbiycdBSGjWjz3meCG4I+4HJXjqLrgJEXfKBCD/TaCwIJEWsiZqzuK4t
         Xu7Q==
X-Gm-Message-State: AOAM531Mmj5ALaps4UnRFvdfJWDaYtSad7JXiIknucfK28ft/HjeGKiF
        dI1gDiYbXCeg+7o3F2bsVRpXPA==
X-Google-Smtp-Source: ABdhPJy7Kt/q9fTmLhyxL5oYeMtHnm7I9rlO5JivPR35TDa/G4bfD5Yn3cibH7YCQxUr5Fh1SIEA7w==
X-Received: by 2002:a62:e203:0:b029:260:d99:57bb with SMTP id a3-20020a62e2030000b02902600d9957bbmr13828717pfi.31.1618995971364;
        Wed, 21 Apr 2021 02:06:11 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:60c1:887e:ac53:9b5c])
        by smtp.gmail.com with ESMTPSA id jx20sm1495889pjb.41.2021.04.21.02.06.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 02:06:11 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v3 03/10] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-burnet
Date:   Wed, 21 Apr 2021 17:05:54 +0800
Message-Id: <20210421090601.730744-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210421090601.730744-1-hsinyi@chromium.org>
References: <20210421090601.730744-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Burnet is known as HP Chromebook x360 11MK G3 EE.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Acked-by: Rob Herring <robh@kernel.org>
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
2.31.1.498.g6c1eba8ee3d-goog

