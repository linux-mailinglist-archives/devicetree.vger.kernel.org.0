Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 672C546CCA2
	for <lists+devicetree@lfdr.de>; Wed,  8 Dec 2021 05:41:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239754AbhLHEpI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 23:45:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235223AbhLHEpI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 23:45:08 -0500
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C6A9C061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 20:41:37 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id 71so1030019pgb.4
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 20:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gVTXx2Ftul3axT9kG8wb/hHelrk+iyq3wOYFqWlWjWk=;
        b=oWcfD5XcW0oT9QFTheXHFeLXwtCC85oNZb8SpB3TnmgJmQgEaF2RvSXun/lAaoTTLn
         cUNhQlmRfL9ts8Yr+zpOIuQp0wWgqy7/6K7CDt6WERgsv0lc8h8CmyYLRDb4Yh5g3Hmh
         x1bpMJ/+rpJauk9VAdSxWjo3RiSYO2u2eEwo15VHIOuba1OcvFT/no/dfewvTd+YzJ7t
         m5wXVhaMvjcyWjeKMbynqLt1BFnov51x1kxoICPkAYX051Y9SvX8puihTyZjM7xFz+zU
         SRIvuYmKEFw2TWB2RYfSCObmlbpwY6Ifsiy7tx3NjceTY+63A4OEShHOYVmnzpXM+bqH
         xfVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=gVTXx2Ftul3axT9kG8wb/hHelrk+iyq3wOYFqWlWjWk=;
        b=0lMH0nqcwXw2X4CXqM9XBVgyYxiUr398PUVQzdr2bej4T/xi3FVirXUb2RQkYT0G4Q
         Ll6xbZbjy6A6MlC6RjiKEesF569SPT+WwZmAjYJFKmxfliCqAu1F0u4PMb0NijB1EFzQ
         0HFyYg6pX91QmN72GnT4ZCpICU2kjzdLRyv2ci7L7qNNQ+mhZXvbmA3qR3a3pTN+4Zeh
         9i0m4uJdxSSMXixjpAEMFlQRnY3siuVtEUn3W+GI0SwJJWHEyzb8fb2uujFHh6GlmPMS
         SAqQD1EdPk+64ya1uS/lgecZoAqBCNlqJ1WIK59wxbLlR8duIk1OcxPUxuVEiFKr+iyf
         +HwQ==
X-Gm-Message-State: AOAM53292HSHaYBsQ66/plk+EMVX4IIoEIobnmNjul5+soAnX3POsUwE
        nHI8hhO4E1rKUKX9g5W+A+trMjPC+KxYrQ==
X-Google-Smtp-Source: ABdhPJxs2WOshOlJoxL1kNg/Hwp/A6wY4SGHd6+tt5PnePyQJwe3IBGTnJriHXVFxjPsS/FNyLIfvg==
X-Received: by 2002:a63:1166:: with SMTP id 38mr27404118pgr.368.1638938496739;
        Tue, 07 Dec 2021 20:41:36 -0800 (PST)
Received: from localhost.localdomain (fs76eeeb6c.tkyc601.ap.nuro.jp. [118.238.235.108])
        by smtp.gmail.com with ESMTPSA id l2sm1469249pfc.42.2021.12.07.20.41.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Dec 2021 20:41:36 -0800 (PST)
Sender: Kuninori Morimoto <kuninori.morimoto.gx@gmail.com>
From:   Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Subject: [PATCH 1/1] ASoC: dt-bindings: audio-graph-port: enable both flag/phandle for bitclock/frame-master
Date:   Wed,  8 Dec 2021 13:41:03 +0900
Message-Id: <20211208044103.405292-1-kuninori.morimoto.gx@renesas.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

snd_soc_daifmt_parse_clock_provider_raw() is handling both
bitclock/frame-master, and is supporting both flag/phandle.
Current DT is assuming it is flag style.
This patch allows both case.

Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
---
 .../bindings/sound/audio-graph-port.yaml      | 23 +++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
index 43e7f86e3b23..6c3645a0d36b 100644
--- a/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
+++ b/Documentation/devicetree/bindings/sound/audio-graph-port.yaml
@@ -14,6 +14,24 @@ select: false
 allOf:
   - $ref: /schemas/graph.yaml#/$defs/port-base
 
+definitions:
+  flag_or_phandle:
+    oneOf:
+      - type: boolean
+        const: true
+      - type: 'null'
+      - type: array
+        minItems: 1
+        maxItems: 1
+        items:
+          type: array
+          items:
+            phandle: true
+            type: integer
+            maximum: 0xffffffff
+          minItems: 1
+          maxItems: 1
+
 properties:
   prefix:
     description: "device name prefix"
@@ -42,10 +60,11 @@ patternProperties:
         $ref: /schemas/types.yaml#/definitions/flag
       frame-master:
         description: Indicates dai-link frame master.
-        $ref: /schemas/types.yaml#/definitions/phandle
+        $ref: "#/definitions/flag_or_phandle"
       bitclock-master:
         description: Indicates dai-link bit clock master
-        $ref: /schemas/types.yaml#/definitions/phandle
+        $ref: "#/definitions/flag_or_phandle"
+
       dai-format:
         description: audio format.
         items:
-- 
2.25.1

