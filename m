Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6D192B97A6
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 17:23:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727852AbgKSQSw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 11:18:52 -0500
Received: from mail-oo1-f67.google.com ([209.85.161.67]:38890 "EHLO
        mail-oo1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727800AbgKSQSw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 11:18:52 -0500
Received: by mail-oo1-f67.google.com with SMTP id z13so1478489ooa.5
        for <devicetree@vger.kernel.org>; Thu, 19 Nov 2020 08:18:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Vd3H42jUoSvZxFn/Q1zt8vw781tXojM7bC5Q50c1Fl8=;
        b=tgeEh618ibZYXsw3ziWbYmlrgUGkH/RIiNnGo68VR4Ku7Hd3yTHnHu2OhG0EtXgJ8o
         SdeRflLB4bjsB7LUiYKdsLdcyg95hSYy+6DCTIcXLUmvavRMq8IbkXM2NBV8U+d8Chts
         4dy9WFKQyTdJqT7QrWVGUJEBfL4dBrHOyEOKq/CbLpEtfp32OOudj9vM9g1yOUvMyX5t
         V6Spm0pPFHGilTJc1hD16CX5dYs4a/rQVaBoUnmlEEYfZczS+8UHWseVZEdd4pJ/WZTg
         b37c8JVCJuXWGs3BBqozjVOza71TY3jwLXGt5jOccjRYbwxq+aKBLaWhzOPPk6k2Xzcy
         kEgw==
X-Gm-Message-State: AOAM530feX1zTYm4VoG6njss/xlx0da/qVY9uY1nW9DfQj3ITCR3M9DN
        cwnb5VHrgunZIjo8CtgU9JOKc4dkvw==
X-Google-Smtp-Source: ABdhPJy+z6J4cPV6dH7vCvJ98HwBWHFs+6+z4hY/aKmDzuMeNHNL4aMXBGrfY+PwB1Tl7wRWJWYLdQ==
X-Received: by 2002:a4a:96c2:: with SMTP id t2mr10893667ooi.25.1605802729708;
        Thu, 19 Nov 2020 08:18:49 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id c6sm139820oif.48.2020.11.19.08.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Nov 2020 08:18:49 -0800 (PST)
From:   Rob Herring <robh@kernel.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Sameer Pujar <spujar@nvidia.com>, alsa-devel@alsa-project.org
Subject: [PATCH] ASoC: dt-bindings: renesas,rsnd: Fix duplicate 'allOf' entries
Date:   Thu, 19 Nov 2020 10:18:48 -0600
Message-Id: <20201119161848.3379929-1-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit e52f3f291152 ("ASoC: audio-graph-card: Refactor schema") added an
'allOf' entry, but one is already present in the schema. Multiple keys
is not valid and results in an error:

ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
  in "<unicode string>", line 4, column 1
found duplicate key "allOf" with value "[]" (original value: "[]")
  in "<unicode string>", line 262, column 1

Fixes: e52f3f291152 ("ASoC: audio-graph-card: Refactor schema")
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: Sameer Pujar <spujar@nvidia.com>
Cc: alsa-devel@alsa-project.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
index cbfd5914b432..0fd37aa84947 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
@@ -9,10 +9,6 @@ title: Renesas R-Car Sound Driver Device Tree Bindings
 maintainers:
   - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
 
-allOf:
-  - $ref: audio-graph.yaml#
-  - $ref: audio-graph-port.yaml#
-
 properties:
 
   compatible:
@@ -260,6 +256,8 @@ required:
   - "#sound-dai-cells"
 
 allOf:
+  - $ref: audio-graph.yaml#
+  - $ref: audio-graph-port.yaml#
   - if:
       properties:
         compatible:
-- 
2.25.1

