Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 442F5232130
	for <lists+devicetree@lfdr.de>; Wed, 29 Jul 2020 17:08:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726813AbgG2PIE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jul 2020 11:08:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726054AbgG2PIE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jul 2020 11:08:04 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AECDC061794
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 08:08:04 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id m22so14383393pgv.9
        for <devicetree@vger.kernel.org>; Wed, 29 Jul 2020 08:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rVogIxgDbFpKEnc2TvUT3powwKOjhzEzUdbOqW/tUl8=;
        b=v1LXIVF7mkdh7FgGzsKCTpqSCqNmesjM2EXQjHqz9dTOmwzqyXsMRjftwhjAeBiw3w
         U4wrskzCyaqi1dVzDfKoAOyrGmGKa0LzdwbcZa/vmRdiKg12vRLptYtd1QGqQhpBXFNW
         njHWuv8ubOl7MO4sjqHimzTgHb5iQWkOOfxB0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rVogIxgDbFpKEnc2TvUT3powwKOjhzEzUdbOqW/tUl8=;
        b=R9ISOQKGcyZMNZwwkQO8kLkpPWQhb22YLf8NFbKDXM1Iab1cgPKoYZl+o6c+Ju45b/
         zmAEIT3+85bn1yGDHp+eImwf1axqHSuLvPXGoep3DTCfDIr9iBk8Uosn0H9Hdkcd9ogm
         31Y75znOSRp7WPybByVawgw0BO8CicMyTQfd+ZZ1zSyNK6UjWYUbfefIuRLksx4ax40S
         Lvm0q7XVmEP7ioOtr38VsgjIpThyIEG/x8/73/uz5fUSiJsRA5Mw0RkNik7Gx/aMQu6T
         0DGMJzfsyMBcgWp3XbpSIAqh6zOTsX3ATXcgWamPCGbb2kTST6Whwr/pyed7Va9a0+3x
         if6A==
X-Gm-Message-State: AOAM5304/l1w1oYkpmr8MZlj1ZozmEpbmY5050L3EPzGZC659BBtaUfU
        etsfr/fziG15qA5aX0s1G4sAMg==
X-Google-Smtp-Source: ABdhPJxHb8vfoFnXpcAydflPLzAkP3b2h3f7mUtrqgqBxfDdRNZ53hGv+S7rJE4QMlReKaAhQVFftg==
X-Received: by 2002:a65:484c:: with SMTP id i12mr31148110pgs.145.1596035283531;
        Wed, 29 Jul 2020 08:08:03 -0700 (PDT)
Received: from shiro.work (p532183-ipngn200506sizuokaden.shizuoka.ocn.ne.jp. [153.199.2.183])
        by smtp.googlemail.com with ESMTPSA id q11sm2688058pgr.69.2020.07.29.08.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2020 08:08:01 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     soc@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, arnd@arndb.de, robh@kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 2/3] dt-bindings: arm: mstar: remove the binding description for mstar,pmsleep
Date:   Thu, 30 Jul 2020 00:07:47 +0900
Message-Id: <20200729150748.1945589-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200729150748.1945589-1-daniel@0x0f.com>
References: <20200729150748.1945589-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove the unneeded binding description.
Compatible string is in mfd/syscon.yaml now.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 .../bindings/arm/mstar/mstar,pmsleep.yaml     | 43 -------------------
 1 file changed, 43 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/arm/mstar/mstar,pmsleep.yaml

diff --git a/Documentation/devicetree/bindings/arm/mstar/mstar,pmsleep.yaml b/Documentation/devicetree/bindings/arm/mstar/mstar,pmsleep.yaml
deleted file mode 100644
index 0b45e7012ceb..000000000000
--- a/Documentation/devicetree/bindings/arm/mstar/mstar,pmsleep.yaml
+++ /dev/null
@@ -1,43 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
-# Copyright 2020 thingy.jp.
-%YAML 1.2
----
-$id: "http://devicetree.org/schemas/arm/mstar/mstar,pmsleep.yaml#"
-$schema: "http://devicetree.org/meta-schemas/core.yaml#"
-
-title: MStar/SigmaStar Armv7 SoC pmsleep register region
-
-maintainers:
-  - Daniel Palmer <daniel@thingy.jp>
-
-description: |
-  MStar/Sigmastar's Armv7 SoCs contain a region of registers that are
-  in the always on domain that the vendor code calls the "pmsleep" area.
-
-  This area contains registers and bits for a broad range of functionality
-  ranging from registers that control going into deep sleep to bits that
-  turn things like the internal temperature sensor on and off.
-
-properties:
-  compatible:
-    oneOf:
-      - items:
-         - enum:
-             - mstar,pmsleep
-         - const: syscon
-
-  reg:
-    maxItems: 1
-
-required:
-  - compatible
-  - reg
-
-additionalProperties: false
-
-examples:
-  - |
-    pmsleep: pmsleep@1c00 {
-        compatible = "mstar,pmsleep", "syscon";
-        reg = <0x1c00 0x100>;
-    };
-- 
2.27.0

