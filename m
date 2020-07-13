Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5333B21D71E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2020 15:29:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729833AbgGMN3m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jul 2020 09:29:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48604 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729564AbgGMN3l (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jul 2020 09:29:41 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21E7CC061755
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2020 06:29:41 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id a6so16550086wrm.4
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2020 06:29:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8M2es7HHouzmCUpyAYFqBmq/VXXAGiCHzbOor1SAZdY=;
        b=eZztk7O7rf+DFBdXysVaFW4Q6svK0fGNMvSOeDFuBZn/YGHCVDHChUbKn5LhBskGZF
         z4kFVrudVva1mgg1mPIwMgG/zOElB0ulSNlJAWaXR4twxVMVl3if3wzh4Jerf2NIhpy9
         ZgYZpN1qdb1PX8A36OK7S2FYxhqRzMqWnhli036pECPg1gVa6H+PclsfMX1+zivylIBh
         EdcoHIsqNvh00CBTbSgfCw04YoJLD5d00c8lG8RVo0q06XZ1R2AfjmaXvoXcZiRPu0I+
         TnQBMfQZVhJf8vwoGnfJyVRgxYMSADJXe6+/E4ouhnfFeOQD3BoMi4SN7/c/DPG7Jt5h
         uUmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=8M2es7HHouzmCUpyAYFqBmq/VXXAGiCHzbOor1SAZdY=;
        b=MfyZN/vxEAdkPYcLqy+KxV0ISFCYiB6cxay2kinUP6f56IA7JQpNpxgjlsfL6OQsO1
         1eSD/QBKtbV4ontMWyA0O9me7wrFnAHO4R5aCzEke62gS/6QMQ6t87x5PnROlQb2kk4b
         dk3jPJx4QudagDtRCjzW22Rxu4rwldzxLWdKk56/B9cyp+pQM+O1bs+R9Tnmm8PnxH2s
         rQ7cJ3c39VSB6gkFXVDfuribrqI5ILsy2eQX21jQ9MTEzoypuAS81yIL3oX5cfXv6VO5
         Am0K1xsv+deQXWzEGDHN2CrlxIk8DWEOHfjvl8wjCpAh+ouo2UcW/YXsjq49qquaKar5
         uVYA==
X-Gm-Message-State: AOAM533qQ1woXt7VywQ9MFIxoeYGBK92z0yMu4VpYAgCuVBesyDUNTyj
        i9kBTbF/IyZHLmrGIIb5NbWe0g==
X-Google-Smtp-Source: ABdhPJxMEwQ8RYMjAHEW54Z1j94xXKNRmix+I5953GVI4mfW5CH5zrllY5eazKO4pgPCsaIsWRN1NA==
X-Received: by 2002:adf:e40e:: with SMTP id g14mr86432689wrm.271.1594646979741;
        Mon, 13 Jul 2020 06:29:39 -0700 (PDT)
Received: from linux.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id j14sm23896642wrs.75.2020.07.13.06.29.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2020 06:29:38 -0700 (PDT)
From:   Alexandre Bailon <abailon@baylibre.com>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        matthias.bgg@gmail.com
Cc:     linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Alexandre Bailon <abailon@baylibre.com>
Subject: [PATCH 0/6] Add support of mt8183 APU
Date:   Mon, 13 Jul 2020 15:29:21 +0200
Message-Id: <20200713132927.24925-1-abailon@baylibre.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Mediatek's SoC have an Accelerated Processing Unit.
This adds support of the one available in the mt8183
(aswell some derivative SoC).

This series depends on two other series:
- Mediatek MT8183 scpsys support  
- arm64: dts: Add m4u and smi-larbs nodes for mt8183 

Notes:
This series include two workarounds:
- remoteproc: mtk_vpu_rproc: Don't try to load empty PT_LOAD segment
- rproc: mtk_apu: Don't try to use local APU RAM

The first one is required to load malformed firmwares.
This is probably caused by the toolchain we are using (a fork of gcc 4.2).
It would be better to fix the firmwares but I don't know how to fix it.

The second one prevents the CPU to access to the APU local RAM.
If the CPU tries to read or write the APU local RAM, then the CPU will
hang. I'm still looking for a solution, but until, we must prevent
remoteproc to write something (usually, to initialize data section).
Because of that issue, the current driver doesn't map the the local RAM.

Alexandre Bailon (6):
  dt bindings: remoteproc: Add bindings for MT8183 APU
  remoteproc: Add a remoteproc driver for the MT8183's APU
  remoteproc: mtk_vpu_rproc: Add support of JTAG
  remoteproc: mtk_vpu_rproc: Don't try to load empty PT_LOAD segment
  remoteproc: mtk_apu: Don't try to use the APU local RAM
  ARM64: mt8183: Add support of APU to mt8183

 .../bindings/remoteproc/mtk,apu.yaml          | 121 +++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      |  42 ++
 drivers/remoteproc/Kconfig                    |  19 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/mtk_apu_rproc.c            | 501 ++++++++++++++++++
 5 files changed, 684 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/mtk,apu.yaml
 create mode 100644 drivers/remoteproc/mtk_apu_rproc.c

-- 
2.26.2

