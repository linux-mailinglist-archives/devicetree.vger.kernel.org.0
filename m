Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD43D5AEEBD
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 17:29:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239301AbiIFP25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 11:28:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240288AbiIFP2k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 11:28:40 -0400
Received: from madras.collabora.co.uk (madras.collabora.co.uk [46.235.227.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA336F5A1
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 07:39:25 -0700 (PDT)
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: sre)
        by madras.collabora.co.uk (Postfix) with ESMTPSA id 54E4B6601EB2;
        Tue,  6 Sep 2022 15:38:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
        s=mail; t=1662475109;
        bh=VxbOG2sadGEGRc4OdZfIwIpf3196HCUi9fT6eUHVLI0=;
        h=From:To:Cc:Subject:Date:From;
        b=QQlGyZ+uYUSlPfONQ78w2XAeqZATYW7uSVoxdj+AnMy0aJVxwZU2amdeUWpRjxg0u
         4W3qvz8gqRIwM+K4Vi3tpQro82XGgZMCHewuu7+76q6/kcP8qyxmHcyYlPdgsdgnBG
         cY9Olo3ukndWzzsRqiUtZ61370udsHmPW3Ya65xySfjDS+mcbO+gq6HyETsYsji2NU
         H7MVlPSM7oYT3T27jYBtzLYjgY96hTnWviHX/JbJ/LLZnw1lXT1trpfUp6jS8yvEVT
         Z+1PAruwd2OHyMDKbvO5OfYTlgV2WNwAM/3q1SEZTMiRXszB+NwxK07xUptoL020nh
         yPiRxyq2+RJfg==
Received: by jupiter.universe (Postfix, from userid 1000)
        id 394F2480165; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From:   Sebastian Reichel <sebastian.reichel@collabora.com>
To:     Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        kernel@collabora.com
Subject: [PATCHv3 0/6] RK3588 Power Domain Support
Date:   Tue,  6 Sep 2022 16:38:19 +0200
Message-Id: <20220906143825.199089-1-sebastian.reichel@collabora.com>
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

Hi,

This adds power domain support for the new RK3588(s) SoC
series. The series has been tested with ethernet on the
RK3588 EVB1 board.

Changes since PATCHv2:
 * https://lore.kernel.org/all/20220831182629.79255-1-sebastian.reichel@collabora.com/
   (Note: I accidently send PATCHv2 with an incorrect patch version)
 * Change license of DT header after message from Finley Xiao (Thanks!)
 * Add Lee Jones to Cc list for the MFD DT binding
 * Collected further Acked-by for DT bindings

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

