Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 37021133AC5
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2020 06:23:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725838AbgAHFX4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jan 2020 00:23:56 -0500
Received: from mail-pf1-f193.google.com ([209.85.210.193]:40495 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725773AbgAHFX4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jan 2020 00:23:56 -0500
Received: by mail-pf1-f193.google.com with SMTP id q8so1011394pfh.7
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2020 21:23:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s1KUxpvNC0nSY4c57vW0grBhdHj/br9DS0Gj7LsMqAg=;
        b=UaDMeZnQsg7RWbE0j39tduViiq5tWgb5xwFNLW6CAsuaqrJDAaez2MGnV4PY7kH539
         aj30Ild0XBzKI5+QFVnZnuU/x9R/7QklbyAMShyxgCH4sxK7XMPCA8P3gzkn56vBNgnS
         fkoYP8jneVMWqlDMbIWdMfifnxnN8gAT8lJCU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=s1KUxpvNC0nSY4c57vW0grBhdHj/br9DS0Gj7LsMqAg=;
        b=gZBOoUVJyf8K2iX3mXCo32sRMnQaH0mwgsjObYRtjCBd+OOaX4owUk60N4vy9fhxay
         nBoPJBrrYXmqWirjV09nHMSpw36gL11ShhuQAmySmghpVUtKLyvQDfxQ7kwP6G4eNDWQ
         qSjPDKhTlSLyYd+217q8IkGZCK5zJPP1uo3bCv84fg2+Coq19yumvq6+l++e+nFSGNIp
         7fxeAdZPBK3D72a9fvO7pRh0RS7C+OeY84a7DNsk/lxKpKw3LovazkWgOhlElyoffoUZ
         wSEu2QNDLeLhAU5YfGYCj4KVWWfjFz+Ck4U2IMmx613cPJrJ/5EuF2xf8JztKCKHXx8L
         sAEA==
X-Gm-Message-State: APjAAAVu7JPO4XciGzIN8ujST1fjjY4LFD59ArrzU3hNyHXNyzq2jFEX
        9oX6wk1MRXM9PBNx8m5rsktwvQ==
X-Google-Smtp-Source: APXvYqxmaLR0+XdqtcLLRTMFj3xPry0wUm49NXvxttElsA1fauDaDpoKgiJkJbYJCbg0zpgZCOqf+g==
X-Received: by 2002:a62:446:: with SMTP id 67mr3056799pfe.109.1578461035208;
        Tue, 07 Jan 2020 21:23:55 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com ([2401:fa00:1:b:d8b7:33af:adcb:b648])
        by smtp.gmail.com with ESMTPSA id n24sm387505pff.12.2020.01.07.21.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jan 2020 21:23:54 -0800 (PST)
From:   Nicolas Boichat <drinkcat@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
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
Subject: [PATCH v2 0/7] Add dts for mt8183 GPU (and misc panfrost patches)
Date:   Wed,  8 Jan 2020 13:23:30 +0800
Message-Id: <20200108052337.65916-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi!

Sorry for the long delay since https://patchwork.kernel.org/patch/11132381/,
finally got around to give this a real try.

The main purpose of this series is to upstream the dts change and the binding
document, but I wanted to see how far I could probe the GPU, to check that the
binding is indeed correct. The rest of the patches are RFC/work-in-progress, but
I think some of them could already be picked up.

So this is tested on MT8183 with a chromeos-4.19 kernel, and a ton of
backports to get the latest panfrost driver (I should probably try on
linux-next at some point but this was the path of least resistance).

I tested it as a module as it's more challenging (originally probing would
work built-in, on boot, but not as a module, as I didn't have the power
domain changes, and all power domains are on by default during boot).

Probing logs looks like this, currently:
[  221.867726] panfrost 13040000.gpu: clock rate = 511999970
[  221.867929] panfrost 13040000.gpu: Linked as a consumer to regulator.14
[  221.868600] panfrost 13040000.gpu: Linked as a consumer to regulator.31
[  221.870586] panfrost 13040000.gpu: Linked as a consumer to genpd:0:13040000.gpu
[  221.871492] panfrost 13040000.gpu: Linked as a consumer to genpd:1:13040000.gpu
[  221.871866] panfrost 13040000.gpu: Linked as a consumer to genpd:2:13040000.gpu
[  221.872427] panfrost 13040000.gpu: mali-g72 id 0x6221 major 0x0 minor 0x3 status 0x0
[  221.872439] panfrost 13040000.gpu: features: 00000000,13de77ff, issues: 00000000,00000400
[  221.872445] panfrost 13040000.gpu: Features: L2:0x07120206 Shader:0x00000000 Tiler:0x00000809 Mem:0x1 MMU:0x00002830 AS:0xff JS:0x7
[  221.872449] panfrost 13040000.gpu: shader_present=0x7 l2_present=0x1
[  221.873526] panfrost 13040000.gpu: error powering up gpu stack
[  221.878088] [drm] Initialized panfrost 1.1.0 20180908 for 13040000.gpu on minor 2
[  221.940817] panfrost 13040000.gpu: error powering up gpu stack
[  222.018233] panfrost 13040000.gpu: error powering up gpu stack
(repeated)

So the GPU is probed, but there's an issue when powering up the STACK, not
quite sure why, I'll try to have a deeper look, at some point.

Thanks!

Nicolas

v2:
 - Use sram instead of mali_sram as SRAM supply name.
 - Rename mali@ to gpu@.
 - Add dt-bindings changes
 - Stacking patches after the device tree change that allow basic
   probing (still incomplete and broken).

Nicolas Boichat (7):
  dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
  arm64: dts: mt8183: Add node for the Mali GPU
  drm/panfrost: Improve error reporting in panfrost_gpu_power_on
  drm/panfrost: Add support for a second regulator for the GPU
  drm/panfrost: Add support for multiple power domain support
  RFC: drm/panfrost: Add bifrost compatible string
  RFC: drm/panfrost: devfreq: Add support for 2 regulators

 .../bindings/gpu/arm,mali-bifrost.yaml        |  20 ++++
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   7 ++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 104 +++++++++++++++++
 drivers/gpu/drm/panfrost/panfrost_devfreq.c   |  18 +++
 drivers/gpu/drm/panfrost/panfrost_device.c    | 108 ++++++++++++++++--
 drivers/gpu/drm/panfrost/panfrost_device.h    |   7 ++
 drivers/gpu/drm/panfrost/panfrost_drv.c       |   1 +
 drivers/gpu/drm/panfrost/panfrost_gpu.c       |  15 ++-
 8 files changed, 267 insertions(+), 13 deletions(-)

-- 
2.24.1.735.g03f4e72817-goog

