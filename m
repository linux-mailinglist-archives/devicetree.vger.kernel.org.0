Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D76E62F445F
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 07:08:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726631AbhAMGIS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 01:08:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726030AbhAMGIR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 01:08:17 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 658E5C061786
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 22:07:37 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id m5so490391pjv.5
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 22:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bzQFE72I/JmdqPXm3sPTdt50Ied3UyCVZBo3EP9qpfA=;
        b=ZUtRg0A9O8s+bnqw0Z0boHhOu5ZFztEcCyW2vzpZb//xumrTqsqWGdLgzXO2RUL5D0
         jspQOLHArKkE935wTfyOxk67UvxMWhy39dnjrc/D5vmeZ+VXpg6cJx1j8UHTpuQxfkg5
         A3/6oiSUjlKmYmSiGwI1yUQtpxEYajq5rRM4w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bzQFE72I/JmdqPXm3sPTdt50Ied3UyCVZBo3EP9qpfA=;
        b=g9ZAmMSKqdVttQnMitcVIGsUbISIiTnlgmvrfS0d5Fw1+yvRQqn2Ad0QKZCqUgcdKg
         naDMt9I0y2h3jEoQmiCNc5VCemPtL/Ankk68SSM0BslB+7SxwAGAJm7X3TkWH76swtXN
         lhTNpCg3CpYYiisILoD2hjq3/72FsiBzCMcucTURzwczDo3WCySdZGZz7MzyqYt18OEQ
         8rcC82Q9QYVV8n+RJZ4fCmPVcxNd3KR5eZx5a1p93bGvJjCbVQUS71cmXUq1aBZ0ZNXb
         uot71I4Fkvu18eE4upBhU7x5opr2KfX1qTzsYuGV6wyDSMp9rGIFct453h9QeRFGody/
         aV8Q==
X-Gm-Message-State: AOAM531DxTSzBr8EkVWZQzcEY4xs8PkGYdCCorjPtomxIdePZvvT7USt
        zESrb8HBlTqg9S8y1FGcskHUpg==
X-Google-Smtp-Source: ABdhPJzIdxN35cPgniUhcyI4MVs69RfBwzqd5PIpdwLqbpEFIo+PblIarGAgVlOnSt+WY04srbGQiA==
X-Received: by 2002:a17:90b:350b:: with SMTP id ls11mr558246pjb.166.1610518056830;
        Tue, 12 Jan 2021 22:07:36 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:7220:84ff:fe09:41dc])
        by smtp.gmail.com with ESMTPSA id y21sm1263556pfr.90.2021.01.12.22.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 22:07:35 -0800 (PST)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
Cc:     Tomeu Vizoso <tomeu.vizoso@collabora.com>, fshao@chromium.org,
        boris.brezillon@collabora.com, hsinyi@chromium.org,
        hoegsberg@chromium.org, Nicolas Boichat <drinkcat@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v10 0/4] drm/panfrost: Add support for mt8183 GPU
Date:   Wed, 13 Jan 2021 14:06:59 +0800
Message-Id: <20210113060703.3122661-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi!

Follow-up on the v5 [1], things have gotten significantly
better in the last 9 months, thanks to the efforts on Bifrost
support by the Collabora team (and probably others I'm not
aware of).

I've been testing this series on a MT8183/kukui device, with a
chromeos-5.10 kernel [2], and got basic Chromium OS UI up with
mesa 20.3.2 (lots of artifacts though).

devfreq is currently not supported, as we'll need:
 - Clock core support for switching the GPU core clock (see 2/4).
 - Platform-specific handling of the 2-regulator (see 3/4).

Since the latter is easy to detect, patch 3/4 just disables
devfreq if the more than one regulator is specified in the
compatible matching table.

[1] https://patchwork.kernel.org/project/linux-mediatek/cover/20200306041345.259332-1-drinkcat@chromium.org/
[2] https://crrev.com/c/2608070

Changes in v10:
 - Fix the binding to make sure sram-supply property can be provided.

Changes in v9:
 - Explain why devfreq needs to be disabled for GPUs with >1
   regulators.

Changes in v8:
 - Use DRM_DEV_INFO instead of ERROR

Changes in v7:
 - Fix GPU ID in commit message
 - Fix GPU ID in commit message

Changes in v6:
 - Rebased, actually tested with recent mesa driver.

Nicolas Boichat (4):
  dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
  arm64: dts: mt8183: Add node for the Mali GPU
  drm/panfrost: devfreq: Disable devfreq when num_supplies > 1
  drm/panfrost: Add mt8183-mali compatible string

 .../bindings/gpu/arm,mali-bifrost.yaml        |  28 +++++
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   6 +
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |   6 +
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 105 ++++++++++++++++++
 drivers/gpu/drm/panfrost/panfrost_devfreq.c   |   9 ++
 drivers/gpu/drm/panfrost/panfrost_drv.c       |  10 ++
 6 files changed, 164 insertions(+)

-- 
2.30.0.284.gd98b1dd5eaa7-goog

