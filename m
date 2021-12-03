Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2D44C467A7C
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 16:43:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357967AbhLCPrV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 10:47:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233978AbhLCPrV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 10:47:21 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 22404C061751
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 07:43:57 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id i8-20020a7bc948000000b0030db7b70b6bso5201528wml.1
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 07:43:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JFb5QjcjkkvOWqOmEGkrbQXfQxx1NzWXe9zva7YzoKg=;
        b=UFBq+mbwH5xajiKeeTuUMTrYFQuelJMKLfetPhEeNM1Ekdx7RqvGyt6pHsqD/vnjkm
         QzyulTtrf4tWMB1Sf3OSDCBhPB7ptS06OISrmv2EQHVFNi5CH/OckSu7eX6ri3if1LEG
         qFfHv0/l0t0Z6AhPrntJFOwjTNKaLoFARIVtLhl17EqCJcV3p+Vd+VVNp7xqniXoltlo
         VEsnad7IsWhiFhWfaGADF+PiVaC8rGp5XFrK1Gzr+cujk7e3NyGwEwjghgHZVOj3TMYD
         Wx/MzwTvD3T4AY9PeIthiNoSnOLwxMgMFXU1eKpDlJVLneaZUHLK0u10Bd8L8Eyk+PfC
         1tng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=JFb5QjcjkkvOWqOmEGkrbQXfQxx1NzWXe9zva7YzoKg=;
        b=wNi8izyh44YYmr72Gli6F23kiO4UfpRhKWZ8Hk6MPeGl/8wZ7d03RiexUzK9FkdL1G
         +8xNrLRX5q6yYgysavQkp0eavkdTv/JsGga8GFp4ge1+bBmjewYEjZBgxJ2mSavxgG7K
         bZEzWuaPnhVQ9QX9vTgRDWDBtjlNCuUgQkhYJWW7mQ46WLTh8M3y5pYEhGTJpztrQnaG
         6gHiZlRE0hoAG5iG511/nfSNuEAnLvkt5A7yODH5jxTCfsjC+a6I/WyzP9PtyErLBqSf
         nDHKWK+RLLR1V4htKmbjnXbM0B8KIQ/vmRhBnyQawjh4nrASMPQaApLuNh6segFSfoLz
         cIYg==
X-Gm-Message-State: AOAM5334fhND6ieILSUdSAIkcA+6DkziiSMe3fjzXaptTCm7ClonzcOe
        aFPFCNhw1fhenj5mBKc7MtJ3jBhcnwWqLQ==
X-Google-Smtp-Source: ABdhPJz8oyzdiJ1afHc29W42NqaYCJVvTXmq1L8sBKkQt1BuT6MeDPgPJs2EJZ2qjEEGLknLm+4E/g==
X-Received: by 2002:a05:600c:4f8f:: with SMTP id n15mr15647700wmq.70.1638546235721;
        Fri, 03 Dec 2021 07:43:55 -0800 (PST)
Received: from localhost ([193.209.96.43])
        by smtp.gmail.com with ESMTPSA id h18sm3367289wre.46.2021.12.03.07.43.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Dec 2021 07:43:54 -0800 (PST)
From:   Thierry Reding <thierry.reding@gmail.com>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Rob Herring <robh+dt@kernel.org>, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: panel: Include SPI peripheral properties
Date:   Fri,  3 Dec 2021 16:43:50 +0100
Message-Id: <20211203154350.179112-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Thierry Reding <treding@nvidia.com>

SPI panels need to reference the SPI peripheral properties so that they
can be properly validated.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 .../devicetree/bindings/display/panel/lgphilips,lb035q02.yaml    | 1 +
 .../devicetree/bindings/display/panel/sony,acx565akm.yaml        | 1 +
 2 files changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml b/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml
index 830e335ddb53..240a884b7fa7 100644
--- a/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml
+++ b/Documentation/devicetree/bindings/display/panel/lgphilips,lb035q02.yaml
@@ -14,6 +14,7 @@ maintainers:
   - Tomi Valkeinen <tomi.valkeinen@ti.com>
 
 allOf:
+  - $ref: ../../spi/spi-peripheral-props.yaml
   - $ref: panel-common.yaml#
 
 properties:
diff --git a/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml b/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml
index 95d053c548ab..4459d746592f 100644
--- a/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml
+++ b/Documentation/devicetree/bindings/display/panel/sony,acx565akm.yaml
@@ -14,6 +14,7 @@ maintainers:
   - Tomi Valkeinen <tomi.valkeinen@ti.com>
 
 allOf:
+  - $ref: ../../spi/spi-peripheral-props.yaml
   - $ref: panel-common.yaml#
 
 properties:
-- 
2.33.1

