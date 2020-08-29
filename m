Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6D962568EF
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 18:00:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728374AbgH2QA5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Aug 2020 12:00:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728437AbgH2P7D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Aug 2020 11:59:03 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2676CC0611E2
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 08:58:54 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id g207so2218827pfb.1
        for <devicetree@vger.kernel.org>; Sat, 29 Aug 2020 08:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+xa1iz4+LbQK9GmC+3dpDj+oguycEKNLcSKsGXCFjpc=;
        b=X6vCf1x8M2sLlMLv5j4Nw2WZpqtS6NLqqEpWr0kzmpxjmUtwRKj3wA3K4r85jDTB5p
         CibTR1D4ZZyjRnSvdLRkim8iBLS61m7i1vKcZ8G8rwxlnNzGHHgSc17CJF/5a4ghETxR
         2orkEIPkUBLIoy70O5Eeym9SiOQIOc2F4swyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+xa1iz4+LbQK9GmC+3dpDj+oguycEKNLcSKsGXCFjpc=;
        b=d3R+MgXTYEc5KqNG+o80F9gX/5RwyLBs0ia+A0FSmJF9AChB4Tx8qEpYiR0vZXA5wD
         YO8SfrzxQNcJcuaJBQ3OHNEvHrngFT4hrHmD9a5uRUbsIc0BeGERX4rsJvJlnCoKKtDU
         Klksxvhrn1SXo3WRWUYPJSgGFUMvlD5FcahuSRUEb1GDtYrhbfozWt2LY9YaPvUbYLDi
         BPaH8K+Er4ld9uzgDNI2rBRIt8XUQCaEa5kKxtM+lSEj9LXsDtSgKR4LmYk+u1vkTtry
         PqzSjI18fK68RZAvKp/uYl69xzYDiqAKDHqs4mE9ERgvNIB1/9drLKdQBK7hY4AgtdgS
         bLYA==
X-Gm-Message-State: AOAM532I5NxF0/UlKZnW+LvG4FIVsi7FE/AoEzya1QMp5NAc1bxfGwaI
        ZX8ls7fW0rjmGJ0m/DAP980RNoDkKnSgkw==
X-Google-Smtp-Source: ABdhPJwKDtSAllMNHqmAEl7wwHQpzu67T/H1QT6DJfBY5vrvsEEWj7ICtu7JnbAf/AO14geaUmeYHQ==
X-Received: by 2002:a63:d409:: with SMTP id a9mr594039pgh.312.1598716733710;
        Sat, 29 Aug 2020 08:58:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9460:cfb8:90a:fedd])
        by smtp.gmail.com with ESMTPSA id j20sm3131714pfi.122.2020.08.29.08.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Aug 2020 08:58:53 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 5/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
Date:   Sat, 29 Aug 2020 21:28:21 +0530
Message-Id: <20200829155823.247360-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200829155823.247360-1-jagan@amarulasolutions.com>
References: <20200829155823.247360-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

PX30.Core is an EDIMM SOM based on Rockchip PX30 from Engicam.

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

PX30.Core needs to mount on top of this Carrier board for creating
complete PX30.Core C.TOUCH 2.0 board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v2:
- new patch

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index bda0f2781890..3aecb1241492 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -70,6 +70,12 @@ properties:
           - const: elgin,rv1108-r1
           - const: rockchip,rv1108
 
+      - description: Engicam PX30.Core C.TOUCH 2.0
+        items:
+          - const: engicam,px30-core-ctouch2
+          - const: engicam,px30-px30-core
+          - const: rockchip,px30
+
       - description: Engicam PX30.Core EDIMM2.2 Starter Kit
         items:
           - const: engicam,px30-core-edimm2.2
-- 
2.25.1

