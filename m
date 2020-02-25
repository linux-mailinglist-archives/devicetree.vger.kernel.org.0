Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DE10816ED1A
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2020 18:53:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730928AbgBYRxV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Feb 2020 12:53:21 -0500
Received: from mail-pl1-f194.google.com ([209.85.214.194]:33112 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730631AbgBYRxV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Feb 2020 12:53:21 -0500
Received: by mail-pl1-f194.google.com with SMTP id ay11so106855plb.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2020 09:53:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=3f9i7/6H9zuBMJqRcxgLGnwHoSaH99NYup2HlRp7R/M=;
        b=IS5nkK9Ym1FKFD8R94G0EDCeIhwwQqWITciFqHXpnJ0D+8i/mNhXApP0RW4omNzEUL
         KJxv+BeCzz9DPpheVQBnCQF8T6ecLMDK6AJpH6ipeKlYai+4uAdBoYJq4MunK9MRprSC
         hrS5lzCBtJ4UWdXFqbusRb2VGXEOyjMEtbZQ2oedc7Eb01oes5Y0WbkioRY9Xd8acLfh
         /BrNP0yzopYUDmJKQ5Sw/czm1oeQA5x8i7zV7f9bN5Ma2vxB3UmtDYOnEsKnvQiQLruU
         dlBor2kR9PdwdfftwaxZxiMdhJ11kfXKRIcmjuAhMXkqRKit143DYaTTaJ/FNwVbmYQW
         2tcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=3f9i7/6H9zuBMJqRcxgLGnwHoSaH99NYup2HlRp7R/M=;
        b=hoIz7iJW4rmgOutiXftt2EjNKHsaRtlt6SrImahldP1aDz3ShHqLAtLy/4RbGsrGNs
         4YLBAEX9+7XE0XVI4xon9yTgju6QbCq8qi16Q6pGX2ej5IuUXYR09s+lLVN7eGmBxC4H
         TjJa5pbtGvKOrbT4P8JQa+bhSdpvj/8f85tnXZ+/ogdFiVl/kQL4hJ3P3Vo8J6Okbyl1
         F3ZRMrTzHMbEZ7i9crtbb3323hVguML1B/BDcZdsKuFJ6z2nalRSTu0o1ggCKULhnbbZ
         V5ohX9RXvRwG8p0VYAYPPaFhjxa7zBf6Zgx+kX9XWoq1bKWhOltYt8aihm5i+R57RErd
         iAnA==
X-Gm-Message-State: APjAAAV/VDFzbJwMttnFWAxm8R7kGfMXSgbcNHNpj/Upj9T2eXVOK3le
        RxWW5khdQ5Srg+lectNktDqNtg==
X-Google-Smtp-Source: APXvYqzs1jd4ZMn6EZj8s8LLMXaJxiIAeutiq4sl2FHDxjTkHQ/w21zJsm+acFAlG4hmT/6ttn9f1Q==
X-Received: by 2002:a17:902:b417:: with SMTP id x23mr5566387plr.9.1582653200322;
        Tue, 25 Feb 2020 09:53:20 -0800 (PST)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id v8sm18013291pgt.52.2020.02.25.09.53.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2020 09:53:19 -0800 (PST)
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
Subject: [PATCH v8 0/6] dwc3 dependencies for HiKey960 USB
Date:   Tue, 25 Feb 2020 17:52:58 +0000
Message-Id: <20200225175304.36406-1-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Just wanted to send these out again to try to make some progress
on these patches originally by Yu Chen to get HiKey960
dev-board's USB functionality working.

For now I've dropped the hub switching functionality from the
series, as I've not yet been able to come up with a solution to
Rob's objections. So this set focuses just on the dwc3 changes
needed.

The full patchset (including hub switching and dts changes not
submitted here) can be found here:
https://git.linaro.org/people/john.stultz/android-dev.git/log/?id=410aa219e0c201e8ba0e03a79b5d3f4f5c47126b

I'd greatly appreciate any feedback or thoughts!

thanks
-john

New in v8:
* Rob objected to the custom hub switching logic in the
  previous series, so I've dropped it for now. 

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

Yu Chen (1):
  usb: dwc3: Registering a role switch in the DRD code.

 .../devicetree/bindings/usb/dwc3.txt          |  5 +-
 .../devicetree/bindings/usb/generic.txt       |  6 ++
 drivers/usb/dwc3/core.c                       | 22 ++---
 drivers/usb/dwc3/core.h                       |  6 ++
 drivers/usb/dwc3/drd.c                        | 96 ++++++++++++++++++-
 5 files changed, 116 insertions(+), 19 deletions(-)

-- 
2.17.1

