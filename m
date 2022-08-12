Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00538591240
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 16:32:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236938AbiHLOc4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 10:32:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235487AbiHLOcz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 10:32:55 -0400
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com [IPv6:2607:f8b0:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 967DB2D1D5
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 07:32:54 -0700 (PDT)
Received: by mail-oi1-x230.google.com with SMTP id l188so1332767oia.4
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 07:32:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=qnSptJt7AFNWmzxMCkqf7MrpKQxtkc2Z0kVrcaCyyfQ=;
        b=fHUNNf1S5S9u5i9fO6AoDb45aFdyI7LsAef5jdetPzmCLDJQDqxAxoVfC/3HOZ1+fF
         rXvmcusyEHkXlXsD6IUcE8yfI6sTcNMZ8Jt0Qs/s3VMKIwyyrQLlJc2zCziVEyxSopG4
         uHzcI2qvtqh+d2Zv+GYT3xA/rlsx2w73DAHXU2Ii8O/EYYW54l8xhJkmjSrplePShJ8G
         rRU9XPhaBlRLEOKg1iqbtJ/nz5ik/U2i988xeKfWsZDnMaziVQBNdST8lfYWlNBuqhyj
         XCI4hk6UqVGh7k+7D1wbiidrlhynmE2m0hg5cxxn+C7eACMsBSF/p89iIzNC5CJACXqm
         KzXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=qnSptJt7AFNWmzxMCkqf7MrpKQxtkc2Z0kVrcaCyyfQ=;
        b=1ETpzwuHY8L/jpQM6YCcgghdyw74p7OWEnX4BZWtM9EN+sQ+DJAXrnEdtrjGLRcf+p
         Oqb8y/OxDLGr1I5FRm/3HhfgcBlI4qsUmdE+t5lvqS03DgaNeQ1a/Ig0WYBI8aTkQwnY
         3nPIL2daBtIBaKnWfm9SnRaSGk3gK2PaBCl1Ww1QRXfgFrN6D/M+wA7M4cPrwvECGclo
         wk4o7lRyJEP2YFrJ3BUS9SFtU0UY9tfkNhEwlIKml4AXePrUVAlvp8qvgYigwzgGc50x
         qEs9DmKe0cLXhZU7ax1p4GOtBJJn+/oDDStdpQGTnaSw7TRaH4U9zFAi/T+ehxsejNkw
         qVIw==
X-Gm-Message-State: ACgBeo0bCQyptN0ZakgA4Pxp1cBflgvlR/e9uo3i4i/fipwNTs3KIyVo
        e2K/xNWF642mAKgBU2908QY=
X-Google-Smtp-Source: AA6agR74gN/Xj6CR93wrkDgpBU4uyyTXxxFhv531ShDGFeFjwDWXTSLw+iPpQOL7fuxOLOc8RLh9UQ==
X-Received: by 2002:a05:6808:1c07:b0:342:d3f8:e73c with SMTP id ch7-20020a0568081c0700b00342d3f8e73cmr1767595oib.71.1660314773714;
        Fri, 12 Aug 2022 07:32:53 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id n28-20020a0568080a1c00b003436fa2c23bsm282879oij.7.2022.08.12.07.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 07:32:53 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, vkoul@kernel.org, kishon@ti.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@linux.ie, heiko@sntech.de,
        hjc@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 2/4] dt-bindings: phy: phy-rockchip-inno-dsidphy: add compatible for rk3568
Date:   Fri, 12 Aug 2022 09:32:45 -0500
Message-Id: <20220812143247.25825-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220812143247.25825-1-macroalpha82@gmail.com>
References: <20220812143247.25825-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add a compatible string for the rk3568 dsi-dphy.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
index 8a3032a3bd73..5c35e5ceec0b 100644
--- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
+++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
@@ -18,6 +18,7 @@ properties:
       - rockchip,px30-dsi-dphy
       - rockchip,rk3128-dsi-dphy
       - rockchip,rk3368-dsi-dphy
+      - rockchip,rk3568-dsi-dphy
 
   reg:
     maxItems: 1
-- 
2.25.1

