Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8EFB52CBCA4
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 13:18:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388777AbgLBMOd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 07:14:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388770AbgLBMOc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 07:14:32 -0500
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86AE6C061A48
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 04:13:14 -0800 (PST)
Received: by mail-pl1-x642.google.com with SMTP id v3so997394plz.13
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 04:13:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dTiWdb9iAUBCBAVpiIwZei7I81QtYKoLbPssq1TLxOs=;
        b=XBKLmOertB3L450yhgpAZglcBbnbeBIsCSpn64+2SgzuAVUt55HxnOEQfj+HCdP5mh
         AO0jCzvFboAx5kmKB+m5mvC1fN9sAR46Xx3FYVSgznwK+JdWhiSZ23UZPKRqy9w70e8n
         4z8Mp3N7+QxMsWXKOyDdDrZLB3lIkQB9clWMA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dTiWdb9iAUBCBAVpiIwZei7I81QtYKoLbPssq1TLxOs=;
        b=Cu5LvtQ+5I753s6dZDvQXxRwHmlozljW5BAcEXvn2odgIGtglhJKmLgRyzlV0RZDXB
         95fgVLJ4IqMr5Hz2p83N9HPJ+kR+VQMCckYzXfA3YESWyNf1e5yd6eGvFvanAUz/TnHf
         ormn1Gnky7eCrcj4eLcONSuD7MKdKwmp4u10LFUqcDuvlVbtXADUifODfnjpba+u9KTu
         QJztqwxG289EiA1LF67vbbgsJIOJB85Won7nPYoEah2awCenzbTBDBQqZ+Q+VpzEYnnd
         Ma+RixHvmRWBTnza4owhbiastezgt0Go7D0OQyGMW6Vy3yvFh6bFOezz5C5WEuDIxsEb
         rplQ==
X-Gm-Message-State: AOAM530LkG8f75YMZ6Gv/eGNWWMWkTsDE33ZbeI8pD4l/ERRcOsq8Ski
        oY3AXPWmKEPr7hEBXIoz0LSpwQ==
X-Google-Smtp-Source: ABdhPJwrMvFDSf/RAgh9pkO/FOZ2OK/wN7yy1jkbXnkKxbUo/4qmj00dJsUjfj0YI55lpc9zacjHKw==
X-Received: by 2002:a17:90a:7301:: with SMTP id m1mr2184615pjk.128.1606911194151;
        Wed, 02 Dec 2020 04:13:14 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:fd53:e9ba:b313:1b1d])
        by smtp.gmail.com with ESMTPSA id b37sm1951315pgl.31.2020.12.02.04.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 04:13:13 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Matteo Lisi <matteo.lisi@engicam.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 02/10] dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
Date:   Wed,  2 Dec 2020 17:42:33 +0530
Message-Id: <20201202121241.109952-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201202121241.109952-1-jagan@amarulasolutions.com>
References: <20201202121241.109952-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core MX8M Mini is an EDIMM SOM based on NXP i.MX8MM from Engicam.

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board from Engicam.

i.Core MX8M Mini needs to mount on top of this Evaluation board for
creating complete i.Core MX8M Mini EDIMM2.2 Starter Kit.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 67980dcef66d..2e520733ce4e 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -667,6 +667,8 @@ properties:
         items:
           - enum:
               - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
+              - engicam,icore-mx8mm               # i.MX8MM Engicam i.Core MX8M Mini SOM
+              - engicam,icore-mx8mm-edimm2.2      # i.MX8MM Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
               - kontron,imx8mm-n801x-som  # i.MX8MM Kontron SL (N801X) SOM
-- 
2.25.1

