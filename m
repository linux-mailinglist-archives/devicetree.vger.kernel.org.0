Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7969476F31
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 11:53:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236272AbhLPKxA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 05:53:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48200 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236269AbhLPKw5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 05:52:57 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9012FC06173E
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 02:52:57 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id f125so22817731pgc.0
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 02:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HHCAIkkjnYG+QqH4U5QFRVuGcCXWTh4NCazW14YQbL0=;
        b=u7Uml0ZVO2+FUpIAYBB2QHQYwKiyUPEarmGh7x/wn90lKG765ovbbcJ7MHMiILcH9l
         UlhK0xwClUG9XqaeGjyhdJjVVXY9ork5v91s7O2VOq5ZhmWXTJ7VIT1JQkFxmxC2p25v
         kQWQiRKYbm2AO0OSc1lV0ONFWCRusrZo3siKg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HHCAIkkjnYG+QqH4U5QFRVuGcCXWTh4NCazW14YQbL0=;
        b=a9RHDpueQPRst7HZzYAJh1m+xi9wOrv/1Ym0DYbMxYkaFlKsJACCK7ehMB4p2Y/q5t
         Iu1plYs1Cvr2IdKC2j0xCqPEf4y+Wzt3tLU2OWQlvYeIVthpDTGt3d9HrBx5KDQXMGao
         Jtmv66dnuhE1aJeOGpLGR0F4yCQs/qFuYYkFw1tS4OzRqJSpzXQIP4p3+RCGnopeYl0N
         uuWqD/uNCwbHqYWOY/Gr4fEiBhp5KB46l2zbGKqX8c868xMwuGYLchYs7VB2dhVy1Rb2
         Oe/hC52AOJy2VlPCWWlcN0b/jJlwfv5gRanZvoTJFDrjLU0sozZDy8/iYEmTnE/lX5Pv
         Ay+Q==
X-Gm-Message-State: AOAM530JaDZd+OumaBRsLKp9ZP1bRPMS1OpwGDfpaUc1OLd7Xnla8Jb5
        3OCuGE4QR21xhhrLBYCAv/ta4b9It7Cw9A==
X-Google-Smtp-Source: ABdhPJw9cG1Bil/h0qCvGJKeAlidwqTyEqrjNPSkCufq1z8LNYjswcOtt+5UhITlcCVaFee+i1o7vg==
X-Received: by 2002:a63:6806:: with SMTP id d6mr11713525pgc.68.1639651976921;
        Thu, 16 Dec 2021 02:52:56 -0800 (PST)
Received: from shiro.work (p864106-ipngn200510sizuokaden.shizuoka.ocn.ne.jp. [180.9.58.106])
        by smtp.googlemail.com with ESMTPSA id w19sm4986142pjh.10.2021.12.16.02.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Dec 2021 02:52:56 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, romain.perier@gmail.com,
        Daniel Palmer <daniel@0x0f.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 2/3] dt-bindings: arm: mstar: Add compatible for Miyoo Mini
Date:   Thu, 16 Dec 2021 19:52:45 +0900
Message-Id: <20211216105246.3548133-3-daniel@0x0f.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211216105246.3548133-1-daniel@0x0f.com>
References: <20211216105246.3548133-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Miyoo Mini is a SigmaStar SSD202D based retro emulation
device.

Add a compatible for it to the list of infinity2m devices.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
Link: http://linux-chenxing.org/infinity2/miyoomini/
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/mstar/mstar.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/mstar/mstar.yaml b/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
index a316eef1b728..8e1a0e99a60b 100644
--- a/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
+++ b/Documentation/devicetree/bindings/arm/mstar/mstar.yaml
@@ -25,6 +25,7 @@ properties:
           - enum:
               - honestar,ssd201htv2 # Honestar SSD201_HT_V2 devkit
               - m5stack,unitv2 # M5Stack UnitV2
+              - miyoo,miyoo-mini # Miyoo Mini
           - const: mstar,infinity2m
 
       - description: infinity3 boards
-- 
2.34.1

