Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6FB8C2E1B62
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 12:08:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728358AbgLWLGq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 06:06:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60292 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728344AbgLWLGp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 06:06:45 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2ABADC0613D6
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 03:06:05 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id f17so10398157pge.6
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 03:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+MoAq/+qDlbRWnGKVMG/RfZuRkWwtwV+6sJl8++tLE8=;
        b=mMQ638SnHR5ygU+NsnlRRlhkhVODFKvemr4nBdOkwuQ0IgL0IGMztAdbfS0XrPPqph
         r57RCnWqVolbGQozJP2J6+zi/pJFDvz/Fjdbwcn2fI42gCr3HkqatUYT7NqkSIlR9TG1
         WwiwQw8k+kMruVmJusXQc16k7EMkvekvfTl4k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+MoAq/+qDlbRWnGKVMG/RfZuRkWwtwV+6sJl8++tLE8=;
        b=K0Cmt6geZpSAtoNWJSIYHtTr8zhkbmqX/FS/L1N0GqI1D7H0K48zbkv8dC23ZIo6Z9
         3ufWbOZWom4/5TbmsMwjpVyiEY2vxHbk03qR8JlWmZmnz/+KV2hC+bIGVT6dR9/kSaBD
         f/7/1/MtLugLnlmGFhK545dqtDftA6Hoh+tgCwHcq7HL/6+eU8Mmfnk+YsHn3BWvUxUa
         JATBsNGEweCYAPD0ikh60c4YYSWjmEn90Y6Zrj6rnbCQJKUMV2qvZpiMirLHKzLj/Lz1
         wwJGQ1XUfr2FigMHf8N0U6M41PSd7dKmMwJqfd4hjEFbk9YhUAdWAWSGDRrfjMXq/j7C
         9eEQ==
X-Gm-Message-State: AOAM531fvMnbq5OHonhCHcqEGqLztkGaezhQEAGt2RE3nj++o9nX6fxL
        ylUgewii0b17lWa5i+ZW+Fd6NQ==
X-Google-Smtp-Source: ABdhPJwPNW8ETgaSkecxT8Kd2ZYvi06ZJjv6+yQK3GLe3+HQEsO5MrDkPnrtRExMXsWbi8QdhlHpnA==
X-Received: by 2002:a63:4083:: with SMTP id n125mr24276013pga.356.1608721564767;
        Wed, 23 Dec 2020 03:06:04 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:eca4:40c1:8784:571c])
        by smtp.gmail.com with ESMTPSA id 3sm23275909pfv.92.2020.12.23.03.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 03:06:04 -0800 (PST)
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
        Will Deacon <will@kernel.org>
Subject: [PATCH v3 5/6] dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
Date:   Wed, 23 Dec 2020 16:33:42 +0530
Message-Id: <20201223110343.126638-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201223110343.126638-1-jagan@amarulasolutions.com>
References: <20201223110343.126638-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

i.Core MX8M Mini is an EDIMM SoM based on NXP i.MX8M Mini from Engicam.

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive Evaluation
Board from Engicam.

i.Core MX8M Mini needs to mount on top of this Evaluation board for
creating complete i.Core MX8M Mini EDIMM2.2 Starter Kit.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- fix dt-bindings
Changes for v2:
- update commit message

 Documentation/devicetree/bindings/arm/fsl.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index f1de68341873..2dab4b5bf99a 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -675,7 +675,9 @@ properties:
 
       - description: Engicam i.Core MX8M Mini SoM based boards
         items:
-          - const: engicam,icore-mx8mm-ctouch2     # i.MX8MM Engicam i.Core MX8M Mini C.TOUCH 2.0
+          - enum:
+              - engicam,icore-mx8mm-ctouch2        # i.MX8MM Engicam i.Core MX8M Mini C.TOUCH 2.0
+              - engicam,icore-mx8mm-edimm2.2       # i.MX8MM Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
           - const: engicam,icore-mx8mm             # i.MX8MM Engicam i.Core MX8M Mini SoM
           - const: fsl,imx8mm
 
-- 
2.25.1

