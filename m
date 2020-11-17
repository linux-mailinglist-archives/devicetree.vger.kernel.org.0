Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DCC3B2B5647
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 02:34:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725764AbgKQBd4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 20:33:56 -0500
Received: from mail-oi1-f194.google.com ([209.85.167.194]:34331 "EHLO
        mail-oi1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725730AbgKQBd4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 20:33:56 -0500
Received: by mail-oi1-f194.google.com with SMTP id w188so20947876oib.1
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 17:33:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7v83U4ZReYBGAfYOQtO/dOb1BUnzpl5ihuyBngAA7CU=;
        b=EecZlb3J7Pto7goRpE5JD871h9MQ3gvbyhqIG2QZaFgXfkh6yG3Ep0iX0TXoscSlHY
         bBVVpzga8M4bXPCt6uUmeg+Uwl9G1E7iTjNuiCx7e7dN3KG0G0Q75PbS2dw5dN1Sfd62
         ZsQWPtozmoxWDYlSFKoSCBYBgo6+0lhw0oIF+NjMHIziJ32yARFFCY13+NHdjCNRjG/P
         9t8FNz/KXDYwH4/7t77Kj6MizqAfMKr8sQ4Y5miKPEsJ/TvNojOTT4spwYjQFCXwVkCm
         dKUNMzW2rIHmyZbcTQWmzUlGJRc+Uw1EfwrPew9SPeeADZS5EH3ANs9Nw8tVUXuZHjH3
         fDQg==
X-Gm-Message-State: AOAM533lYjs//jWNRLwxyrWEB+DAbafQ8Hbo9useV5ZXR69dbnK+Yf5m
        xJPLg0E4/5TBKD1nii9L5g==
X-Google-Smtp-Source: ABdhPJzyi1Pq1zCgJvRLk5tSHnQcHJ5b4OUkT8Xd8ewHIyt1yL8BzhAIJOyKkE7LJYcFknVYD6ujrA==
X-Received: by 2002:aca:486:: with SMTP id 128mr997880oie.19.1605576834952;
        Mon, 16 Nov 2020 17:33:54 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id j9sm3861325oij.44.2020.11.16.17.33.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 17:33:54 -0800 (PST)
From:   Rob Herring <robh@kernel.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Sameer Pujar <spujar@nvidia.com>
Subject: [PATCH 4/4] ASoC: dt-bindings: Refine 'frame-master' and 'bitclock-master' type
Date:   Mon, 16 Nov 2020 19:33:49 -0600
Message-Id: <20201117013349.2458416-5-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201117013349.2458416-1-robh@kernel.org>
References: <20201117013349.2458416-1-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

'frame-master' and 'bitclock-master' are only a single phandle, so use
the more specific 'phandle' type definition instead.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/sound/audio-graph-port.yaml         | 6 ++----
 Documentation/devicetree/bindings/sound/simple-card.yaml    | 6 ++----
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index c05d5643b10e..7c13ca41d41f 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -43,12 +43,10 @@ properties:
             $ref: /schemas/types.yaml#/definitions/flag
           frame-master:
             description: Indicates dai-link frame master.
-            $ref: /schemas/types.yaml#/definitions/phandle-array
-            maxItems: 1
+            $ref: /schemas/types.yaml#/definitions/phandle
           bitclock-master:
             description: Indicates dai-link bit clock master
-            $ref: /schemas/types.yaml#/definitions/phandle-array
-            maxItems: 1
+            $ref: /schemas/types.yaml#/definitions/phandle
           dai-format:
             description: audio format.
             items:
diff --git a/Documentation/devicetree/bindings/sound/simple-card.yaml b/Documentation/devicetree/bindings/sound/simple-card.yaml
index 35e669020296..45fd9fd9eb54 100644
--- a/Documentation/devicetree/bindings/sound/simple-card.yaml
+++ b/Documentation/devicetree/bindings/sound/simple-card.yaml
@@ -13,13 +13,11 @@ definitions:
 
   frame-master:
     description: Indicates dai-link frame master.
-    $ref: /schemas/types.yaml#/definitions/phandle-array
-    maxItems: 1
+    $ref: /schemas/types.yaml#/definitions/phandle
 
   bitclock-master:
     description: Indicates dai-link bit clock master
-    $ref: /schemas/types.yaml#/definitions/phandle-array
-    maxItems: 1
+    $ref: /schemas/types.yaml#/definitions/phandle
 
   frame-inversion:
     description: dai-link uses frame clock inversion
-- 
2.25.1

