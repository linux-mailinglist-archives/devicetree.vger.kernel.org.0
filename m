Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3752241C061
	for <lists+devicetree@lfdr.de>; Wed, 29 Sep 2021 10:13:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244555AbhI2IPd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Sep 2021 04:15:33 -0400
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192]:37522 "EHLO
        egress-ip33a.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S244544AbhI2IPd (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 29 Sep 2021 04:15:33 -0400
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72]) by mx-outbound11-76.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Wed, 29 Sep 2021 08:13:47 +0000
Received: by mail-pj1-f72.google.com with SMTP id mi13-20020a17090b4b4d00b0019ea046dd7cso4592592pjb.2
        for <devicetree@vger.kernel.org>; Wed, 29 Sep 2021 01:13:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=L8MazRJC/UFdJ6inkSvyaSkOTKbg7uW4ICaCKt8HQWg=;
        b=XuXkej7QqnC8RWkGjaaFg0MR8d4VtpfgyHekkw5yY7nuTx1zffy7NRfT0AL3AIkgAt
         askII6lvssBO++WFi9Vq/m5usZ9atWx6r32tMfjP6ZOhFhzx0waqsxrB71k/Bv8mok6D
         ly806GMJ4Hcl/FVA0eODFXjgdysxtJQkRyn90=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=L8MazRJC/UFdJ6inkSvyaSkOTKbg7uW4ICaCKt8HQWg=;
        b=ExWQ3ZN0ZWGtsmGBEpwZAOyZ1to1Urg8lf2cIwhKoPXiUSQFCgsndr1h+vs08cYISB
         iuxnyioIa37OSVTXBTD3RGaMWKmPDz+x4oSqXdlq1pJU+qZtoJ3F7Uk2yGIEErKy9bvc
         DZ1OgSGEOrKo6L/zN0ybpRax20ZYDjOxrMzmEf945ntM0OV+kmGBJfCDy5nD8TbHddOO
         8a7ICK5YlK3bj/CVNjkfsxDeDcTlpEpU4ga9qoXE3lW4akpV4etMXywkGqgXPD1RnEo7
         kFdX9qM/nFaqeJpfuNQUyE+It8xLYge+Jz4JZvLTsWZ0nn2HDaLOQrE3V2cR+j7iUepc
         Iu0g==
X-Gm-Message-State: AOAM530RDDn9zrQ+q1xY2FWeZk0E84vRkhyU3iomrAc6FvZMdxw9TVJR
        zlQcUD4+hmxhQ0xEohQrKvyQc7e2h6TlDm27cnwSHQTL9OvHpDqTFVVIftYSHl1fVjCBKNNROsm
        X4gYNK6xfXWHBi9VjE5S8FIiwT2Ha+LvdqFMzr5Gv/otIOKuoeU0fAUdcZA==
X-Received: by 2002:a17:902:8ec5:b0:13a:2789:cbb0 with SMTP id x5-20020a1709028ec500b0013a2789cbb0mr9140993plo.60.1632903226270;
        Wed, 29 Sep 2021 01:13:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyLCZOKQda9thwsb7v/vH7TZg+GFsB20LqbXn7MGuaW/EbqhMgFfXTUlQqWBIY5xehfRLCC6Q==
X-Received: by 2002:a17:902:8ec5:b0:13a:2789:cbb0 with SMTP id x5-20020a1709028ec500b0013a2789cbb0mr9140985plo.60.1632903226041;
        Wed, 29 Sep 2021 01:13:46 -0700 (PDT)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id k14sm1152026pji.45.2021.09.29.01.13.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Sep 2021 01:13:45 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Vignesh Raghavendra <vigneshr@ti.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V3 1/4] dt-bindings: arm: ti: Add compatible for J721E SK
Date:   Wed, 29 Sep 2021 13:43:30 +0530
Message-Id: <20210929081333.26454-2-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210929081333.26454-1-sinthu.raja@ti.com>
References: <20210929081333.26454-1-sinthu.raja@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1632903226-302892-1136-19169-1
X-BESS-VER: 2019.1_20210928.1746
X-BESS-Apparent-Source-IP: 209.85.216.72
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.234800 [from 
        cloudscan17-82.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

J721E Starter Kit (SK)[1] is a low cost, small form factor board
designed for TI’s J721E SoC. Add j721e-sk into compatible enum.

[1]https://www.ti.com/tool/SK-TDA4VM

Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---

Changes in V3:
* Addressed review comments.
* Added Board URL to the commit description.

V2: https://lore.kernel.org/all/20210607093314.23909-2-sinthu.raja@ti.com/
V1: https://lore.kernel.org/all/20210602182237.12632-2-sinthu.raja@ti.com/

 Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 29ca364e8a76..d97af3f628d8 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -31,6 +31,7 @@ properties:
         items:
           - enum:
               - ti,j721e-evm
+              - ti,j721e-sk
           - const: ti,j721e
 
       - description: K3 J7200 SoC
-- 
2.31.1

