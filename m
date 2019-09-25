Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 945EFBE908
	for <lists+devicetree@lfdr.de>; Thu, 26 Sep 2019 01:42:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732100AbfIYXma (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Sep 2019 19:42:30 -0400
Received: from mail-pl1-f194.google.com ([209.85.214.194]:42125 "EHLO
        mail-pl1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725821AbfIYXma (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Sep 2019 19:42:30 -0400
Received: by mail-pl1-f194.google.com with SMTP id e5so137329pls.9
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2019 16:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=FWq12v0l25/25NHMUK4x2Bta04DqoQNuL8vSuCdOZpk=;
        b=gNJujOSQp9rC6EBCot02UBfTX6szLQqPNSCL8LnBSnoJCNczdvFcwNsTJVle7vT4Y5
         NMnaxxBxuFqZ+56NgxwpggTKzYoN/5Rg/Pqp5BJ3Tq3+RsW6jq3zXsP8/se7U9orjbSX
         9f0+d6YL8zW+yzEFVzJ3gsBVtouSXL1YeE+K0N3XAjLIHiC2vOnKJSaz+jJHLkL81abs
         po5FQOPWG3C79YXEPAdy20G94bIm/ch/FEldpAFsu2HXMwtAAOZTEb7Yv/5mXvqvbWmS
         kgnQtJxFUmofT3KLeJqhXiyy+4MSxzl68WqCkB7r4qK+83ytYYIucWf2yxMkzuaP+oO9
         veFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=FWq12v0l25/25NHMUK4x2Bta04DqoQNuL8vSuCdOZpk=;
        b=SHxjb9fmQX8/z2qIBXRellOqWlMKuMVhi7ceFAVUAzkpxAmI2BGiYguA8hCOuMtv5T
         Lh5SFk+Dg3Uf3ZZeWugk3B0gE6HtcxgGohS53Ayu0xf9ZWC23kCE/p88VHrzLtX3Oq2D
         2UmB5IQRnlh894Ca2E0KvPdG2o5Jg3+FYRY44kU3ErFbwpi6X3lHQi9VSXX0ccPAgG+s
         VJStHEAcF+ITZAGuugluc6rDY65JVBf473/5av4utJKlVCm6V9Bj4wuncAbhqCdnBF8/
         N5ai1UY9TgQ1unYjuxqab0xaiWf55RpaGkXEEf9VJ2zj8kWifKvPxGdNXXGaOAu9xC+9
         pMSg==
X-Gm-Message-State: APjAAAVi0c8qEF7BxFd2iE3guNJaBS4FCpiPigql61beLFDvm9fnchMI
        INRg95wdhqaKomC4wib15tn83w==
X-Google-Smtp-Source: APXvYqwmyQNpRkoi+PIX6YyGFxcPt01EWCgLGoSA83cTmN2ppk/KQEiIQ2Ddl5rsamhhyyDC7ie73Q==
X-Received: by 2002:a17:902:8d98:: with SMTP id v24mr687990plo.265.1569454949571;
        Wed, 25 Sep 2019 16:42:29 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id d1sm131127pfc.98.2019.09.25.16.42.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Sep 2019 16:42:28 -0700 (PDT)
From:   John Stultz <john.stultz@linaro.org>
To:     lkml <linux-kernel@vger.kernel.org>
Cc:     John Stultz <john.stultz@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Felipe Balbi <balbi@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Yu Chen <chenyu56@huawei.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: [RFC][PATCH 0/5] dwc3: Changes for HiKey960 support
Date:   Wed, 25 Sep 2019 23:42:19 +0000
Message-Id: <20190925234224.95216-1-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I've been carrying for awhile some patches that Yu Chen was
previously pushing upstream to enable USB on the HiKey960 board
and I wanted to try to nudge them forward as I'm not sure as to
what his plans are.

I've reviewed some of the feedback from his last series, and
tried to clean things up a little bit. However, there are still
some dt binding bits between the misc switch driver and how it
interacts with the rt1711 and dwc3 driver that I'm unsure of.

However, there were some simpler parts of the patch set that I
wanted to send out to see if we could make some progress on
those parts while I continue to work on the more complex bits.

You can find the full set of changes to get USB working on the
board here:
 https://git.linaro.org/people/john.stultz/android-dev.git/log/?id=e2f983603b4d89c021929842142ca7c3370422cf 

This series is just the more trivial changes, along with some
missing binding documentation that I've added.

I'd greatly appreciate any review or feedback on this series!

thanks
-john

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Felipe Balbi <balbi@kernel.org>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Yu Chen <chenyu56@huawei.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org

John Stultz (2):
  dt-bindings: usb: dwc3: Add a property to do a CGTL soft reset on mode
    switching
  dt-bindings: usb: dwc3: of-simple: add compatible for HiSi

Yu Chen (3):
  usb: dwc3: Execute GCTL Core Soft Reset while switch mode for
    Hisilicon Kirin Soc
  usb: dwc3: Increase timeout for CmdAct cleared by device controller
  usb: dwc3: dwc3-of-simple: Add support for dwc3 of Hisilicon Soc
    Platform

 .../devicetree/bindings/usb/dwc3.txt          |  2 +
 .../devicetree/bindings/usb/hisi,dwc3.txt     | 52 +++++++++++++++++++
 drivers/usb/dwc3/core.c                       | 20 +++++++
 drivers/usb/dwc3/core.h                       |  3 ++
 drivers/usb/dwc3/dwc3-of-simple.c             |  4 +-
 drivers/usb/dwc3/gadget.c                     |  2 +-
 6 files changed, 81 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/hisi,dwc3.txt

-- 
2.17.1

