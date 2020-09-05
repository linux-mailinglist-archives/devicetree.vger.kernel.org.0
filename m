Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 869F825EB3A
	for <lists+devicetree@lfdr.de>; Sun,  6 Sep 2020 00:06:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728103AbgIEWGk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Sep 2020 18:06:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728327AbgIEWGj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Sep 2020 18:06:39 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F089C061245
        for <devicetree@vger.kernel.org>; Sat,  5 Sep 2020 15:06:37 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id m22so13057356eje.10
        for <devicetree@vger.kernel.org>; Sat, 05 Sep 2020 15:06:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Dm+r+hKRZdZSY5p5jObjvcH8LXc+2rkrpKCGr8Z9U1Q=;
        b=BfP4P1dedduYAorS2gf0y3U30a3uBYt3buVmE4DUlQsKhQHCPONHYetxiX4/ewkciL
         PnN/QdjFalAmJKLYUD+aUZKKazx5dCEvRbWUOZVPB3XU2G5+M/KnMtPFzO2KeTXUAH6/
         8ziBgXm87uDEby5JR0/8tucvfm87YYqxfaXqwfIrHROKAq8B5AqkPvnwH5asZ6MRNSpi
         i8BJ6XXCO9ttnZG3CxCvcSkHtZZBef5iO6FwfadH6DUGUcqhzZx2Gfxo4h8zeNpeFv7i
         vb66riy7+fbPgdSSeVyHmSTk781TE/sf67Z2VMOrzKdvByJBCsdLdrnOiiwt3AXsHpQn
         r5jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Dm+r+hKRZdZSY5p5jObjvcH8LXc+2rkrpKCGr8Z9U1Q=;
        b=jPDvS3roqBdym1E7E5Ay/ObTZL/WhbpigUYV9Zg7d4QP4DXAvgI40Wr+eFaoeDQrIx
         VhZK0t/a2FUsILPcaGF9d4JeFPrYziaEGcOvpAenzcIMzREv5TcXrEQvf3xMKj93xvDz
         HwPShi79f1Ia9un1yxae4co6aDFyJ3ps3bncCL+78R97jmyEndVHy8mP31w7kT7jr7Ls
         p8bxT9tJmLVlMG1bef1acorV8b+vqlrCbt584FzmzsEGouFCLngE94/NfhesocYox3nW
         UyZJLbSTHgkueRcOTHneUMkN1ZYOtoIpG+epgVa2TqlkY+uSe8hTb4vlHb8sqcwidPff
         UxMA==
X-Gm-Message-State: AOAM5338k51m1agn1TIvK79zs7Rjfd00qb1sbWcUQ+5hMw3dWBwRFNIw
        kvtlEU1TpXDxOfR/kgJxZYc=
X-Google-Smtp-Source: ABdhPJwMYVu6MLJ252FUB4Py7u7wBzjuQ/bwGpIV6m7B1bKWVNtKeg4eTdJJpEXfCRDXad2OyHwoxQ==
X-Received: by 2002:a17:906:2858:: with SMTP id s24mr13356847ejc.399.1599343596053;
        Sat, 05 Sep 2020 15:06:36 -0700 (PDT)
Received: from debian64.daheim (pd9e292e7.dip0.t-ipconnect.de. [217.226.146.231])
        by smtp.gmail.com with ESMTPSA id c22sm9967736edr.70.2020.09.05.15.06.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 15:06:35 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.94)
        (envelope-from <chunkeey@gmail.com>)
        id 1kEgKD-000FIk-NZ; Sun, 06 Sep 2020 00:06:21 +0200
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org
Cc:     Chris Blake <chrisrblake93@gmail.com>,
        Paul Mackerras <paulus@samba.org>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 1/5] dt-bindings: powerpc: define apm,apm82181 binding
Date:   Sun,  6 Sep 2020 00:06:11 +0200
Message-Id: <aa51a2aaffcbf98c90d378f6f6c7b926989b6c27.1599343429.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <cover.1599343429.git.chunkeey@gmail.com>
References: <cover.1599343429.git.chunkeey@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

make a binding for the various boards based on the
AppliedMicro/APM APM82181 SoC.

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 .../bindings/powerpc/4xx/apm,apm82181.yaml    | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/powerpc/4xx/apm,apm82181.yaml

diff --git a/Documentation/devicetree/bindings/powerpc/4xx/apm,apm82181.yaml b/Documentation/devicetree/bindings/powerpc/4xx/apm,apm82181.yaml
new file mode 100644
index 000000000000..03a3c02fe920
--- /dev/null
+++ b/Documentation/devicetree/bindings/powerpc/4xx/apm,apm82181.yaml
@@ -0,0 +1,29 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/powerpc/4xx/apm,apm82181.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: APM APM82181 device tree bindings
+
+description:
+  AppliedMicro APM82181 Wi-Fi/network SoCs based
+  on the PPC464-CPU architecture.
+
+maintainers:
+  - Christian Lamparter <chunkeey@gmail.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: APM82181 based boards
+        items:
+          - enum:
+              - apm,bluestone
+              - meraki,mr24
+              - wd,mybooklive
+          - const: amcc,apm82181
+
+...
-- 
2.28.0

