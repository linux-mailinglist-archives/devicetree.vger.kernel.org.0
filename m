Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 151B12DFB94
	for <lists+devicetree@lfdr.de>; Mon, 21 Dec 2020 12:37:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726659AbgLULdp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Dec 2020 06:33:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726344AbgLULdj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Dec 2020 06:33:39 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61219C0611CD
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 03:32:34 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id w1so7708153pjc.0
        for <devicetree@vger.kernel.org>; Mon, 21 Dec 2020 03:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=V5g0Fxk7C0naTUIu01eMSChAjyhpoXuGHy8uA7He1GU=;
        b=bfpscItBOXZXMphURSPsQh8hk+cMeDQvKd0pnsw0EzwBSbjDNMUPq1ADO1SkJHgPSx
         myfAYx/UUoBVH/YOqo4DBmWoFdiuDv700VIuGAcEdcitUUTvY2/EIoxt9FUvytAmyk/X
         NShEy2nE9kkXZnbd2lGSlKLGHwv+et8qjzMXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=V5g0Fxk7C0naTUIu01eMSChAjyhpoXuGHy8uA7He1GU=;
        b=stOm8Hp8D9HvAK9V/kbOF5BZ0152IL+E957fTVpgAeWBV8WmlGoa97dSSCP6f/hTLC
         ivmy8hk60j67ILnBc4GUot25wKR+ZfSbc4NtNXB5w9aIZL5P6TyrNXk83oHKyoWoXuxk
         t9S5HQmhjzn13EmM9Hx4nUrLwpornsm/KDxHMM8CBuqIQL0xPPX+uRe5s9DIDGRzSfJz
         ztokpHyNuE4ExyBScrqw7FsIUlkJPe+BOhAK/SoHX8t6tMDgMrBTPtfQ4xVv/cKY+ehp
         gn7vU1zaDv87hJkkCDoqxxSETzwo8BFVdQ4eN6saABQ4o7xGnpl7RrVjcG31qQlQp2AJ
         626w==
X-Gm-Message-State: AOAM532D3e5yn/oRjfU6OvoHEUBIJp46W6172TgDCmdlHQSUQRY5YjTz
        05wvDS0rjLeBw+mAdsYRst2rAg==
X-Google-Smtp-Source: ABdhPJyv8LW43+GsiZVqLEOSi1M3L5hJJEJRThEOBr7vpQZG+ssUn5LNHng4OAP8hRRbPv+xOzi9iw==
X-Received: by 2002:a17:90a:67c5:: with SMTP id g5mr17544542pjm.20.1608550354292;
        Mon, 21 Dec 2020 03:32:34 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:b9d4:ed90:a69c:2530])
        by smtp.gmail.com with ESMTPSA id 197sm16714859pgd.69.2020.12.21.03.32.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Dec 2020 03:32:33 -0800 (PST)
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
Subject: [PATCH v2 5/6] dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
Date:   Mon, 21 Dec 2020 17:01:50 +0530
Message-Id: <20201221113151.94515-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201221113151.94515-1-jagan@amarulasolutions.com>
References: <20201221113151.94515-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core MX8M Mini is an EDIMM SoM based on NXP i.MX8M Mini from Engicam.

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive Evaluation
Board from Engicam.

i.Core MX8M Mini needs to mount on top of this Evaluation board for
creating complete i.Core MX8M Mini EDIMM2.2 Starter Kit.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- updated commit message

 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index e653e0a43016..8c8f7728788d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -669,6 +669,7 @@ properties:
               - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
               - engicam,icore-mx8mm               # i.MX8MM Engicam i.Core MX8M Mini SOM
               - engicam,icore-mx8mm-ctouch2       # i.MX8MM Engicam i.Core MX8M Mini C.TOUCH 2.0
+              - engicam,icore-mx8mm-edimm2.2      # i.MX8MM Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
               - kontron,imx8mm-n801x-som  # i.MX8MM Kontron SL (N801X) SOM
-- 
2.25.1

