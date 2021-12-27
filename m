Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6135A47FD67
	for <lists+devicetree@lfdr.de>; Mon, 27 Dec 2021 14:32:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234211AbhL0NcP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Dec 2021 08:32:15 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:39444
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234039AbhL0NcK (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Dec 2021 08:32:10 -0500
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com [209.85.208.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 17DAF3F32C
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 13:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1640611925;
        bh=y5MJv5dkFEWJeZ+ENEwYHJsdTdmbB9oIwbRFldgvfL0=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=OlTKe6KeG2/7bC57ZIRaMavtYKGfOpsZKDm6xj5yt9352qMk1H9M8O+jZ+NArmoFf
         2oCx509lTNOosBXochYb/lGfHyuSmGvOBOO9oNi0bKWdkwd4jmF631UgfsB1NobxWl
         y2ze6uRNz9Q/jTBj7ilkIaMYGOOdi7t6zOoVKwn1X+yuk2ng+GXbfKGvDowbwdZA44
         PnlAdAJvw+QstLcV9GVg/DVHbGn1WhQ2uVGg0DF0roYMYABP1jYRz6S/kvlSIvKf3B
         bMApBIUjNwb+/m7kNQzZEdVE5tlBOrtITzySB7JOox4UIypVPra9SksRz1QFetG+Kc
         FNBdShAVB1KmA==
Received: by mail-lj1-f199.google.com with SMTP id z9-20020a2e3509000000b0022d8e7f5889so4603638ljz.16
        for <devicetree@vger.kernel.org>; Mon, 27 Dec 2021 05:32:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y5MJv5dkFEWJeZ+ENEwYHJsdTdmbB9oIwbRFldgvfL0=;
        b=xknFlqJWI41+5CKMwq7AhX1WeawKuA36a4QzXOmGrtiKCQIj+gY57qUMsFaAB/4IJb
         62rl5lTt+Ib0VG0Hpp+/HocAKaw2cQqc51xDhx05FHc/sBA0fYzijyGrwCQt1qO1OI64
         KE4+hP848wq4o25KUHGr4vhVsvLPiHzlQU7Ca73dl3bvJnJ8AlYEM6/G4mYw7TO5JYn2
         7olQIyozSPegNsERsUmX7lNf+yV5Rl1yvqitdhnyHAS2lxSiORs/R4M/tMOT8GB1CPuQ
         XtV13mCmyYVYJTp51MTqLxChmPkFzhV3Igjfs0m2NghQsPZXxT2+vQcHWdvmrlL2Kr60
         An4Q==
X-Gm-Message-State: AOAM531MbG1OKVxnzYfoJ6NGkPv3RDtN2N4kEENbIHOe2/vawfKYZF7s
        c8WL/nm1kuQ2RkkV7y+YdOIH2WwzdqTZ5DaxOct6gSMGZNqJbg8r5HXN6GMUewcbvpzQ8m61Gyo
        9BOfVGb44nKS23Mt65tQRaJeSRFT7mIPh2ZhuLRY=
X-Received: by 2002:a19:6e0b:: with SMTP id j11mr15350131lfc.226.1640611924598;
        Mon, 27 Dec 2021 05:32:04 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxdC9kbL0s6EJ1Ul2bU9vVLa0PpXYnccCSTpvf6T3GQkXGRZJCOybKlDM22aTnjracXRomVlw==
X-Received: by 2002:a19:6e0b:: with SMTP id j11mr15350120lfc.226.1640611924436;
        Mon, 27 Dec 2021 05:32:04 -0800 (PST)
Received: from krzk-bin.lan (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id d14sm1433510lfg.18.2021.12.27.05.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Dec 2021 05:32:03 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Dinh Nguyen <dinguyen@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-mmc@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 02/19] dt-bindings: altera: document existing Cyclone 5 board compatibles
Date:   Mon, 27 Dec 2021 14:31:14 +0100
Message-Id: <20211227133131.134369-3-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
References: <20211227133131.134369-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Several Cyclone 5 SoCFPGA based boards have additional board compatibles
which are not documented in the bindings.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 .../devicetree/bindings/arm/altera.yaml       | 30 +++++++++++++++----
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index c15c92fdf2ed..0d62c2bde053 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -13,12 +13,30 @@ properties:
   $nodename:
     const: "/"
   compatible:
-    items:
-      - enum:
-          - altr,socfpga-cyclone5
-          - altr,socfpga-arria5
-          - altr,socfpga-arria10
-      - const: altr,socfpga
+    oneOf:
+      - description: Arria 5 boards
+        items:
+          - const: altr,socfpga-arria5
+          - const: altr,socfpga
+
+      - description: Arria 10 boards
+        items:
+          - const: altr,socfpga-arria10
+          - const: altr,socfpga
+
+      - description: Cyclone 5 boards
+        items:
+          - enum:
+              - altr,socfpga-cyclone5-socdk
+              - denx,mcvevk
+              - ebv,socrates
+              - macnica,sodia
+              - novtech,chameleon96
+              - samtec,vining
+              - terasic,de0-atlas
+              - terasic,socfpga-cyclone5-sockit
+          - const: altr,socfpga-cyclone5
+          - const: altr,socfpga
 
 additionalProperties: true
 
-- 
2.32.0

