Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E40FB327325
	for <lists+devicetree@lfdr.de>; Sun, 28 Feb 2021 16:46:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231127AbhB1PpP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Feb 2021 10:45:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230521AbhB1PpM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Feb 2021 10:45:12 -0500
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C23BEC0617AB
        for <devicetree@vger.kernel.org>; Sun, 28 Feb 2021 07:44:08 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id g4so9837961pgj.0
        for <devicetree@vger.kernel.org>; Sun, 28 Feb 2021 07:44:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rm+iWIkQsOJXa+GFU3e3XMxFTQJDqaymZnY4YDsrYw8=;
        b=QCiiXcBMZPgqhQE6cp1APbZ7+JeRtahxDRaJ+GgOzOmsPECn+MNgO7CWxM4eKtd3ZR
         j3KlLyNNs8KO15EElx7Gk+oB3rxldX7MLuVy4OClIWa2Zp175eOSeJF+p5ZSBPoEPCOu
         PzRELASivO76sq3POy4laLzy1077DgxR4uTHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rm+iWIkQsOJXa+GFU3e3XMxFTQJDqaymZnY4YDsrYw8=;
        b=SH5U7jvKbITLsinL183g3GH7QUIunXBfwYIymG5DVk1qgi/lTOnD8Yi7oG11Z4D648
         hog6liSc4FXWZtZc6Y6XVRhgbrndrKrNsBff49F/F4mTELBRlfrRUuSNTAKEIO2gBk/h
         aocCvY9wit/6isIvij3pdBBRPKvxFYcdlkbQmjNqBaT0leRI8TVN1dn2aR04UC/Hint6
         H9BAyf1gatH5zjyNhHS97NutUI0R3xFJVY3qC6LxP6CnWEwyb1qlYBM5p8nCSIHC97y1
         6EHFcPMNfmlqwOQz2guhiyxoOf+sGFclmK7wDCJityrBfS9yY+llrmNhoeqGU06/eDrT
         hdXQ==
X-Gm-Message-State: AOAM533rFOuzzqeVgGlKZ0sYyvdPeskoiPXf4iTcp5qSAvDffJrOv7Lv
        py6BdMMZZNFXlLenQswc9CfqPQ==
X-Google-Smtp-Source: ABdhPJxGafeYO4tUzo5x+Qi+nANpC3U6auTbK1GTueLh4C1TM/nibUaetvyyjsesUnCYDBYjNPjMGg==
X-Received: by 2002:a62:b416:0:b029:1e4:fb5a:55bb with SMTP id h22-20020a62b4160000b02901e4fb5a55bbmr11076393pfn.80.1614527048358;
        Sun, 28 Feb 2021 07:44:08 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([103.161.30.225])
        by smtp.gmail.com with ESMTPSA id j3sm13522133pgk.24.2021.02.28.07.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 07:44:08 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 06/10] dt-bindings: arm: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0
Date:   Sun, 28 Feb 2021 21:13:19 +0530
Message-Id: <20210228154323.76911-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228154323.76911-1-jagan@amarulasolutions.com>
References: <20210228154323.76911-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

i.Core STM32MP1 needs to mount on top of this Carrier board for
creating complete i.Core STM32MP1 C.TOUCH 2.0 board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none 

 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 255d3ba50c63..3e45516403ce 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -65,6 +65,12 @@ properties:
           - const: st,stm32mp157c-ed1
           - const: st,stm32mp157
 
+      - description: Engicam i.Core STM32MP1 SoM based Boards
+        items:
+          - const: engicam,icore-stm32mp1-ctouch2    # STM32MP1 Engicam i.Core STM32MP1 C.TOUCH 2.0
+          - const: engicam,icore-stm32mp1            # STM32MP1 Engicam i.Core STM32MP1 SoM
+          - const: st,stm32mp157
+
       - description: Engicam MicroGEA STM32MP1 SoM based Boards
         items:
           - enum:
-- 
2.25.1

