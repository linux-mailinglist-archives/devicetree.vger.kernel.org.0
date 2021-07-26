Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 945243D65D4
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 19:34:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233813AbhGZQyX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 12:54:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231959AbhGZQyW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jul 2021 12:54:22 -0400
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8D49C061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 10:34:49 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id b25-20020a4ac2990000b0290263aab95660so1242066ooq.13
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 10:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pOyJ8Rc1+7t0YsnzVklU5b9F37l3+jW4OcgT5rziuFU=;
        b=fAZlxhQdyRp5zRb1mi25f/B4kL5ZXX0mCPnFX4I0238WwihNK21ztCUO6TrexvvPiv
         2Er0F4JfnIP/P/GHgqmWn6aY2p8ImlWACu77OPYMAWk8CieAem+/B/iCMMuo5ITOPjin
         wvRJO1ER91VkDbE7rjs4gbOdz1ZJxqor+khnQ+BjxYBHShEokP840+yIEdRXIdbKtKtl
         70EXAr2LOoomFXw7miMn+qgh4/rJiukxnfFuRkVATGWGGNqXjSAc+mQrZY+DlCAsnPwL
         7V2bpD0b3uLRIn4Z4QyPaMrKQly0Mdd/oGU7fmaYbyMpLHLaEEFPd+Wx2ORAqfL7vnW/
         KKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pOyJ8Rc1+7t0YsnzVklU5b9F37l3+jW4OcgT5rziuFU=;
        b=KT5oNWm5qmZGeGLDypyz5WSMpsifX7GGfWhSZPMWHq52gFgMmwVXS98Wq20uENHu+e
         Uj8+euU2bfQtsZTkZ3gLBWU1JtaLipYEQQu63DTbGbw6SJxoHkc1wcYTYF9SWxVAWnR1
         XVrIfizKjwSrzoZ+76E4ZME9cOR5kemhybETqPhM33gUtFqHNnkQVjH6SYRD+dO1So/y
         9vsw4y1I+VS8Ugrrk/+o9r+xWckteXQRgxUfiZ6tX6sgRWd05Lo02rvNQCsuVn3OA+i2
         3XKfuMPQRBBouhOLCTFFSASEGiP1yVQwbaLETCP2+2ZNgi5t6q48xjeGMr83pyEp4A6o
         ELdg==
X-Gm-Message-State: AOAM532SOnWsgIZ2sQvBOF6srti5M47eLUo21Z6ApQ6nZxKqR2k0ygW9
        JbxqaGsgqD+TavY06BSTo4QI7Q==
X-Google-Smtp-Source: ABdhPJzj9GSyzOgaXvC/6u+xBmxl/5r2hXaqVyqoa7pDzveUYNhuECB19AieW7EB2CyiizlnCMCAiw==
X-Received: by 2002:a4a:b98c:: with SMTP id e12mr11209038oop.67.1627320889238;
        Mon, 26 Jul 2021 10:34:49 -0700 (PDT)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id s24sm69328ooq.37.2021.07.26.10.34.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 10:34:48 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: display: simple: Add AUO B133HAN05 & B140HAN06
Date:   Mon, 26 Jul 2021 10:32:59 -0700
Message-Id: <20210726173300.432039-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add bindings for the two AUO panels B133HAN05 and B140HAN06, both
1920x1080 panels with 16.7M colors, first being 13.3" and the latter
14.0".

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../devicetree/bindings/display/panel/panel-simple.yaml       | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index b3797ba2698b..7f624cb1199a 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -46,9 +46,13 @@ properties:
         # AU Optronics Corporation 11.6" HD (1366x768) color TFT-LCD panel
       - auo,b116xw03
         # AU Optronics Corporation 13.3" FHD (1920x1080) color TFT-LCD panel
+      - auo,b133han05
+        # AU Optronics Corporation 13.3" FHD (1920x1080) color TFT-LCD panel
       - auo,b133htn01
         # AU Optronics Corporation 13.3" WXGA (1366x768) TFT LCD panel
       - auo,b133xtn01
+        # AU Optronics Corporation 14.0" FHD (1920x1080) color TFT-LCD panel
+      - auo,b140han06
         # AU Optronics Corporation 7.0" FHD (800 x 480) TFT LCD panel
       - auo,g070vvn01
         # AU Optronics Corporation 10.1" (1280x800) color TFT LCD panel
-- 
2.29.2

