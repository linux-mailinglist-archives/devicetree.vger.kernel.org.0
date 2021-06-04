Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D7FDC39B1FE
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 07:24:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbhFDF0S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 01:26:18 -0400
Received: from mail-pg1-f181.google.com ([209.85.215.181]:35720 "EHLO
        mail-pg1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229826AbhFDF0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 01:26:18 -0400
Received: by mail-pg1-f181.google.com with SMTP id o9so4106899pgd.2
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 22:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YYQmUG4DsHmPA+zkHmttsjSXSwGBtSrBYgBxvV1HNiU=;
        b=Cqp3oyvRrxe5qTI1SQ1IzQH9MxtDQebkaqbWUHmb6xHWteqVinS0BHTgXnkThAh366
         0M94lKOjiD2J2i13+bclIsPAMAPSvu7Cu9J2mKfGpYZJ6j2ls5szyRl4YkQ+UNF6CYRv
         npUchitfRWwT01KJFs4f+nRR/+kTifabwPtiI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YYQmUG4DsHmPA+zkHmttsjSXSwGBtSrBYgBxvV1HNiU=;
        b=AbLiVuLHxzJZYhGvrP+pUuL503b+ojWcPiXFEgTa80IgZK41LYZjTdp5uNqAg7xj4R
         zFINRw4j26fl2Ip1SGficwMUuC8dlQ2U3o05vx9KgIT9k3254XMVLKX6S6ocZ5SnT1yN
         wckZ0YmHsquVen/kN0uAbaKMVE4/xyGn79mUFzKdL9Jb3OwO9cjquv3ZoKFqf6tA/QN2
         ZaNSfmma1VykJjHsWFVE9O6halgkYcK+pT9TK06uX2IIxUFx7PiVBQ0te52qzKrmAgyR
         LsTF+HgC5FuyCOIViKwhPA8mQexGYTerllt+bj7mGR9ZY0zI3S0C4RT5UDdSSZS0/n0f
         oEOw==
X-Gm-Message-State: AOAM530ShKZY9Js3jH9x1qCy10WEhFPu8oZG/f04ov+OAFvRHWm6sig9
        dlRxqEdzBro3YHdxhjKqyNAsIaPixc7Yjg==
X-Google-Smtp-Source: ABdhPJwkoTfteLnQca40WwoFSueBfc2axxyDCZ89N6e70e3n6MyQF8YGypiCLMVVGQXt7c/KyxMxCw==
X-Received: by 2002:a65:550e:: with SMTP id f14mr3223846pgr.160.1622784198461;
        Thu, 03 Jun 2021 22:23:18 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:886f:8bd0:e6e2:4e47])
        by smtp.gmail.com with ESMTPSA id c15sm754014pgt.68.2021.06.03.22.23.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jun 2021 22:23:18 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 2/2] dt-bindings: arm64: dts: mediatek: Add mt8183-kukui-jacuzzi-cerise
Date:   Fri,  4 Jun 2021 13:23:12 +0800
Message-Id: <20210604052312.1040707-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.32.0.rc1.229.g3e70b5a671-goog
In-Reply-To: <20210604052312.1040707-1-hsinyi@chromium.org>
References: <20210604052312.1040707-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cerise is known as ASUS Chromebook CZ1.
Stern is known as ASUS Chromebook Flip CZ1.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 Documentation/devicetree/bindings/arm/mediatek.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 80a05f6fee85b..02c0653737648 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -126,6 +126,15 @@ properties:
         items:
           - const: google,burnet
           - const: mediatek,mt8183
+      - description: Google Cerise (ASUS Chromebook CZ1) / Stern (ASUS Chromebook Flip CZ1)
+        items:
+          - enum:
+              - google,cerise-sku0
+              - google,cerise-sku1
+              - google,cerise-rev3-sku0
+              - google,cerise-rev3-sku1
+          - const: google,cerise
+          - const: mediatek,mt8183
       - description: Google Krane (Lenovo IdeaPad Duet, 10e,...)
         items:
           - enum:
-- 
2.32.0.rc1.229.g3e70b5a671-goog

