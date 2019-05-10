Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9A8B71A318
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 20:45:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727967AbfEJSpq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 14:45:46 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41083 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727868AbfEJSpq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 14:45:46 -0400
Received: by mail-pf1-f193.google.com with SMTP id l132so3673166pfc.8
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 11:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=+ONNq5P1j2Oa2lnhO1rhLpWrLa5fRjw816TA+nIPdAY=;
        b=toJTxaY7Oi3WSP7j9XR8L1TpR/R3z4gk690EyVAx2KwpGLRgtDgPooejuD21ZFsnOF
         P41Hj8QjOONHOc6PsXvkrx3K/8EdCufd32VYzBp/FQN0SR669WirzCtDrqOxBywae7qz
         LtMRN403KkG4C3QAXJbvVA2pLbZHSGC/VvO78LBo9EjdfcOBVdNoqi9ougS9WX0WI/Hp
         ab8W+7hDM6HDhP6gbSHP9onWH07fBTK5OYA/PuTdq/mwpMomjWaJubfexpHms8tvjA8t
         7dpUYn3MJLO0u1IWK3bWB9SkFZNw0vGKNz5SxeZazWZ1MqqvFphAbNQekUGjvhw+Khpv
         NQyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+ONNq5P1j2Oa2lnhO1rhLpWrLa5fRjw816TA+nIPdAY=;
        b=HIC9NobuemrRZlm1/Q3+u6k5CqPEEgxAGJt5KNQ2JF3oA5eVKLNNmwdbwQb86Sr+yU
         z1strQ9cyOEUu3RZcJ98p+ik8SSzqoKxz111z1owVIe4pWNFwx6sHFQyYO77TpT/P+4y
         18s2cM0c6NX0hlk+yBCqNlmKPun5l/DOKjoedTeBImjLlVN4LoMR3WbDPD6qxMxN9wN9
         jWQQDwZm5NxqTK5CaJnaeiS240mB9A+5r6u7Px9vH2kghy5DPWZUlfPU2yARpV+iYLiF
         orwoRp3c9lT8L24tuf+fdiEUt8JTyOD20pKyT0KXJkoMYq1tjavk2KyRrMnZ3L7SI3HR
         hsmQ==
X-Gm-Message-State: APjAAAU7t+Qg3aqH1g3OwfqqXfbMcEz/xJgDuOwgfffAc6Y4orWTXcs9
        1YoqZqk9I4qmScoq5K6YHlKappunBg==
X-Google-Smtp-Source: APXvYqwSxfztzhhhRo7isnL7o9KZ65ABp2JOE21/ph9rWgEgyjqSrKYtiD5FkpvLW26e3WW67DhG6A==
X-Received: by 2002:a63:6941:: with SMTP id e62mr14542253pgc.99.1557513945390;
        Fri, 10 May 2019 11:45:45 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:73c1:9991:95b6:5055:2390:bf9b])
        by smtp.gmail.com with ESMTPSA id g188sm8652049pfc.151.2019.05.10.11.45.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 May 2019 11:45:44 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     p.zabel@pengutronix.de, robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 0/4] Add reset controller support for BM1880 SoC
Date:   Sat, 11 May 2019 00:15:21 +0530
Message-Id: <20190510184525.13568-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

This patchset adds reset controller support for Bitmain BM1880 SoC.
BM1880 SoC has only one reset controller and the reset-simple driver
has been reused here.

This patchset has been tested on 96Boards Sophon Edge board.

Thanks,
Mani

Changes in v3:

* Removed the clk-rst part as it turned out be the clock gating register set.

Changes in v2:

As per review from Philipp:

* Reused reset_simple_active_low struct instead of a new one for bm1880
* Splitted the SPDX license change to a separate commit
* Added Reviewed-by tags from Rob and Philipp

Manivannan Sadhasivam (4):
  dt-bindings: reset: Add devicetree binding for BM1880 reset controller
  arm64: dts: bitmain: Add reset controller support for BM1880 SoC
  reset: Add reset controller support for BM1880 SoC
  reset: Switch to SPDX license identifier for reset-simple

 .../bindings/reset/bitmain,bm1880-reset.txt   | 18 +++++++
 arch/arm64/boot/dts/bitmain/bm1880.dtsi       | 11 ++++
 drivers/reset/Kconfig                         |  3 +-
 drivers/reset/reset-simple.c                  |  8 ++-
 .../dt-bindings/reset/bitmain,bm1880-reset.h  | 51 +++++++++++++++++++
 5 files changed, 85 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reset/bitmain,bm1880-reset.txt
 create mode 100644 include/dt-bindings/reset/bitmain,bm1880-reset.h

-- 
2.17.1

