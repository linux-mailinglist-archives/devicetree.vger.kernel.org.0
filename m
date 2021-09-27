Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6DF1A4192BB
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 13:06:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233955AbhI0LH4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 07:07:56 -0400
Received: from egress-ip4a.ess.de.barracuda.com ([18.184.203.227]:60670 "EHLO
        egress-ip4a.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S233954AbhI0LH4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 07:07:56 -0400
X-Greylist: delayed 1668 seconds by postgrey-1.27 at vger.kernel.org; Mon, 27 Sep 2021 07:07:56 EDT
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199]) by mx-outbound12-93.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 27 Sep 2021 11:06:13 +0000
Received: by mail-oi1-f199.google.com with SMTP id m11-20020aca650b000000b0027625c6a441so2896766oim.15
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 04:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sCG/LglCvdRg/oGkfksE39oKp0qqB5Zh3UzOqOO6HuM=;
        b=FwQfvnoxXTujx5hOw76v4pnT2w7YEeZHvO6q7nOgbKKqy96GE0NSlCjZeKpxPwrREr
         L4LvQDN/jpwZoBNV35bquH70KAZxYOKTiaFYsZc/IUjrwkhcwV/56Ph0WRtRJ4tEOXcW
         oPMU9OUSIbkmeIimgN+ulbnArdtLknRmMuJLI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sCG/LglCvdRg/oGkfksE39oKp0qqB5Zh3UzOqOO6HuM=;
        b=tUeONIMv+J/PnI2vVonVYGYIhBM66dm19NMnnAD/Xbmdm2IySa3luUhYqEB+tfSzE0
         JyVkSjI2awjvR2GamXlcR6BQDdB9kwQPQuaiakRc1aPXiWqTlIFkeE/s23joXudCYfKE
         7uo2afYZS0IcWnE/mPaMhIebcAFkAixzQ+sLBSt3tpMPtFIJS0Us9RvhVUGzz7KVR6Hm
         e9Mu3UreKdE9XKCvbh6ZdIU7H14FaONmleLhv2+qOQUYciCLUWloMg6g/wYqcwjUv4vA
         YVkElTKvuCiWPLTNKAulJiXetNSceEb/ioXKXNlD6cQR4PudCdsA2xaNSx9JVSCNslbi
         gTxA==
X-Gm-Message-State: AOAM530HjfqtzEsAjx6uQGT8h4DHqEb4FReEQtU+bXPh+6xbNJR/OkK8
        um/FjJ6DJ73CHyPpclVNgzU4Y8rxQvjkprltA8w2bZPtICMY7yqWQW3wHhacNlWn672HRVibttA
        lSuxjl8RiO12NQEUSner3+flvmidNYjhoKNfnKPYmLAavLEnqhcAZdWV8cA==
X-Received: by 2002:a17:90b:1102:: with SMTP id gi2mr18954385pjb.43.1632739105764;
        Mon, 27 Sep 2021 03:38:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzciYVKi71v8xhIPcFz9bTM5VAy8i1i3VXdLzJ4HCmoplHzneMMjjuWJuzNm1cOfqljbCNOmw==
X-Received: by 2002:a17:90b:1102:: with SMTP id gi2mr18954367pjb.43.1632739105559;
        Mon, 27 Sep 2021 03:38:25 -0700 (PDT)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id t68sm18030894pgc.59.2021.09.27.03.38.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 03:38:25 -0700 (PDT)
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
Subject: [PATCH V4 2/2] dt-bindings: remoteproc: k3-dsp: Cleanup SoC compatible from DT example
Date:   Mon, 27 Sep 2021 16:08:11 +0530
Message-Id: <20210927103811.11222-3-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210927103811.11222-1-sinthu.raja@ti.com>
References: <20210927103811.11222-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1632740773-303165-5391-1340-1
X-BESS-VER: 2019.1_20210921.2035
X-BESS-Apparent-Source-IP: 209.85.167.199
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.234759 [from 
        cloudscan10-245.eu-central-1a.ess.aws.cudaops.com]
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

The K3 DSP binding example used the root-node with a SoC compatible
property originally to address the dt_binding_check warnings resulting
from using a value of 2 for #address-cells and #size-cells as per most
common usage on K3 SoCs. Clean this up and replace it with a generic soc
node to keep it agnostic of the SoC or board compatibles that are outside
the scope of this binding.

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Suman Anna <s-anna@ti.com>
---

Changes since V4:
* review comment updates, including, commit message and $subject updates
  & dropped Fixes tag.

V3: https://lore.kernel.org/all/20210917095426.19277-3-sinthu.raja@ti.com/
V2: https://lore.kernel.org/all/20210818074030.1877-1-sinthu.raja@ti.com/
V1: https://lore.kernel.org/all/20210817152005.21575-1-sinthu.raja@ti.com/

 .../devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml       | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
index 6070456a7b67..5ec6505ac408 100644
--- a/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/ti,k3-dsp-rproc.yaml
@@ -133,9 +133,7 @@ unevaluatedProperties: false
 
 examples:
   - |
-    / {
-        model = "Texas Instruments K3 J721E SoC";
-        compatible = "ti,j721e";
+    soc {
         #address-cells = <2>;
         #size-cells = <2>;
 
-- 
2.31.1

