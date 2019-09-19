Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 836D7B7346
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 08:39:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388094AbfISGjR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Sep 2019 02:39:17 -0400
Received: from mail-pf1-f180.google.com ([209.85.210.180]:43813 "EHLO
        mail-pf1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388152AbfISGjR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Sep 2019 02:39:17 -0400
Received: by mail-pf1-f180.google.com with SMTP id a2so1585235pfo.10
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 23:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=wpuMn03tUIQsR8rZavj+GiJJtBb+wUvitnysLC3OpiU=;
        b=PMxExpOIXlUFXAFa3Moc3DfVHDnJscDeFnXV/qaxLuAv2F7DbqFqoz9P2w/LypXfKI
         5xZwMOLHP7oblg4tNGly6XXBws+o4YSonS36H5xvLXAenzN0AheQQ6+JjT/7dIdsyu2A
         xpcCStC9zyaH6IcNgFcxquUrX/jUNPrmmpjbzJ2dYeVDAiS3SuaTK6WuTadsiZBF6niW
         +EA/Lp6VeIM1hNl/E/doXLlBN3jJeKzw1IDNihxrOCLx2y9JJxvUWRb+ZvUwyHhv6g4W
         KM2+RJeUMKNU5+lDY0qJzkEh1Qs4aOqXR28Q7Cjk3/nbH5iK6CLU2shH7STEELSyDSy8
         YolA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wpuMn03tUIQsR8rZavj+GiJJtBb+wUvitnysLC3OpiU=;
        b=h+zNnK5ye2W4CjamxQEFzCezLJ87hcCOWr04mNy5Yv5If2zugQTA7ywblwg5iAyGkH
         EOlIG3Wape0fbijON8fbOZZk54yUHuHBo/JZxkQDBPdzMgIZqJbcrnPM1enCXD6e5fWW
         ZmPQTmgEeTj8fZ4ti6qsa4uebU8kgwRzhH4tBFHvB0qPA9zKCpi4zpqYqYTN1Dz/KV50
         knih//r/L6x5cXsnA8DYi9V15EfuDoL8Da/oMaHxDdJawV1isubMC7LJNk82MC4FTyBr
         mVpspHnOUPYBIJclMin1h9asaT/N/MTDo6A80IcUWr7zZfboOBNCNQCG8X+B98AXLF2R
         7s8A==
X-Gm-Message-State: APjAAAXMsEQ4Y2Fkku+LFTEYEs19YEFA7WSywIDw+IkUCFOt1D16hXf+
        dTITGmZBdJR1g2KjBmdtHvHT8Q==
X-Google-Smtp-Source: APXvYqwHp1zJz34n8tT1pKbEoEETsbDLuoiL8pzuyfr/mZ7BuShBULuW5Pa7A5XuIVS9Qqs0wjqKXw==
X-Received: by 2002:a17:90a:3086:: with SMTP id h6mr1972443pjb.1.1568875155727;
        Wed, 18 Sep 2019 23:39:15 -0700 (PDT)
Received: from pragneshp.open-silicon.com ([114.143.65.226])
        by smtp.gmail.com with ESMTPSA id v5sm11550757pfv.76.2019.09.18.23.39.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Sep 2019 23:39:15 -0700 (PDT)
From:   Pragnesh Patel <pragnesh.patel@sifive.com>
To:     lgirdwood@gmail.com, broonie@kernel.org
Cc:     Pragnesh Patel <pragnesh.patel@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] fixed-regulator: dt-bindings: Fixed building error for compatible property
Date:   Thu, 19 Sep 2019 12:09:04 +0530
Message-Id: <1568875145-2864-1-git-send-email-pragnesh.patel@sifive.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Compatible property is not of type 'string', so remove const:
from it.

Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
---
 Documentation/devicetree/bindings/regulator/fixed-regulator.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
index a78150c..f324169 100644
--- a/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/fixed-regulator.yaml
@@ -30,8 +30,8 @@ if:
 properties:
   compatible:
     enum:
-      - const: regulator-fixed
-      - const: regulator-fixed-clock
+      - regulator-fixed
+      - regulator-fixed-clock
 
   regulator-name: true
 
-- 
2.7.4

