Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9272A49CE98
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 16:35:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242900AbiAZPf1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jan 2022 10:35:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242909AbiAZPfZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jan 2022 10:35:25 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4493BC06173B
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 07:35:25 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id s9so10625007wrb.6
        for <devicetree@vger.kernel.org>; Wed, 26 Jan 2022 07:35:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3U2VlbaDiL8zCwzswKdJmuhmgZcDC5jFlEtFb0awmuo=;
        b=H63H9mJZx+2wNR4miZeP2BG9jFbtr6BXJRaDXRJB7+UM87PNnkEuDk4JU86/Uuj4nU
         o74Z1FhfadPMea+oscObqeq5MTVxmYqEVr7LaHsT0WU46Z1aN4ZAK7VLijKdpn/rNwTw
         B3zZi6kW/J7SScpS7ZZvEeV43gZZvIN18CxSDu147n+JJfmHEI+kHWAijEFYhz+rBMCH
         7stkchPJ7/1oyNDPCV/DO6HNvgP87Vq4WvLeCA7V+sdluRStNy3PqpjTOLkyygD12tn/
         4wC9Ggh63fA3g/fKGbTNpsyhiZQdduKj5JEpa//INoJmnGun9M6uL6NVUksz3A1otNvo
         w2UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3U2VlbaDiL8zCwzswKdJmuhmgZcDC5jFlEtFb0awmuo=;
        b=ipAgzToM4F9IJVmi48CaCd05dFr/8+/68AkayGRNyOlUzJEgX7eolWyPL+KpVBNdM4
         P2qN3upmPX9Wodb66MsNoP++eChQHJ2xBfdHlG3YhTBnkg3m8wAu2x9ClnvbGIAnFW6Y
         UKWBQDfoX7OD+eEufe3dGWxXPF1S0krpg76DpYpjq/wyC6ynM8rpIN/v/jrfIWJh+aps
         Tk1jPmR8TZDimzPbVqLlYlCWfmOlO9iu1ysN94zEAdAY8m1SlAKXT1HmEEY4Ma/WAdd0
         L3qJdNMTmfzC+7FmkI964xKuw8e9WRFo1RruBzb5ifw7XI/zpqr7zLkvpZmnU2FgttO+
         KoOQ==
X-Gm-Message-State: AOAM533tKQjo3N871jVHcHzqOVhZV7G4lADnALzMNOVI+H84Pg5+QnEm
        mPO15lRA+8S2975ZhloXn7nxdw==
X-Google-Smtp-Source: ABdhPJz2hfUkHjqnjSjNIHx9xgMie+71LhrZ6IWHyS38Ps4va/mJ4GSkip4hIiWw/0AIIgt4hddUww==
X-Received: by 2002:a5d:508a:: with SMTP id a10mr6584123wrt.360.1643211323734;
        Wed, 26 Jan 2022 07:35:23 -0800 (PST)
Received: from mkorpershoek-XPS-13-9370.. (laubervilliers-656-1-151-143.w92-154.abo.wanadoo.fr. [92.154.18.143])
        by smtp.gmail.com with ESMTPSA id n10sm3360958wmr.25.2022.01.26.07.35.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jan 2022 07:35:23 -0800 (PST)
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
Subject: [PATCH v19 0/3] Add matrix keypad driver support for Mediatek SoCs
Date:   Wed, 26 Jan 2022 16:35:16 +0100
Message-Id: <20220126153519.3637496-1-mkorpershoek@baylibre.com>
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
I also did a couple of binding fixes which were needed to pass "make dt_binding_check".

Thus, I have made the following:

* All Reviewed-By: tags were kept
* Applied Marco's reviewed by on the bindings (since he approved v10)
* Fengping is still the maintainer since he is the original author of this driver
* The binding license is not changed even if checkpatch recommended it:
  > WARNING: DT binding documents should be licensed (GPL-2.0-only OR BSD-2-Clause)

Please tell me if you would rather have me do things differently.

[1] https://lore.kernel.org/all/20200909072159.14888-1-fengping.yu@mediatek.com/

v18 -> v19:
- bindings: fix maintainer -> maintainers keyword
- bindings: add matrix-keymap.yaml ref and remove included properties
- bindings: fix compatible strings (reported by make dt_binding_check)
- bindings: reorder properties to match the required ones
- bindings: remove un-necessary descriptions
- bindings: fix multiline description for mediatek,debounce-us
- bindings: fix example to pass make dt_binding_check
- bindings: fixed licence to GPL-2.0 only (checkpatch)
- bindings: rename to mediatek,mt6779-keypad.yaml to match driver
- rename driver to mt6779-keypad.c
- prefix function names with mt6779_keypad_
- prefix globals with mt6779_keypad_
- rename CONFIG_KEYBOARD_MTK_KPD to CONFIG_KEYBOARD_MT6779
- rename module name to mt6779-keypad
- update copyright year to 2022

fengping.yu (3):
  dt-bindings: input: Add bindings for Mediatek matrix keypad
  Input: mt6779-keypad - Add MediaTek keypad driver
  arm64: defconfig: Add CONFIG_KEYBOARD_MT6779=m

 .../input/mediatek,mt6779-keypad.yaml         |  80 +++++++
 arch/arm64/configs/defconfig                  |   1 +
 drivers/input/keyboard/Kconfig                |  12 +
 drivers/input/keyboard/Makefile               |   1 +
 drivers/input/keyboard/mt6779-keypad.c        | 218 ++++++++++++++++++
 5 files changed, 312 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/mediatek,mt6779-keypad.yaml
 create mode 100644 drivers/input/keyboard/mt6779-keypad.c


base-commit: 87a0b2fafc09766d8c55461a18345a1cfb10a7fe
-- 
2.32.0

