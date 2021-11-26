Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 526F445EA8B
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 10:40:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1376432AbhKZJoC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 04:44:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1376356AbhKZJmC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 04:42:02 -0500
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EC62C0613F6
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:35:55 -0800 (PST)
Received: by mail-pj1-x102e.google.com with SMTP id n15-20020a17090a160f00b001a75089daa3so9524959pja.1
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 01:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=YPCZQk3ldefrvQEF5kF6Pda8ed46AtY2WEwLZ32ZdQE=;
        b=WtOjZrJ8kWWA/IQ4NgDTdNnoPQvTwOGJEmFe7tzDF4AdX9q/wCXVktD6SA0o73hhhK
         Ages3FPYK+dSDrmrTCNCKS+r+kEUTvNJAMnLCgEYP+a5o1txJ1biFs2Bht1JkgeMlLFC
         c1F7hNnVJpYnfnRYsNgwKZaKiupTk6ASc0altLy6340h73qSJE9U3bNuUPHXow5nFRan
         k+mVFsaRRod9TJWK+P6SEMEiwaMe840mO6MHRPDc8aiNSMkeLaUBflqBYZ9t4E+76aN1
         jMYkyIXWYN4Fmr5Dh9pRfdvib69XCoPH1ShjXpqHFeBmdd/FFoGs8MyXewkcqd+eb/4w
         1PJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YPCZQk3ldefrvQEF5kF6Pda8ed46AtY2WEwLZ32ZdQE=;
        b=LVdM5NcQSM6yJvNBEY4sxQMdg9zU7wHRhxq6KVbL7ZleGXjUg9OxyuLJXkyE6aJmeP
         gXvfeFzVshVWEzeGGOSWgfPnLokdLpySBBLndL/f0KVc7T8uPv5ZR1F6Js8Tm/iKiwpe
         1am6J0PfTsaOQ2ZDwgFh2gfB+3QFVoplsqLSudGuYWhnHLmpnYLjIkHS3amz4UDdwXQW
         +KTw2bmTBsgljSR+ys+yJ2US+/Y7B+C1nJrsjAliqnb4uHVEsx8jNaO+fGvpUz0ca2hC
         Z5GkwOnYLl05CpcokrPD6R3BKOph5dq6cHK1Iwi8KudBRGZUGe6eJ+ATFQjJfJ+vCR/a
         D6Wg==
X-Gm-Message-State: AOAM531hacab51jlJ5ExjJZk3mXS9Vixcw0enrb3xlKJzM3rLDgtWCqg
        eOKFh/O3Znb35KsawhwBtExDSA==
X-Google-Smtp-Source: ABdhPJwaIFkm5Ct+j9PxVOQBfts3QKBod1ClI7mOqt7mHRmi+bme6jGCvPJj762Z361zKL1GGNJsRw==
X-Received: by 2002:a17:902:da8d:b0:142:4fa:9147 with SMTP id j13-20020a170902da8d00b0014204fa9147mr35915452plx.72.1637919354703;
        Fri, 26 Nov 2021 01:35:54 -0800 (PST)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id q11sm6079647pfk.192.2021.11.26.01.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 01:35:54 -0800 (PST)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Marc Zyngier <maz@kernel.org>, Thomas Gleixner <tglx@linutronix.de>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 0/2] Add Qualcomm MPM irqchip driver support
Date:   Fri, 26 Nov 2021 17:35:27 +0800
Message-Id: <20211126093529.31661-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It adds DT binding and driver support for Qualcomm MPM (MSM Power Manager)
interrupt controller.

Changes for v2:

- Update both driver and binding for better alignment with qcom-pdc
  implementation.  Devices with wake-up capability via MPM_GIC pin
  will specify MPM pin rather than GIC interrupt number in DT.


Shawn Guo (2):
  dt-bindings: interrupt-controller: Add Qualcomm MPM support
  irqchip: Add Qualcomm MPM controller driver

 .../interrupt-controller/qcom,mpm.yaml        |  72 +++
 drivers/irqchip/Kconfig                       |   8 +
 drivers/irqchip/Makefile                      |   1 +
 drivers/irqchip/qcom-mpm.c                    | 487 ++++++++++++++++++
 4 files changed, 568 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interrupt-controller/qcom,mpm.yaml
 create mode 100644 drivers/irqchip/qcom-mpm.c

-- 
2.17.1

