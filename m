Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 275FA2653EF
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 23:42:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730652AbgIJNDV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Sep 2020 09:03:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730484AbgIJNBo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Sep 2020 09:01:44 -0400
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C2F03C061573
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 06:01:38 -0700 (PDT)
Received: by mail-wr1-x441.google.com with SMTP id j2so6610666wrx.7
        for <devicetree@vger.kernel.org>; Thu, 10 Sep 2020 06:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZJ2vHaYqoVGimQqIW+dGq81Ddb4etTQVEuSJ6N8/hV4=;
        b=Xes36BsZfAJFtqugTewRnG8S2F4SvtKI3ao41dtEndBZ6+tMSuxg2QYTyWuc2rLsv2
         dOk8MBtBz6erlo84rPylqikZUL3dr7mKIs4oRostt0NTudrbX3JzMzoH5PWdpmAIgOOL
         P9svCMAyrJaFMjzvfAtZ/O1Ob2HskNoICrLWNoSR3QDsHWfC80vnXy+F9RD11BpTEZJH
         J0SyhjkPnjODgRtc7CLZqHm8fG6KIcdOX1nJ7uV2CuKxEpunYhM+OsitUxa3e2UJnWs6
         lL6jtrqQAa477lPUpx+VmiChJcvPAh80Jnxc5+IibbSGDYBFtm2NxdOsd6oEqlDfAGaI
         fJCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ZJ2vHaYqoVGimQqIW+dGq81Ddb4etTQVEuSJ6N8/hV4=;
        b=klz9IbfHr0HL52u/SrcblyzPR7zFgo2rQxY9sF9jsuLhlKBjUIAL6KXvxASV5ZdQt8
         eNdhhmixci2q758pnSegFwHOmDKQCeFVyjVAaKuTucBrgDTC2BvrqM6qSGSEW8Xiq+Q9
         t0bHnGZxfnpBWKHj4XkeDtVgldLkI46cLcUbHhaZa5ByT6xa4NmaZXAesY9AdvlYccJS
         sD7XMzrXJD5EZ7fFz9i+cLiRP1KOM81b4TU0bpHo2R98Cb+XvgScdM+YBTNImZoWXGtN
         7WXY1+iQcuAdMJgSaBobETUeADa/pGfTOwjMlliJ2dwAqjbtuShwFHi8ewal6aCjP8Wx
         mwkQ==
X-Gm-Message-State: AOAM531qu/VSdkHuLWMDWwJSvD41Oenqlq4SVCmGVroKfRiXfoDSjRy0
        aBpcsMF1t9tz2yLPFt7f+jymVg==
X-Google-Smtp-Source: ABdhPJwTMfl8B7RyFT52ujmfWEzGY2zJt6LYENlU0R1nqA53iSiN5gy6cYDGYtwKp1dHNpKPfW+fFg==
X-Received: by 2002:a5d:444e:: with SMTP id x14mr8524324wrr.235.1599742897157;
        Thu, 10 Sep 2020 06:01:37 -0700 (PDT)
Received: from alex-xps13.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id y1sm9488269wru.87.2020.09.10.06.01.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:01:36 -0700 (PDT)
From:   Alexandre Bailon <abailon@baylibre.com>
To:     ohad@wizery.com, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        matthias.bgg@gmail.com, mathieu.poirier@linaro.org
Cc:     linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        stephane.leprovost@mediatek.com, gpain@baylibre.com,
        Alexandre Bailon <abailon@baylibre.com>
Subject: [PATCH v2 0/4] Add support of mt8183 APU
Date:   Thu, 10 Sep 2020 15:01:44 +0200
Message-Id: <20200910130148.8734-1-abailon@baylibre.com>
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

Changes in v2:
- Drop the workarounds needed to load bad firmwares
- There are many name for the APU (most common one is VPU).
  Rename many functions and dts nodes to be more consistent.
- Use the bulk clock API, and enable / disable clock at a better place
- add few comments explaining how to start the APU
- update the way to use pinctl for JTAG
- fix some minors issues
- fix device tree bindings

Alexandre Bailon (4):
  dt bindings: remoteproc: Add bindings for MT8183 APU
  remoteproc: Add a remoteproc driver for the MT8183's APU
  remoteproc: mtk_vpu_rproc: Add support of JTAG
  ARM64: mt8183: Add support of APU to mt8183

 .../bindings/remoteproc/mtk,apu.yaml          | 107 +++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      |  39 ++
 drivers/remoteproc/Kconfig                    |  19 +
 drivers/remoteproc/Makefile                   |   1 +
 drivers/remoteproc/mtk_apu.c                  | 437 ++++++++++++++++++
 5 files changed, 603 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/mtk,apu.yaml
 create mode 100644 drivers/remoteproc/mtk_apu.c

-- 
2.26.2

