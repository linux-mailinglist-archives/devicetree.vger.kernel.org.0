Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 240F8257557
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 10:29:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728147AbgHaI3k (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 04:29:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45870 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725978AbgHaI3f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 04:29:35 -0400
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com [IPv6:2607:f8b0:4864:20::1044])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEB91C061573
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 01:29:34 -0700 (PDT)
Received: by mail-pj1-x1044.google.com with SMTP id mm21so251978pjb.4
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 01:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fbXuvXbOyNsrkch0SC6guvyYDJEednZEC4rbU/OSYZE=;
        b=GUHaAwd/OVq+Nq6zo3XRQW5MC7/o7yldoxDX5WzYxROH5nYz/yPBbVfJfKrPS2Z66B
         SaOuGyr1b3zqm//7K+7iZiKcaD0+OE7W/r54u8pmBcckpLX3vK0p0V/mjCZEpSedCWnB
         rh8ppbxSpzUB9eLR0rTw2eSGetJBCapNgEklo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fbXuvXbOyNsrkch0SC6guvyYDJEednZEC4rbU/OSYZE=;
        b=bPXrDeF/4IjiF8xpkiUY2pIaSICxK0j5kCCR7QUt8DY4EX4Y9yYqBwB3UwVB0O4lw3
         wT0NF8OgIz34uxN4LksAXfzpqF5ky4v9EY4ET3aEyt7pluEGyUvLADwBNQzw8nh5EIUM
         IK0qe/o8mk1QNZGdp3Sxs+DKtTrTBXqLWtaH7YeNUowIK+nUgqlgCdt3DKqEKVNdWUIf
         rc8MP/tnENt1sJeQV8fFyUvOx08B9mN6KQcPsUU/B7i1VpfLyY3Ducxw2e930o9IQWCh
         WsTyvWM4wYSkAumzuz/9M7Gkzgz7VykBw5Qno+BRl6SfjDvijcrM8ZpbX90m0FCZG8uy
         mcgA==
X-Gm-Message-State: AOAM531cPYS2UKTBCA4EDVFHNghQKwPWsEttDTu7xK/5uSxv78dGT35F
        /evGCknjT8cUVK0d9TISORhgKQ==
X-Google-Smtp-Source: ABdhPJyJXaeoxtiNl66ML5eCK52+c/iNYMUnqKMB0TmVaIsjhr6uuZSp1si7bK8QzlRt0Anh0eLRlA==
X-Received: by 2002:a17:902:8a93:: with SMTP id p19mr281191plo.101.1598862574362;
        Mon, 31 Aug 2020 01:29:34 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
        by smtp.gmail.com with ESMTPSA id b5sm6411335pgi.83.2020.08.31.01.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 01:29:33 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 1/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core EDIMM2.2 Starter Kit
Date:   Mon, 31 Aug 2020 13:59:11 +0530
Message-Id: <20200831082917.17117-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200831082917.17117-1-jagan@amarulasolutions.com>
References: <20200831082917.17117-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

EDIMM2.2 Starter Kit is an EDIMM 2.2 Form Factor Capacitive
Evaluation Board from Engicam.

PX30.Core needs to mount on top of this Evaluation board for
creating complete PX30.Core EDIMM2.2 Starter Kit.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes for v3:
- none
Changes for v2:
- collect Rob A-b

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7025d00c06cc..bda0f2781890 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -70,6 +70,12 @@ properties:
           - const: elgin,rv1108-r1
           - const: rockchip,rv1108
 
+      - description: Engicam PX30.Core EDIMM2.2 Starter Kit
+        items:
+          - const: engicam,px30-core-edimm2.2
+          - const: engicam,px30-px30-core
+          - const: rockchip,px30
+
       - description: Firefly Firefly-RK3288
         items:
           - enum:
-- 
2.25.1

