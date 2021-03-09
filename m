Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 475E0331C48
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 02:23:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbhCIBWc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 20:22:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229718AbhCIBWC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 20:22:02 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D5E3C06174A
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 17:22:02 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id p15so18523342ljc.13
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 17:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=u72o1/hVsLzd4qHsvaFn3xtZxvDhEZWMFBnIIAXY3PE=;
        b=KAYnSojp13AUBi8npUZKXjWi3sakeQk4nSGke+MRxXW9yU4r7g5sZwgCgMb57esmt+
         y65/hK+vlDiPyQwsLuSNAfYfTW1nm7mDcnB+rW4voTl79f4uNKboBLcnzjpyNuptlec7
         90gm7x5WrqAbUj5U9wJaM78WtBWHDX1OJUV7pp8Mo/X16ny1liHgqgxov9E9UjgPiIzP
         9cZJdUR66DPmTsrczS/yRpfNphberQZyN3snXUpTTjmo96jW+Du6Ju2MoGI6VfGqdveu
         amJQsDo+Ar08IlCPO545NRRfhUmwANell1NXKZBI06ZoJGowKBKv84QeGqtiPjNI2e2e
         sr5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=u72o1/hVsLzd4qHsvaFn3xtZxvDhEZWMFBnIIAXY3PE=;
        b=PGsJsCgAphFQuySNEpc+9TbOJ2EG9LDsFMhQdwZUcAgW44+apVEA6W0/K/n2t632VW
         jvPMQUQTNiqIyVCXzA9EDUj6pGgSxjIX3CzFOP81Hi+lGKa1pNuKiHUDHoQOYyp9alyT
         jXOv5610hL0rqyMyak4+Z/MtW762MvgQ6jn4wgcr/SyWAdV9dFG+Iipy3M+i524CK9yi
         TVY8aqM6XdpRA7nGXPZd0HdX0l4dxFL1kFKzV8w66ovAuZXz1YqA+4TaEJ+kr6+YjuhA
         s7dDQoPnsZm0yn63ZAHNPjOjsIeLfbeQfzYzIrZlXb79Hx1nKfwwMx7NIrU/TdauDe8+
         5W8A==
X-Gm-Message-State: AOAM530NNGUsiWJFXh0GkYNiQBxvt5naXjoxIpXkfwCKi+aWf9+8mPH3
        XHMcllwCm+lAgSw83WnoQRti0b2TYYa+6//8
X-Google-Smtp-Source: ABdhPJy2BXo+Pt/hZX3NuUDcSGuVoIYkjZKlJOv2K14Kcco8BLlu2vrSOzG5LpPQBMwXtVPvvE9BKA==
X-Received: by 2002:a2e:809a:: with SMTP id i26mr15201430ljg.357.1615252920919;
        Mon, 08 Mar 2021 17:22:00 -0800 (PST)
Received: from boger-laptop.lan (81.5.99.6.dhcp.mipt-telecom.ru. [81.5.99.6])
        by smtp.gmail.com with ESMTPSA id o11sm1538395lfu.157.2021.03.08.17.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 17:22:00 -0800 (PST)
From:   Evgeny Boger <boger@wirenboard.com>
To:     Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org
Cc:     Evgeny Boger <boger@wirenboard.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 0/2] sun8i: r40: second ethernet support
Date:   Tue,  9 Mar 2021 04:21:14 +0300
Message-Id: <20210309012116.2944-1-boger@wirenboard.com>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series adds support for two Ethernet ports on Allwinner R40.

R40 (aka V40,A40i,T3) has two different Ethernet IPs called EMAC and GMAC.
EMAC only support 10/100 Mbit in MII mode, while GMAC support both 10/100
(MII) and 10/100/1000 (RGMII).

In contrast to A10/A20 where GMAC and EMAC share the same pins making EMAC
somewhat pointless, on R40 EMAC can be routed to port H.
Both EMAC (on port H) and GMAC (on port A) can be then enabled at the same 
time, allowing for two ethernet ports.

Tested on custom A40i board with two IP101GRI PHYs in MII mode.

Changes in v2:
 - EMAC reset is no longer optional on R40
 - Add a new DT compatible string for R40 EMAC
 - Deassert reset line before enabling the clock
 - minor fixes: formatting, DT node order, leftover pinctrl props


Evgeny Boger (2):
  net: allwinner: reset control support
  dts: r40: add second ethernet support

 .../net/allwinner,sun4i-a10-emac.yaml         | 11 +++-
 arch/arm/boot/dts/sun8i-r40.dtsi              | 59 +++++++++++++++++
 drivers/net/ethernet/allwinner/sun4i-emac.c   | 65 +++++++++++++++++--
 3 files changed, 129 insertions(+), 6 deletions(-)

-- 
2.17.1

