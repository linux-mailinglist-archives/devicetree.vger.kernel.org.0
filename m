Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F08B527BF91
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 10:33:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727882AbgI2IdD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 04:33:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727881AbgI2IdC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 04:33:02 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E1B1C0613D0
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 01:33:02 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id b17so2254261pji.1
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 01:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1TXOSGDfi3tEDnn/11wFhZgunf2JzZ8G4zh32CvXS0A=;
        b=YrvST2P144UFdNBXeXgAGFcXQJ2Ge8Wbe97fxHYr0k3Tl9gfe0wI1N7KjVCaqsB1Y5
         /plehqpkDgk1NwY7dy69fbq2cnzJehfODmWVNWw5SN/eT5qOlY3ZG0HbHa7cBv/IrsQi
         S7s/n/mlDYrfNrzuwASpUiflf6riTP9zB1i3o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1TXOSGDfi3tEDnn/11wFhZgunf2JzZ8G4zh32CvXS0A=;
        b=MHkPMIElT8xt20fjoO7hAwY46wWHLnEwTaoZ4gKyfmfyKnlx5x2/Pf08kCKUdxBMfq
         lVNhDeNi0oQBsvEDCF5ux/8R2C2FIEBkuw41RL3ng9WYIefP2ZV+UynIgQfnURxXAhfc
         zRzxC+FlwfWP73hHxfDhc5vWmtyFeDdoxaaiPwHh+8nw/q/L8X4Pg0y3UeAGLZnsLuU7
         DvgQ6kOPC84UkyfYsKxGoifLgh2PgzNQIAF71DIrmcZMcAbZONsrO+Z/kjjLOUibdx4c
         kBPmZ6w3sKj4rq8xjN2TrwOObFwONHOv8VbBzB1bYYkI83wL55OHDIXTjfA1X6H8cKHF
         CmNg==
X-Gm-Message-State: AOAM533Vd88RfqB6gw7B6qHAJHBpo5UWBLg2D892Y6SpF/IaxSdXI6fb
        Go3HzAB8wkCgHccnr2zxLcZHVA==
X-Google-Smtp-Source: ABdhPJyG38K0xlLp/r1NI72VdnrWA56c4qhc0dSdCtfKlcDwdSAqWfQxXw1cAlWaYmLD2dwu4H5jbw==
X-Received: by 2002:a17:90a:b287:: with SMTP id c7mr2905167pjr.141.1601368381673;
        Tue, 29 Sep 2020 01:33:01 -0700 (PDT)
Received: from ub-XPS-13-9350.pdxnet.pdxeng.ch ([2405:201:c809:c7d5:b511:310d:8495:d767])
        by smtp.gmail.com with ESMTPSA id 36sm3961241pgl.72.2020.09.29.01.32.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 01:33:01 -0700 (PDT)
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
Subject: [PATCH v4 5/7] dt-bindings: arm: rockchip: Add Engicam PX30.Core C.TOUCH 2.0
Date:   Tue, 29 Sep 2020 14:02:15 +0530
Message-Id: <20200929083217.25406-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200929083217.25406-1-jagan@amarulasolutions.com>
References: <20200929083217.25406-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Acked-by: Rob Herring <robh@kernel.org>
---
Changes for v4:
- collect Rob Acked-by
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

