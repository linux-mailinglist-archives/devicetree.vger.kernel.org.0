Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 961F036678B
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 11:06:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237916AbhDUJGw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 05:06:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237882AbhDUJGs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 05:06:48 -0400
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com [IPv6:2607:f8b0:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E64CEC06138F
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:06:13 -0700 (PDT)
Received: by mail-pg1-x534.google.com with SMTP id t22so29211599pgu.0
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 02:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JUFJlRYw+cqn/AL+S42IH0SJKjQ6r0g1wThs2iJNVzo=;
        b=LmMv42o+n4oLkqZ+Uz95xhrzeAw6xn0dpztOFWfOSu6FArh1AgOBnXTsBUajkp8VTV
         zgPs0RXHc/PqFOyvAo+i9shPRVJsS6DxPTyNrH5x1q9aPYbI0xJytI+RBRsdnxgIrjke
         FKQTB4OEBGal1lwIRJM/s1C3hZ+C5q3H2EiW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JUFJlRYw+cqn/AL+S42IH0SJKjQ6r0g1wThs2iJNVzo=;
        b=W9UETTzNrRnPoiBRU2JtxwJhDyocynzXfmS4xqip1Q4BMr6WaAlZZ2LCHoV5F65wNo
         1k+bEg/lZUayUOdE3hoe+1Y5571KAbE8HXKFl8j8EfcruR4fQll71xVqrET/VhamTe5d
         Wd7y1SyF003Dfi2hIq70sw8PYtoME/D/UsNMctUgYOkVtIONCjx9BI+ltAosGAtWsMjJ
         Agztu84dSNCilnqbEB9IMlEyfzPWCzFOk9ujANmvjgVFNM/lKQLFo5S9YhA8PfAdC1eT
         YqrU2uy94+z1DJpdiRU0Cb8Y6CwNSX/DXwyTrxdJc0Vo68BDxlkozugJYjIEBJlwJ3br
         rAhQ==
X-Gm-Message-State: AOAM533mR9fUzTlt9OMroxdLfxagq2kXO+QV2iKNulVyzcTQ8ANw21nM
        +yfAH3H9dF/5Bcfm0rC9ZsCKEw==
X-Google-Smtp-Source: ABdhPJwLdS12xSxtecC4wgi0Qw8p7+oCENpmojb8ObATIWpCJ6sRqkQWExuuENFMOPjeX5GfG1BJnA==
X-Received: by 2002:a17:90a:6f45:: with SMTP id d63mr10008532pjk.39.1618995973292;
        Wed, 21 Apr 2021 02:06:13 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:60c1:887e:ac53:9b5c])
        by smtp.gmail.com with ESMTPSA id jx20sm1495889pjb.41.2021.04.21.02.06.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 02:06:12 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH v3 04/10] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-kenzo
Date:   Wed, 21 Apr 2021 17:05:55 +0800
Message-Id: <20210421090601.730744-5-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.498.g6c1eba8ee3d-goog
In-Reply-To: <20210421090601.730744-1-hsinyi@chromium.org>
References: <20210421090601.730744-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kenzo is known as Acer Chromebook 311.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Acked-by: Rob Herring <robh@kernel.org>
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
2.31.1.498.g6c1eba8ee3d-goog

