Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0C689325DEF
	for <lists+devicetree@lfdr.de>; Fri, 26 Feb 2021 08:07:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbhBZHEP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Feb 2021 02:04:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbhBZHEF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Feb 2021 02:04:05 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96FCFC06174A
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 23:03:23 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id 201so5651731pfw.5
        for <devicetree@vger.kernel.org>; Thu, 25 Feb 2021 23:03:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+j5qJuOZSbQysXD/JvLKk0ZQswOeC5SGkz/d6BdcFcg=;
        b=N2XLogZuLsxAgBn8YmeZBrAP87b2Ul4RMTTf5CT3klEH9Un+lFYDL8t2qz4GlaWOFP
         TSBNgirKvPcQ0ttYcHMluSYqirsjgDJiPo7v4m6CL9Iwb4ZMp6l1I7QXGikpBenmvKvK
         fE3ugSlT+/xBqvULXQLNlvp2rpaa8dk3BIChc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+j5qJuOZSbQysXD/JvLKk0ZQswOeC5SGkz/d6BdcFcg=;
        b=GLxSXjAd+I/HeLmss3P478hW11Y15yKzooLXHovy3jZhA4FDYkcU6pNcb5K9FdIOk/
         nZbZQVq04gTt4mLpvmMPRLPEhrTJj4NhvPzevNsHL6ZGfI8LYMGvNI7gwWSc1aTnsWLf
         lgNIJiiGrsaPUgwEf41LLImMBc63qX2GODgEeIaSyxxih43NdpkEd6y/B1tWIpetIgjS
         s3Fd4t9LJFkEaF6zINsuVVVUH8NbfcHSPC7a73lzVLX0xbuUU4FDxmxdTPP5AqWtIR2f
         DqmCWBh+juzXskFQya8DRp0s+Jn2SHDvwiy5JFdMG7igVGKBEFPoKXqMN5shgtEaZOB8
         dDdw==
X-Gm-Message-State: AOAM5323YdM7aFnx5sv3KTqeoudSBptxhay90O/uu9bkcluEJaSpcl68
        NP6NpeICy82Y7HgxR4nWJ5+a7Uw+bcQ+mw==
X-Google-Smtp-Source: ABdhPJwYBClGgFC8cYKGWzWdFhfQORrre5aTlESCiZ/M7eXTZMRntwBrV1DvM3urLS5FLfHk1E5oow==
X-Received: by 2002:a62:1e41:0:b029:1e6:fe13:b78e with SMTP id e62-20020a621e410000b02901e6fe13b78emr1911923pfe.26.1614323003138;
        Thu, 25 Feb 2021 23:03:23 -0800 (PST)
Received: from ub-XPS-13-9350.domain.name ([103.161.30.220])
        by smtp.gmail.com with ESMTPSA id f7sm7592156pjh.45.2021.02.25.23.03.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Feb 2021 23:03:22 -0800 (PST)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@st.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 00/10] ARM: dts: stm32: Add Engicam STM32MP1 SoM
Date:   Fri, 26 Feb 2021 12:32:54 +0530
Message-Id: <20210226070304.8028-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This is the initial series to support Engicam MicroGEA STM32MP1 and
i.Core STM32MP1 SoM and it's associated carrier board dts(i) support.

Changes for v2:
- fixed v1 comments
- add i.Core STM32MP1 SoM 

Jagan Teki (10):
  dt-bindings: arm: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0
  ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 SoM
  ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 board
  dt-bindings: arm: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 7" OF
  ARM: dts: stm32: Add Engicam MicroGEA STM32MP1 MicroDev 2.0 7" OF
  dt-bindings: arm: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0
  ARM: dts: stm32: Add Engicam i.Core STM32MP1 SoM
  ARM: dts: stm32: Add Engicam i.Core STM32MP1 C.TOUCH 2.0
  dt-bindings: arm: stm32: Add Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit
  ARM: dts: stm32: Add Engicam i.Core STM32MP1 EDIMM2.2 Starter Kit

 .../devicetree/bindings/arm/stm32/stm32.yaml  |  17 ++
 arch/arm/boot/dts/Makefile                    |   4 +
 .../stm32mp157a-icore-stm32mp1-ctouch2.dts    |  47 +++++
 .../stm32mp157a-icore-stm32mp1-edimm2.2.dts   |  47 +++++
 .../boot/dts/stm32mp157a-icore-stm32mp1.dtsi  | 195 ++++++++++++++++++
 ...157a-microgea-stm32mp1-microdev2.0-of7.dts | 154 ++++++++++++++
 ...32mp157a-microgea-stm32mp1-microdev2.0.dts |  55 +++++
 .../dts/stm32mp157a-microgea-stm32mp1.dtsi    | 147 +++++++++++++
 8 files changed, 666 insertions(+)
 create mode 100644 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-ctouch2.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1-edimm2.2.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-icore-stm32mp1.dtsi
 create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0-of7.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1-microdev2.0.dts
 create mode 100644 arch/arm/boot/dts/stm32mp157a-microgea-stm32mp1.dtsi

-- 
2.25.1

