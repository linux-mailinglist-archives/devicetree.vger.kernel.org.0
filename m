Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28C3739D8EB
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 11:34:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230233AbhFGJgk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 05:36:40 -0400
Received: from egress-ip4b.ess.de.barracuda.com ([18.185.115.208]:59650 "EHLO
        egress-ip4b.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230211AbhFGJgj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 05:36:39 -0400
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199]) by mx-outbound22-128.eu-central-1b.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 07 Jun 2021 09:34:42 +0000
Received: by mail-pg1-f199.google.com with SMTP id x188-20020a6363c50000b02902104a07607cso4481877pgb.1
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 02:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=f1pOe6308vus6hP91+4DHt5kXhy3eXU17PRCS8+OFk4=;
        b=JKj6xF8rFK1hQ3gCfCVRQUQ1hkojttuhz9jMqHIMjAN/LKExNMwob/VHAJCfVPhwIJ
         iyyXlDpGQpTOOy51g6uOp0AhuHyVok2l8jXfipnlSm2gi4YPe3UrjLmK0ap6e0znfjWO
         dz0PPuV3YwzZKAHHe8tVB4ks7K6ruVJCuzNBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=f1pOe6308vus6hP91+4DHt5kXhy3eXU17PRCS8+OFk4=;
        b=Pl9UB9upQxftZxS7ixqHYW3pr9r5t2+OTujhmpxxqXcFB5yjEviSONRkbM+kzbhEEo
         bP1RvjZGZHrdj2Gu7jAZ6g9wcIh2b4LU2vooP7xbIEOqfOoTVRxi4ZcKOtXwyaBJkC3k
         5PFrMGlOm6fg2SuzZz5GRGeZezhky3iRA+UiX+j0N+G6UtlNPD1bksJkEnSQ2NlF4Fhr
         RPA/tO8U/f3ZPK3DxNZ/5E4o53g4fSzhwLK5THURLoc/E7LxlhZWGey91TeC4yX7gV24
         WL7PHeO+bFbz/mZdRZu2DcA5wSsXdifSDMpdevu1H6GE2CGNdahxDwa7B5RLI8wFTG+L
         TbgA==
X-Gm-Message-State: AOAM533UtnPkbHCMiAtr0jI4FnmSBsYASL6luQFbqq5UxxKAQyKPPxos
        JCSAxJnCVZGXOTg63xwxymMNQWe7YbynwL/7Lgq7xNR5DCUKfbQ0ixAd6jmW2khCD90Gxc7oTFM
        50dFqPmbq1llXj3D3/17Hzo2QEpAY0qo4g8zRJZ5XwYfAwabfyjqND2UqLg==
X-Received: by 2002:a05:6a00:2d2:b029:2e9:c637:f0e3 with SMTP id b18-20020a056a0002d2b02902e9c637f0e3mr16439441pft.22.1623058481437;
        Mon, 07 Jun 2021 02:34:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyfBzGpO4rndMukrh+43M+qS20AX4FHbj+asTRsiYgDcy8T/M5LDx693SDW7nBO6OYR1x/FZQ==
X-Received: by 2002:a05:6a00:2d2:b029:2e9:c637:f0e3 with SMTP id b18-20020a056a0002d2b02902e9c637f0e3mr16439420pft.22.1623058481236;
        Mon, 07 Jun 2021 02:34:41 -0700 (PDT)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id e188sm7567400pfe.23.2021.06.07.02.34.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 02:34:40 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V2 1/2] dt-bindings: arm: ti: Add bindings for J721E EAIK
Date:   Mon,  7 Jun 2021 15:03:13 +0530
Message-Id: <20210607093314.23909-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210607093314.23909-1-sinthu.raja@ti.com>
References: <20210607093314.23909-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1623058482-305760-5423-518-1
X-BESS-VER: 2019.1_20210603.1645
X-BESS-Apparent-Source-IP: 209.85.215.199
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.232772 [from 
        cloudscan15-76.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

J721E EdgeAI Kit (EAIK) is a low cost, small form factor board designed
for TI’s J721E SoC.
Add DT binding documentation for J721E EAIK

Signed-off-by: Amarnath MB <amarnath.mb@ti.com>
Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---
Change in V2:
- Fix for dt_binding_check error.

 Documentation/devicetree/bindings/arm/ti/k3.yaml                | 2 ++
 .../devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml         | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index c5aa362e4026..923dd7cf1dc6 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -29,6 +29,8 @@ properties:
 
       - description: K3 J721E SoC
         items:
+          - enum:
+              - ti,j721e-eaik
           - const: ti,j721e
 
       - description: K3 J7200 SoC
diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
index 6070456a7b67..464cee128811 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
@@ -135,7 +135,7 @@ examples:
   - |
     / {
         model = "Texas Instruments K3 J721E SoC";
-        compatible = "ti,j721e";
+        compatible = "ti,j721e-eaik", "ti,j721e";
         #address-cells = <2>;
         #size-cells = <2>;
 
-- 
2.31.1

