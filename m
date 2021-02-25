Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CA90C3256A7
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 20:28:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234308AbhBYT2G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 14:28:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234147AbhBYTZy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 14:25:54 -0500
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D738C06178B
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:25:08 -0800 (PST)
Received: by mail-pl1-x635.google.com with SMTP id g20so3764989plo.2
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:25:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=282A101crg/XNOHEhfuzISYb0UTcmSFl9PM6BPqD/Z8=;
        b=WgjjHJo+/xCDXem9ilfyKzOlSVT7Lj+R6CgsAIARDwhFxMTm7LAO4zgCmyi0RHsp9A
         nJcVURkzNWqJCXq2kzj9ECi2UajOPZlAZV3pqxemeG9/fxK6ZOPqtmcclKAJaxxL7UTv
         uFKZF4C75w8TRFjeRuIBQ88MhSGuI4O7td8IE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=282A101crg/XNOHEhfuzISYb0UTcmSFl9PM6BPqD/Z8=;
        b=k+SPdG0mZNHgzEJMBRsbUkcZhfZHXts8hhsbp5x/j5du0qphPOxzkC8CJBmqv8gek7
         1dMi+USYzOtXMi3TbWfBssv6kbrPf0Yc9tigmof/95TRVutMDiIFb57//e0QXxua5m3p
         GM4xFCJnYTfxMVryv1kav81I86xuWpxzLSZ8ZidNRoGrDgp6ec0FQkpc4LW6piMqBxrK
         6gy5VtCo8F4eA9BmDGng+8PVg1i0fUsI/2x849z46Cxas7sw52oUuhEmnQdb3V2fb96i
         uNQqmQkC6j6MRtQznKtUMEgD7vT94XcpQXfG4hn69m1lVkAlxQxVYvJ/wEeO+qZCwKkI
         cnog==
X-Gm-Message-State: AOAM530UyjPod6sLl4JIPQD9S5CClgo5ouC4L9UanIjKdkF77nPSRSoZ
        iTnfP9+EzbArhd0w6J6shd/pSQ==
X-Google-Smtp-Source: ABdhPJwT60+8zcLQO1DfCyY5AhL6itc/wXZ9fI87PCxGuHhOWjhoZa1f3zzQCKvS7PSbYRXsJxjtTQ==
X-Received: by 2002:a17:902:a517:b029:de:79a7:48d9 with SMTP id s23-20020a170902a517b02900de79a748d9mr4386374plq.45.1614281107598;
        Thu, 25 Feb 2021 11:25:07 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([103.161.30.220])
        by smtp.gmail.com with ESMTPSA id c78sm7025787pfc.212.2021.02.25.11.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 11:25:07 -0800 (PST)
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
        Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>
Subject: [PATCH v4 1/5] dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini C.TOUCH 2.0
Date:   Fri, 26 Feb 2021 00:54:00 +0530
Message-Id: <20210225192404.262453-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210225192404.262453-1-jagan@amarulasolutions.com>
References: <20210225192404.262453-1-jagan@amarulasolutions.com>
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
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes for v4:
- collect ack's
Changes for v3:
- add proper bindings
Changes for v2:
- updated commit message

 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 297c87f45db8..949442d4f385 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -688,6 +688,12 @@ properties:
               - variscite,var-som-mx8mm   # i.MX8MM Variscite VAR-SOM-MX8MM module
           - const: fsl,imx8mm
 
+      - description: Engicam i.Core MX8M Mini SoM based boards
+        items:
+          - const: engicam,icore-mx8mm-ctouch2     # i.MX8MM Engicam i.Core MX8M Mini C.TOUCH 2.0
+          - const: engicam,icore-mx8mm             # i.MX8MM Engicam i.Core MX8M Mini SoM
+          - const: fsl,imx8mm
+
       - description: Kontron BL i.MX8MM (N801X S) Board
         items:
           - const: kontron,imx8mm-n801x-s
-- 
2.25.1

