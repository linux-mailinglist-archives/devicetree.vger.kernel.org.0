Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1FDFD4721A9
	for <lists+devicetree@lfdr.de>; Mon, 13 Dec 2021 08:24:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230143AbhLMHYF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Dec 2021 02:24:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52104 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232532AbhLMHYE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Dec 2021 02:24:04 -0500
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1BB5C061748
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 23:24:03 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id m15so13758579pgu.11
        for <devicetree@vger.kernel.org>; Sun, 12 Dec 2021 23:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Fy5k8yE8yDlwkb+GY6CCP2a+YUXQgrQJLC8KuHhbb2Q=;
        b=DATYj17TVReiGSi4E29etVtdvTL/LgWXzBXg+QQgShCOhPUYB77ldyy8p5LzNDxF2K
         8oRNL4xse4F227LB5gF/9BfX3d6B8fvMpUEVMgBiAK3l4fW5EDzi143o6fcAlvKQiZYE
         RENrt1OUbvId/MiH0ZZXZIeZT9KrtTUqeK6gk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Fy5k8yE8yDlwkb+GY6CCP2a+YUXQgrQJLC8KuHhbb2Q=;
        b=m4DrVkkxG9QU6wN3G5mURK+or3UWTvrCY5bKPAAwDsqTfaLD+QmQIMifRwCyaI0oJk
         OcfPDB3/2Ajhw3RJDk7b9OF/1a6r4O5jDQOJARVuX95utKCS3sdAQlOuXTYx1vq0IWUx
         lb8j1F1mYbXh52dnVrmzqrQ5hJeg0u/qXrve5Q+vtlU3q6r5Zd+gmfGygEeNSu2Ua73z
         7So8G6VXzRXKKbGCrWdJcVjMnd8PqSMggL83iIQAxzCNP4ScI4WPQaW9iRMSIZGdkqqY
         KJ8wsLuQ5td6Mw3zJA9ErCIepK4AaKUDRPSAM1qJuZOJuj3LC+wRgbJCMSAGymC9RaqM
         NVfA==
X-Gm-Message-State: AOAM532qbTuC1Ww4oFsk9/jhQo5zwfKzraNpbdoq01mSNLU4iROVmkHB
        WZnnODSsx/3jAZ+1jf9xYA8rWC00QqZwfA==
X-Google-Smtp-Source: ABdhPJz40B9wP5DLwEiavy0VCRvmROM6fMzQxHUEU08Oufmu9UTIfPTBQ0tHm+7PtOf51RtDCwz7wg==
X-Received: by 2002:a63:102:: with SMTP id 2mr304265pgb.311.1639380243478;
        Sun, 12 Dec 2021 23:24:03 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:9447:edff:ad23:1bfc])
        by smtp.gmail.com with ESMTPSA id e7sm11747562pfv.156.2021.12.12.23.24.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Dec 2021 23:24:03 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-makomo
Date:   Mon, 13 Dec 2021 15:23:55 +0800
Message-Id: <20211213072355.4079568-4-hsinyi@chromium.org>
X-Mailer: git-send-email 2.34.1.173.g76aa8bc2d0-goog
In-Reply-To: <20211213072355.4079568-1-hsinyi@chromium.org>
References: <20211213072355.4079568-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Makomo is known as Lenovo 100e Gen 2 Chromebook.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 .../devicetree/bindings/arm/mediatek.yaml          | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 75bb06d1802a08..49e008faaa68a6 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -191,6 +191,20 @@ properties:
               - google,kodama-sku32
           - const: google,kodama
           - const: mediatek,mt8183
+      - description: Google Makomo (Lenovo 100e Gen 2)
+        items:
+          - enum:
+              - const: google,makomo-rev4-sku0
+              - const: google,makomo-rev5-sku0
+              - const: google,makomo
+              - const: mediatek,mt8183
+      - description: Google Makomo (Lenovo 100e Gen 2)
+        items:
+          - enum:
+              - const: google,makomo-rev4-sku1
+              - const: google,makomo-rev5-sku1
+              - const: google,makomo
+              - const: mediatek,mt8183
       - description: Google Willow (Acer Chromebook 311 C722/C722T)
         items:
           - enum:
-- 
2.34.1.173.g76aa8bc2d0-goog

