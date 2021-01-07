Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82B0D2ECE28
	for <lists+devicetree@lfdr.de>; Thu,  7 Jan 2021 11:51:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727423AbhAGKuM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 05:50:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725974AbhAGKuL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 05:50:11 -0500
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com [IPv6:2607:f8b0:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDA8DC0612F6
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 02:49:31 -0800 (PST)
Received: by mail-pg1-x533.google.com with SMTP id g15so4564818pgu.9
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 02:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kGJRNiBLbvw7xCPqy2AchkT9eub4MYo4xJlh03INrks=;
        b=DvMLePqIJi9OiOcjbgCxz374NfGoUM+kkmvnmFJ6dm5AugVTHAeNvWJnpakax7L4Ys
         pAUGwtiHnv8dmt/jxPTeNS1SxsS6bo0HoDfZqa1RLbl25dofDVzak/M2MPo2W2Y1OcU1
         YY3BRoWIODySaDmt95gWgW07brIDUUebP31MI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kGJRNiBLbvw7xCPqy2AchkT9eub4MYo4xJlh03INrks=;
        b=fWmOns2p5UVe2QWMQKpdSi4QSny5a6ziq5jfnVFqbVZEqfoV9+dcB5J4l32Z/uWEHE
         mZfzadl3Okdk71U2uuoPxQVGcbHc2hKrGpepzrOUBtacFZhLrOzD01nD+5cw6vPZCeJR
         NkS3bhh6KacEqZ9p++jot+Z3jzbsECy5DUnNsQ9mGUf80tcQy1k+LMPCg9gVt3oSv5dM
         0I+8r/oAsNGnK35Ikr96fYybpl1l/FZ4TiicXEuvCsPIjKXI1IZHSDcod3of6FX7bYvk
         AP246wgiNyhNetV3ABvlrF090Ndw6OQ3SRiccBzge1H6CkWnpImA1CovSMLgtD+1ZJ96
         4lpQ==
X-Gm-Message-State: AOAM5327u7iZL6JcJ7FVYLZqBpsuVxlD1IwCeID3HjiucyRAgYpwDB0V
        oStim0byShw39vZ9vcH/vyeH7w==
X-Google-Smtp-Source: ABdhPJwBSsyXdxgTohL/cng8/yb125s3RKKNUvYQP0am/LN/TsdLSbnjo0eQpDSzU42HyaxOFT6+Nw==
X-Received: by 2002:a05:6a00:8c7:b029:19d:afa5:34e5 with SMTP id s7-20020a056a0008c7b029019dafa534e5mr8491932pfu.30.1610016571251;
        Thu, 07 Jan 2021 02:49:31 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:1a60:24ff:fe89:3e93])
        by smtp.gmail.com with ESMTPSA id n10sm5381974pfu.176.2021.01.07.02.49.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 02:49:30 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Mark Brown <broonie@kernel.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Weiyi Lu <weiyi.lu@mediatek.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: [PATCH 1/3] dt-bindings: power: Add domain regulator supply
Date:   Thu,  7 Jan 2021 18:49:14 +0800
Message-Id: <20210107104915.2888408-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.29.2.729.g45daf8777d-goog
In-Reply-To: <20210107104915.2888408-1-hsinyi@chromium.org>
References: <20210107104915.2888408-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some power domains (eg. mfg) needs to turn on power supply before power
on.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 .../bindings/power/mediatek,power-controller.yaml        | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
index d14cb9bac8497..e529586af5a12 100644
--- a/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
+++ b/Documentation/devicetree/bindings/power/mediatek,power-controller.yaml
@@ -82,6 +82,9 @@ patternProperties:
           be specified by order, adding first the BASIC clocks followed by the
           SUSBSYS clocks.
 
+      domain-supply:
+        description: domain regulator supply.
+
       mediatek,infracfg:
         $ref: /schemas/types.yaml#/definitions/phandle
         description: phandle to the device containing the INFRACFG register range.
@@ -130,6 +133,9 @@ patternProperties:
               be specified by order, adding first the BASIC clocks followed by the
               SUSBSYS clocks.
 
+          domain-supply:
+            description: domain regulator supply.
+
           mediatek,infracfg:
             $ref: /schemas/types.yaml#/definitions/phandle
             description: phandle to the device containing the INFRACFG register range.
@@ -178,6 +184,9 @@ patternProperties:
                   be specified by order, adding first the BASIC clocks followed by the
                   SUSBSYS clocks.
 
+              domain-supply:
+                description: domain regulator supply.
+
               mediatek,infracfg:
                 $ref: /schemas/types.yaml#/definitions/phandle
                 description: phandle to the device containing the INFRACFG register range.
-- 
2.29.2.729.g45daf8777d-goog

