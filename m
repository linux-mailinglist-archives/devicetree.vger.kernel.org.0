Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D48125755F
	for <lists+devicetree@lfdr.de>; Mon, 31 Aug 2020 10:30:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728249AbgHaIaA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Aug 2020 04:30:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727810AbgHaI3u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Aug 2020 04:29:50 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FCD8C061239
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 01:29:50 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id g6so2598532pjl.0
        for <devicetree@vger.kernel.org>; Mon, 31 Aug 2020 01:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rAU4sCBRiofk2aw8WsyY+3Dm8mUaxukahoabY1FXUkU=;
        b=J9HawXoxxn9OCxKX8bsB9crige77QAv8k+mM8WLEGaeMs4XYL/bHjHKOolmdD6hAQC
         61v3MOs/a+QWmV1ZtYyqq7q+g9pTYtQSRPeMuECiZI2PNSeMipmVW0BggF52XQlEiEGN
         4QFYenzLf0Hv3EYLQpBSepeyK95yJFk8Lr2CY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rAU4sCBRiofk2aw8WsyY+3Dm8mUaxukahoabY1FXUkU=;
        b=YWzAmyQ934jTDeWRZNAri9yV+HumYXgKtRyxHenWnuBiVG0cQSydekVs9uwkXA4Ale
         fWODr/a0I/jLajtz9zaUEvdPCDjzLwcesctwy/Lyybam4ifp5vOHXvH3EiU6kFq0o9WO
         OAwpP0hTaRwWcb0H0G1ON5yrMlw1YD5LImv5DnvnXjpI6SAusW96Mhp7gUqGY+Dm7bz/
         D/VvXsPVBi1xc8uGYulEEKrYgzJ6HlN1ze/0DWUywLUNN1HGOOaUzqKkQ3bWo1Q6stf4
         2HdHAfUNWOpNqSXgWRwtXyx5o8SQ9K7oQpygxbxaAk5BiPx3/n0Ir29tL9oQIZPW3j+Y
         gQJQ==
X-Gm-Message-State: AOAM533Um9nVDbB34QhjRsTKtYXzlOtYuCKQ1M7kz7u5yQRt/o1Cp38t
        H7m+Bm8o/P1fwkyr5k6w3xaMBQ==
X-Google-Smtp-Source: ABdhPJxcdDfE9FJkL63RLb+7aDS4OWHIoeiEl8ktA/Ng44mcZ2xq2v4/qJUxtePGOavfbfhYY1ETzg==
X-Received: by 2002:a17:90a:f187:: with SMTP id bv7mr348529pjb.63.1598862589733;
        Mon, 31 Aug 2020 01:29:49 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d50:45fe:aaf3:66ee])
        by smtp.gmail.com with ESMTPSA id b5sm6411335pgi.83.2020.08.31.01.29.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2020 01:29:49 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>
Cc:     Suniel Mahesh <sunil@amarulasolutions.com>,
        Michael Trimarchi <michael@amarulasolutions.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v3 5/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
Date:   Mon, 31 Aug 2020 13:59:15 +0530
Message-Id: <20200831082917.17117-6-jagan@amarulasolutions.com>
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

C.TOUCH 2.0 is a general purpose carrier board with capacitive
touch interface support.

PX30.Core needs to mount on top of this Carrier board for creating
complete PX30.Core C.TOUCH 2.0 board.

Add bindings for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
Changes for v3:
- none
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

