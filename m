Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F10F5A85A2
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 20:31:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232756AbiHaSbf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 14:31:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232759AbiHaSbR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 14:31:17 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50960FE341
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 11:26:39 -0700 (PDT)
Received: from jupiter.universe (dyndsl-091-096-057-024.ewe-ip-backbone.de [91.96.57.24])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 2222E6601DE7;
        Wed, 31 Aug 2022 19:26:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1661970398;
        bh=4pQt5BtWVNf8Fup7IlMr45mg4gWqKsxHBcj9nchNGto=;
        h=From:To:Cc:Subject:Date:From;
        b=Jv4NT8A9HPTtuxnodSPXShoC4HuiX7+fKxO7ZDKI6GEzwA9E1jNEJwyAXf4jTK9Zi
         cbdKOXzzM6A18HusTGnrN2kC1SmSNVPED2PRSirQ8ya4rP5J7U2xKZgfxSLyKiVg0g
         czDKorJw4iApU2HId4PM6hh1ukUQCFjaVfArjjBh6xDBgmMcFfvPizZuadG9zNhUcc
         ZEXvTiXRadS5blXMyvP4C5y8IfIV7+MKrZQhVsHNYniyyrZpNsfHJwTteaD94vma5a
         MJkaCe+oD/ygnWyb9v++uiPVwf2cwSbJnYzED/aAdqoxg59Mtr39i0+NWcdxkkev7u
         SNH4ZbuF4DPrA==
Received: by jupiter.universe (Postfix, from userid 1000)
        id BEAF548015C; Wed, 31 Aug 2022 20:26:35 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com
Subject: [PATCH 0/6] RK3588 Power Domain Support
Date:   Wed, 31 Aug 2022 20:26:23 +0200
Message-Id: <20220831182629.79255-1-sebastian.reichel@collabora.com>
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

Unchanged:
 * DT header has not been dual licensed (no feedback from Rockchip)

Changes since PATCHv1:
 * https://lore.kernel.org/all/20220623162309.243766-1-sebastian.reichel@collabora.com/
 * Rebased to v6.0-rc1
 * Fixed typos when referencing rk3588
 * Collected Acked-by for the DT binding

-- Sebastian

Elaine Zhang (1):
  soc: rockchip: power-domain: do not enable PD

Finley Xiao (2):
  dt-bindings: add power-domain header for rk3588
  soc: rockchip: power-domain: add power domain support for rk3588

Sebastian Reichel (3):
  dt-bindings: arm: rockchip: add rk5388 compatible string to pmu.yaml
  dt-bindings: power: rockchip: Add bindings for rk3588
  dt-bindings: mfd: syscon: Add rk3588 QoS register compatible

 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../devicetree/bindings/mfd/syscon.yaml       |   1 +
 .../power/rockchip,power-controller.yaml      |   2 +
 drivers/soc/rockchip/pm_domains.c             | 101 +++++++++++++++---
 include/dt-bindings/power/rk3588-power.h      |  69 ++++++++++++
 5 files changed, 162 insertions(+), 13 deletions(-)
 create mode 100644 include/dt-bindings/power/rk3588-power.h

-- 
2.35.1

