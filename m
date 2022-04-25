Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56E2250E21E
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 15:44:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238132AbiDYNqH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 09:46:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242257AbiDYNqC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 09:46:02 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7480D4B1C8
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:42:50 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id s17so27151966plg.9
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 06:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ep/Z4u0b5W5ZrSMaOZGCX1Gp+XElSZzNj7MhnS39q4s=;
        b=GCT3QdZfuO4MKw84a9de0IwZhHKMmIvCHysg110umITHoTZEXyxBZC9xUvc1o0xKjB
         uUXEsp03vE6mB17iAuch9gACGod/Mt/KJVyFO2pe6LSAN5pJI19jsLsAit6Yinby7EM3
         vVAd4sHHj34y4WMJkdjobjKxNDNyjUxukjsJQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ep/Z4u0b5W5ZrSMaOZGCX1Gp+XElSZzNj7MhnS39q4s=;
        b=lccYrjmvqBb13LtUVXsCeKX4CYmLuiGaDJvuzhOruCE32FEabhgv7BsbQZRvEoEgyV
         KxhgoMKhWG/v5NgREbv6LYgoLUJ9w22xh2gK1sdFkBWhrKVXouBqU27Xdavr21YQj5Ai
         9+pOfH7P1b2ZE+jJwXrJaKgyZwRrKMeI57j4Hk3/cgnX7JwcJY6vQsqXd9XAl+B4r0sj
         GyY4OPSsMeWcPKDX8v4upCHnNLcGVlsOYGPD95sehKIDZuY3WiUOqd4O67sUcqAwDeGr
         vEIjcmTnGvA2O5KnNMO2BgB1i6U/C+47FYZOVzNgpcEnwIgUG9P3M2urmIxce6QqbOEC
         PiYQ==
X-Gm-Message-State: AOAM531uv5k32JiiZOLKEZyirtZqLv6HzxqrCBHet8oX+IrZXnP6Ou5J
        FIZr0tAIint0uHBqj/SSXyO5up4fh1KykQ==
X-Google-Smtp-Source: ABdhPJxNgA/qV9ctFK0tkuLRtF1IVhQU94xfp/kjs1NdQOf53wbvl4vefqcp8QSlxXrpP+6n+i58WA==
X-Received: by 2002:a17:90b:4c45:b0:1d7:b1d:b312 with SMTP id np5-20020a17090b4c4500b001d70b1db312mr23130527pjb.24.1650894169946;
        Mon, 25 Apr 2022 06:42:49 -0700 (PDT)
Received: from localhost.localdomain ([183.83.137.38])
        by smtp.gmail.com with ESMTPSA id c9-20020a63a409000000b0039912d50806sm9810089pgf.87.2022.04.25.06.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Apr 2022 06:42:49 -0700 (PDT)
From:   Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Matteo Lisi <matteo.lisi@engicam.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
        Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
        Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Subject: [PATCH v3 1/3] dt-bindings: arm: fsl: Add Engicam i.Core MX8M Plus EDIMM2.2 Starter Kit
Date:   Mon, 25 Apr 2022 19:12:22 +0530
Message-Id: <20220425134224.368908-1-abbaraju.manojsai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220418144907.327511-2-abbaraju.manojsai@amarulasolutions.com>
References: <20220418144907.327511-2-abbaraju.manojsai@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core MX8M Plus is an EDIMM SoM based on NXP i.MX8M Plus from Engicam.

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive Evaluation
Board from Engicam.

i.Core MX8M Plus needs to mount on top of this Evaluation board for
creating complete i.Core MX8M Plus EDIMM2.2 Starter Kit.

Add bindings for it.

Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3 :
  - added the device binding of imx8mp soc as per existing convention .
Changes for v2 :
  - added the device binding of imx8mp as per soc order.
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 13aee9fe115e..3cb32d67cf6a 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -909,6 +909,13 @@ properties:
               - toradex,verdin-imx8mp-wifi  # Verdin iMX8M Plus Wi-Fi / BT Modules
           - const: fsl,imx8mp

+      - description: Engicam i.Core MX8M Plus SoM based boards
+        items:
+          - enum:
+              - engicam,icore-mx8mp-edimm2.2       # i.MX8MP Engicam i.Core MX8M Plus EDIMM2.2 Starter Kit
+          - const: engicam,icore-mx8mp             # i.MX8MP Engicam i.Core MX8M Plus SoM
+          - const: fsl,imx8mp
+
       - description: PHYTEC phyCORE-i.MX8MP SoM based boards
         items:
           - const: phytec,imx8mp-phyboard-pollux-rdk # phyBOARD-Pollux RDK
--
2.25.1
