Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6996539290E
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 09:56:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235259AbhE0H6A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 03:58:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235276AbhE0H5f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 03:57:35 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54C08C061344
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 00:56:02 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id ot16so2275655pjb.3
        for <devicetree@vger.kernel.org>; Thu, 27 May 2021 00:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/doZaj7RzG7nsTUhqK4KmB6iqriYK3erH2nH1FOUD68=;
        b=Du/bJjPCbg4kECu8cN42XUDMYzFFqM5hhuJsKuyni/Iegd+QkpFdn3erdTrw336+Je
         MCwLbsMBWJXz9lKm8LpL3AbKjpXSOXT5Q8Ntiqk2nW/bsG0pjlMkmDWdZVLJ1OskB9oK
         ElmGvZ2xGkaz9Wb4LxkotNheavjAAy9N3UN8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=/doZaj7RzG7nsTUhqK4KmB6iqriYK3erH2nH1FOUD68=;
        b=PwbMz2O45U+LZ2Z0QRoFUm+aIyM6rF1EJ+VlzimYlSKWsLPKwpmN9d0f3pOYPneI2m
         6h5t4rYAcZ55lF3Yd5ppxkuX0nSnq3uJDjwcBuhjk1dZw3/l5FEDNEmslaE2UGKQCnNq
         pK5WVd655td37KIIyIn+dpuhic4A94PuduGWps7QxnvP8Ie9bsPs7HzlqC8+cLmEApyt
         C412euZ7Rfh86dE9oi9HXgAj0e28hhP6YDxzd8aN6vYtVP5NQMNjOQeGT+tbEQ3zt5V9
         yXunjKk3W1fUxUPaILMGDNMIA3hSu+6KuMjTl+xKFb8aNdlt9VGHt2X2sTzVopnV7mkx
         UVxQ==
X-Gm-Message-State: AOAM5321/sxuv0qlzphQJoHeUFYY98HcCF60YnDQQFiZS1FSAtEbpCrf
        8gyZmyaj5bYfFcO6x6nLUi3gFQ==
X-Google-Smtp-Source: ABdhPJw9vM3CRZoYcvKhq2sIemcpggZaXiWzX+hqAh8djv70fHOy2wHjuL36qI4azOgorAmQvAePXg==
X-Received: by 2002:a17:90a:e553:: with SMTP id ei19mr2447297pjb.175.1622102161697;
        Thu, 27 May 2021 00:56:01 -0700 (PDT)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:ece5:55a4:6ad3:d20f])
        by smtp.gmail.com with ESMTPSA id 69sm1217790pfx.115.2021.05.27.00.55.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 May 2021 00:56:01 -0700 (PDT)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Wolfram Sang <wsa@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Jean Delvare <khali@linux-fr.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     linux-i2c@vger.kernel.org, Qii Wang <qii.wang@mediatek.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Mark Brown <broonie@kernel.org>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Bibby Hsieh <bibby.hsieh@mediatek.com>,
        Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v21 RESEND 0/4] add power control in i2c
Date:   Thu, 27 May 2021 15:55:52 +0800
Message-Id: <20210527075556.1709140-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.31.1.818.g46aad6cb9e-goog
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

Changes since v20:
 - fix regulator check logic in suspend/resume.

Changes since v19:
 - resend v19 with fix tag added.

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

Hsin-Yi Wang (3):
  dt-binding: i2c: mt65xx: add vbus-supply property
  i2c: mediatek: mt65xx: add optional vbus-supply
  arm64: dts: mt8183: add supply name for eeprom

 .../devicetree/bindings/i2c/i2c-mt65xx.txt    |  1 +
 .../dts/mediatek/mt8183-kukui-kakadu.dtsi     |  4 +
 .../dts/mediatek/mt8183-kukui-kodama.dtsi     |  4 +
 .../boot/dts/mediatek/mt8183-kukui-krane.dtsi |  4 +
 drivers/i2c/busses/i2c-mt65xx.c               |  7 ++
 drivers/i2c/i2c-core-base.c                   | 95 +++++++++++++++++++
 include/linux/i2c.h                           |  2 +
 7 files changed, 117 insertions(+)

-- 
2.31.1.818.g46aad6cb9e-goog

