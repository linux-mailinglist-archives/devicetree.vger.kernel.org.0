Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F19143E284D
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 12:12:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244892AbhHFKMb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 06:12:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244766AbhHFKM1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 06:12:27 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F212C061798
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 03:12:11 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id k9so12328775edr.10
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 03:12:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=maEr7GgR6cSiBFVlKBozSqDVYrZqVGSThMPhE+brgU0=;
        b=NDCPY08xIjErW+6krceuHXAub3Wqk1f1DEYpZ4sCUFv0oz/xIN/ruEDFueVB7B4+kM
         tMOHsWaesd0sRirmkp6hfRKQmc8V3sAblEvEgakVbEp2F/lPoQEYhCxAyFGQ4QidFBDU
         EW7VP5apQPXQagfzOujWpIK8GpTqorl1WfgZEhhHBNtRvzE7WVAlN2in5/C+gXOrzdV+
         enJ7l7ahNx3RvC0bYvvFn30E6oKW/XrVPxPsbIUjbz9FfqyxS22quqr3NcrglmvA0Zxx
         8LyvmN7iODHrgidXueyAvgp9BZBpMtU/MSJ7jwKwRnMu59JBnm4TMwJbW6JnZwV/kSRX
         Pzcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=maEr7GgR6cSiBFVlKBozSqDVYrZqVGSThMPhE+brgU0=;
        b=CTcbhKfasBLOCM2IPAR9vOWpMmj1GUP2Z9A+mjsImm83HF0QHoZFxQsRAGDUtlBrqZ
         lA1UxmBaDacuS6L/5ohGEWSCuNTDaJlrvCTiQpFO6ddFlZSm9WHWrMF2hoWrb+TKETTJ
         4TviPdtWfQatWB3M9En98+y4Hh+mg5/uyglZ/5qMLK9b5Ql8nlFIDG0GYXJOe4LQ4GUn
         qbl1Wya/RcIyg5viuFaSBQ0c219qv1bKUf9/FNclquv9vE58oNieRBoNtKIhygcJ2+z9
         3fRIvB3pFLnOjYclVXq5ZiDqL0TFG6O02PlOSnUzoCa1afAsxMVT97ormOINrZUEEM3r
         4z4w==
X-Gm-Message-State: AOAM53264r3vnCfQtm5MOZ3umi4hMMKmk98giGwjoY11uhPPyDcZga0N
        OOksqOWd5ax5aamhCCvPGEzoiQ==
X-Google-Smtp-Source: ABdhPJyk27Tr8jM9KuHDtmOgXZb6SB8YwaS/1sE6FWInUmr2/ciWyqD62EQbgAkeyZXPwbzEph+s+A==
X-Received: by 2002:aa7:dbc8:: with SMTP id v8mr11654973edt.242.1628244730103;
        Fri, 06 Aug 2021 03:12:10 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id b25sm3707545edv.9.2021.08.06.03.12.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 06 Aug 2021 03:12:09 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Michael Walle <michael@walle.cc>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 0/2] arm64: zynqmp: Extend board description
Date:   Fri,  6 Aug 2021 12:12:06 +0200
Message-Id: <cover.1628244703.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

over years couple of drivers were upstream and it is time to sync it up.
On the top of it also adding new Kria boards which are using new overlay
infrastructure which check if that overlays can be applied to base DT file.

These two patches weren't applied the part of v2 series.
https://lore.kernel.org/linux-devicetree/cover.1623684253.git.michal.simek@xilinx.com/

Thanks,
Michal

Changes in v3:
- usb node name fix, remove undocumented properties reported by Michael Tretter
- Also remove status property from dwc3_0/1 nodes reported by Michael
  Tretter
- Move USB3 PHY properties from DWC3 node to USB node - reported by Manish
  Narani
- Fix led node name
- Fix compatible string for xlnx,zynqmp-sk-kv260-revA/Y/Z
- Fix headers alignment
- Move USB3 PHY properties from DWC3 node to USB node - reported by Manish
  Narani
- Change dtb names generated with dtbo
- Fix emmc comment style
-

Changes in v2:
- New patch in the series
- Use sugar syntax - reported by Geert
- Update copyright years
- Fix SD3.0 comment alignment
- Remove one newline from Makefile

Michal Simek (2):
  arm64: zynqmp: Enable xlnx,zynqmp-dwc3 driver for xilinx boards
  arm64: zynqmp: Add support for Xilinx Kria SOM board

 .../devicetree/bindings/arm/xilinx.yaml       |  31 ++
 arch/arm64/boot/dts/xilinx/Makefile           |  13 +
 .../boot/dts/xilinx/zynqmp-sck-kv-g-revA.dts  | 335 ++++++++++++++++++
 .../boot/dts/xilinx/zynqmp-sck-kv-g-revB.dts  | 318 +++++++++++++++++
 .../boot/dts/xilinx/zynqmp-sm-k26-revA.dts    | 289 +++++++++++++++
 .../boot/dts/xilinx/zynqmp-smk-k26-revA.dts   |  21 ++
 .../dts/xilinx/zynqmp-zc1751-xm015-dc1.dts    |   8 +-
 .../dts/xilinx/zynqmp-zc1751-xm016-dc2.dts    |   7 +
 .../dts/xilinx/zynqmp-zc1751-xm017-dc3.dts    |  14 +
 .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    |  14 +-
 .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    |   8 +-
 .../boot/dts/xilinx/zynqmp-zcu104-revA.dts    |   8 +-
 .../boot/dts/xilinx/zynqmp-zcu104-revC.dts    |   8 +-
 .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    |   8 +-
 .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    |   8 +-
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi        |  60 +++-
 16 files changed, 1129 insertions(+), 21 deletions(-)
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dts
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dts
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
 create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-smk-k26-revA.dts

-- 
2.32.0

