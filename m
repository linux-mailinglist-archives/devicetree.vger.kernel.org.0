Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C9C22B8C2D
	for <lists+devicetree@lfdr.de>; Thu, 19 Nov 2020 08:23:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725970AbgKSHUz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Nov 2020 02:20:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725964AbgKSHUz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Nov 2020 02:20:55 -0500
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B5D2C0613CF
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:20:55 -0800 (PST)
Received: by mail-pf1-x442.google.com with SMTP id g7so3608697pfc.2
        for <devicetree@vger.kernel.org>; Wed, 18 Nov 2020 23:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=VeNogQFTyx3LF5O/2cfNsVoiePim0AR7MhsERjqK/ns=;
        b=ZiM7KJz7Lpgq0C9mjy/5ilee6MZUJ67MLjE1HiVKCpfT9JQ0MrYSxmy+gNMfccSb7d
         PoxQ0LVr1SngyG3QfmVgxWwc/+Q/wP+aLJv/pj8Ao0kSxWxUz3QSxCX3ThrjYAN3cUdh
         ZwV867gfXuJolWb9wZOptHjWxX3zPvQyKq0FsGxgN6CItrR5JsB/0xkd4tJoA07gtxpM
         wLT5iTrjMr2+bvNerp2asFmzyNODZTny5UoODvtZ45bKqj8bImGbj4HqwhAAjOeNlf8L
         OUurTj2ybY5wzlNnE1fHwIz7+KpnzFy2NsUZm47hHc/81I4tQvfa0ioa4cQ0IEndMcxW
         ziwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=VeNogQFTyx3LF5O/2cfNsVoiePim0AR7MhsERjqK/ns=;
        b=WCltvl10VZGhckjuUVMCw9xwGFfYEKrNybkLsNMqDUtMaGt6tQmwUOub+NRmOIf2FK
         051F00fhUkoV/LC/6JDTpC9m2P3KlNTowVHIl/yuJqdcR5sS+5QJeKEKn1QFcLgJ4/vQ
         Ta9huNti/e9rH3EwiPeYn/JTeDbB+2vfTICPMAnZlXyj/GRRSd34POBhhQ/+tGt6F99Q
         eT0pcq/U2UrdszVA2UoWl2QAZ1+ctS2KfzeoI9k87Rvb1sKKQsCM78nYcz28x9T29pt4
         9KWAjU+OiR34w644+7aAmQs38HVyIsG0ZT+GX3poIjXKG6Cap8SwATHhGKnvJ5YYgUbm
         O1pw==
X-Gm-Message-State: AOAM531xQHRuFuphUbeEWWLOXDCqCOIqRKEHFgt5aJchwyc+occUTReD
        6xVcK2FANZbn+vSpEjEXmIY=
X-Google-Smtp-Source: ABdhPJzMaMitdvAYi4PSDQkGtBbDVyLCOm1XDudWrVITjJ1OmwPXbwhk6371aghpedJAKSR9SsDgjg==
X-Received: by 2002:a17:90a:5c82:: with SMTP id r2mr3001798pji.69.1605770454634;
        Wed, 18 Nov 2020 23:20:54 -0800 (PST)
Received: from localhost.localdomain ([45.124.203.19])
        by smtp.gmail.com with ESMTPSA id s145sm28067565pfs.187.2020.11.18.23.20.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Nov 2020 23:20:53 -0800 (PST)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>
Cc:     Lancelot Kao <lancelot.kao@fii-usa.com>,
        Fran Hsu <Fran.Hsu@quantatw.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/5] ARM: dts: Nuvoton device trees
Date:   Thu, 19 Nov 2020 17:50:33 +1030
Message-Id: <20201119072038.123046-1-joel@jms.id.au>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series collects the device trees we have in the OpenBMC kernel tree
and submits them for inclusion in the mainline kernel.

Note that some nodes are removed for parts of the NPCM SoC that are not
yet in the mainline dtsi.

While the patches have been reviewed on the OpenBMC list already, this
is a chance to check that they are okay to merge upstream. Please respond
to this mail and I will submit for 5.11.

Fran Hsu (2):
  ARM: dts: nuvoton: Add Quanta GSJ BMC pinctrl
  ARM: dts: nuvoton: Add Quanta GSJ BMC

Lancelot Kao (1):
  ARM: dts: nuvoton: Add Fii Kudo system

Tomer Maimon (2):
  ARM: dts: nuvoton: Add Nuvoton NPCM730 device tree
  ARM: dts: nuvoton: Add NPCM7xx RunBMC Olympus Quanta machine

 arch/arm/boot/dts/Makefile                    |    5 +-
 .../boot/dts/nuvoton-npcm730-gsj-gpio.dtsi    |  477 ++++++++
 arch/arm/boot/dts/nuvoton-npcm730-gsj.dts     |  490 ++++++++
 arch/arm/boot/dts/nuvoton-npcm730-kudo.dts    |  826 +++++++++++++
 arch/arm/boot/dts/nuvoton-npcm730.dtsi        |   44 +
 ...nuvoton-npcm750-runbmc-olympus-pincfg.dtsi |  517 ++++++++
 .../dts/nuvoton-npcm750-runbmc-olympus.dts    | 1052 +++++++++++++++++
 7 files changed, 3410 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm730-gsj-gpio.dtsi
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm730-gsj.dts
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm730-kudo.dts
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm730.dtsi
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm750-runbmc-olympus-pincfg.dtsi
 create mode 100644 arch/arm/boot/dts/nuvoton-npcm750-runbmc-olympus.dts

-- 
2.29.2

