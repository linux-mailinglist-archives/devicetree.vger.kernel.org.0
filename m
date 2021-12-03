Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3437C467BDC
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 17:54:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382227AbhLCQ6U (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 11:58:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240527AbhLCQ6T (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 11:58:19 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D79F5C061751
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 08:54:55 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id m15so3603374pgu.11
        for <devicetree@vger.kernel.org>; Fri, 03 Dec 2021 08:54:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=isD7Q48pSZyTSxUPY+SX0kuqDdCvE+4V1M1EMjA4pu0=;
        b=p1UDPhfrtzIFaMGZYqCBKPhDtmQCWiWZXBd6rU5SQTJH4iPujxYVEcRAuGxUT5ONjN
         YhhdWkoJ8YnG6K37IJCP6WAjAl7MVHCoxW8wxpr92Tvl74LYQFKrHJAnCY6wQvoB/E41
         IM35EKsmatWXn+aFTfWLQkCA0m3BMENUTLKNw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=isD7Q48pSZyTSxUPY+SX0kuqDdCvE+4V1M1EMjA4pu0=;
        b=cBanf9ez48+3bQv4i3xUGpGUMG2aOCQJIvc/awbi+xFgJ81oQ7Cri7QUwsaeI65EM4
         Y/2XR+ITMv/zPnGaoXKma8l0O2Fv7D1u0rAhwsfIeAGXwi39M4HSzHG+xDeboB5Qg0Hl
         TZinqIHyK66aa9t4+jRU6kz5vpV+zWzHqJCSBSp70XEjo1JX9CgiaFiK0Wmmbw7WdsrI
         Eya/MUnDBaupVEPIeiyPXODc41yCsCJdjbKBhX6YkUcSKuWgeAcGKXOnfzHBbWE91kJ1
         8GSPyM2BiRASrDYuV+hMnutmphvEWPmnv6JAICyiFWuEsajlOLaU0jIfYMrC8MJVlMrj
         9hDw==
X-Gm-Message-State: AOAM532GsRPD79W8Nas2A+xgZPT6gdZYySnIVHw9JS9zGTUASgPWQ9n1
        sOVwyxLg9e5KRmLmiAhqR+Wm3Q==
X-Google-Smtp-Source: ABdhPJy1iMboAef3tWtVfwYbSEF9CS9tsF5faLwxCGXQL0UkpRa1KEgfFQVcyKXdVzVwMRCGpFVL0g==
X-Received: by 2002:a65:6799:: with SMTP id e25mr5362073pgr.293.1638550495475;
        Fri, 03 Dec 2021 08:54:55 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a0a9:9d21:588c:4f26:8400])
        by smtp.gmail.com with ESMTPSA id s72sm2783693pgc.69.2021.12.03.08.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Dec 2021 08:54:55 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org,
        linux-amarula@amarulasolutions.com,
        Matteo Lisi <matteo.lisi@engicam.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/3] dt-bindings: arm: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0 10.1" OF
Date:   Fri,  3 Dec 2021 22:24:34 +0530
Message-Id: <20211203165435.8042-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211203165435.8042-1-jagan@amarulasolutions.com>
References: <20211203165435.8042-1-jagan@amarulasolutions.com>
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
Acked-by: Rob Herring <robh@kernel.org>
---
Changes for v3:
- collect Rob A-b 
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

