Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB52332732D
	for <lists+devicetree@lfdr.de>; Sun, 28 Feb 2021 16:46:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231149AbhB1Pp5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Feb 2021 10:45:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231162AbhB1Ppr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Feb 2021 10:45:47 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D53BAC061221
        for <devicetree@vger.kernel.org>; Sun, 28 Feb 2021 07:44:20 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id d11so8292405plo.8
        for <devicetree@vger.kernel.org>; Sun, 28 Feb 2021 07:44:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y2r44D+mlU63eqpONY6ZtCXEHeBmJVOHShi6Vj77Qp8=;
        b=qjeVCLpcLxJNtoRnvg6VpGo4yd0Vik283yhpWyslsc2Ex2IdXmNSO943vDnxW671LS
         pmtLU5aZPG9blMVAzgC2T3MvB2Vmw3Y1CV7CkdYqpR70JTyqoFGz6cYFkXNxFc4oMLzh
         6mMyJ818t4rgNp3gzCPFL0YjxyLREZL7CUV6o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y2r44D+mlU63eqpONY6ZtCXEHeBmJVOHShi6Vj77Qp8=;
        b=FvILXEkepyHxcG1ScsZ68kcRCsmoGr1CXtdhAhpX7k9AOi6LKZzoPRLm0Gi/AqGojq
         WQiAcULXew0St2zQmCv51R3txxW6u2ky7e2AOCdoOnT2pClKkVC3IFT25B88j0H7iwKp
         SVTfQhH3w+9CeoskkPoixhYri6Hoa26tT3+cW6z5EIq/j9t7t7ruOlBg7DTI5ulQCTIA
         7JWS35HlN4zTbNO9dBz4/EEu5OQkNbJhGYiy1RxNLidNtI1IzRx7+EZ6fqsagxII5Hbv
         hwaURd61NOzyd+mnSX0PvPmAW4RsFrlx9dq4Gozi7Cfb9FvafhbWyg/7MV5Umb4bS8fb
         /fuw==
X-Gm-Message-State: AOAM53285aeqtSezZbZgtxQPaC9KfQREwOByxb2S1Kjrsae8h+4t9PG1
        s5G9N/IljCfQMiMrqT5t8h2Z3A==
X-Google-Smtp-Source: ABdhPJwEv08iKd05ZoMnHpQK7jYmGuWwDlfrl9dfUX2nAm4FpZn5eTTV7ys/X6Ma2DX/KuQKAs/+1g==
X-Received: by 2002:a17:903:230b:b029:dd:7cf1:8c33 with SMTP id d11-20020a170903230bb02900dd7cf18c33mr11415224plh.31.1614527060455;
        Sun, 28 Feb 2021 07:44:20 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([103.161.30.225])
        by smtp.gmail.com with ESMTPSA id j3sm13522133pgk.24.2021.02.28.07.44.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 07:44:20 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 09/10] dt-bindings: arm: stm32: Add Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit
Date:   Sun, 28 Feb 2021 21:13:22 +0530
Message-Id: <20210228154323.76911-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210228154323.76911-1-jagan@amarulasolutions.com>
References: <20210228154323.76911-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core STM32MP1 is an EDIMM SoM based on STM32MP157A from Engicam.

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive Evaluation
Board from Engicam.

i.Core STM32MP1 needs to mount on top of this Evaluation board for
creating complete i.Core STM32MP1 EDIMM2.2 Starter Kit.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none 

 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 3e45516403ce..01f595b8ae1b 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -67,7 +67,9 @@ properties:
 
       - description: Engicam i.Core STM32MP1 SoM based Boards
         items:
-          - const: engicam,icore-stm32mp1-ctouch2    # STM32MP1 Engicam i.Core STM32MP1 C.TOUCH 2.0
+          - enum:
+              - engicam,icore-stm32mp1-ctouch2       # STM32MP1 Engicam i.Core STM32MP1 C.TOUCH 2.0
+              - engicam,icore-stm32mp1-edimm2.2      # STM32MP1 Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit
           - const: engicam,icore-stm32mp1            # STM32MP1 Engicam i.Core STM32MP1 SoM
           - const: st,stm32mp157
 
-- 
2.25.1

