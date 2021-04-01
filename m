Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FEBD350E73
	for <lists+devicetree@lfdr.de>; Thu,  1 Apr 2021 07:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232994AbhDAFcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Apr 2021 01:32:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232596AbhDAFcH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Apr 2021 01:32:07 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AED4EC0613E6
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 22:32:07 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id nh23-20020a17090b3657b02900c0d5e235a8so419141pjb.0
        for <devicetree@vger.kernel.org>; Wed, 31 Mar 2021 22:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EGCaNYuJs5ysS+G47sBAgFfeBuakOnmZVc6UOW7pnu8=;
        b=H4LMh6naKuD9jE1jgXbD+Y6im6xj6SrczGVRGFyo2QjAV8r/Jzu0IWlYhmxqsaovAe
         POh3cEIv5YtAJ9THgZPkjIual8JLUsh0XWwWlZTlBxVvdFSz5My3Z0YxGhRJUjkaMGuX
         ZN1jamFCfnnYkzUq7QDx8/ngukUjepeiKGEKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=EGCaNYuJs5ysS+G47sBAgFfeBuakOnmZVc6UOW7pnu8=;
        b=H+gPnDG55m76riFGcrvCmuttY5KIGdxCGyeYD9W12t0qoLbI25F+jBLwLQeFV11DKq
         GvUD1nvzPzVnsroYMDmLQINaO+iMR9StfyKr7Y5yft0ToZj5oo7CwtR9IUQzrd7xC77o
         04/frEDUVm3BwK1IKD1SUDnnE5512O8z9HKDwa8YWQ7q6eArhXz7nfcIPwO+7ui5X0rf
         cjYnJvmvqunfsF8/MSiT6w1lhIaSeAv0G10rLPT9SK6lLe4nOftXXp6tKmNOtxxpQIgm
         iLVwE5AU9UQwf+qMH0IBgjdoiwTZVKUgF6iXrCXJPsvDSGCxtS7p5sVefUdnOF11Z4cE
         pxoQ==
X-Gm-Message-State: AOAM533eYJVRIS5vaN1bWWNuwDguXU0S3wHLgnTbgSTUGgYxtLwZG9zI
        8Fzw3a692wV+yNhw7yEnd1GSjA==
X-Google-Smtp-Source: ABdhPJze72R8x10Uwimtp/vAMjJ5lbZAFSGzBuvIY68rbCBL5/iz4VkpPs1KdmUR01pqLTvYeVHPSw==
X-Received: by 2002:a17:90a:2e0d:: with SMTP id q13mr7361084pjd.225.1617255126907;
        Wed, 31 Mar 2021 22:32:06 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:8730:fe8e:d1f8:82c])
        by smtp.gmail.com with ESMTPSA id mz11sm3990058pjb.6.2021.03.31.22.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Mar 2021 22:32:06 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        dri-devel@lists.freedesktop.org
Cc:     Robert Foss <robert.foss@linaro.org>,
        David Airlie <airlied@linux.ie>, Xin Ji <xji@analogixsemi.com>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [RESEND PATCH v4 1/2] dt-bindings: drm/bridge: anx7625: Add power supplies
Date:   Thu,  1 Apr 2021 13:32:01 +0800
Message-Id: <20210401053202.159302-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.0.291.g576ba9dcdaf-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

anx7625 requires 3 power supply regulators.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Robert Foss <robert.foss@linaro.org>
---
v3->v4: rebase to drm-misc/for-linux-next
---
 .../bindings/display/bridge/analogix,anx7625.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
index c789784efe306..ab48ab2f4240d 100644
--- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
@@ -34,6 +34,15 @@ properties:
     description: used for reset chip control, RESET_N pin B7.
     maxItems: 1
 
+  vdd10-supply:
+    description: Regulator that provides the supply 1.0V power.
+
+  vdd18-supply:
+    description: Regulator that provides the supply 1.8V power.
+
+  vdd33-supply:
+    description: Regulator that provides the supply 3.3V power.
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -55,6 +64,9 @@ properties:
 required:
   - compatible
   - reg
+  - vdd10-supply
+  - vdd18-supply
+  - vdd33-supply
   - ports
 
 additionalProperties: false
@@ -72,6 +84,9 @@ examples:
             reg = <0x58>;
             enable-gpios = <&pio 45 GPIO_ACTIVE_HIGH>;
             reset-gpios = <&pio 73 GPIO_ACTIVE_HIGH>;
+            vdd10-supply = <&pp1000_mipibrdg>;
+            vdd18-supply = <&pp1800_mipibrdg>;
+            vdd33-supply = <&pp3300_mipibrdg>;
 
             ports {
                 #address-cells = <1>;
-- 
2.31.0.291.g576ba9dcdaf-goog

