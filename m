Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E096533FE44
	for <lists+devicetree@lfdr.de>; Thu, 18 Mar 2021 05:38:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbhCREi0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Mar 2021 00:38:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229610AbhCREiB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Mar 2021 00:38:01 -0400
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFAFAC06174A
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 21:38:00 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id ga23-20020a17090b0397b02900c0b81bbcd4so4384122pjb.0
        for <devicetree@vger.kernel.org>; Wed, 17 Mar 2021 21:38:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wu0UN0qTxD7NQTRZi1+qshriPs2sSwGOFj55/TJrhfs=;
        b=JnhEYHtG8GcWblkEqlnukB3sW2ozfkVUOTi3eX2FyFLMPicJSZpmzGzd+87u7SdNwT
         GWnRMgt6j7VvIAueGQqv9p9IOntxQzyunv1Xjh5gRySqiBmJVRdvVYuF57pLWJsqrqaU
         Jc3Wx//wy9wlk3spgOF09gRE0KkQhOyFxTUfU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Wu0UN0qTxD7NQTRZi1+qshriPs2sSwGOFj55/TJrhfs=;
        b=gtbMAOZTr6R66K0RylDTnR2lnEuGg6zkR8abyPSOoLdPCkSTNH7MZJ0YiYB5fKcZVE
         P1oqQ080QAm7RlKxj0dj1pBP3PV2Xaa9HdIQKJrb40wJhPSn9OajSvviy5+ow4okY5AA
         nM2Mq6vTlNvFcNgxSOGIGG02/93pQCPxVabbL7ynsDknewJADiuN/+h1tFOkn9BQIlcd
         0GGz+XIEdzW/y67y7hOWhH4g9xme6kMMiAtfXAvbTdUJvvCJeP03fl306ygU9wsiYP9C
         Hdk2jWADNtk0WmAAVg+AqYrccNqgD3iW0Zo9oF133wl55+P4ltADhV//ySWqd+nXBuqF
         GuJA==
X-Gm-Message-State: AOAM530keYVqXC2ThrgD+yAK+dvhrFAajGzVdcuMIHb8kGbA/xlHwxbc
        S3chxMxn69qG+aX0wU/98+wMlXhY/rFX+Zl2
X-Google-Smtp-Source: ABdhPJzIaZ6w7w9IBg3hxpIxje9WnBHc4M9GJ0YeFtZVWASjJiKw0xd9PcjxU1CC3FLuBSfqt4Gq9Q==
X-Received: by 2002:a17:902:ec84:b029:e5:bd05:4a98 with SMTP id x4-20020a170902ec84b02900e5bd054a98mr7801174plg.76.1616042280176;
        Wed, 17 Mar 2021 21:38:00 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:e12f:5c36:14f:bbf5])
        by smtp.gmail.com with ESMTPSA id ft22sm611234pjb.8.2021.03.17.21.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Mar 2021 21:37:59 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Fabien Parent <fparent@baylibre.com>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, Ben Ho <Ben.Ho@mediatek.com>
Subject: [PATCH v3 1/2] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-damu
Date:   Thu, 18 Mar 2021 12:37:54 +0800
Message-Id: <20210318043755.2273782-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.0.rc2.261.g7f71774620-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

mt8183-kukui-jacuzzi-damu board also known as ASUS Chromebook Flip CM3,
using mediatek mt8183 SoC.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 93b3bdf6eaeb..a86716cdd408 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -125,6 +125,10 @@ properties:
               - google,krane-sku176
           - const: google,krane
           - const: mediatek,mt8183
+      - description: Google Damu (ASUS Chromebook Flip CM3)
+        items:
+          - const: google,damu
+          - const: mediatek,mt8183
 
 additionalProperties: true
 
-- 
2.31.0.rc2.261.g7f71774620-goog

