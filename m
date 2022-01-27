Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EDA549E06C
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 12:15:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240063AbiA0LPq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 06:15:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240061AbiA0LPp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jan 2022 06:15:45 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C87FC061747
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 03:15:45 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id c23so4107383wrb.5
        for <devicetree@vger.kernel.org>; Thu, 27 Jan 2022 03:15:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AqCQ3Cv7kubS972WRmyqz9Ovn66XN6I/kVUjqRm07dI=;
        b=FTCageDzja7MDHvfCdCrAWTT1F+s07YyGIVA7XEv4aLKB2thbXHqzqoYf2B1gCt55v
         FPdI0kwpmhullu7lusRBsFROrm+KGgOqAtkHTjjbNhm6h5D9+3Ne1tFsyO728iltINTl
         dBQs0alpeVpfV3Ha9RCcABOFdXRj9F9nclZzHbGfx/nZgyAVj22++a7xGi+3VV6O+50e
         YlO6CPOAiBrbTNpl7iW6UryfHdGsLmrXnjHP5ob91ye0kIvslaoJHzzvOTBaqn/RosYg
         tF9a1eLC1+aX8lSTzRPeyy00PR6DzazDjd+e9EaH2EA5Y4Nck7tI0AegXRpMNS2yhmF1
         WXLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=AqCQ3Cv7kubS972WRmyqz9Ovn66XN6I/kVUjqRm07dI=;
        b=4twZQNZrBmIiy9PZbQRoqF31Ys05liVlDjgmwXiy46re6Yid1b9HIpxafeoF60jemA
         nYTtaWyJPZw4Y/1DJGg4t/pTTKP4QbkaIgzxSF5yKVMmqOfLneOFYE6yCoHeHmagbhoG
         JakQfMvmVO71GUrOcrTCa5JdZ2pMIyoHW0/Oia3JQhC58VwEH6NKOKB3MjNa7zP4aMZQ
         rPknhLcLPQy2Yn70T5WGt8WhZU8XmgQHNf/xSb+r3QG5MU0iOyh3CR8aCbFYfzcG8LH1
         28/OQWdOr4dN72idwAv5bI62y2puwZ/OY2bHsirsuf5XxOziffJCglLzed3oJNNHMR0N
         rhBA==
X-Gm-Message-State: AOAM5302vQaJouP9wpa7Gh/D5eclCvnBdziqiXJr9EDltJ3KwJMW+oRX
        GLPfEN+m1Sf2w0uXD9SnMBQzag==
X-Google-Smtp-Source: ABdhPJwjpkby8GQSoY8fsnnpW0eosHE4KMSv6I6bmTxLodSfB9LUCloN8JxTHyEdgsOEm+5ExtPVTQ==
X-Received: by 2002:adf:d1ef:: with SMTP id g15mr2661269wrd.418.1643282143753;
        Thu, 27 Jan 2022 03:15:43 -0800 (PST)
Received: from localhost.localdomain ([2a01:cb19:8b2c:5e00:7d3d:d638:46ec:78dd])
        by smtp.gmail.com with ESMTPSA id r7sm5956311wma.39.2022.01.27.03.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jan 2022 03:15:43 -0800 (PST)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Marco Felsch <m.felsch@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Fengping Yu <fengping.yu@mediatek.com>,
        Yingjoe Chen <yingjoe.chen@mediatek.com>
Cc:     Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        Fabien Parent <fparent@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v20 0/3] Add matrix keypad driver support for Mediatek SoCs
Date:   Thu, 27 Jan 2022 12:15:23 +0100
Message-Id: <20220127111526.3716689-1-mkorpershoek@baylibre.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dear all,

This is a follow-up on an abandoned series, see [1]

Since Dmitry seemed generally happy with the driver, I applied his rename
recommendations.

Thus, I have made the following:

* All Reviewed-By: tags were kept
* Applied Marco's Reviewed-By: on the bindings (since he approved v10)
* Fengping is still the maintainer since he is the original author of this driver

Please tell me if you would rather have me do things differently.

[1] https://lore.kernel.org/all/20200909072159.14888-1-fengping.yu@mediatek.com/

v19 -> v20:
bindings: use dual license
bindings: fixed 2 indentation issues found by yamllint
bindings: drop clock-names description
bindings: use standard keyboard node name for example
bindings: use default: keyword for default values
use debounce-delay-ms property instead of mediatek,debounce-us

fengping.yu (3):
  dt-bindings: input: Add bindings for Mediatek matrix keypad
  Input: mt6779-keypad - Add MediaTek keypad driver
  arm64: defconfig: Add CONFIG_KEYBOARD_MT6779=m

 .../input/mediatek,mt6779-keypad.yaml         |  77 +++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/input/keyboard/Kconfig                |  12 +
 drivers/input/keyboard/Makefile               |   1 +
 drivers/input/keyboard/mt6779-keypad.c        | 218 ++++++++++++++++++
 5 files changed, 309 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
 create mode 100644 drivers/input/keyboard/mt6779-keypad.c


base-commit: 87a0b2fafc09766d8c55461a18345a1cfb10a7fe
-- 
2.32.0

