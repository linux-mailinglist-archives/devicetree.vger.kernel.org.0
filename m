Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A7282CBCB3
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 13:18:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729298AbgLBMO6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 07:14:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727403AbgLBMO5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 07:14:57 -0500
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com [IPv6:2607:f8b0:4864:20::1043])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8690AC061A52
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 04:13:34 -0800 (PST)
Received: by mail-pj1-x1043.google.com with SMTP id m5so875032pjv.5
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 04:13:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=GQr5ccaZgv0zXC1QijecfzErZfDT23xUiGG1fotszzw=;
        b=Xm9WsQa5eaKV4VZZhQcSfyoL3LcYmruqRsmfTm9azWY6iks2s60BjxbbCDmRu95Zqx
         W6Jl0MQoEr5+iy+niasJUG5uAtc4t8BYCNevX9HLUqTS+GagiObefMv/yynJ3cg8u7j6
         Hofiung7lZXuNROcMF/gcydRcNlUcZNRPgUDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=GQr5ccaZgv0zXC1QijecfzErZfDT23xUiGG1fotszzw=;
        b=IZZvTpAj2Q/u7ajz+mRxNVHKYaw+8PSLFqrBKR+yjPNWGlnj/G9+CEh0Cu7/+80sJ9
         MR1t7TkyMfxhbmjVUDDSgLudBXMJ/dHKyBP2/KKVph9whpzgOaPWO7nox9Bc4zcVTVj5
         APMzXpRr1F9r2Wl8HZZSl5uJRhZJeVbMQlu534e+tdHLEhgbCGKVHyJ8n+hjvQQmFHpm
         18N8hnS4jqSUK9UXu4UGAe1FCNUk2BN4Ic6hOzwwoOFAs1M8vyXm/KGjSA7xFStoUxmE
         5KOvz/gf1vdOK3dhq0WMbVuOrCOCaWppJ8Tq3mvWUjRmn/HnKx/hxU907jjRB3VuIInr
         QddQ==
X-Gm-Message-State: AOAM530nybWKZdbycwjfth4xG7aCVjq/plyT4wVMk0gQr51fhw3d3Cwm
        ZSM1+zhfoNNVirYnAEaO6DTZXQ==
X-Google-Smtp-Source: ABdhPJx5jJYDFWRfn9shUcmJctE13a6bTwhV2SeAsCtFcCa7AxAbmGnaw1v7S1JZSr4LI7GXQbV45g==
X-Received: by 2002:a17:90a:a595:: with SMTP id b21mr437530pjq.206.1606911214161;
        Wed, 02 Dec 2020 04:13:34 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:fd53:e9ba:b313:1b1d])
        by smtp.gmail.com with ESMTPSA id b37sm1951315pgl.31.2020.12.02.04.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Dec 2020 04:13:33 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Matteo Lisi <matteo.lisi@engicam.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 07/10] dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini C.TOUCH 2.0
Date:   Wed,  2 Dec 2020 17:42:38 +0530
Message-Id: <20201202121241.109952-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201202121241.109952-1-jagan@amarulasolutions.com>
References: <20201202121241.109952-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core MX8M Mini is an EDIMM SOM based on NXP i.MX8MM from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

i.Core MX8M Mini needs to mount on top of this Carrier board for
creating complete i.Core MX8M Mini C.TOUCH 2.0 board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 2e520733ce4e..8c8f7728788d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -668,6 +668,7 @@ properties:
           - enum:
               - beacon,imx8mm-beacon-kit  # i.MX8MM Beacon Development Kit
               - engicam,icore-mx8mm               # i.MX8MM Engicam i.Core MX8M Mini SOM
+              - engicam,icore-mx8mm-ctouch2       # i.MX8MM Engicam i.Core MX8M Mini C.TOUCH 2.0
               - engicam,icore-mx8mm-edimm2.2      # i.MX8MM Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
               - fsl,imx8mm-ddr4-evk       # i.MX8MM DDR4 EVK Board
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
-- 
2.25.1

