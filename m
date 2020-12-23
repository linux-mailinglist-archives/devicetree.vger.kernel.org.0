Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 277AB2E20C4
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 20:20:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728235AbgLWTQs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 14:16:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50690 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727505AbgLWTQs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 14:16:48 -0500
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com [IPv6:2607:f8b0:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06AD9C0617A6
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 11:16:08 -0800 (PST)
Received: by mail-pf1-x42d.google.com with SMTP id v2so10894667pfm.9
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 11:16:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Ag3dXPpRmREq+I8glreHKVpu+9jqPPChbXkwaws6NbE=;
        b=hL/058JHlypBZDHvEe+eekdzuWVpsJ41/lnrT70OER3no53a69JSe99X/YfWK3OkP2
         aqT4FdoQmjRF/SMZ+8BTQcD8Tk+7P89l5RtlulZWRLN4dzXJqqKnwUVCJxQ+rRxFROuq
         7HaytpoCpIydIigQNMTRIOs4BbsiKzxr7dbt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Ag3dXPpRmREq+I8glreHKVpu+9jqPPChbXkwaws6NbE=;
        b=RskkUJaUlaCMo2nQaA+fYkjWHCDiJKTiE9vZgc8HG/3Dsx8M7K1HRu1Z54vevtI3sS
         aUFPqOffZG1qpjdC+WR69BwuvmloZ1GSRZWqppxsTkjbHUpfe6L5H4sLOhuYwCmOVO9K
         PMoZ6aG9lhv5qkKP3exK4oa69VQxK66JcwJs+ObdimNKqYGGXzaDhcAMI5mOOBDN6cYc
         kGd28yG7ygtVVLZ0HXr7Vp24vErpC1KBEl+szlZVtgZm4qv5Cz4EOs9ianuJ3bXrV0pK
         xUIs2hknaJjrQMzjSiTlyfCVtWd08kMaUlGeleqvOoZdhPnDDTEqlLtKt67+JdOj8/5q
         Cmuw==
X-Gm-Message-State: AOAM533LCKiL9C6r+cElyZRHvciVR2vIzg+Da68q//nxxeh9VO7oviFV
        iclGO/CYHPs82d+tvoPwzjUFdg==
X-Google-Smtp-Source: ABdhPJzCNa4w84pm49MnxQ3LnfJjvkvDh+ORDt6f8bKAUE2KpoT+FQGvxo1RB99ZzFn7ssetFazWqw==
X-Received: by 2002:a05:6a00:7c5:b029:19e:2965:7a6 with SMTP id n5-20020a056a0007c5b029019e296507a6mr25309563pfu.60.1608750967615;
        Wed, 23 Dec 2020 11:16:07 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:29f0:6e54:608c:e1b9])
        by smtp.gmail.com with ESMTPSA id i2sm397640pjd.21.2020.12.23.11.15.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 11:16:07 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/5] dt-bindings: arm: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0
Date:   Thu, 24 Dec 2020 00:43:58 +0530
Message-Id: <20201223191402.378560-2-jagan@amarulasolutions.com>
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

MicroGEA STM32MP1 needs to mount on top of this MicroDev 2.0 board
for creating complete MicroGEA STM32MP1 MicroDev 2.0 Carrier board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index e7525a3395e5..56b7e0b800b3 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -64,6 +64,13 @@ properties:
           - const: st,stm32mp157c-ev1
           - const: st,stm32mp157c-ed1
           - const: st,stm32mp157
+
+      - description: Engicam MicroGEA STM32MP1 SoM based Boards
+        items:
+          - const: engicam,microgea-stm32mp1-microdev2.0
+          - const: engicam,microgea-stm32mp1
+          - const: st,stm32mp157
+
       - description: Octavo OSD32MP15x System-in-Package based boards
         items:
           - enum:
-- 
2.25.1

