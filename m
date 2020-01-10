Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2AA87136862
	for <lists+devicetree@lfdr.de>; Fri, 10 Jan 2020 08:38:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726623AbgAJHhn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jan 2020 02:37:43 -0500
Received: from mail-pf1-f182.google.com ([209.85.210.182]:34613 "EHLO
        mail-pf1-f182.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726561AbgAJHhn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jan 2020 02:37:43 -0500
Received: by mail-pf1-f182.google.com with SMTP id i6so726092pfc.1
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2020 23:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zPmK1IVjUjoDDdGXICIzNkDG9sEfLCivKbwQNM5Dc3g=;
        b=MkxgcYU+henCA5kN+O1OSgQ8jmPxocJVAdEbEUCpADdqi+QU1aESTk+OSpiZdSVmtN
         BSTNqEljO1iisJAdLb+nt03AMZ7kc9QJc46EksUCwub/MJbfMZ5V3aaF6RVb9oagpULU
         1HA+Njc4sZEWYahfHvl3yrvQKZn75/jxDBmLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zPmK1IVjUjoDDdGXICIzNkDG9sEfLCivKbwQNM5Dc3g=;
        b=o+8GpMZGHGuhlFXgrvqtYkUe3nyg9xRmPM4JUD1uKnnmyzy5PWzFYefi/Wc4B8QZOj
         oqO4c9v5smimDNkhtJvDvZWdiRAg1kms1FTpdRz0bBkHKqm8AEBN5mHrjeDy+eFyH/K+
         9pbAC7uLmREvGNJmC0ZmZ4TSsg0LCINkzK/DrlQRMVmQKDRRkG6Q8bFrWZdjjBFBDIY+
         OqoSazj0MXCmLkE7PH2sdDtYr1x82JSFzfC9LcPqBZ1zF5WtrqFPZrZhoGECbuqr2qg9
         EJg5jqpfLIeWyTHOffRAjEIR2AtlwQB3Ug/oGu4jY/h66PVfSedTChLJFueZKiiX+7cu
         yPTQ==
X-Gm-Message-State: APjAAAWeSVR9QI3PsR/jX5JPN/DCZUh07eNkIe2/Q3BGtU6Omtqijth+
        +MktOJKrdULlHM9OJgORYn8fTA==
X-Google-Smtp-Source: APXvYqxXyq/aIJxYy6CGQGlrFbVq7DCDQJRkJEBFWREvT9xXXlpwtMYfLPLZqL7CdRPmXfF7Y0olwA==
X-Received: by 2002:a62:7681:: with SMTP id r123mr2477932pfc.169.1578641862585;
        Thu, 09 Jan 2020 23:37:42 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:b852:bd51:9305:4261])
        by smtp.gmail.com with ESMTPSA id p28sm1373919pgb.93.2020.01.09.23.37.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2020 23:37:42 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Nicolas Boichat <drinkcat@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Daniel Kurtz <djkurtz@chromium.org>
Subject: [PATCH v2 1/2] dt-bindings: arm64: dts: mediatek: Add mt8173 elm and hana
Date:   Fri, 10 Jan 2020 15:37:29 +0800
Message-Id: <20200110073730.213789-2-hsinyi@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200110073730.213789-1-hsinyi@chromium.org>
References: <20200110073730.213789-1-hsinyi@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
SoC.

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
Changes in v2:
- fix dtbs_check errors, use const instead of enum
---
 .../devicetree/bindings/arm/mediatek.yaml     | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/mediatek.yaml b/Documentation/devicetree/bindings/arm/mediatek.yaml
index 4043c5046441..5272899b08fa 100644
--- a/Documentation/devicetree/bindings/arm/mediatek.yaml
+++ b/Documentation/devicetree/bindings/arm/mediatek.yaml
@@ -84,6 +84,33 @@ properties:
           - enum:
               - mediatek,mt8135-evbp1
           - const: mediatek,mt8135
+      - description: Google Elm (Acer Chromebook R13)
+        items:
+          - const: google,elm-rev8
+          - const: google,elm-rev7
+          - const: google,elm-rev6
+          - const: google,elm-rev5
+          - const: google,elm-rev4
+          - const: google,elm-rev3
+          - const: google,elm-rev2
+          - const: google,elm-rev1
+          - const: google,elm
+          - const: mediatek,mt8173
+      - description: Google Hana (Lenovo Chromebook and more)
+        items:
+          - const: google,hana-rev6
+          - const: google,hana-rev5
+          - const: google,hana-rev4
+          - const: google,hana-rev3
+          - const: google,hana-rev2
+          - const: google,hana-rev1
+          - const: google,hana-rev0
+          - const: google,hana
+          - const: mediatek,mt8173
+      - description: Google Hana rev7 (Poin2 Chromebook 11C)
+        items:
+          - const: google,hana-rev7
+          - const: mediatek,mt8173
       - items:
           - enum:
               - mediatek,mt8173-evb
-- 
2.25.0.rc1.283.g88dfdc4193-goog

