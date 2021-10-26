Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8586143AE0A
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 10:31:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234414AbhJZIeM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 04:34:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234348AbhJZIeL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Oct 2021 04:34:11 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59535C061745
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 01:31:47 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id j9so15513857lfu.7
        for <devicetree@vger.kernel.org>; Tue, 26 Oct 2021 01:31:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lebGj46PReB/jYqLYTRNyATlJPGl1b++aN+0TzzN0dU=;
        b=HFPDaIe0FSG17SlNbr/XfHi9GbovkltsDSLf/2tcws62seD3SVo+eC3jN6MU8lPVPG
         f8d6POp/E1Qbl6st6hEi7KjHt2xmj/eUUDtUKfBcKyPUnTrz+iB4E0/TA1IkgmUYXFuJ
         E2OMt7K1YAar99LNiZpgnPxtHw5sF00tUSf7wdmpNCvbEOiWWSGKo6TcMUADiB3ra0KT
         EhXEVJZogDb7WieJB5yI+KHM9M+iQiToeMj1X36/Ax7LWb24NoSd2ThX5aaAJAi0/Nva
         VTfpS/AEjbwTOSG3vMpTXQwrPq9g70HHA2Qm/D5zUwE1XSZd0TNJR9KjpczJPPa6tRlp
         Zecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lebGj46PReB/jYqLYTRNyATlJPGl1b++aN+0TzzN0dU=;
        b=qPloYrcXPM1ljhQk1FarEjfScz0ZSe8JbGpe45GJoMsu7rxi+Gga6wO3e1yohtf/na
         4MNADtRb4D7n7gzk3sbBaTrHCWu/9qlUTOthW31fWk42eZm4+rRj8djZB5iiz6dukx9I
         qPRwIYeMZ/idSj9ORUWkuXoGRhzFauLtGhW/hWGbCeYE+zIXEBrFrSfUCQmRzQ3tvu0H
         AB3YC3WsM61MXmT/a54bZTSF3hPoXeUil4I4rJoo2tziQdm6eTjx1Fz4jLcsvgNXib6O
         gzf/saCneqNq7rGGvVX/tPanIxbrtnwZqmGD5l9niy0yE7HDH75pxfFlC9X2L5VpeWN1
         XaMw==
X-Gm-Message-State: AOAM5320jpULjyOq6Oc3iTnzTBCanc/EYyyfv3jKhnPNwxzB3WXF5jAh
        NFqCjO9ruaquat2w/EU/CauKEg==
X-Google-Smtp-Source: ABdhPJwi/NhOsJNV+7TfpXgr7mASg93GoMFK9MJYs75wQMRSAlBpmGrIrx8DxTogu/92EHklJiKG2A==
X-Received: by 2002:a05:6512:1153:: with SMTP id m19mr21052153lfg.418.1635237105698;
        Tue, 26 Oct 2021 01:31:45 -0700 (PDT)
Received: from jade.urgonet (h-94-254-48-165.A175.priv.bahnhof.se. [94.254.48.165])
        by smtp.gmail.com with ESMTPSA id e4sm1944598ljn.131.2021.10.26.01.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Oct 2021 01:31:45 -0700 (PDT)
From:   Jens Wiklander <jens.wiklander@linaro.org>
To:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        op-tee@lists.trustedfirmware.org, devicetree@vger.kernel.org,
        linux-doc@vger.kernel.org
Cc:     Jerome Forissier <jerome@forissier.org>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Sumit Garg <sumit.garg@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Ard Biesheuvel <ardb@kernel.org>,
        Marc Zyngier <maz@kernel.org>, jens.vankeirsbilck@kuleuven.be,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v7 2/6] dt-bindings: arm: optee: add interrupt property
Date:   Tue, 26 Oct 2021 10:31:34 +0200
Message-Id: <20211026083138.1818705-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211026083138.1818705-1-jens.wiklander@linaro.org>
References: <20211026083138.1818705-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds an optional interrupt property to the optee binding.

Reviewed-by: Sumit Garg <sumit.garg@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-by: Marc Zyngier <maz@kernel.org>
Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 .../devicetree/bindings/arm/firmware/linaro,optee-tz.yaml  | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml b/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
index c24047c1fdd5..26d46ac0dbc2 100644
--- a/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
+++ b/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
@@ -24,6 +24,12 @@ properties:
   compatible:
     const: linaro,optee-tz
 
+  interrupts:
+    maxItems: 1
+    description: |
+      This interrupt which is used to signal an event by the secure world
+      software is expected to be edge-triggered.
+
   method:
     enum: [smc, hvc]
     description: |
@@ -46,6 +52,7 @@ examples:
         optee  {
             compatible = "linaro,optee-tz";
             method = "smc";
+            interrupts = <GIC_SPI 187 IRQ_TYPE_EDGE_RISING>;
         };
     };
 
-- 
2.31.1

