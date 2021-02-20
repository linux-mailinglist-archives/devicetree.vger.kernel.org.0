Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3602932041D
	for <lists+devicetree@lfdr.de>; Sat, 20 Feb 2021 07:09:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229657AbhBTGI7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Feb 2021 01:08:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229490AbhBTGI6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Feb 2021 01:08:58 -0500
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD0EBC061786
        for <devicetree@vger.kernel.org>; Fri, 19 Feb 2021 22:08:17 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id o63so6736171pgo.6
        for <devicetree@vger.kernel.org>; Fri, 19 Feb 2021 22:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4J7s0mPNjGFe1vyjC7N5XGIE26jPZq4Ak09pPR0Twms=;
        b=lyDJdkqCpdi60gGZAPVkdzWgGNquPY2yhkZ9S3Ua8ZTSPznkX+1MGAagKtkECNAEu2
         OzC5O/A+0iAOf53nRQeNbxa0Mvaa9mpeiXCJvmN3/xD0m5vwFoQxpeSMmBJ8hEfmTE02
         /nwVYAKMMMf+tHeGC7IbORuTcGQaRend6ehfM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4J7s0mPNjGFe1vyjC7N5XGIE26jPZq4Ak09pPR0Twms=;
        b=UTsus3sXCN5ZZXBEHijCFf9u4nXTfxp64yQtARVxWUHCp9lfdqDdMlWiaIWr1A2O1L
         N1rbZKpM3MGpjJEsxr9O+VX5pKZ7lRXa2NsAXiVyK8utPXs+5KnrC/Rj5VSWOhqtHX0l
         m4kWfa9ein/NC1DK1pWEnszoLB1flo7MDeOZSxM7rEx8UqzaoURR/2vNcidur58kGhJz
         H1OGpVOtvvJkcFVLbJBJwL01lCPXQoQJ3xnOus8uSC/8PGHNM5KVw4+TrEOX20jxL2B9
         e2WakteYWw8gpotYV2plsnS/GTvZe2eao+gdpGO945zh/hpSmYEpLybi/feClmOMEwAU
         XQkQ==
X-Gm-Message-State: AOAM5322o4lvDzmmo2ZC/pseavL6rvcGjm6wKFwmv2E6ZXq/PPenTc5T
        C8UFXS7ckRD2bNhP2cjYa9Ejug==
X-Google-Smtp-Source: ABdhPJzeo47hIWNCTY8rScYv5CJmQh6LqfmJhCPz8jxmAxv/V7hM+by1CxBxc4OvbSGHZDyjtYyo0w==
X-Received: by 2002:aa7:93ac:0:b029:1e5:b52e:314f with SMTP id x12-20020aa793ac0000b02901e5b52e314fmr12473630pff.45.1613801297317;
        Fri, 19 Feb 2021 22:08:17 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:537:d36b:e4d6:54fb])
        by smtp.gmail.com with ESMTPSA id w187sm10943697pfb.208.2021.02.19.22.08.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Feb 2021 22:08:16 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Xin Ji <xji@analogixsemi.com>, David Airlie <airlied@linux.ie>,
        dri-devel@lists.freedesktop.org
Cc:     Sam Ravnborg <sam@ravnborg.org>, Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Subject: [RESEND v3 1/2] dt-bindings: drm/bridge: anx7625: Add power supplies
Date:   Sat, 20 Feb 2021 14:08:10 +0800
Message-Id: <20210220060811.2500081-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.30.0.617.g56c4b15f3c-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

anx7625 requires 3 power supply regulators.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/display/bridge/analogix,anx7625.yaml | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
index 60585a4fc22bc..3ae97d9523e56 100644
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
     type: object
 
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
2.30.0.617.g56c4b15f3c-goog

