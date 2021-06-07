Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CFDD039D8EA
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 11:34:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230227AbhFGJgc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 05:36:32 -0400
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192]:45836 "EHLO
        egress-ip33a.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230211AbhFGJgc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 05:36:32 -0400
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199]) by mx-outbound15-231.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 07 Jun 2021 09:34:39 +0000
Received: by mail-pf1-f199.google.com with SMTP id e17-20020aa798110000b02902f12fffef4eso753165pfl.7
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 02:34:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rvwC7wpY9OnPhTaQgssBky1KOd4Zk+KXEpxOIeTjXB8=;
        b=ofqFOohukzYnY/ItagqFKB+tRLOZTPY/YMGDlmZJacFcf5JhOGjgXhvN0uNMMIwgZ7
         AngSU7zmtdyJa7WpTMRmO4onmd+S/DQpmUz7P5DmgH6dzm8zcchJqRiSRJ7HENZi7hsb
         wPC+d1+H50Fx1dJorUx35dOt3IiOoNlqxkp3Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rvwC7wpY9OnPhTaQgssBky1KOd4Zk+KXEpxOIeTjXB8=;
        b=YOb0uS+z2lbI/9bodJQYnFKfSWMoJ2iNIKRMpQvWiMdGF/np/A97L4pcyX+PXgqvQi
         SG4XikDqh9x5nPdxMHfyOplu1KZWTiMWNyjPnzYeVI+jPIZJ5cFo9B0af7JhY+M7+ZRj
         KKq2KN4t4tnCErswSopvyeTnvk+psBIWV0RPYhq0se0cmwpAF42YZgeEZBZHXQkyS+xZ
         F7kSLq81VzuesydQmCMn9s/llhadEFdLg7r86JAc9u9DPPnhKZ92fVJM9VEbtZY9v+ZF
         t3ud5Z+DtjNyQEnVvsvmaWS8GhnwHc/FA6Qdlx0RPrB09bi8D/2tthCOhwHuMFLlRr8F
         idUQ==
X-Gm-Message-State: AOAM530f+IOdWGu+x6p46wGTS1owr0wgL5cm68yt18toLLRcNPj872RQ
        ubImT7cgtxYUivCYjdJau54Px5ll2ZLBi9kk8cDPuQKK3fGubIZ99KX869TVrXNY3rAUbys0/Nq
        f664xe9iUaJSl7+7TKoxuvfA1G3v7XNl2g477wjDMcYUszz27HPWMABe9Og==
X-Received: by 2002:a62:31c7:0:b029:2e9:2c05:52d3 with SMTP id x190-20020a6231c70000b02902e92c0552d3mr16084701pfx.78.1623058478178;
        Mon, 07 Jun 2021 02:34:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxFdNnypMsK5luaMYFAiwOW/U5crCXzJq/c6ROueHgVJ9JcAOlD1fyBHgSJPkdrBmunSZwThw==
X-Received: by 2002:a62:31c7:0:b029:2e9:2c05:52d3 with SMTP id x190-20020a6231c70000b02902e92c0552d3mr16084680pfx.78.1623058477881;
        Mon, 07 Jun 2021 02:34:37 -0700 (PDT)
Received: from LAP568U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id e188sm7567400pfe.23.2021.06.07.02.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 02:34:37 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Amarnath MB <amarnath.mb@ti.com>,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V2 0/2] arm64: Initial support for Texas Instruments J721E EAIK
Date:   Mon,  7 Jun 2021 15:03:12 +0530
Message-Id: <20210607093314.23909-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1623058478-304071-5504-541-1
X-BESS-VER: 2019.1_20210603.1645
X-BESS-Apparent-Source-IP: 209.85.210.199
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
for TI’s J721E SoC. This series intoduces the basic support for J721E
EAIK

Changes in v2:
- Fix for dt_binding_check error.
- Modified base commit to the recent RC1.

Sinthu Raja (2):
  dt-bindings: arm: ti: Add bindings for J721E EAIK
  arm64: dts: ti: Add support for J721E EAIK

 .../devicetree/bindings/arm/ti/k3.yaml        |   2 +
 .../bindings/remoteproc/ti,k3-dsp-rproc.yaml  |   2 +-
 arch/arm64/boot/dts/ti/Makefile               |   2 +
 arch/arm64/boot/dts/ti/k3-j721e-eaik.dts      | 342 ++++++++++++++++++
 4 files changed, 347 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/ti/k3-j721e-eaik.dts


base-commit: 6efb943b8616ec53a5e444193dccf1af9ad627b5
-- 
2.31.1

