Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0CF6237F459
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 10:47:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232133AbhEMIsg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 May 2021 04:48:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230338AbhEMIsf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 May 2021 04:48:35 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 725C6C06174A
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 01:47:24 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id z17so7081746wrq.7
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 01:47:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NbR6LZpjn0p+CsgB/c8ssaB45onKxOlNS+I/Rj113jM=;
        b=vuEY2ea7ftsfAAmaB3IqZ6IFzfC+9gw4IP6ojQM/KtwtS5EsmtfDtkBVWfTj/g8rya
         JnoxiB2yfkb+6LxPjx4iYkEsMRpBvxE2tQxu9iX4ZA95uidzTR1mL+YiwG0I0rFdt3hn
         BkWCK5ZbX8HEilHk6uWGXQlDkbg2tL2r6tWYcMJdrXKPuj+DU2oBG0r1rKNU6QxeXnXz
         212LxI7gQmvHAMGjCXL/PYiq5bBY5UHYRBORfej7QtQIPvYzAa4BkCjyLk5FlTtq3elv
         DjDzx+WyAmqB/+RVCsJo9P3NaEUdgiDN6ZwVqFUofC1jcAt6haCPRRM3joLoLvu8wVkc
         bZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NbR6LZpjn0p+CsgB/c8ssaB45onKxOlNS+I/Rj113jM=;
        b=FnRF02hYwVX344XgRDRmcXQ5U4pUF/nIhf5IDdUCoYB+fbbD58fqNbHuhpqoJ8OIKy
         HHzzujut57hvZ5nnK4RZFhKt0t+3sEqHgS288ejo5wSvHV9uUt3SXrqBHMFH9vuCAGPh
         5Qwo61WLaw7MZcNy2vMoDJeTgs1U7frSZomsib7P4VDTxnYEVmCI8H5TET87ujbr3Vjf
         BxToNVBzfGG4PLKi5c5ztLCoa5i1sBQN6u5pNORTuZg9QayTszuX9j+UNTk4XlA5HsAr
         BqqRjBojN2EcHX7Etwumw/+mG3mUYIqRPzs2MX0j66Pah/cOteS2DbtS8Wa4o3WZyHJ5
         69jw==
X-Gm-Message-State: AOAM5324GG+f3takShIhvsOlrZVCRc9DKDNuFqofuBeqvYC3wGr5dRBC
        1iU845NfuZn7AbdpSeS7g/LloQ==
X-Google-Smtp-Source: ABdhPJyn6F0ViLV18ovT7JVTe5p6KEB2umn0A4zCB0SV6Wv2ykZee0UMa4CSyK1ybijh6VF9i49Wbw==
X-Received: by 2002:a5d:6749:: with SMTP id l9mr8385277wrw.208.1620895643250;
        Thu, 13 May 2021 01:47:23 -0700 (PDT)
Received: from arch-thunder.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id h15sm1730282wmq.4.2021.05.13.01.47.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 01:47:22 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sebastian Siewior <bigeasy@linutronix.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v4 0/9] usb: isp1760: extend support for isp1763
Date:   Thu, 13 May 2021 09:47:08 +0100
Message-Id: <20210513084717.2487366-1-rui.silva@linaro.org>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Arm MPS3 FPGA prototyping board [0] have an isp1763 [1] as USB
controller.  There is already support for the isp1760 and isp1761 in
tree, this series extend the support also for the isp1763.

Move register access using regmap, remove some platform data and code,
refactor the mempool, use dr_mode to align to existing bindings, then
add the support for isp1763 host mode, add bindings files that did not
existed and at the end add also support for peripheral mode for
isp1763.

@Laurent and @Sebastian, I add both of you in the bindings files as
maintainers (it is a mandatory field)since you were the ones which
contributed with the initial code and peripheral code, let me know if
you are ok with it.  If yes I may send a follow up to add also entries
in MAINTAINERS file that it is also missing.

v3 [4] -> v4:
Rob Herring (bindings):
- add device controller interrupt
- correct additionalProperties field

v2 [3] -> v3:
kernel test bot:
- add select REGMAP_MMIO

v1 [2] -> v2:

kernel test robot:
- add two patches (1/9 and 3/9) to fix dozens of pre-existing sparse
  warnings so that this series does not introduce new ones.
  No sparse warning left.
- fix duplication of regmap fields

Laurent:
- move initializers from .h to .c
- change interrupt registers setup from field to one shot register
  setting (did not change hcd hw mode init because I think it did not
  make the difference and even avoid artifact around setting twice the
  register)

Rob test bot:
- fix suffix at compatible string to clean up warning in bindings

Cheers,
   Rui

[0]: https://developer.arm.com/tools-and-software/development-boards/fpga-prototyping-boards/mps3
[1]: https://media.digikey.com/pdf/Data%20Sheets/ST%20Ericsson%20PDFs/ISP1763A.pdf
[2]: https://lore.kernel.org/linux-devicetree/20210504101910.18619-1-rui.silva@linaro.org/
[3]: https://lore.kernel.org/linux-usb/20210511085101.2081399-1-rui.silva@linaro.org/
[4]: https://lore.kernel.org/linux-usb/20210512090529.2283637-1-rui.silva@linaro.org/

Rui Miguel Silva (9):
  usb: isp1760: fix strict typechecking
  usb: isp1760: move to regmap for register access
  usb: isp1760: use relaxed primitives
  usb: isp1760: remove platform data struct and code
  usb: isp1760: hcd: refactor mempool config and setup
  usb: isp1760: use dr_mode binding
  usb: isp1760: add support for isp1763
  dt-bindings: usb: nxp,isp1760: add bindings
  usb: isp1763: add peripheral mode

 .../devicetree/bindings/usb/nxp,isp1760.yaml  |   69 ++
 arch/arm/boot/dts/arm-realview-eb.dtsi        |    2 +-
 arch/arm/boot/dts/arm-realview-pb1176.dts     |    2 +-
 arch/arm/boot/dts/arm-realview-pb11mp.dts     |    2 +-
 arch/arm/boot/dts/arm-realview-pbx.dtsi       |    2 +-
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi       |    2 +-
 arch/arm/boot/dts/vexpress-v2m.dtsi           |    2 +-
 drivers/usb/isp1760/Kconfig                   |    5 +-
 drivers/usb/isp1760/isp1760-core.c            |  513 ++++++++-
 drivers/usb/isp1760/isp1760-core.h            |   44 +-
 drivers/usb/isp1760/isp1760-hcd.c             | 1021 ++++++++++++-----
 drivers/usb/isp1760/isp1760-hcd.h             |   57 +-
 drivers/usb/isp1760/isp1760-if.c              |   41 +-
 drivers/usb/isp1760/isp1760-regs.h            |  435 ++++---
 drivers/usb/isp1760/isp1760-udc.c             |  250 ++--
 drivers/usb/isp1760/isp1760-udc.h             |   13 +-
 include/linux/usb/isp1760.h                   |   19 -
 17 files changed, 1769 insertions(+), 710 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/usb/nxp,isp1760.yaml
 delete mode 100644 include/linux/usb/isp1760.h

-- 
2.31.1

