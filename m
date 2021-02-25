Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DDC383256A5
	for <lists+devicetree@lfdr.de>; Thu, 25 Feb 2021 20:28:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234234AbhBYT2A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Feb 2021 14:28:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233148AbhBYTZn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Feb 2021 14:25:43 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6CE8C061786
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:25:02 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id d2so4155338pjs.4
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 11:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uZTtKUM3ywIyFpIjcIgukbnF3keZtJpSlDzhBl/MLhA=;
        b=JZvW3UwGJ2b4wGpTvl5DULBTFsVEMTGyBwd4kawjDGipjTGpVn81s5qjcgvhuC/VhF
         EsDuBLvbr2tSiPLOj3O0iP96I+ez1Ji0dAjTaLDDJUr00lOX8k8WWf2Ls2eO4DNhldga
         BvLLrkeVCbAUGq7YDDDa3gHf2AVCEIxxrsDPY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uZTtKUM3ywIyFpIjcIgukbnF3keZtJpSlDzhBl/MLhA=;
        b=PZWpzAtKXD/qJPbaToCUpWy5a7hNXA/0trbcZHs5vhTWwlUCE32z3SczPbBeGLAGYv
         bAZXwg5HNBX3sMr4gvksCpuGEtoeG1j+/hUd0U9Sm+K986NxH4/4mnZujQTMr1HVlN4F
         /V62Ul+RDeS9OsbI8kMEWTy7VTPxCidkFUuTQkF6LilhKrbCG0PpvK1AtZSRUGDLpQIH
         5Z2u8w5ltkDLal1s0OYSeIOv5+lTs1MGE7bWGfl6DNoSfqpobwcVb1JjZevLE8PDoU1m
         Fy86TR+8Ekfi2ZWs1Tm1QM0Vd/OECLZmP2MrmFA3NstIflMI713/SoD04DeQmb624GUG
         VPQw==
X-Gm-Message-State: AOAM53188T1dnkAr8HV8iGEn9LtpJjIwOlfZ5pVM+HYCNgQxaKqGHcvO
        1euGHSDdII0Sn2UPt2pea9AU8Q==
X-Google-Smtp-Source: ABdhPJwVDk5EdFhPslHl1zSJjacq3zIWPjAV0NC0NKJryJoi1FWfSSIfwd3CEKhHrc9CiFKQhEstEg==
X-Received: by 2002:a17:90b:1808:: with SMTP id lw8mr4578361pjb.203.1614281102335;
        Thu, 25 Feb 2021 11:25:02 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([103.161.30.220])
        by smtp.gmail.com with ESMTPSA id c78sm7025787pfc.212.2021.02.25.11.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 11:25:01 -0800 (PST)
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
Subject: [PATCH v4 0/5] arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini
Date:   Fri, 26 Feb 2021 00:53:59 +0530
Message-Id: <20210225192404.262453-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Patch series for Engicam i.Core MX8M Mini SOM and it's associated 
carrier board dts(i) support.

Changes for v4:
- rebase on linux-next
- fixed Krzysztof comments
Changes for v3:
- don't maintain common nodes and include it, if no feature diff
- keep min/max regulator hoping
- collect Krzysztof r-b
- fix dt-bindings

Jagan Teki (5):
  dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini C.TOUCH 2.0
  arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini SoM
  arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini C.TOUCH 2.0
  dt-bindings: arm: fsl: Add Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit
  arm64: dts: imx8mm: Add Engicam i.Core MX8M Mini EDIMM2.2 Starter Kit

 .../devicetree/bindings/arm/fsl.yaml          |   8 +
 arch/arm64/boot/dts/freescale/Makefile        |   2 +
 .../freescale/imx8mm-icore-mx8mm-ctouch2.dts  |  97 ++++++++
 .../freescale/imx8mm-icore-mx8mm-edimm2.2.dts |  97 ++++++++
 .../dts/freescale/imx8mm-icore-mx8mm.dtsi     | 232 ++++++++++++++++++
 5 files changed, 436 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-ctouch2.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm-edimm2.2.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-icore-mx8mm.dtsi

-- 
2.25.1

