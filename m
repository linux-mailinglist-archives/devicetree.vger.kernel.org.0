Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5FB8E2C84C8
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 14:13:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726535AbgK3NMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 08:12:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35342 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726516AbgK3NMY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 08:12:24 -0500
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEA5AC061A48
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 05:11:04 -0800 (PST)
Received: by mail-pl1-x643.google.com with SMTP id u2so6435445pls.10
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 05:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TdRqXYI9+LXautyFSgQZPVbiKxi/AYNw4/5pXTCk/R4=;
        b=qJhZakmLX71Ow/Q4navBAsIvIv0yWS8fiCX2fxNBsvczVnYVYxXyvoVV3eTCIDX4QV
         J9J8nzmhgoffXp1hzkJykZz3J5K+4ovjA0BxL7ZIKhRmifFJ+Vhd0j1k0C/Dk6QZOL0x
         HHGqADfpDXBcBWjsCM77K/AOOaza45UXAaIPw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TdRqXYI9+LXautyFSgQZPVbiKxi/AYNw4/5pXTCk/R4=;
        b=uKVP37ZVaNREAlimRGFjmyC/JwbCcuXKBKlWWjaDwXHH8Cb4bMikpHICSQyTLqRb7J
         yuvSZZlEwRLeS/gbhyd/JXoWje1Xc7dAkCxmfGfTtvVzhbv0JQHr+6TsxikXpDXW/xSF
         jo3Gl2crlPHT7QBZldeLacITEb2yUo1chg1ae0sk4VzXL2ztY4FClMTtCM2d8gdOszBt
         ga4Ap7EGj4U+xIFFYjYGveXrkr0IwJe/j0k0HDocTJMDuubLX46JeJNx/jQcCPjUE9/y
         OlG3hWX/L3UYTbp0NKP52GmDN6umtRTcGCbnyrBeDRXhe7+4MVtEHLGU32eoQ76gDXfA
         vWdg==
X-Gm-Message-State: AOAM533eQYnfIJMbYjp892d3nPDN07uOaO767gAkUlm/fAbwORAOMy1S
        b+i5sP8q+Aj+TOc/RNsm8oDneK9TBxGNTw==
X-Google-Smtp-Source: ABdhPJwXoKlEzAdbPmg2u4U48+mToekmbmgjgbgdvXRcRwal5v3eSx9A94rxco97SG5qv3e+9ya4QQ==
X-Received: by 2002:a17:90a:4093:: with SMTP id l19mr3226303pjg.218.1606741863990;
        Mon, 30 Nov 2020 05:11:03 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id a4sm41757578pjq.0.2020.11.30.05.11.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 05:11:01 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
        w@1wt.eu, daniel@0x0f.com
Subject: [PATCH 3/9] dt-bindings: mstar: Add Honestar SSD201_HT_V2 to mstar boards
Date:   Mon, 30 Nov 2020 22:10:41 +0900
Message-Id: <20201130131047.2648960-4-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20201130131047.2648960-1-daniel@0x0f.com>
References: <20201130131047.2648960-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Honestar SSD201_HT_V2 is a full size devkit for the SigmaStar
SSD201 or SSD202D (they are pin compatible).

Currently only the SSD202D version is supported as that's the one
I have.

Link: https://linux-chenxing.org/infinity2/ssd201_ht_v2/
Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 Documentation/devicetree/bindings/arm/mstar/mstar.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mstar/mstar.yaml b/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
index 7c787405bb2f..61d08c473eb8 100644
--- a/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
+++ b/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
@@ -20,6 +20,12 @@ properties:
               - thingyjp,breadbee-crust # thingy.jp BreadBee Crust
           - const: mstar,infinity
 
+      - description: infinity2m boards
+        items:
+          - enum:
+              - honestar,ssd201htv2 # Honestar SSD201_HT_V2 devkit
+          - const: mstar,infinity2m
+
       - description: infinity3 boards
         items:
           - enum:
-- 
2.29.2

