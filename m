Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AF0493D37FE
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 11:45:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230478AbhGWJEw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 05:04:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231420AbhGWJEC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 05:04:02 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE8FBC0613D3
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 02:44:34 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id a7so941936ljq.11
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 02:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a/bqTZzKIHdxC3kmt2eWiFK7QCi70Duu4Zv6wBW6jAs=;
        b=Wre17vH1r/X0eGI3ub3IhX+LY6NyisVfyC8qRkjVRtDIdjQvxGDzjODeaerxk018+e
         Jfkow/wywwMiwtR50JxRHzx8KNDPZalnSiP9ajJ0JcovcE4OiPkWhN5ndwtv70X7ujwj
         +YegKy2IBiarSxeg/3uddwJojhDNatwolFX97w+o/E+rwXmdmh3OziNRbqT9aYJ5TbPx
         UnT9Pccv9Wey/vrGVhr5CJqDfHB4hkDuLfrx5jYv0Idz0c+bXSaMVy9AhNiNIuF1VTAw
         IRvKn4lx/lZV4F+dK4B87RFYmNeVVg8Ao3FrnwV1IVc+gmR7Oj3kKIcHADe6eC6LmRKY
         Yprw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a/bqTZzKIHdxC3kmt2eWiFK7QCi70Duu4Zv6wBW6jAs=;
        b=I9t1DdU2NZnKEkTgPExn9fkpesAKajevCtD/EkE7V3brurVMVShKm2t1MUaTEpKzrZ
         bPFj9gwQN5IRXJaOKL6i88MQXWzHsKjhY8Crhza3cihgqDDKK0uRrmtIPF/0/S4S9xAs
         OsLAhq/ze2npw389M+bkkDXGUUXxYtGH3UlnfuG8kmrzkWx3emv1nEZD15qr3hT0SQSs
         FG67EjiJTW74IG9Z3ooYQGdNkm8qejQk77GVi8z5knYpDLuY9exGcuD7PHI81AxP+Eqf
         UcHMBG4lLgjzJQjx04adq77QHpxbCzss4VhJdVZV0+ta0ykI1Vmiy4a6tqYLjBXgFQnE
         488g==
X-Gm-Message-State: AOAM532tmRY9cbl4Bv8ij0DtMivcIqGqZD9AVrgHsKrA7xruMpUI2UK9
        fKuOTVBaC9awwJEL7LfqjDarUQ==
X-Google-Smtp-Source: ABdhPJwgaayYlGhMH6FoRP7pTpWRDBeBdQZDLPJ2kTl9qmB5jvRR/VWAISr1k4cjc8iHnmB7QeI2eQ==
X-Received: by 2002:a2e:5c86:: with SMTP id q128mr2789959ljb.316.1627033472827;
        Fri, 23 Jul 2021 02:44:32 -0700 (PDT)
Received: from jade.urgonet (h-94-254-48-165.A175.priv.bahnhof.se. [94.254.48.165])
        by smtp.gmail.com with ESMTPSA id f2sm403808ljq.131.2021.07.23.02.44.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 02:44:32 -0700 (PDT)
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
        Marc Zyngier <maz@kernel.org>,
        Jens Wiklander <jens.wiklander@linaro.org>
Subject: [PATCH v3 2/6] dt-bindings: arm: optee: add interrupt property
Date:   Fri, 23 Jul 2021 11:44:18 +0200
Message-Id: <20210723094422.2150313-3-jens.wiklander@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210723094422.2150313-1-jens.wiklander@linaro.org>
References: <20210723094422.2150313-1-jens.wiklander@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adds an optional interrupt property to the optee binding.

Signed-off-by: Jens Wiklander <jens.wiklander@linaro.org>
---
 .../devicetree/bindings/arm/firmware/linaro,optee-tz.yaml     | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml b/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
index c24047c1fdd5..73811a5d1714 100644
--- a/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
+++ b/Documentation/devicetree/bindings/arm/firmware/linaro,optee-tz.yaml
@@ -24,6 +24,9 @@ properties:
   compatible:
     const: linaro,optee-tz
 
+  interrupts:
+    maxItems: 1
+
   method:
     enum: [smc, hvc]
     description: |
@@ -46,6 +49,7 @@ examples:
         optee  {
             compatible = "linaro,optee-tz";
             method = "smc";
+            interrupts = <0 187 4>;
         };
     };
 
-- 
2.31.1

