Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0A617B542
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2020 05:14:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726162AbgCFEN7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Mar 2020 23:13:59 -0500
Received: from mail-pj1-f66.google.com ([209.85.216.66]:33541 "EHLO
        mail-pj1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726351AbgCFEN6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Mar 2020 23:13:58 -0500
Received: by mail-pj1-f66.google.com with SMTP id o21so2992857pjs.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2020 20:13:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NGpha79Xw/kyrpH0KRykBURmEGjSa5ilFJNdTDuhavo=;
        b=UBFJfk7m2rjCNVc4mkH8nMfqbKNiiahjGDbTAxb6n6L3W7Pm2HZ2sPakIgBp1lURAp
         wCEx2AOH+h168RFpbM4kCfC0Bl2UTfPV+8xRkoukQQU1Xobx6M1BG8uUQvmOfTE3yk4+
         UBcROZ8vF9c7L9/DPrmxZxWKgxx6AwppH4XvA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NGpha79Xw/kyrpH0KRykBURmEGjSa5ilFJNdTDuhavo=;
        b=Hq6kVirecS7PBGas33LIklwil37j9Y7xRcbCPUK8WJs2P0mPW1zsag8OC/Otl1T1qw
         AGxMgWOH+BRkqZSxe5CHYAXb0GIcML8qeipzNGeWFX0chH2DWBKG5cEjJ8zqgMfjHC4z
         reO1GVDsPqn+BNbNh78WorENE/XssnLYNoEL1TbwROMATvnqhtlg8FWag5WyayQtiY8C
         Cb4IyrZschD8RAyM/3UbNDOex9X9q9e8/Ivm9yPlTiyhb2Wg3pptFf3Bw/SIpEBUXf2W
         72E1o3TGt86zNcll3ZlI9O8tyFcn0oZBY+fkrzQkV+wm/YWb1VM873jVUToh9ziwZdp5
         GdtA==
X-Gm-Message-State: ANhLgQ029QsVs9b2nTbGNHURcyFf8Rk2ldEymLzzfdOncSHovO23Gy8b
        z7suIwG5DORt6UNKW9G9HaRYYL6Wxv0=
X-Google-Smtp-Source: ADFU+vu3QozVC0yE6LU6QscNhoRjHqPVAaBn/u3r6arshufaf8EPEK3BnFSFTzSCvpBiTDYG84+h2Q==
X-Received: by 2002:a17:902:b485:: with SMTP id y5mr1125061plr.4.1583468035448;
        Thu, 05 Mar 2020 20:13:55 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:d8b7:33af:adcb:b648])
        by smtp.gmail.com with ESMTPSA id q97sm6295025pja.9.2020.03.05.20.13.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Mar 2020 20:13:54 -0800 (PST)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Nick Fan <nick.fan@mediatek.com>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, hsinyi@chromium.org
Subject: [PATCH v5 0/4] Add dts for mt8183 GPU (and misc panfrost patches)
Date:   Fri,  6 Mar 2020 12:13:41 +0800
Message-Id: <20200306041345.259332-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi!

Follow-up on the v4: https://patchwork.kernel.org/cover/11369777/, some
of the core patches got merged already (thanks Rob!).

The main purpose of this series is to upstream the dts change and the
binding document, but I wanted to see how far I could probe the GPU, to
check that the binding is indeed correct. The rest of the patches are
RFC/work-in-progress.

So this is tested on MT8183 with a chromeos-4.19 kernel, and a ton of
backports to get the latest panfrost driver (I should probably try on
linux-next at some point but this was the path of least resistance).

I tested it as a module as it's more challenging (originally probing would
work built-in, on boot, but not as a module, as I didn't have the power
domain changes, and all power domains are on by default during boot).

Probing logs looks like this, currently. They look sane.
[  501.319728] panfrost 13040000.gpu: clock rate = 511999970
[  501.320041] panfrost 13040000.gpu: Linked as a consumer to regulator.14
[  501.320102] panfrost 13040000.gpu: Linked as a consumer to regulator.31
[  501.320651] panfrost 13040000.gpu: Linked as a consumer to genpd:0:13040000.gpu
[  501.320954] panfrost 13040000.gpu: Linked as a consumer to genpd:1:13040000.gpu
[  501.321062] panfrost 13040000.gpu: Linked as a consumer to genpd:2:13040000.gpu
[  501.321734] panfrost 13040000.gpu: mali-g72 id 0x6221 major 0x0 minor 0x3 status 0x0
[  501.321741] panfrost 13040000.gpu: features: 00000000,13de77ff, issues: 00000000,00000400
[  501.321747] panfrost 13040000.gpu: Features: L2:0x07120206 Shader:0x00000000 Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
[  501.321752] panfrost 13040000.gpu: shader_present=0x7 l2_present=0x1
[  501.324951] [drm] Initialized panfrost 1.1.0 20180908 for 13040000.gpu on minor 2

Some more changes are still required to get devfreq working, and of course
I do not have a userspace driver to test this with.

I believe at least patches 1 & 2 can be merged (2 depends on another
patch series, so maybe we could start with 1 only for now...).

Thanks!

Nicolas Boichat (4):
  dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
  arm64: dts: mt8183: Add node for the Mali GPU
  RFC: drm/panfrost: Add mt8183-mali compatible string
  RFC: drm/panfrost: devfreq: Add support for 2 regulators

 .../bindings/gpu/arm,mali-bifrost.yaml        |  25 +++++
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   7 ++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 105 ++++++++++++++++++
 drivers/gpu/drm/panfrost/panfrost_devfreq.c   |  17 +++
 drivers/gpu/drm/panfrost/panfrost_device.h    |   1 +
 drivers/gpu/drm/panfrost/panfrost_drv.c       |  11 ++
 6 files changed, 166 insertions(+)

-- 
2.25.1.481.gfbce0eb801-goog

