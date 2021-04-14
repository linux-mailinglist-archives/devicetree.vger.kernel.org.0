Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96E8835F9CE
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 19:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350257AbhDNR3p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 13:29:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233810AbhDNR3o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 13:29:44 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9078C06175F
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 10:29:22 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id c2so3075525plz.0
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 10:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1Mc9V/D86U6BEgIVG5fSvnzsnM5e5tTTmQuVaPnzWOE=;
        b=I+jfFQqNi9/cilXzuSk6QG3M59Lt49okHGRHlubvLVjAI91piLtl8VNAc4/BfaPVFk
         XaU5JTTJewUdvBdO5DRSzYJoTrk334pEPmYXthPFZKGaXM0GbIQxibJe7BK1zsGNZEZp
         iaoZlNOa/SIbvvmTcc/kGpzVFB49NHkAluesQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=1Mc9V/D86U6BEgIVG5fSvnzsnM5e5tTTmQuVaPnzWOE=;
        b=WpfwsqqWUfUNAheIDPCjUgKFQWHksFXlOJBMSNBw99enIPyNCpwnsp2YcgtPaNr+lY
         1exMYxhuNBLn671nMgBLJEI6FtMS9/b19N/OeXn+TSJm+B+AUbm1P8AWZJzCvQO7uAyb
         1ndYlAQq0lnYTl9UO/XwD0pk2xMpYAGau2C8ECEbnbXsDRIxK9kLmTuHgig30iI/TIED
         ity2sWeVzCw1++MxmRnvKbECoAV8R93GpqRUzrXza0tGa8oDx/vVC/SnuPKBM3xodABF
         iH+04yxeWx+3j0tb5sFVm6uhGUPPv7scnwUm8PW1FsJSWM2xkfslvtT22F0dNDHEPKpz
         kKnA==
X-Gm-Message-State: AOAM531Vl3bmXdLmdtud0nbOCkyAhpfkTmf8EK9aIxpSUSzi/rojaEDJ
        1HclX2uHAGjVRPnpv6RNzVcnAQ==
X-Google-Smtp-Source: ABdhPJx59RC39LfClSHgnlQasDDu7sVxpdQzTbo5+kAxp9cQhaHMPuG2TyZuMZw0VJ7OVAVgHWGybw==
X-Received: by 2002:a17:902:7589:b029:e8:c011:1f28 with SMTP id j9-20020a1709027589b02900e8c0111f28mr38384074pll.35.1618421361888;
        Wed, 14 Apr 2021 10:29:21 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:bae3:4af0:9792:1539])
        by smtp.gmail.com with ESMTPSA id e31sm63460pjk.4.2021.04.14.10.29.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 10:29:21 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Wolfram Sang <wsa@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     linux-i2c@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Brown <broonie@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Bibby Hsieh <bibby.hsieh@mediatek.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Jani Nikula <jani.nikula@linux.intel.com>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        intel-gfx@lists.freedesktop.org
Subject: [PATCH v19 0/6] add power control in i2c
Date:   Thu, 15 Apr 2021 01:29:10 +0800
Message-Id: <20210414172916.2689361-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.295.g9ea45b61b8-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Although in the most platforms, the power of eeprom
and i2c are alway on, some platforms disable the
eeprom and i2c power in order to meet low power request.

This patch add the pm_runtime ops to control power to
support all platforms.

Changes since v18:
 - Fix a function name conflict with drivers/gpu/drm/i915/selftests/i915_gem.c

Changes since v17:
 - Add a patch to fix unbalanced regulator disabling.
 - Add dts patch.

Changes since v16:
 - request regulator in device instead of in the core.
 - control regulator only if it's provided.

Changes since v15:
 - Squash the fix[1] for v15.
[1] https://patchwork.ozlabs.org/project/linux-i2c/patch/20200522101327.13456-1-m.szyprowski@samsung.com/

Changes since v14:
 - change the return value in normal condition
 - access the variable after NULL pointer checking
 - add ack tag

Changes since v13:
 - fixup some logic error

Changes since v12:
 - rebase onto v5.7-rc1
 - change the property description in binding

Changes since v11:
 - use suspend_late/resume_early instead of suspend/resume
 - rebase onto v5.6-rc1

Changes since v10:
 - fixup some worng codes

Changes since v9:
 - fixup build error
 - remove redundant code

Changes since v8:
 - fixup some wrong code
 - remove redundant message

        [... snip ...]

Bibby Hsieh (1):
  i2c: core: support bus regulator controlling in adapter

Hsin-Yi Wang (5):
  dt-binding: i2c: mt65xx: add vbus-supply property
  i2c: mediatek: mt65xx: add optional vbus-supply
  misc: eeprom: at24: check suspend status before disable regulator
  arm64: dts: mt8183: add supply name for eeprom
  drm/i915/selftests: Rename functions names

 .../devicetree/bindings/i2c/i2c-mt65xx.txt    |  1 +
 .../dts/mediatek/mt8183-kukui-kakadu.dtsi     |  4 +
 .../dts/mediatek/mt8183-kukui-kodama.dtsi     |  4 +
 .../boot/dts/mediatek/mt8183-kukui-krane.dtsi |  4 +
 drivers/gpu/drm/i915/selftests/i915_gem.c     | 10 +--
 drivers/i2c/busses/i2c-mt65xx.c               |  7 ++
 drivers/i2c/i2c-core-base.c                   | 88 +++++++++++++++++++
 drivers/misc/eeprom/at24.c                    |  6 +-
 include/linux/i2c.h                           |  2 +
 9 files changed, 119 insertions(+), 7 deletions(-)

-- 
2.31.1.295.g9ea45b61b8-goog

