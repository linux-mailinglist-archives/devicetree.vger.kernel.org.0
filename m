Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7D0A9325DF0
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 08:07:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229586AbhBZHER (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 02:04:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229947AbhBZHEI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 02:04:08 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67554C061788
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 23:03:27 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id d2so5544693pjs.4
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 23:03:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ydvIgxOmjmtqfE+xKiN5KcJPEjgA9fZIcPJEUX/WuAM=;
        b=B1UBaSFh2mk74rH1StciX/kRrgwOc+4VAV1DfySJFKUYhoImWg1F/x69MMylGtk5YY
         irFCXgVxF9p8AOhjKWu7vzjoXaYcFjeKszsO+9HyOE23kk/3zNC/0HuFAq7WIl8p3Sj2
         DiFhN3JUeD9rKVTzwk48bdl7jM2MbuKEwoFx8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ydvIgxOmjmtqfE+xKiN5KcJPEjgA9fZIcPJEUX/WuAM=;
        b=VjL6eZU2TsCVSN8SCfJ9NcIZIHtqcxxTQESd11AaGE2/1EZ5rHyUW+RofgKosettU0
         bGv8voO7iLOkm/eYSeEvz+bgFFZRiYIBiZjVXSDT7IkYbJaBfNLfYkd8CC3Yj/Fgh9Pk
         m3dfXjYFj4LPl7ecvQc+vHX6fI1p2eiZyoV9zHlF3EA508rfxiUDNhWWt9erah2dsuH8
         oU1//yupSaEhdRIKoH+MaV8RQ5kXU1SIKTBiMMUk7MIsLyLAPDIP2OmPfrBxcdDJgR9/
         BJjLC4HmPydbcmNdJUdvbzKUgT3S34+9p9Teccpb3Rm9jwUZlFFsKU24LRG0nh5tbQte
         XrJg==
X-Gm-Message-State: AOAM531Tkmd7AffyW42Q4FTi47HvExzS02jXVbWgcnHRyn8NCP1p/Tpx
        pSYPMBvEjDuCuER4XkONbxU9ag==
X-Google-Smtp-Source: ABdhPJw5sSWi/Lr2Jhk69jCnXKBWOfVI+hjw2QCEtcG8QS5n5oApjApq7NeRIFFCdvsWr6uJlONUog==
X-Received: by 2002:a17:902:7006:b029:e3:dd4d:85ac with SMTP id y6-20020a1709027006b02900e3dd4d85acmr1755908plk.41.1614323007007;
        Thu, 25 Feb 2021 23:03:27 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([103.161.30.220])
        by smtp.gmail.com with ESMTPSA id f7sm7592156pjh.45.2021.02.25.23.03.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 23:03:26 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 01/10] dt-bindings: arm: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0
Date:   Fri, 26 Feb 2021 12:32:55 +0530
Message-Id: <20210226070304.8028-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210226070304.8028-1-jagan@amarulasolutions.com>
References: <20210226070304.8028-1-jagan@amarulasolutions.com>
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
Changes for v2:
- none

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

