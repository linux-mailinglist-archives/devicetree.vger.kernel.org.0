Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B3D37557FAC
	for <lists+devicetree@lfdr.de>; Thu, 23 Jun 2022 18:23:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232173AbiFWQXg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Jun 2022 12:23:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232199AbiFWQXV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Jun 2022 12:23:21 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 180FA381A2
        for <devicetree@vger.kernel.org>; Thu, 23 Jun 2022 09:23:20 -0700 (PDT)
Received: from jupiter.universe (unknown [95.33.159.255])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id C751666017E1;
        Thu, 23 Jun 2022 17:23:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1656001398;
        bh=Lei1cNU5r5uoxZWN//akVgMG8Tm8ZaXeftFmYYRlE+s=;
        h=From:To:Cc:Subject:Date:From;
        b=QP5ogNh/QVJ0rn26VZgN/0a2Z3JW/3ii+95DwLNRgjCKnhmh3a0J2IMvjntKKxZGX
         isKN4FJ2pDmfBCwPj48UcMfY4UZwoSADa2YTfqZfPtxiQAGlDMylbs3IKv++15kHAH
         AKQpRIXbluk7RunuvitO5Hn4H40/uC5MVMs5VZ5j5fNiJtELqyFoYqIHhfdOEfr0jq
         LZKG2rVGQly7A7u14DUzADOGlvNHWf4kW8U4Ds7gD0jTH/zqMe1y+cKbUmvr9+U36E
         68uehlm8FoRQQeXlAJ/w7uJDqv9NoOC6NNeU4hGvBNHOEjkupwyLqUhcHA6SF27USM
         4nIUMuvc2oNBA==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 6C752480122; Thu, 23 Jun 2022 18:23:16 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com
Subject: [PATCH 0/6] RK3588 Power Domain Support
Date:   Thu, 23 Jun 2022 18:23:03 +0200
Message-Id: <20220623162309.243766-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds power domain support for the new RK3588(s) SoC
series. The series has been tested with ethernet on the
RK3588 EVB1 board.

-- Sebastian

Elaine Zhang (1):
  soc: rockchip: power-domain: do not enable PD

Finley Xiao (2):
  dt-bindings: add power-domain header for rk3588
  soc: rockchip: power-domain: add power domain support for rk3588

Sebastian Reichel (3):
  dt-bindings: arm: rockchip: add rk3388 compatible string to pmu.yaml
  dt-bindings: power: rockchip: Add bindings for rk3588
  dt-bindings: mfd: syscon: Add rk3388 QoS register compatible

 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../devicetree/bindings/mfd/syscon.yaml       |   1 +
 .../power/rockchip,power-controller.yaml      |   2 +
 drivers/soc/rockchip/pm_domains.c             | 101 +++++++++++++++---
 include/dt-bindings/power/rk3588-power.h      |  69 ++++++++++++
 5 files changed, 162 insertions(+), 13 deletions(-)
 create mode 100644 include/dt-bindings/power/rk3588-power.h

-- 
2.35.1

