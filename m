Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA04E2E20CA
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 20:20:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727977AbgLWTSB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 14:18:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727902AbgLWTSB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 14:18:01 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15F3DC061248
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 11:17:21 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id n10so174588pgl.10
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 11:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Nnna4PmTWcFNsyV+UV3WWWyqKSiU4/jQpG0/Sfx1Jrc=;
        b=YlsvXwUe0DtmKpuSgiYFTNqIg1gREHCdhvX849um3Rc8LNqIPh1zfM6FqxuQ7If8EQ
         b4dZ7LlNKkyOl/Rb7jixbxaXwbm71se5r/6NHA6uWGGgMZ641tOxpqEbXe3JW58PluEK
         XV4IAelRkSM1GxQv/NzUBQHKK4MvzZNSX0NpI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Nnna4PmTWcFNsyV+UV3WWWyqKSiU4/jQpG0/Sfx1Jrc=;
        b=NGMtvLdup2cl/clj17JQjdue50YRfaiCn1OnPwe3O8X+WMJ+7NbSFsE3OGg5bMGxxF
         /aBBiglOCNb+auJHLrxWVH0VP9b2a9MHiN5/b6cal3zjnGBk6f11xaWqVFDw+2JuGNgE
         xYngKhZjynmNA1lnQQbZ53hD61cTf2oWP0vKyOIlLzqTaFU2ShCzmX8sgu8rKwPQQELT
         TUVkVyW7H1zzR5g9FJ7edGLjax72yX9CnaXFMpnBorPR50OxpHVnQ+p+1Dya5QDNZboA
         Gt9jRYQB1nrWj3BmQfgwT3T4x1NnDE8KT18tMQZYE2AkbuX6jrqL5nT5wK0UqX+I3Tnz
         BLGA==
X-Gm-Message-State: AOAM532DdYtu7PdHaXEItvs3l11RyknFF6vS+3CbccDHALgVLThlbR7N
        IgkBkj2zjr7tX29Zziz6y1GVPw==
X-Google-Smtp-Source: ABdhPJyjhf2vyMvimgzvnRq8+EtV4ciRNSDvEc6wzOdtYF1TA+6gom3gYRY5jUtNYmBfhqgSPZB4yw==
X-Received: by 2002:a63:5866:: with SMTP id i38mr25758758pgm.26.1608751040692;
        Wed, 23 Dec 2020 11:17:20 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:29f0:6e54:608c:e1b9])
        by smtp.gmail.com with ESMTPSA id i2sm397640pjd.21.2020.12.23.11.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 11:17:20 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 4/5] dt-bindings: arm: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 7" OF
Date:   Thu, 24 Dec 2020 00:44:01 +0530
Message-Id: <20201223191402.378560-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201223191402.378560-1-jagan@amarulasolutions.com>
References: <20201223191402.378560-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

MicroGEA STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.

MicroDev 2.0 is a general purpose miniature carrier board with CAN,
LTE and LVDS panel interfaces.

7" OF is a capacitive touch 7" Open Frame panel solutions.

MicroGEA STM32MP1 needs to mount on top of MicroDev 2.0 board with
pluged 7" OF for creating complete MicroGEA STM32MP1 MicroDev 2.0
7" Open Frame Solution board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 56b7e0b800b3..255d3ba50c63 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -67,7 +67,9 @@ properties:
 
       - description: Engicam MicroGEA STM32MP1 SoM based Boards
         items:
-          - const: engicam,microgea-stm32mp1-microdev2.0
+          - enum:
+              - engicam,microgea-stm32mp1-microdev2.0
+              - engicam,microgea-stm32mp1-microdev2.0-of7
           - const: engicam,microgea-stm32mp1
           - const: st,stm32mp157
 
-- 
2.25.1

