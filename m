Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 528B9419250
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 12:38:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233859AbhI0KkH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 06:40:07 -0400
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192]:41344 "EHLO
        egress-ip33a.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233856AbhI0KkH (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 06:40:07 -0400
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199]) by mx-outbound47-210.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 27 Sep 2021 10:38:23 +0000
Received: by mail-pf1-f199.google.com with SMTP id i3-20020aa79083000000b003efb4fd360dso11354148pfa.8
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 03:38:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ntIyrbSafYiDvlVbOgBMSDN0S7pH0Ry7iK8d0o69m1A=;
        b=IQu+yNd1m6x8LyerLd2JZbodQ3CsQsmN9e69ru/DkDWrcpczVR6EomYcKborITZsoj
         8Uej0qWygcvTWUvYRPuCFdL7ZuJqqQMH/HHvqLuLeng7dCX4Dyq8K9QNuVSnn2AySpWh
         BwiKTtfPczhzcoJ/EhN1KoFz9lNlHxYcShW9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ntIyrbSafYiDvlVbOgBMSDN0S7pH0Ry7iK8d0o69m1A=;
        b=2O50tIcDg6bU/ljzRqczofpSPCxD9vJiIPhbp+kzfFIdJioL9FJcRZg+mr5sc+3Kvn
         iNIojOLJn5EyaSCPhepaVw1sBdGEFGT2U4R6A8dpJntni5z4FjUk5DFQJ4G7BVTSrtmW
         v/wah0WYy+80k5fvMUA6Md/lm6qXEc/on1eO78e4sZkZKr+FWlT+rlzs9+F6sRE3Mfac
         BFo750haUKrdMxs2XFqry0YJh69ulrnGHkHoi1+e7OHe8POKVwTsPO7J9q8Q+FECo7fc
         GJHYvbKKf1umTzfmKRba1O2TyrKy1Zg8pM/uG4C4d6+rhLdEaudsVqmsW/dOw68lQNAo
         +bFw==
X-Gm-Message-State: AOAM53193jxhVHuo1kb1gFOWknbvvPkfn7e5IiWjQgQEQrexoTxnHj74
        jw+52j1Pip+ePYDkY8P2KLH9N+Yk1FrOkfR9+TYvY0TO8HY6X8OhgIbRWP+qG9e5H3rMAo4eVMC
        K1D1+VrB4ejXciJYq5pXnOAC8CLc1MTgo0BCzvF4hwY6clQqyfThnMluqaQ==
X-Received: by 2002:a63:b64e:: with SMTP id v14mr15855932pgt.245.1632739102088;
        Mon, 27 Sep 2021 03:38:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzM4LUrJVV8GvMkFUYG+hjSNHal5e6clFijKO6S3b9d14/ttamlNf2ZDUep2Pz2j5RaXTZHzg==
X-Received: by 2002:a63:b64e:: with SMTP id v14mr15855913pgt.245.1632739101822;
        Mon, 27 Sep 2021 03:38:21 -0700 (PDT)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id t68sm18030894pgc.59.2021.09.27.03.38.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 03:38:21 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Suman Anna <s-anna@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-remoteproc@vger.kernel.org, Nishanth Menon <nm@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH V4 1/2] dt-bindings: remoteproc: k3-r5f: Cleanup SoC compatible from DT example
Date:   Mon, 27 Sep 2021 16:08:10 +0530
Message-Id: <20210927103811.11222-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210927103811.11222-1-sinthu.raja@ti.com>
References: <20210927103811.11222-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1632739102-312242-5460-782-1
X-BESS-VER: 2019.1_20210921.2035
X-BESS-Apparent-Source-IP: 209.85.210.199
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.234758 [from 
        cloudscan23-46.eu-central-1b.ess.aws.cudaops.com]
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

The K3 R5F binding example used the root-node with a SoC compatible
property originally to address the dt_binding_check warnings resulting
from using a value of 2 for #address-cells and #size-cells as per most
common usage on K3 SoCs. Clean this up and replace it with a generic soc
node to keep it agnostic of the SoC or board compatibles that are outside
the scope of this binding.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Suman Anna <s-anna@ti.com>
---

Changes in V4: new patch in the series.
* review comment updates, including, commit message and $subject updates
   & dropped Fixes tag.

V3: https://lore.kernel.org/all/20210917095426.19277-2-sinthu.raja@ti.com/

 .../devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml       | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
index 130fbaacc4b1..eeef255c4045 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-r5f-rproc.yaml
@@ -230,9 +230,7 @@ additionalProperties: false
 
 examples:
   - |
-    / {
-        model = "Texas Instruments K3 AM654 SoC";
-        compatible = "ti,am654-evm", "ti,am654";
+    soc {
         #address-cells = <2>;
         #size-cells = <2>;
 
-- 
2.31.1

