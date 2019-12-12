Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CF78F11C26E
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 02:42:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727514AbfLLBmg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Dec 2019 20:42:36 -0500
Received: from mail-pj1-f66.google.com ([209.85.216.66]:45998 "EHLO
        mail-pj1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727490AbfLLBmg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Dec 2019 20:42:36 -0500
Received: by mail-pj1-f66.google.com with SMTP id r11so306177pjp.12
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2019 17:42:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=oYTlAQZvFCOXl+FtJCngIG4zVDYFRx+CdcBqRiduMI0=;
        b=vwteEu2YZkAnEvjWeKkVn0aBvUckSAG2P7VOoNA5s8hUGN3Yk8yr0boDilwBMdLuyj
         t4QG5GkPnobWw2v38BTnKHq+JV+uqyHhDdmhuElKHoxDPjGXC3oQAZopogp9FCEsarNP
         ubAIkoosYJyYMGYlNC4xFOoDp1U7o6APyF1XBeYNf6s9ziGl0G2iToAbYaM0JJDhwKjC
         B2CnHDwVIShWspatl2US/jXjzUFvrW908qOabx/Ey2z/xxA+zAHZZd5ZVVG1QsN8qLdo
         S/oFtJO2fB2yrTz6cyymBXeobJdiqLA0DW7DjHG3LmEKd9nooUG1eSBRRgQzIM/65i2S
         AIpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=oYTlAQZvFCOXl+FtJCngIG4zVDYFRx+CdcBqRiduMI0=;
        b=tt9GRUlFAPlGmeu5mzBTXHIL8V3eFn7aEC0vqDbUlWNuRJD/F8yruiZAJ5ST+X6fY1
         QNRguatvHr/+2lAM7dzA7HUsi0bgMEP/fxHeRuW+fC+oeHzhJwiFym9x4jZ/ZHk5yhRj
         TWoQP28FSJfF9Glpl8soMtT1WSJExXIguQxC5CWCeZmKWF5DXjcep1j36D0BwiX12PvN
         VEHZiOZ9jfNM7pg9BXljexw0st9Cu3UqGEd0fgH2KJzDFKKHbFh9k82SXXY6Sn3QJo/n
         BmCY5e28BfGgoow6B3PRu687ZzfXB7VaNNohDcQK1Wr4ypyfDTfFobS25cvMES2pZ/z4
         ITDA==
X-Gm-Message-State: APjAAAVbR3ECR4cXGHflnXfuPEdGvvcOn5QrEEmda1aA5aNK0EYDqyJh
        YaiZkySXHrm5l3Za/2phxE0enw==
X-Google-Smtp-Source: APXvYqyHpT1rDSGDYfNZlrajLahc84+7IwQNBWW64oNq2WP0Ja55cN6BBGowTeAh+WTxTc1jj60lsw==
X-Received: by 2002:a17:90a:a4cb:: with SMTP id l11mr6981037pjw.47.1576114955837;
        Wed, 11 Dec 2019 17:42:35 -0800 (PST)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id p16sm4217996pgi.50.2019.12.11.17.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2019 17:42:35 -0800 (PST)
From:   John Stultz <john.stultz@linaro.org>
To:     lkml <linux-kernel@vger.kernel.org>
Cc:     John Stultz <john.stultz@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        ShuFan Lee <shufan_lee@richtek.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Yu Chen <chenyu56@huawei.com>, Felipe Balbi <balbi@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jun Li <lijun.kernel@gmail.com>,
        Valentin Schneider <valentin.schneider@arm.com>,
        Guillaume Gardet <Guillaume.Gardet@arm.com>,
        Jack Pham <jackp@codeaurora.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v7 0/8] HiKey960 USB support
Date:   Thu, 12 Dec 2019 01:42:25 +0000
Message-Id: <20191212014233.32799-1-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Just another round here trying to push forward a patch series
submitted originally by Yu Chen to get HiKey960 dev-board's USB
functionality working.

The full patchset (including dts changes not submitted here) can
be found here:
https://git.linaro.org/people/john.stultz/android-dev.git/log/?id=2ae2c2a9087b52857dd47313a169c7348261cbca

I'd greatly appreciate any feedback or thoughts!

thanks
-john

New in v7:
* Guillaume Gardet reported issues with CONFIG_USB_ROLE_SWITCH=m
  which to fix required I use IS_ENABLED instead of just #ifdef
  on that config name.
* Added MAINTAINERS file for usb hub misc driver
* Switched the usb hub misc driver bindings to YAML

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
CC: ShuFan Lee <shufan_lee@richtek.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Yu Chen <chenyu56@huawei.com>
Cc: Felipe Balbi <balbi@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jun Li <lijun.kernel@gmail.com>
Cc: Valentin Schneider <valentin.schneider@arm.com>
Cc: Guillaume Gardet <Guillaume.Gardet@arm.com>
Cc: Jack Pham <jackp@codeaurora.org>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org

John Stultz (5):
  dt-bindings: usb: generic: Add role-switch-default-mode binding
  usb: dwc3: Add support for role-switch-default-mode binding
  dt-bindings: usb: dwc3: Allow clock list & resets to be more flexible
  usb: dwc3: Rework clock initialization to be more flexible
  usb: dwc3: Rework resets initialization to be more flexible

Yu Chen (3):
  usb: dwc3: Registering a role switch in the DRD code.
  dt-bindings: misc: Add bindings for HiSilicon usb hub and data role
    switch functionality on HiKey960
  misc: hisi_hikey_usb: Driver to support onboard USB gpio hub on
    Hikey960

 .../bindings/misc/hisilicon-hikey-usb.yaml    |  85 +++++++++
 .../devicetree/bindings/usb/dwc3.txt          |   5 +-
 .../devicetree/bindings/usb/generic.txt       |   6 +
 MAINTAINERS                                   |   7 +
 drivers/misc/Kconfig                          |   9 +
 drivers/misc/Makefile                         |   1 +
 drivers/misc/hisi_hikey_usb.c                 | 178 ++++++++++++++++++
 drivers/usb/dwc3/core.c                       |  22 +--
 drivers/usb/dwc3/core.h                       |   6 +
 drivers/usb/dwc3/drd.c                        |  96 +++++++++-
 10 files changed, 396 insertions(+), 19 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/misc/hisilicon-hikey-usb.yaml
 create mode 100644 drivers/misc/hisi_hikey_usb.c

-- 
2.17.1

