Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A2354753F5
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 18:27:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389539AbfGYQ1O (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 12:27:14 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:36218 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390656AbfGYQ0x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Jul 2019 12:26:53 -0400
Received: by mail-pl1-f195.google.com with SMTP id k8so23627303plt.3
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2019 09:26:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=gG/c1rZYP/Lhsi0EI5Q4hiD7HEHYOFL8aq+0uJtZefc=;
        b=O1Xy4Ph8788g0Z4Il0vBcgtmO+JIakNribPM/6yKvje4aoJHvcCGsZdzzp0FNjNYhQ
         4/C2bAEJWnOSbANDuRkOqXzad7ebkfoVQe1Q3CAibxLHWGjYgShslvKDqYwTz5htwpVZ
         YVL3rwRVRSqsyKqZk6uCqe7iigXw6VDQRDhTc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gG/c1rZYP/Lhsi0EI5Q4hiD7HEHYOFL8aq+0uJtZefc=;
        b=bbXRW6rjGTnbZLtE5Ih09ENzidrS76JB7wnMrvMOFieKb6RiYHd6+NS2OFtd87o6X9
         b0LZliAe6kHDWR8W9chWbKh5z+8cE+2IhU35bTKv/VQV45+CGAHkA9Cgh+kQs1hNupjU
         BXq9kbC3EXhjYBDoORSvKSfQg7ckombSV1Autx8nLjLgOjySXKPNihcYBeJVj8tvnc8y
         6hUoyTpp7u5p+PGX4T4M08NxOc7/ekJTmtVNXdiZ4j34aHJ8GI32KfhBhLIQl5htrsXc
         SbJH7CK45VZI/LLG62lu7lKX1SDxso/4rAZ0duBr5QUdn4xDbTFcCPxnOTaGfYc1hFhT
         IFtQ==
X-Gm-Message-State: APjAAAWLvg4QrP1unhE0qXZqM5CUR2tNt78E0ugRjgPRJoJ4w7QKlYeq
        2TfOlF17qNtOE1MZy2Cz5Ail7A==
X-Google-Smtp-Source: APXvYqzte4K3dxMRHhTLkufFdXK9mPLrT5LC6RPLbefenNQRXKuDKLMvv88/r5XkgwQzItAZBCEeOw==
X-Received: by 2002:a17:902:d70a:: with SMTP id w10mr86920964ply.251.1564072012666;
        Thu, 25 Jul 2019 09:26:52 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
        by smtp.gmail.com with ESMTPSA id a5sm43394436pjv.21.2019.07.25.09.26.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 09:26:52 -0700 (PDT)
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
        Matthias Kaehlcke <mka@chromium.org>
Subject: [PATCH v3 3/5] dt-bindings: ARM: dts: rockchip: Add bindings for rk3288-veyron-{fievel,tiger}
Date:   Thu, 25 Jul 2019 09:26:40 -0700
Message-Id: <20190725162642.250709-4-mka@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
In-Reply-To: <20190725162642.250709-1-mka@chromium.org>
References: <20190725162642.250709-1-mka@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fievel is a Chromebox and Tiger a Chromebase with a 10" display and
touchscreen. Tiger and Fievel are based on the same board.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v3:
- patch added to the series
---
 .../devicetree/bindings/arm/rockchip.yaml     | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 34865042f4e4..01eb1e107ea6 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -128,6 +128,21 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Google Fievel (AOPEN Chromebox Mini)
+        items:
+          - const: google,veyron-fievel-rev8
+          - const: google,veyron-fievel-rev7
+          - const: google,veyron-fievel-rev6
+          - const: google,veyron-fievel-rev5
+          - const: google,veyron-fievel-rev4
+          - const: google,veyron-fievel-rev3
+          - const: google,veyron-fievel-rev2
+          - const: google,veyron-fievel-rev1
+          - const: google,veyron-fievel-rev0
+          - const: google,veyron-fievel
+          - const: google,veyron
+          - const: rockchip,rk3288
+
       - description: Google Gru (dev-board)
         items:
           - const: google,gru-rev15
@@ -311,6 +326,21 @@ properties:
           - const: google,veyron
           - const: rockchip,rk3288
 
+      - description: Google Tiger (AOpen Chromebase Mini)
+        items:
+          - const: google,veyron-tiger-rev8
+          - const: google,veyron-tiger-rev7
+          - const: google,veyron-tiger-rev6
+          - const: google,veyron-tiger-rev5
+          - const: google,veyron-tiger-rev4
+          - const: google,veyron-tiger-rev3
+          - const: google,veyron-tiger-rev2
+          - const: google,veyron-tiger-rev1
+          - const: google,veyron-tiger-rev0
+          - const: google,veyron-tiger
+          - const: google,veyron
+          - const: rockchip,rk3288
+
       - description: Haoyu MarsBoard RK3066
         items:
           - const: haoyu,marsboard-rk3066
-- 
2.22.0.709.g102302147b-goog

