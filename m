Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D9B92DFB8F
	for <lists+devicetree@lfdr.de>; Mon, 21 Dec 2020 12:37:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726314AbgLULdY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Dec 2020 06:33:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725898AbgLULdX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Dec 2020 06:33:23 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF2A1C061285
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 03:32:18 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id j1so5470812pld.3
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 03:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=abAt+NSVaf1KMcs1DZiiEd8qzzP88WzmkG/ATpTCGjg=;
        b=CXPzRnXUvqW/ytMFY5VMHPB7/7tG4WgmC4rgtY004ulKieQNHRUgyUlgrFHGxbv46B
         8T7vNdPXnt3o2RfqR1554zFUJNo/lClCoTZsS4Zl0XPek7OkozoJDQyBUsfM+unHitGz
         UBitmgMfExF1gLnX3r9Z2OwZGo57GRS/7FnxU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=abAt+NSVaf1KMcs1DZiiEd8qzzP88WzmkG/ATpTCGjg=;
        b=GDmVkJbspmBEBe+t2rZmiCgeseeHIkP5OJzpXL6rmeRdEfHPDwxPfU1NmN4U/NjzpX
         9fwgkE3aBFWK8wTJtfVIioKza8Ek0h42EGEdsg2aaJnuwJ9KF4jl0p8gzoFgM7h3e+Rt
         FArsrCO+vu5DZP6SiEzwf2sxzMfRuiY/rgHdwPSz5NsIBOieby0q8GRaFiGiVSTSDxwd
         +37CYL86DIHkl8/RCkfN6aMc/Wjc1pHUwcBKkEHW/clzRyq+eh0S5X5M4Yzww9QHQ6zY
         Q06FLXg+otVDiLPe1lmOfccIo4EbTetkfJ/bjnNsW5K50l4/SCePtiDskYb2rTysEZ0J
         Netw==
X-Gm-Message-State: AOAM532elEl7EF5XI2qL0Czf6tNpe1ugmR9CQ76i5yC2bSL394pjST3c
        kUJFNebLv/+WERLAjAcBV1O7Dg==
X-Google-Smtp-Source: ABdhPJxnBDBcCKVkOAY0qr35XwO/GUoAuLGRcqUnMIEKyrss8ULZK3EZ/s1uOmyzaWk4X4Ok5hnQsg==
X-Received: by 2002:a17:90a:3d0b:: with SMTP id h11mr1347867pjc.188.1608550338269;
        Mon, 21 Dec 2020 03:32:18 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:b9d4:ed90:a69c:2530])
        by smtp.gmail.com with ESMTPSA id 197sm16714859pgd.69.2020.12.21.03.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 03:32:17 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: [PATCH v2 2/6] dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini C.TOUCH 2.0
Date:   Mon, 21 Dec 2020 17:01:47 +0530
Message-Id: <20201221113151.94515-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201221113151.94515-1-jagan@amarulasolutions.com>
References: <20201221113151.94515-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core MX8M Mini is an EDIMM SoM based on NXP i.MX8M Mini from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

i.Core MX8M Mini needs to mount on top of this Carrier board for
creating complete i.Core MX8M Mini C.TOUCH 2.0 board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- updated commit message

 Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 67980dcef66d..e653e0a43016 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -667,6 +667,8 @@ properties:
         items:
           - enum:
               - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
+              - engicam,icore-mx8mm               # i.MX8MM Engicam i.Core MX8M Mini SOM
+              - engicam,icore-mx8mm-ctouch2       # i.MX8MM Engicam i.Core MX8M Mini C.TOUCH 2.0
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
               - kontron,imx8mm-n801x-som  # i.MX8MM Kontron SL (N801X) SOM
-- 
2.25.1

