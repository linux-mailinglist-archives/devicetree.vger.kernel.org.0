Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E5992E1B54
	for <lists+devicetree@lfdr.de>; Wed, 23 Dec 2020 12:05:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728261AbgLWLE7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Dec 2020 06:04:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728216AbgLWLE6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Dec 2020 06:04:58 -0500
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30B12C0613D3
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 03:04:18 -0800 (PST)
Received: by mail-pf1-x42c.google.com with SMTP id x126so10173399pfc.7
        for <devicetree@vger.kernel.org>; Wed, 23 Dec 2020 03:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9wr04wRtfr+9xAJATRoyW0Odw47YG07e8A4tfkmKY6o=;
        b=la+BDoB97R8Zm2+gkZTx0LdGGdRFU5HMRB8H7Q/qdsGyuyLFPsb2rf0BHO9Oa02td3
         +0FLQP0BEYMmqcaqjbConn9GwLnFpkYdlmR2xa0KcOMRTq9E8beL/mvQtC+AoHqNLtQO
         5pw3ql63taEt54JevUkXkuZnwSxy76szfH7rU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9wr04wRtfr+9xAJATRoyW0Odw47YG07e8A4tfkmKY6o=;
        b=thIhVGswqbCfsgin5qXQhQMll5nXISmFqKJ59/CL2cagD+MBZYtU+0eAXdEt2+AXOd
         DSj9MGcBeY3t/64oyuQ5LQxEHxm8FPjaK0Ue4pLwgFVQ/2nIb1u01ABpl2TZwKAEyjE8
         GvJuf7fcJjeqroXxveZWtqe4U1PbsNeXe8qQJXaBOlfrTR1IaOaGVgn9wUmKxuL67CN9
         tB1X5JJ32ZRSSmN2Sy3x9rfSVXX/YzB/DftDfxMofdvvLeYZiHsnUOYEGpW4omWGmcW6
         3SpRItkNtkOQUyxZ2P4n6bKVmpFIDMrkRNS5ADipXzoEToiYF6smfkdEhXg0RALVQYy0
         vVig==
X-Gm-Message-State: AOAM533xvjfjpYpwggBmGfsffw2+eBwFbFi34nQnfhzyeIQRt1+NtNSN
        5OKE24VhcvehgKcJSXRrMIv3JQ==
X-Google-Smtp-Source: ABdhPJy11noMdaqdZLEFb6GtB8b60kIlaNhnZT03fFHUBdVURtMnO5Z2Ij68gj6AlDw3ZSquz7Pbvw==
X-Received: by 2002:aa7:9501:0:b029:155:3b11:d5c4 with SMTP id b1-20020aa795010000b02901553b11d5c4mr4555036pfp.76.1608721457374;
        Wed, 23 Dec 2020 03:04:17 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a884:eca4:40c1:8784:571c])
        by smtp.gmail.com with ESMTPSA id 3sm23275909pfv.92.2020.12.23.03.04.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Dec 2020 03:04:16 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: [PATCH v3 0/6] arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini
Date:   Wed, 23 Dec 2020 16:33:37 +0530
Message-Id: <20201223110343.126638-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is the initial series to support Engicam i.Core MX8M Mini SOM
and it's associated carrier board dts(i) support.

i.Core MX8M Mini is an EDIMM SOM based on NXP i.MX8MM from Engicam.

i.Core MX8M Mini needs to mount on top of Engicam baseboards for
creating complete platform boards.

Possible baseboards are,
- EDIMM2.2
- C.TOUCH 2.0

Changes for v3:
- don't maintain common nodes and include it, if no feature diff
- keep min/max regulator hoping
- collect Krzysztof r-b
- fix dt-bindings

Any inputs?
Jagan.

Jagan Teki (6):
  arm64: defconfig: Enable REGULATOR_PF8X00
  dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini C.TOUCH 2.0
  arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini SoM
  arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini C.TOUCH 2.0
  dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
  arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit

 .../devicetree/bindings/arm/fsl.yaml          |   8 +
 arch/arm64/boot/dts/freescale/Makefile        |   2 +
 .../dts/freescale/imx8mm-engicam-ctouch2.dtsi |  82 +++++++
 .../freescale/imx8mm-engicam-edimm2.2.dtsi    |  82 +++++++
 .../freescale/imx8mm-icore-mx8mm-ctouch2.dts  |  21 ++
 .../freescale/imx8mm-icore-mx8mm-edimm2.2.dts |  21 ++
 .../dts/freescale/imx8mm-icore-mx8mm.dtsi     | 232 ++++++++++++++++++
 arch/arm64/configs/defconfig                  |   1 +
 8 files changed, 449 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-engicam-ctouch2.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-engicam-edimm2.2.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-ctouch2.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm.dtsi

-- 
2.25.1

