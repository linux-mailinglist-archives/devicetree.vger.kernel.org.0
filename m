Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A5D130A87D
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 14:19:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231778AbhBANSW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 08:18:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231758AbhBANRj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 08:17:39 -0500
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CBD6C06178A
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 05:16:18 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id f1so18767948edr.12
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 05:16:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s5/eeM3qa/btb6EM5+rqph0mqVQc4OkKhh4e2aNhbos=;
        b=m87Lr8zKV+MWdDb7raetVApFGHICYKY8EJdIP9ETAiOBMiNT2TFieYVZmcploC8Smh
         ACF7A/UKchIQSr568o0U9d4/K3JZ5rc+knDPQXGAMO2DBEHhwosYaDHw8Ru1B4Hn/9s9
         wnec0uqgS+EVQ5VBv2m50QrPeWBmJRIPZcc3yWTxo+vFcbOpLYQNEwf3hUomuu104+05
         Mi845qlXS5qoPXIOAQPzM8ZV3BCnw4yVNki6Bo6/x1pHFXqORdRR64iXYU0+7szPGoV7
         vMn5paP2Ule3dUhHbS1yrRnZ9PblNpoMmdt8VvHEl0rh7pXcrDQgIJyxuIXO6ToZ0Z56
         C6bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=s5/eeM3qa/btb6EM5+rqph0mqVQc4OkKhh4e2aNhbos=;
        b=aNeC0FK5CeIRjMiAi0VQMLVuf5nFdqkiLIA72x9clvBqFievHZUITJU3llKCsIf7Qi
         I4P7QEUwm7cpyuAk6AxV+yCOWnZ8wneu7z+84run8SoS44ahxYf0aefxLR6r8W0pX6EJ
         T9Zngg0mPqtchMX3DAAgHdU31JnLZnopywNxTmoP+/VUMY0t/Y+VQfA2JU/Fzfo1bTcM
         4bfTwYWP/EjK+PET+2arfK4tTv7DBgxJ+zwR9HLNmmKx8nrcKyJA6NzqBjoE76qEjI7I
         nVAuQP3agfpl6/oNdgdWW/hFbf23Y6BhWj0wFksHLcuri1xO0SrmJIvEuz6PS/5LwhM0
         vJqA==
X-Gm-Message-State: AOAM533lfTsx3k1oDsFwSzKHsKUvEl1cXsoXa8IWGf/IRZlRsKLsGBHC
        eFvTgEp4QCwHbb0ruPZuf1yxsw==
X-Google-Smtp-Source: ABdhPJxiUReEE3I89ozFL6M9ht8nS0MhSjZrDZ+3PtQPvDXz0ZjVFoziMWRmfPMvB029Ad3kencGiQ==
X-Received: by 2002:a05:6402:50c6:: with SMTP id h6mr18475460edb.117.1612185377090;
        Mon, 01 Feb 2021 05:16:17 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id m26sm7874408ejr.54.2021.02.01.05.16.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Feb 2021 05:16:16 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Michael Walle <michael@walle.cc>,
        Rob Herring <robh+dt@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] dt-bindings: arm: xilinx: Add missing Zturn boards
Date:   Mon,  1 Feb 2021 14:16:12 +0100
Message-Id: <f6f642d75c1b1160ed78f6de0a2944ab64017691.1612185370.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add missing DT compatible strings for Zturn boards.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Patches are based on
https://lore.kernel.org/linux-arm-kernel/20210120194033.26970-3-michael@walle.cc/
---
 Documentation/devicetree/bindings/arm/xilinx.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/xilinx.yaml b/Documentation/devicetree/bindings/arm/xilinx.yaml
index aaca69d0199f..05217537fb0c 100644
--- a/Documentation/devicetree/bindings/arm/xilinx.yaml
+++ b/Documentation/devicetree/bindings/arm/xilinx.yaml
@@ -23,6 +23,8 @@ properties:
               - digilent,zynq-zybo
               - digilent,zynq-zybo-z7
               - ebang,ebaz4205
+              - myir,zynq-zturn-v5
+              - myir,zynq-zturn
               - xlnx,zynq-cc108
               - xlnx,zynq-zc702
               - xlnx,zynq-zc706
-- 
2.30.0

