Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9470C44D965
	for <lists+devicetree@lfdr.de>; Thu, 11 Nov 2021 16:46:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233872AbhKKPs6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Nov 2021 10:48:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234009AbhKKPs5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Nov 2021 10:48:57 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 714D0C061766
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 07:46:08 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id n15-20020a17090a160f00b001a75089daa3so4933934pja.1
        for <devicetree@vger.kernel.org>; Thu, 11 Nov 2021 07:46:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XH4HtUz8oW0xzhVze5j7Kybwjbu7oDVLM7iF1rNAOBM=;
        b=l1ul0dc4fHtFQMBujyOWfT75JAyOGkrlGEHEEj1yOZDBB55DqcWknkLtB5UQlHN3Eo
         KK628YsJBJWi1pann0TjFFR4ZbUTuCstlKXntWOVhqxkjh/cy7zn8M9B37ucxoBg5lrE
         ehEIxozpyOn9V1/hgNaoZZMC72AoBFARRAbMk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XH4HtUz8oW0xzhVze5j7Kybwjbu7oDVLM7iF1rNAOBM=;
        b=t2Cn5/SCFvxBhzKi5yEFvWDMgOErfBnqxJhjkLYMqzEMZ87D5ZUqSUIVCHAp3JaS3n
         aXh3bl4VwmK/bd94NGv4bwRqTZiD1gs5l3PrkN1jxxFIrmxxGvTw30VB+UD0lnCjpe0p
         KHkcQvdDqaRMc+0P5yMgl1dbuPlcGgcFDnvSgfvHTYeIIcJ147TbWMCESCcuM+qM2l/k
         2WU/YsdFj3Y+KZdUa1W4MS9+D3jrF3iqxzBqusGszd0H8PAjikd5zKl2ERdcOzqAt6f+
         oa/1LC35a85adxdVMPSpxK9lJ39c/wI/MGj+eGz+p39hd3QlkCv43b/uyQgO58R1sL7L
         NGSQ==
X-Gm-Message-State: AOAM530GqYWM+0bNiV5PQ/G/EmjcWk36R458lAJPxSrSRNsGy2gHrvwH
        zWBwohIB1PpRmfUdXN22sxVfqQ==
X-Google-Smtp-Source: ABdhPJwTPiI9XvS4RwFxLLTvsnKMZ6GDcL/bbEwZMlMWhin+G7wV5HeZAeO3L3i6hza3lMdnQe7U7g==
X-Received: by 2002:a17:90b:4b0e:: with SMTP id lx14mr26068293pjb.160.1636645568044;
        Thu, 11 Nov 2021 07:46:08 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:3041:135c:4e21:846c])
        by smtp.gmail.com with ESMTPSA id m15sm2782122pjf.49.2021.11.11.07.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Nov 2021 07:46:07 -0800 (PST)
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
Subject: [PATCH 2/3] dt-bindings: arm: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0 10.1" OF
Date:   Thu, 11 Nov 2021 21:15:56 +0530
Message-Id: <20211111154557.852637-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211111154557.852637-1-jagan@amarulasolutions.com>
References: <20211111154557.852637-1-jagan@amarulasolutions.com>
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
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index bcaf7be3ab37..d2dd3f1847bb 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -77,6 +77,7 @@ properties:
         items:
           - enum:
               - engicam,icore-stm32mp1-ctouch2       # STM32MP1 Engicam i.Core STM32MP1 C.TOUCH 2.0
+              - engicam,icore-stm32mp1-ctouch2-of10  # STM32MP1 Engicam i.Core STM32MP1 C.TOUCH 2.0 10.1" Open Frame
               - engicam,icore-stm32mp1-edimm2.2      # STM32MP1 Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit
           - const: engicam,icore-stm32mp1            # STM32MP1 Engicam i.Core STM32MP1 SoM
           - const: st,stm32mp157
-- 
2.25.1

