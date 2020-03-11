Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D850F181F2F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2020 18:22:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730505AbgCKRVT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Mar 2020 13:21:19 -0400
Received: from mail-pj1-f66.google.com ([209.85.216.66]:52497 "EHLO
        mail-pj1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730363AbgCKRVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Mar 2020 13:21:19 -0400
Received: by mail-pj1-f66.google.com with SMTP id f15so1300817pjq.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2020 10:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=Tq9GZ+8SGFDwRnCh/imVR+PNSA8EAmKdds4nGI9H2Mo=;
        b=lGXuwLCc1bAMDBZKUm4Z0GVrnOfXviGRb8GMVys/7n/1s1if5NOrly6gG0w9u6s5v6
         JD7mdOslalD8z5jY0xf9kpFGmuboRQzy+ilGn45y7yWp9tbpn1ael3prC6E4HYrmFjcg
         4yiFINpklMEOlwe6/gCXgXd0YdvrX7x/9S1141KdzA6zIzY8zstlv6s1y9ubjW2a64Wm
         XrifR5qIa5xt64L7qa8qLb/kBSyJajXJP4L8UCAGsDV9vNkI+mxNGG0lirJg1rTnCNz2
         rcUkmMnOF0msCK0ZAF6bYn8k8hcNbkUq47ofh+S+5FQ4GtlUTqTngUyUejwInmCjLc3o
         xFpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Tq9GZ+8SGFDwRnCh/imVR+PNSA8EAmKdds4nGI9H2Mo=;
        b=NnkoISNOyrMzqvUdmmfAobMwtxkq1O3BuOdpSBbvMIw+Lf9F32CEdBnDiT34i03SQj
         +eR/R76uNBhWtkQ+dK0pnPfFC5dflD00KLa69bFZoyao718WBTvMIL7lH4qwye3paXda
         sAPfeMRWOqHM2A4l9SiN5aXpEO/aUwywspkTCYEIyrqVDLsXRBmkWK7c7Rh9XOw1ZcJj
         l+KqA0vOLMN7e+4kQj+L1mLHoEgDP/WlVNh1KBa5qhnL0c9rHsDCcgS/2gMx4NlaZqza
         /T8tg4fy5ytEMZiOqmDZuabKZ4WM+ID+KEGckvAtjtTZp7i2Rz9O3gKAd4nE+6dj0A2W
         O1LA==
X-Gm-Message-State: ANhLgQ2jxStNcYc+Gta4CasO+FXQathAS3oBf8SrS8pK9ssjOtAPUvqv
        FXBvXBJoTVAoNlQjfvpV2nunVg==
X-Google-Smtp-Source: ADFU+vvpIUBHc8hAtcs1nlct/+NNyilN9lsepNmLSF74qLod0TgMUU0AXqilUNEu3F5SGIclBX2KXg==
X-Received: by 2002:a17:90a:da03:: with SMTP id e3mr4362490pjv.57.1583947277242;
        Wed, 11 Mar 2020 10:21:17 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id b24sm14914053pfi.52.2020.03.11.10.21.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2020 10:21:16 -0700 (PDT)
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
Subject: [RESEND][PATCH v8 0/6] dwc3 dependencies for HiKey960 USB
Date:   Wed, 11 Mar 2020 17:21:03 +0000
Message-Id: <20200311172109.45134-1-john.stultz@linaro.org>
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
https://git.linaro.org/people/john.stultz/android-dev.git/log/?id=dcb542a207ac5c5f94729601b2390ca5fbf6f6cd

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

