Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD031367458
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 22:48:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245686AbhDUUtK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 16:49:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245684AbhDUUtJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 16:49:09 -0400
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC5DBC06174A
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 13:48:35 -0700 (PDT)
Received: by mail-pg1-x52c.google.com with SMTP id p2so15633779pgh.4
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 13:48:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZcLsBjs232xzROZWNF7eNdAdRnsVNUUu8DByMHzzzYs=;
        b=1wiz+IiGd8sEyoR7tY/fGbyjK2U1GJih82pZmwHXIGGtC0uNSaVxz+cpg5k7G0k87W
         JkVboK/054G7oDUihu9grUiCFJtG2yH/+itCNzGCcGWAHQRQWNE0bmZyJe21DacuIRZi
         /dDQk8fPn0EtaQzXPzVGLkSg9cWM0TxqvCb8Pxid9pxdcKqD3eOw/8njesusKlsJgCYX
         Xugu8cc87loO5sV9UsjzINDGIDKTgVOroMQK0EpunSSJbzzpdG+kPtHZfPFVoEaw+ZSz
         8TDqurm/y2zCYs2o60NDSlWBjfQOoRY7mfx0vnnuq/GXW8HtkA0VxMQU+4/r5m2T8nfC
         yg5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZcLsBjs232xzROZWNF7eNdAdRnsVNUUu8DByMHzzzYs=;
        b=ljEODNSJeobQzfO7ofCEEzjxXtItb3ZrSj12JRLflptOEiSk+I70e5ngbYywc/o4Ny
         FDMpDScbgeXnwZLA8Fl6TtOxaCd3Cflci8cln1QNOIt9REZtGw1BujzSTBpAffPGzJn9
         eECzBkRK4myhxOQi2nOOQaitdpL2xeMK5pecBct5k2o3H7w5H49VZ2ODqXk8yeFseHBE
         7OTBp1vc4GQpRr2gFqMonOaurP719TaCOZNWHaJRCbospcDnou7xJHqVvGQrr0fHXqPa
         0TbZ8inPNM5BUVEW2l2RtQ24Qg6+8938p8c3kCxFRcSn0zFSJvANWluX7YG97YJuFrat
         qk8w==
X-Gm-Message-State: AOAM531TBEOKAQf3tkpx9xc9nbb+XwnrurWs1WS0Gch0ISbPhOSe4EL1
        MeuZRGT7t40ZDbDjXh55Adx2QA==
X-Google-Smtp-Source: ABdhPJyNHGWzLI1G0h0A3vWf4PKsfJdlfnz9vMId5uRCK39tGOWetX0geaAMqkihFnQFKBQmxcgxRA==
X-Received: by 2002:a63:9e02:: with SMTP id s2mr62538pgd.134.1619038115274;
        Wed, 21 Apr 2021 13:48:35 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id b25sm177079pfd.7.2021.04.21.13.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 13:48:34 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Arnd Bergmann <arnd@arndb.de>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
Subject: [PATCH 2/2] dt-bindings: mali-bifrost: add dma-coherent
Date:   Wed, 21 Apr 2021 13:48:33 -0700
Message-Id: <20210421204833.18523-2-khilman@baylibre.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210421204833.18523-1-khilman@baylibre.com>
References: <20210421204833.18523-1-khilman@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add optional dma-coherent property to binding doc.

Found by 'make dtbs_check' on arm64/amlogic DT files.

Signed-off-by: Kevin Hilman <khilman@baylibre.com>
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 184492162e7e..894ba217ab32 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -69,6 +69,8 @@ properties:
 
       where voltage is in V, frequency is in MHz.
 
+  dma-coherent: true
+
 required:
   - compatible
   - reg
-- 
2.29.2

