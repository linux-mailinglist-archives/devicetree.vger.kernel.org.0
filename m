Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D6E74731D3
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 17:29:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236509AbhLMQ3H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 11:29:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240853AbhLMQ3G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 11:29:06 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE4DEC061574
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 08:29:05 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id iq11so12232591pjb.3
        for <devicetree@vger.kernel.org>; Mon, 13 Dec 2021 08:29:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=2502SCATk5qTXISqWbrDC4RK34Z7WGkAvudBl98LieM=;
        b=C25z5N9GMvgqS1P9g/yYRotI/7cUxOkcQfEyoQO6JDfuMopGjAVcFWkusTgcpWBJKo
         QR1iOvUgW9+QG42U5gpRa6iOcx2p1SyYZu5zdk6OwZR5vGCKKfcRYKO2K2B1HESbP/hb
         bCQ0mikaoqd4m0eXg5MfaS2VUv+pg02Vom64I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2502SCATk5qTXISqWbrDC4RK34Z7WGkAvudBl98LieM=;
        b=hRqS2oUJQmviTtVWT+RaDFSqKQKWsYqELZk5YX8+3MeWTcdJNh5T3EiHHVvIVuryyc
         Ts5Z0U3dZk0xGPwAVqxAY+wUA8lf2tRtYYaRRC6uTvs7UpbArOKU9oD8L4OiT7ih1APN
         lCcL7laX/JexYFPwWn7xt+8qpkS1jp4E4RdgjsL1AM3rSvqSy7ndGcTajmMshiDlsZ9M
         QsDIKLDEzYB3XPZqKCzo3WmxfKYN+dDBo/yjKhqvqwH0qYB5VQJiM+aipFcA865WnGGm
         UP1cx6HsBben7uYYpHGrCFPHXAVZetWYVXerMxCK6eg09Vn92B0pfdRlqMBtcuu/tEta
         yitg==
X-Gm-Message-State: AOAM5336hx1PtEI0gUHc2xgkOGZPTzTa0vIG+E2QFM6cNEKsFF/whfnG
        uz4ez6dPfsw9pc2IKPS9w+vbow==
X-Google-Smtp-Source: ABdhPJxayZzdaqNk+MKYyCSH0Rri2yOQQoYyI+ykOSsqT4/93hGbAb/vRbiq1RxX7CNWXM3gD2lLIg==
X-Received: by 2002:a17:90b:4f84:: with SMTP id qe4mr45816129pjb.102.1639412945316;
        Mon, 13 Dec 2021 08:29:05 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:9447:edff:ad23:1bfc])
        by smtp.gmail.com with ESMTPSA id mh1sm7803802pjb.6.2021.12.13.08.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Dec 2021 08:29:05 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/4] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-makomo
Date:   Tue, 14 Dec 2021 00:28:56 +0800
Message-Id: <20211213162856.235130-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.173.g76aa8bc2d0-goog
In-Reply-To: <20211213162856.235130-1-hsinyi@chromium.org>
References: <20211213162856.235130-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Makomo is known as Lenovo 100e Gen 2 Chromebook.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
v2: Fix enum typo
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 75bb06d1802a08..828f5f3fde4e20 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -191,6 +191,18 @@ properties:
               - google,kodama-sku32
           - const: google,kodama
           - const: mediatek,mt8183
+      - description: Google Makomo (Lenovo 100e Gen 2)
+        items:
+          - const: google,makomo-rev4-sku0
+          - const: google,makomo-rev5-sku0
+          - const: google,makomo
+          - const: mediatek,mt8183
+      - description: Google Makomo (Lenovo 100e Gen 2)
+        items:
+          - const: google,makomo-rev4-sku1
+          - const: google,makomo-rev5-sku1
+          - const: google,makomo
+          - const: mediatek,mt8183
       - description: Google Willow (Acer Chromebook 311 C722/C722T)
         items:
           - enum:
-- 
2.34.1.173.g76aa8bc2d0-goog

