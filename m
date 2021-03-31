Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2995B34FC44
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 11:14:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234527AbhCaJN5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Mar 2021 05:13:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234534AbhCaJNd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Mar 2021 05:13:33 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FE32C061574
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 02:13:32 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id m11so14072186pfc.11
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 02:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wSMkZYokyXMj9ctwi5eddd7Z7dKdZakXqSVex3m7s3s=;
        b=iKyT42M8FtBBrZU64CJCqhrGn/NHfzX638A7M0468/GCD/oYHOGTnlW/HqaudcG+xA
         R8BVx9YeAgDRgdxrmFUPG9c1T6l6OnQF6jZLNEftkYs8zMWeUrnH6rMe5L9dCPsjHlUI
         e9MIt9uTuVNq/qkThX+Z2V+iTjQhUElC4HPCw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wSMkZYokyXMj9ctwi5eddd7Z7dKdZakXqSVex3m7s3s=;
        b=kMwyf6Ji1kVmP6YQ4P6BsAzJk8maMX7f0oMksohLMXrexl4IeNrghI8BSTjOy/99L/
         X2g2snWGiUBfZg4II1RFUp9YbfgcXdFMFNt19ngSFwvlWNy586kL1tNMiO+RnU5B222f
         pFml64IKJ8WjjBu/ddmp8BRP2MA5wifmA1IVdOMEIiRsdmjgjPlgX/bzX+5og8/WYBfG
         DCumbubnYHERYys9XJZb1ZiU7pbYY1shW2UVJbZNY7jbfUMZwkvihxGrMjByIA8Tgcr8
         9epIWFPTf5oKyEoIooXyRWhraCTjM3lOCdipmgWWyG/+6vITVvkoGuqgbMdyq/wytwSK
         Aumg==
X-Gm-Message-State: AOAM532DVqzzWeslNWeTPmHAmDkYEgOy9WiUsT3MoUmaL0A+uLfgY52K
        SvG2K7QHfrlcKH9R+HIpDJLInw==
X-Google-Smtp-Source: ABdhPJz4SDU8/o1IrKvO9iaYz+4Maznj3uz3Ov0JJ5HmuiCTXEcgqFw51BPz0s58frC2OQS5+sBLtg==
X-Received: by 2002:a63:6f8a:: with SMTP id k132mr2451919pgc.59.1617182011967;
        Wed, 31 Mar 2021 02:13:31 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:85fc:9f25:6293:28f1])
        by smtp.gmail.com with ESMTPSA id s7sm1484723pjr.18.2021.03.31.02.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 02:13:31 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
        Ben Ho <Ben.Ho@mediatek.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 1/4] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-kakadu
Date:   Wed, 31 Mar 2021 17:13:24 +0800
Message-Id: <20210331091327.1198529-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Kakadu is also known as ASUS Chromebook Detachable CM3.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index cf24401edb85..9774f44b51d9 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -138,6 +138,13 @@ properties:
           - const: google,juniper-sku16
           - const: google,juniper
           - const: mediatek,mt8183
+      - description: Google Kakadu (ASUS Chromebook Detachable CM3)
+        items:
+          - const: google,kakadu-rev3
+          - const: google,kakadu-rev2
+          - const: google,kakadu
+          - const: mediatek,mt8183
+
 
 additionalProperties: true
 
-- 
2.31.0.291.g576ba9dcdaf-goog

