Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A18D2B564A
	for <lists+devicetree@lfdr.de>; Tue, 17 Nov 2020 02:34:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725554AbgKQBdz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 20:33:55 -0500
Received: from mail-oi1-f196.google.com ([209.85.167.196]:33162 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725764AbgKQBdz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 20:33:55 -0500
Received: by mail-oi1-f196.google.com with SMTP id k26so20981141oiw.0
        for <devicetree@vger.kernel.org>; Mon, 16 Nov 2020 17:33:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=spsmauWvc5A5SYudUomXMMzn+PeDbEjuioZTNAq65wc=;
        b=chSW+a7s6EDVNtJRtItM2JmE1I4hlMlgSfnFw6C+sZWLKNBmy7NkIj2RHYAWU9dnxi
         aKHBQhuGX/ASdLc/BdWMD9L7jGJtYXFbxzB/J0AZtk1F8njWfpXS+YA7eRwZxEYq3dX/
         y4NuSS6FhybOb71oSy3ks6UHFxEs5kEC681WG7Nip+uQ5muWoACIlVuYJCVTlAQVlnP2
         ADytPXEmpJ/HMESfkuEMb0GAbvrHG6AfQjg9dSbjuk8s1VX/YEp/xep7g6G6q9NcaRUo
         vx3Jlnwi6dSKYVfnHxdauEU7iPzDHZHQ08kSjVnE43dz75lHSGc2Uky0xTi59d5iR/Ll
         t3kg==
X-Gm-Message-State: AOAM532BZlFn5DPbT2Wsfi9SUaVGJ4CsN0rXo/6jQRJbZsL3UxtHsVQL
        rEc7RBSPVDddvpxw/HEeLX7e0Mlc+w==
X-Google-Smtp-Source: ABdhPJwAoktwKb9CWVlc2LS2AAtpaWZoLT4ef5gt28xJSOD8nEazcXh9uwt/ZK7/G6xwTypii9uUJA==
X-Received: by 2002:aca:fcd5:: with SMTP id a204mr970460oii.161.1605576832729;
        Mon, 16 Nov 2020 17:33:52 -0800 (PST)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.googlemail.com with ESMTPSA id j9sm3861325oij.44.2020.11.16.17.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2020 17:33:52 -0800 (PST)
From:   Rob Herring <robh@kernel.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Sameer Pujar <spujar@nvidia.com>
Subject: [PATCH 2/4] ASoC: dt-bindings: Use OF graph schema
Date:   Mon, 16 Nov 2020 19:33:47 -0600
Message-Id: <20201117013349.2458416-3-robh@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201117013349.2458416-1-robh@kernel.org>
References: <20201117013349.2458416-1-robh@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Now that we have an OF graph schema, let's use it for the
audio-graph-port schema.

There's no need to define 'ports' nodes as specific bindings must define
that and port numbering of the child 'port' nodes.

Signed-off-by: Rob Herring <robh@kernel.org>
---
Note that graph.yaml is part of dtschema now intead of the kernel tree.
---
 .../bindings/sound/audio-graph-port.yaml         | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index 9db19d4edc6a..c05d5643b10e 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -13,11 +13,9 @@ select: false
 
 properties:
   port:
-    description: single OF-Graph subnode
+    $ref: /schemas/graph.yaml#/properties/port
     type: object
     properties:
-      reg:
-        maxItems: 1
       prefix:
         description: "device name prefix"
         $ref: /schemas/types.yaml#/definitions/string
@@ -31,8 +29,6 @@ properties:
       "^endpoint(@[0-9a-f]+)?":
         type: object
         properties:
-          remote-endpoint:
-            maxItems: 1
           mclk-fs:
             description: |
               Multiplication factor between stream rate and codec mclk.
@@ -73,14 +69,6 @@ properties:
             description: CPU to Codec rate channels.
             $ref: /schemas/types.yaml#/definitions/uint32
 
-        required:
-          - remote-endpoint
-
-  ports:
-    description: multi OF-Graph subnode
-    type: object
-    patternProperties:
-      "^port(@[0-9a-f]+)?":
-        $ref: "#/properties/port"
+    additionalProperties: false
 
 additionalProperties: true
-- 
2.25.1

