Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 873623225BF
	for <lists+devicetree@lfdr.de>; Tue, 23 Feb 2021 07:20:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230371AbhBWGT4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Feb 2021 01:19:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbhBWGTy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Feb 2021 01:19:54 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D5D5C061786
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 22:19:14 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id o38so11735592pgm.9
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 22:19:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5FL/F1gCFmBMP8+RfZ2tPc29BuH7DoO9TPApvWMpXrY=;
        b=sz3vP7AGKlQXyS2RDXmywvZUnQ5EhPaeq8Lu5rtj26+LhGxR0RMTZIe3o5BF05dO7F
         nKjGu3Dcm1sk1k1v9AxCeajyOq1w4y3qbGdQBJDI4VVqV4AHe1DiYMEB8Qmd4XU5kKr8
         V2pK2mJwNswP51/9JYngQraTpenSNLTD32PE0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5FL/F1gCFmBMP8+RfZ2tPc29BuH7DoO9TPApvWMpXrY=;
        b=pvcs/Zx+Bk7QRVhehVUhLxa0AM20SC9ZhidEL0b2rAPrGjicBc0MnUFEGCGQ3a7kbm
         3FkeLmti+CfpdV5SUH2zvVPxkGy+Qx6wyPG7/YffvuHgiLoBb6gjwZolKvDHB4zi7O51
         Q/4GJunsmuOwVcUv67KrxR3/adK9gWqzyUa0wMUY1ubnrUbGWFukIajlaW5ZMkQNSc2f
         F/eDKAdq/ptdvL21m2yqbK2rmpMa2Wb7lX3IPGXtH4QQwFuXpl5wTAZG94W/E6aneK+y
         p+xw6FR4a6v90a5Ff9x9ffnwHANagbEcVs/HuBkAMfcV8sfz5anNrrZHWZ5ys2iekMco
         zllA==
X-Gm-Message-State: AOAM530+13rfWtoS/2/0wwh9Mbwesw9bdcYGhYl/ofoLl8oON+fMI4ZZ
        dkZFle7vIJnti6H31jbYgwZVGwzLW5Ct8A==
X-Google-Smtp-Source: ABdhPJwJaNbUqhV3I7tQ+drfo40Dil/MozZwGwWntn9HWDo9ZR71eAj9kODrgi7GuJUdcXT2cj5HBw==
X-Received: by 2002:a62:7bc5:0:b029:1ed:62d5:31f7 with SMTP id w188-20020a627bc50000b02901ed62d531f7mr968575pfc.24.1614061153493;
        Mon, 22 Feb 2021 22:19:13 -0800 (PST)
Received: from shiro.work (p345188-ipngn200408sizuokaden.shizuoka.ocn.ne.jp. [124.98.97.188])
        by smtp.googlemail.com with ESMTPSA id n10sm20135169pgk.91.2021.02.22.22.19.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 22:19:13 -0800 (PST)
From:   Daniel Palmer <daniel@0x0f.com>
To:     devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        soc@kernel.org, sboyd@kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        w@1wt.eu, Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 0/8] ARM: mstar: cpupll
Date:   Tue, 23 Feb 2021 15:18:22 +0900
Message-Id: <20210223061830.1913700-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.30.0.rc2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds a scrappy driver for the PLL that generates
the cpu clock on MStar/SigmaStar ARMv7 SoCs.

Unfortunately there isn't much documentation for this thing
so there are few magic values and guesses.

This needs to come after the MPLL DT changes.

Daniel Palmer (8):
  dt-bindings: clk: mstar msc313 cpupll binding description
  clk: mstar: msc313 cpupll clk driver
  ARM: mstar: Add cpupll to base dtsi
  ARM: mstar: Link cpupll to cpu
  ARM: mstar: Link cpupll to second core
  ARM: mstar: Add OPP table for infinity
  ARM: mstar: Add OPP table for infinity3
  ARM: mstar: Add OPP table for mercury5

 .../bindings/clock/mstar,msc313-cpupll.yaml   |  45 ++++
 arch/arm/boot/dts/mstar-infinity.dtsi         |  34 +++
 arch/arm/boot/dts/mstar-infinity2m.dtsi       |   2 +
 arch/arm/boot/dts/mstar-infinity3.dtsi        |  58 +++++
 arch/arm/boot/dts/mstar-mercury5.dtsi         |  36 +++
 arch/arm/boot/dts/mstar-v7.dtsi               |   9 +
 drivers/clk/mstar/Kconfig                     |   7 +
 drivers/clk/mstar/Makefile                    |   1 +
 drivers/clk/mstar/clk-msc313-cpupll.c         | 228 ++++++++++++++++++
 9 files changed, 420 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/mstar,msc313-cpupll.yaml
 create mode 100644 drivers/clk/mstar/clk-msc313-cpupll.c

-- 
2.30.0.rc2

