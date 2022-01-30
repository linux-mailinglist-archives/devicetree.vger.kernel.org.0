Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 624DD4A3AA3
	for <lists+devicetree@lfdr.de>; Sun, 30 Jan 2022 23:03:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237368AbiA3WDa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jan 2022 17:03:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232105AbiA3WDa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jan 2022 17:03:30 -0500
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49F11C061714
        for <devicetree@vger.kernel.org>; Sun, 30 Jan 2022 14:03:30 -0800 (PST)
Received: by mail-qk1-x736.google.com with SMTP id j24so8282083qkk.10
        for <devicetree@vger.kernel.org>; Sun, 30 Jan 2022 14:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=SY9YKyrTOsZYdhpR7gLV9XUnkAxeX5e6CMz+d+vP15g=;
        b=RvK1d0oNjw7XDzLRnZ8VsvbHJycZTAWrUI5YeHJNSKO5tTQkCbx7TrkqIZ0w+mD1TM
         DbC75gPJ4NFIs3R4ANpkiAkffMTXp8dQRcfbz3+ifxHnNF8jG2zoK5gTW1vTGBs3n7au
         xz9NirVrNWfUNEPNCojT25wxC/V8PQyyIM28hE+S4niQ96IQh7pgez0NXh3SXhhaeKzE
         5KrwyID6ZEwUjUmjc8GEIoxHgdFqMv+qGjDvX7PrFTaab6nSLMOl+Sw0LP+u2Nfml84X
         KwZUqJ2PBksiqi2yWXDUc9oMTELQ43kXFboL7i27n+1RjfD6bKgjbybNc8zq5rfTlfG4
         /8HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=SY9YKyrTOsZYdhpR7gLV9XUnkAxeX5e6CMz+d+vP15g=;
        b=4lIQrDWCIrUABVZyEDEZRptH2GWN7GMMJh5YyXLOjoeJzQShaBwKgMM/rYGMb/058x
         92wAYtrUiJ5QP3hvXb8He/qfy+y6cN7tLFgb0fm3lQZ5zaU59CLHQBdHQqV5DYQZ6Q1+
         Tubxe4p7tEKcE8znCxGiVZr0fcHeeNGCDPJmv9dbg6iCuDuknk2NzaDQSx/zVju0dtLv
         3PJ88xsEY2Ut27jNhw/NirSpK/sNS7cDctGqgbAfML/dGxwwuYAlhnHvbwu2bqdCcLla
         ZRRg/2P0SoqOLRT1D/JXdVwWNtByJo231UvciiVgfxmduaD2cAf5CPwElG2FggIfTfO/
         FNYA==
X-Gm-Message-State: AOAM532X2QZwBQd0CsCylwVfZCNWcGvPKgsSz3rhXeSB/ReU/i/i+Ipv
        pWMGAe1cEq/gB1QJuqvj3u7c54DygP8=
X-Google-Smtp-Source: ABdhPJzyrt88bgpefLRdQwuEGsixY1dfgovZLKKnuwMJxiS28ieAUANxCGWfWyq3TjQ3xQw4ckm5WQ==
X-Received: by 2002:a05:620a:4048:: with SMTP id i8mr6032906qko.482.1643580209305;
        Sun, 30 Jan 2022 14:03:29 -0800 (PST)
Received: from jesse-desktop.jtp-bos.lab (146-115-144-188.s4282.c3-0.nwt-cbr1.sbo-nwt.ma.cable.rcncustomer.com. [146.115.144.188])
        by smtp.gmail.com with ESMTPSA id h12sm7556651qkp.129.2022.01.30.14.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Jan 2022 14:03:28 -0800 (PST)
From:   Jesse Taube <mr.bossman075@gmail.com>
X-Google-Original-From: Jesse Taube <Mr.Bossman075@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     robh+dt@kernel.org, Mr.Bossman075@gmail.com,
        andre.przywara@arm.com, linux-sunxi@lists.linux.dev,
        mripard@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/4] dt-bindings: mmc: sunxi: Add Allwinner F1c100s compatibles
Date:   Sun, 30 Jan 2022 17:03:23 -0500
Message-Id: <20220130220325.1983918-2-Mr.Bossman075@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220130220325.1983918-1-Mr.Bossman075@gmail.com>
References: <20220130220325.1983918-1-Mr.Bossman075@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding for F1c100s's mmc controller.

Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>
---
V1 -> V2:
* New commit
---
 .../devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
index 4f62ad6ce50c..76137132500d 100644
--- a/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
+++ b/Documentation/devicetree/bindings/mmc/allwinner,sun4i-a10-mmc.yaml
@@ -55,6 +55,9 @@ properties:
       - items:
           - const: allwinner,sun50i-h616-mmc
           - const: allwinner,sun50i-a100-mmc
+      - items:
+          - const: allwinner,suniv-f1c100s-mmc
+          - const: allwinner,sun7i-a20-mmc
 
   reg:
     maxItems: 1
-- 
2.34.1

