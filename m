Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8C75C26FAE9
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 12:49:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726159AbgIRKt5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 06:49:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726121AbgIRKt4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 06:49:56 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8DE1C06174A
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 03:49:56 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id r19so2805174pls.1
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 03:49:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S8srl7JTOHY4H9N4k8WT8uX/+x+VBfYA5c5ucCNG/qc=;
        b=JXLL7mSrrYXNp0hvx4cxXl6T/RMwuV17wRZstxrboAkz6rkZtK/X8mrs8pgpZXUJUJ
         qUdwyx4YlBsqjgY6//zXsxvyJ7THeM2iDLMkBjXnZR3pHeo8bEfxy4NETqJ8tA7vIcAC
         kz5gI16PzSbLcSFcP79kl3pBVy3Olqe7bTBf0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=S8srl7JTOHY4H9N4k8WT8uX/+x+VBfYA5c5ucCNG/qc=;
        b=p+jzH5/NoI7/d6dzjNvhUj4rrkbZQuqRcmnQULaJwkqLvlrG7dhEhwH3iHXp9d2RT+
         yP9IRhcfwETOVY5Yc4M7z7H0O/3XSE+TPMUkjmq+we5iyk69B/4frQ965jRkfJrbikN/
         o2OhRvqeMgA0lT6N8PW9PeeuceL+uWQ0uobDNUpPEl89n4Z3AQ1jEQzV+V84tpSy64uT
         VnfoN/DMfDiDoE/dV8Z9OLnYFc1AbgFeHmB5VvjgoC7QUD2CsgqGTIqAiGoED2WMk3gS
         lITBAhboyNsUPyktdcaDIYezDvEwPrP6bb2EMACge8bKl2sYCU+6c1TmUlo+0rUtXSlt
         v/hQ==
X-Gm-Message-State: AOAM532j0R4wwFw3Y3AQ2cfBebGxkCyQHWpnfZtenUOdCAw1Kie6h87D
        1/KkAGIcqTCE6gAYr8UPVeXh3w==
X-Google-Smtp-Source: ABdhPJyD97UGHfsogcOBzNaFIl0HRacR4ZV4wrQp6+MgiwWtlCWJ8oEp9uqEA+QBSn4ljKsYNHaMmQ==
X-Received: by 2002:a17:90a:648d:: with SMTP id h13mr8805516pjj.151.1600426196261;
        Fri, 18 Sep 2020 03:49:56 -0700 (PDT)
Received: from shiro.work (p532183-ipngn200506sizuokaden.shizuoka.ocn.ne.jp. [153.199.2.183])
        by smtp.googlemail.com with ESMTPSA id 131sm2857634pfy.5.2020.09.18.03.49.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 03:49:55 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, mark-pk.tsai@mediatek.com,
        arnd@arndb.de, maz@kernel.org, linux-kernel@vger.kernel.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH 0/3] ARM: mstar: wire up interrupt controllers
Date:   Fri, 18 Sep 2020 19:49:46 +0900
Message-Id: <20200918104949.3260823-1-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mark-PK Tsai's driver for the MStar interrupt
controller should be going into 5.10[0].

This small series selects the driver when building
support for MStar/SigmaStar Arm v7 SoCs, adds the
instances of it to the base dtsi and wires up the
interrupt for pm_uart.

0 - https://lore.kernel.org/linux-arm-kernel/87lfhdr7l6.wl-maz@kernel.org/

Daniel Palmer (3):
  ARM: mstar: Select MStar intc
  ARM: mstar: Add interrupt controller to base dtsi
  ARM: mstar: Add interrupt to pm_uart

 arch/arm/boot/dts/mstar-v7.dtsi | 20 ++++++++++++++++++++
 arch/arm/mach-mstar/Kconfig     |  1 +
 2 files changed, 21 insertions(+)

-- 
2.27.0

