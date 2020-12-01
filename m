Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D86B82CA423
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 14:47:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387919AbgLANoY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Dec 2020 08:44:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727702AbgLANoY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Dec 2020 08:44:24 -0500
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com [IPv6:2607:f8b0:4864:20::541])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4547BC0613D6
        for <devicetree@vger.kernel.org>; Tue,  1 Dec 2020 05:43:38 -0800 (PST)
Received: by mail-pg1-x541.google.com with SMTP id w4so1198450pgg.13
        for <devicetree@vger.kernel.org>; Tue, 01 Dec 2020 05:43:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IkSu8cOxrJeXk2IOxGlsju6Rx6kE3VnLWo/bGlavpVg=;
        b=K8H5ts0UpSYaUeP2AKhudXY27BXqCNe5Ycflq09qZZOmIlMYps+H7RCe9xYhL7hEZm
         fxBEdLxy/mo/3htJ5iSO7JM2b9T3a+rLm85Ev1aMFKAqQVLaDXTASo/qoCBlLz0EI7mg
         5c1Hsj9jXgKyiVGh+7thXN7fE3+Y97Y3NriAA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=IkSu8cOxrJeXk2IOxGlsju6Rx6kE3VnLWo/bGlavpVg=;
        b=hdSHlqBJjDD0OcEXS4j2XxotGwRTS4aX3gIOsaPWB4AEnZWLNcmlD6bWPJnJAz5VaZ
         F41wGMk3uartQufl0h+jIzC2xXF3v33wW0RsOkdd0MwBruwJJ4aXp/UQ8fZ8K8EW6kkJ
         /pC4ekJNsif4px/Cx6YNHUnnvb94hldYCsD8Own36XrT0U40PXflrJsB0b1p4pBKJQaI
         a37TDq8VFWyrLZVSVzOWf5vbo6kb5TlwrgtRmFXjFtYtbTQC+o1syLYO3exy028WfGsS
         K/dFphgPzFZeaBI0IFV6d46CjS47YD8I8iGKqReiXxeNmtbSdR4m3QEqo/W5Q8qo3lzn
         X9TA==
X-Gm-Message-State: AOAM530mr7rIMwUO3vXgsBySWNXVa6JozCNUTMP2CmLeC1Y0X0hlXHyo
        5HUbR6JM+7lTYa1D2RXXxpqZaNo8GsjW/A==
X-Google-Smtp-Source: ABdhPJztNDi0pOH7QULtZg4/rCPDCHM4rfyzQeOdWfYLRZdaSFqJboQ1cxTX73Et8D1R9mAVdLkcgA==
X-Received: by 2002:a62:445:0:b029:19c:162b:bbef with SMTP id 66-20020a6204450000b029019c162bbbefmr1288016pfe.40.1606830217495;
        Tue, 01 Dec 2020 05:43:37 -0800 (PST)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id g14sm2839248pji.32.2020.12.01.05.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Dec 2020 05:43:36 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        robh@kernel.org, w@1wt.eu, daniel@0x0f.com
Subject: [PATCH v2 00/10] ARM: mstar: Add basic support for i2m and SMP
Date:   Tue,  1 Dec 2020 22:43:20 +0900
Message-Id: <20201201134330.3037007-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sorry for spamming this. I wanted to fix the DT parts
before anyone spent time looking at the DT related commits
in v1.

This series adds basic support for the infinity2m series
of chips. For now the SigmaStar SSD202D which is a dual
Cortex A7 in a QFN128 package.

These chips share most of the same hardware with the
currently supported infinity, infinity3 and mercury5
chips.

Changes since v1:

- Based on Arnd's feedback[0] there is now "mstar,smpctrl" as the 
  most generic compatible string for the smp control registers 
  and a more specific "sstar,ssd201" (yes sstar is right, this is
  a SigmaStar chip) string that is good for the SSD201 and SSD202D
  chips.

- Small code clean ups: remove initialiser for smpctrl, remove unneeded
  #ifdef CONFIG_SMP, make the smp_operations struct static and const.

0 - https://lore.kernel.org/linux-arm-kernel/CAK8P3a2MC5m4PdmXnwjGw_oZinKU93LP+eYQ8qaCmH4EesH0Bw@mail.gmail.com/

Daniel Palmer (10):
  dt-bindings: mstar: Add binding details for mstar,smpctrl
  dt-bindings: vendor-prefixes: Add honestar vendor prefix
  dt-bindings: mstar: Add Honestar SSD201_HT_V2 to mstar boards
  ARM: mstar: Add infinity2m support
  ARM: mstar: Add common dtsi for SSD201/SSD202D
  ARM: mstar: Add chip level dtsi for SSD202D
  ARM: mstar: Add dts for Honestar ssd201htv2
  ARM: mstar: Add smp ctrl registers to infinity2m dtsi
  ARM: mstar: Wire up smpctrl for SSD201/SSD202D
  ARM: mstar: SMP support

 .../bindings/arm/mstar/mstar,smpctrl.yaml     | 40 +++++++++++++++
 .../devicetree/bindings/arm/mstar/mstar.yaml  |  6 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
 arch/arm/boot/dts/Makefile                    |  1 +
 .../mstar-infinity2m-ssd202d-ssd201htv2.dts   | 25 ++++++++++
 .../boot/dts/mstar-infinity2m-ssd202d.dtsi    | 14 ++++++
 .../boot/dts/mstar-infinity2m-ssd20xd.dtsi    | 12 +++++
 arch/arm/boot/dts/mstar-infinity2m.dtsi       | 22 +++++++++
 arch/arm/boot/dts/mstar-v7.dtsi               |  2 +-
 arch/arm/mach-mstar/mstarv7.c                 | 49 +++++++++++++++++++
 10 files changed, 172 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/arm/mstar/mstar,smpctrl.yaml
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m-ssd202d-ssd201htv2.dts
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m-ssd202d.dtsi
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m-ssd20xd.dtsi
 create mode 100644 arch/arm/boot/dts/mstar-infinity2m.dtsi

-- 
2.29.2

