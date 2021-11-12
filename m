Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CF1A844E19C
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 06:39:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231264AbhKLFl7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 00:41:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229890AbhKLFl6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 00:41:58 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 250EFC061766
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 21:39:08 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id h24so5834979pjq.2
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 21:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y7lfOFFMzKe+kiTUn4fLEQP7ZxMtSNXXkb4oUnjFYrE=;
        b=Uut0dc0q27gGEIx7ezk23/w2XG4rJfYHhE2oWggCCsYaAnJCBmwLRTj9oX5bmB5rN1
         waLtj6A1dBZwvUCD98FlX59U4XCMDysMvyEwso+d8tyylbljugbujgFEtsXg2HA5UUNX
         ffRsMLCan8qlMSkQRMVAmpE4ARai1Kd0MWCK0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y7lfOFFMzKe+kiTUn4fLEQP7ZxMtSNXXkb4oUnjFYrE=;
        b=CAr0BBtlrHwWzLzIKcAiDgzqUO0RGoSsxn2rcpra2l3FL6TciaylWvrCvoDkERBLaB
         YhXDgZvZyC6Qv0r/FfWYrS+cN2qvhsrC3cM1JBbRIEDsF9oOG2KMCweruLUY9aRSd2mL
         yMLCV2qLAH66LATc5XdUpTOj4gM2so76lf6N3F2fepJOxZvKyY5lNuGTP4xtP57btw3U
         iVZnHvG4KNktsA32m6TWk3fiAtKK5+ogg8WU4W1cReOtI7BrXtoptM4IODhCEvaiPl5L
         tz+Jom/NaUuyw28iMbF3qnW1sMK+RfGdov1PLM9RTFZxSneovJ27/awLHLB0+ZjHdkx3
         aHqQ==
X-Gm-Message-State: AOAM531FhYQX2oxC3SYoq/L5EslK573kChK8D19eNTQnTz7T+OShrDGh
        4hDKENrs8a31toSk/+QLamUf6A==
X-Google-Smtp-Source: ABdhPJxvpPfjHFmX6h1llLBSmbiKNzUM2EMJL/tdlZxM0sd1VXO3uhl5VV3vwQ5PPsM+cP3kzXCxGg==
X-Received: by 2002:a17:902:ec8f:b0:142:11aa:3974 with SMTP id x15-20020a170902ec8f00b0014211aa3974mr5227566plg.30.1636695547706;
        Thu, 11 Nov 2021 21:39:07 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:de19:8cdf:97cf:a6b1])
        by smtp.gmail.com with ESMTPSA id v38sm3764345pgl.38.2021.11.11.21.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Nov 2021 21:39:07 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 2/3] dt-bindings: arm: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0 10.1" OF
Date:   Fri, 12 Nov 2021 11:08:55 +0530
Message-Id: <20211112053856.18412-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211112053856.18412-1-jagan@amarulasolutions.com>
References: <20211112053856.18412-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

10.1" OF is a capacitive touch 10.1" Open Frame panel solutions.

i.Core STM32MP1 needs to mount on top of C.TOUCH 2.0 carrier with
pluged 10.1" OF for creating complete i.Core STM32MP1 C.TOUCH 2.0
10.1" Open Frame board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- Fix line-length warning 

 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index bcaf7be3ab37..b07720ea9611 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -77,6 +77,7 @@ properties:
         items:
           - enum:
               - engicam,icore-stm32mp1-ctouch2       # STM32MP1 Engicam i.Core STM32MP1 C.TOUCH 2.0
+              - engicam,icore-stm32mp1-ctouch2-of10  # STM32MP1 Engicam i.Core STM32MP1 C.TOUCH 2.0 10.1" OF
               - engicam,icore-stm32mp1-edimm2.2      # STM32MP1 Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit
           - const: engicam,icore-stm32mp1            # STM32MP1 Engicam i.Core STM32MP1 SoM
           - const: st,stm32mp157
-- 
2.25.1

