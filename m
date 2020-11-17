Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0FC8B2B5648
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 02:34:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725901AbgKQBdz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 20:33:55 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:36194 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725730AbgKQBdy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 20:33:54 -0500
Received: by mail-oi1-f193.google.com with SMTP id d9so20942509oib.3
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 17:33:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wNb4ssqi6GnjfKnwrQ0BaPlK7z2Z97OJHzDNpZ85994=;
        b=h4BlmDhJpDrJn0FTVc1gNJkJFh7pXxdDu53wEc4sfIlHyaXwv+oF+hxT/DFxjbjdD6
         aWvG0Nt0ni5gMw+f33bi3sDHDY8wZd5NNvHaluUhAiunxMlWg0oFM74Rwhj1TO2WVTCD
         DenAUn5AcC/U0QC19Hp03XzJJ4IzDNbmqz3Gj+mNSOoYbDL4thzK55C3ieEvb0tdpN1b
         vGhPqTe9ZodUZQqSVsd6Q72e+85rQrhAxVd9wL+Q8iYcRPdXv31VMdC1K6c+unawsekA
         dBzKNgu1ecUv71AqwpRbI6VZ4DY7kcsLtty5Vq9cEI+E4MeIamysvWq8TMBXHr0Bp5Xs
         yvVA==
X-Gm-Message-State: AOAM5315GpodZ/pMl8zTGuoPUwO9iEL8Ipru/04/WCfskOwd5TQ+VTo1
        AjkJlRIZDSGLDK5fs1qnuw==
X-Google-Smtp-Source: ABdhPJyDkvsLj4rCoRr0stY/uAY+Ho1h7TjbcsWWN9IwYjbAu6/wt1w8uWs//J0UNqwvW85u68w85A==
X-Received: by 2002:aca:cd17:: with SMTP id d23mr917590oig.171.1605576833830;
        Mon, 16 Nov 2020 17:33:53 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id j9sm3861325oij.44.2020.11.16.17.33.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 17:33:53 -0800 (PST)
From:   Rob Herring <robh@kernel.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Sameer Pujar <spujar@nvidia.com>
Subject: [PATCH 3/4] ASoC: dt-bindings: marvell,mmp-sspa: Use audio-graph-port schema
Date:   Mon, 16 Nov 2020 19:33:48 -0600
Message-Id: <20201117013349.2458416-4-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201117013349.2458416-1-robh@kernel.org>
References: <20201117013349.2458416-1-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have a graph schema, reference it from the marvell,mmp-sspa
schema.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../bindings/sound/marvell,mmp-sspa.yaml      | 25 +++----------------
 1 file changed, 3 insertions(+), 22 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/marvell,mmp-sspa.yaml b/Documentation/devicetree/bindings/sound/marvell,mmp-sspa.yaml
index 6d20a24a2ae9..234f64a32184 100644
--- a/Documentation/devicetree/bindings/sound/marvell,mmp-sspa.yaml
+++ b/Documentation/devicetree/bindings/sound/marvell,mmp-sspa.yaml
@@ -9,6 +9,9 @@ title: Marvel SSPA Digital Audio Interface Bindings
 maintainers:
   - Lubomir Rintel <lkundrak@v3.sk>
 
+allOf:
+  - $ref: audio-graph-port.yaml#
+
 properties:
   $nodename:
     pattern: "^audio-controller(@.*)?$"
@@ -58,29 +61,9 @@ properties:
         type: object
 
         properties:
-          remote-endpoint: true
-
-          frame-master:
-            type: boolean
-            description: SoC generates the frame clock
-
-          bitclock-master:
-            type: boolean
-            description: SoC generates the bit clock
-
           dai-format:
-            $ref: /schemas/types.yaml#/definitions/string
-            description: The digital audio format
             const: i2s
 
-        required:
-          - remote-endpoint
-
-    required:
-      - endpoint
-
-    additionalProperties: false
-
 required:
   - "#sound-dai-cells"
   - compatible
@@ -112,8 +95,6 @@ examples:
       port {
         endpoint {
           remote-endpoint = <&rt5631_0>;
-          frame-master;
-          bitclock-master;
           dai-format = "i2s";
         };
       };
-- 
2.25.1

