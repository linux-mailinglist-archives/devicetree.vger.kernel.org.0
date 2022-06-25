Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6D57D55A97D
	for <lists+devicetree@lfdr.de>; Sat, 25 Jun 2022 13:39:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232661AbiFYLhQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Jun 2022 07:37:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232077AbiFYLhP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Jun 2022 07:37:15 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 530B616586
        for <devicetree@vger.kernel.org>; Sat, 25 Jun 2022 04:37:14 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MbBQU-1nXwGa3TTc-00bemk; Sat, 25 Jun 2022 13:37:00 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V4 00/11] soc: bcm2835-power: Prepare BCM2711 V3D support
Date:   Sat, 25 Jun 2022 13:36:08 +0200
Message-Id: <20220625113619.15944-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:44spOXJIxwmdBxWwS17OT5K0ONHn+LJ+gmM4CIy3bLktx8S20XU
 cXCatCCoW4Uiu9ZU+tH71/GgESVS6RPhvJqtfnNYg0lbdhkVisODiDXZaHT5cvFLiCoEIK4
 kW1LHrAuGNnKeAYOpCMkTd3QR0oXZg/Mtwyisd96oRckcd0gaLZ7uSuSbEdvlcCzjx0KzLl
 d1BxgE0C877xzEY0qC1eg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:eGrdUFM9nuY=:1hQad5Ij8LZ43sWy/A46K7
 P9v6yGVLgZ62lptIaFTRJfgjcxzzzJ5h/OhTAulBGLn3VsHkOTv9n3Tb6MDihd1oLGEuHYmgx
 moO9g0i8y2vSekk7G473zgEBKxNxApViZR9DbGFFlX3eu5wEjVUcEWSNn7t6TpLkLZrplPzNW
 jrpJ578rUHGqvojrJGzTGAl60IyabnRvJ+2okg8yxx5n4BKr0Jh6ZUH7GnvX6Ccjbrkx5rge1
 KujGasejbuqebla2SO/FJ+7Ot3WMLsCLrpg1HYfPccZlarbsB2Rh/KFpyMofa0b2ZGLp/RGeZ
 AjIAcvgVMN8qMJ7pg1+yW2+MXx9ELJK7F3Hr1Wo3lK3GAbLZylYF+NppbBx2jydbm1m7VMYJf
 AVSESc//b32OzlIpwekX1INo9xm3DXxV28/JI4JNr+tUDbOZgNYILhGodY3QCIxzIx8Cs5AyY
 Wbd2i81typdnfKVXm33pNx3tLNoEDXq4Dk7OMVi2Ik64jEL1l6E5Hcmp2IlrXgrrK8t3ZtyEj
 hfn1l8wRBpLIdkZh8z7HXvhz2aNAWdHTOZBAfXDjhmVbuRZjLOTV6f1Jkg4GHJGtwsGEFT1Lj
 bWeE0sUU9yiUthAnZtAeEgTcsqmVJgzxxhBoPHICCpB4fO1gvOjn6xkv6SOvGJmhiTJcz0Nil
 b3tXG7GGWX+IJaJ5iukMvyCG/8WmxErfn7QyqcVRA8DeztDMTNS7EjHBz0bUGxKos2QmWPQ62
 ZuXGInlvsNppuI9K1ttJrsO2wlhvFBYSc/9FU+uPizUOiEZEjwaDMtaJiO0=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series is a split out of version 4 - Raspberry PI 4 V3D enablement send
by Peter Robinson [1]. It attempts to enable BCM2711 V3D support for the
power management driver. It's a rework of the less controversial changes
(excluding V3D GPU driver changes) so this can be reviewed and applied faster.

Changes in V4:
- refactor bcm2835_pm_get_pdata to be easier to read
- remove DT runtime checks and rely on DT schema as suggested by Lee
- fix comment style as found by Lee

Changes in V3:
- add more Reviewed-by by Peter
- fix minItems in Patch #3 found by Rob

Changes in V2:
- add Peter's Reviewed-by
- simplify schema for rpivid_asb as suggested by Rob
- fix reference and clarify fallback & error handling in patch #7
- drop unnecessary newline in patch #9
- improve log messages as noticed by Peter

Changes since the mention series:
- fix DT schema errors
- make rpivid_asb register optional in DT schema
- avoid code duplication in BCM2835 ASB enable/disable
- rework ASB V3D handling so we don't need the V3D flag
- avoid log errors for optional register
- use a define for expected ASB_AXI_BRDG_ID result
- fix copy & paste issues in bcm2835-pm changes

[1] - https://patchwork.kernel.org/project/linux-arm-kernel/cover/20220213225646.67761-1-pbrobinson@gmail.com/

Nicolas Saenz Julienne (6):
  dt-bindings: soc: bcm: bcm2835-pm: Convert bindings to DT schema
  dt-bindings: soc: bcm: bcm2835-pm: Introduce reg-names
  ARM: dts: bcm2835/bcm2711: Introduce reg-names in watchdog node
  ARM: dts: bcm2711: Use proper compatible in PM/Watchdog node
  mfd: bcm2835-pm: Use 'reg-names' to get resources
  soc: bcm: bcm2835-power: Bypass power_on/off() calls

Stefan Wahren (5):
  dt-bindings: soc: bcm: bcm2835-pm: Add support for bcm2711
  mfd: bcm2835-pm: Add support for BCM2711
  soc: bcm: bcm2835-power: Refactor ASB control
  soc: bcm: bcm2835-power: Resolve ASB register macros
  soc: bcm: bcm2835-power: Add support for BCM2711's RPiVid ASB

 .../bindings/soc/bcm/brcm,bcm2835-pm.txt      | 46 ----------
 .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 86 +++++++++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi                |  3 +-
 arch/arm/boot/dts/bcm2835-common.dtsi         |  1 +
 drivers/mfd/bcm2835-pm.c                      | 74 +++++++++++-----
 drivers/soc/bcm/bcm2835-power.c               | 72 ++++++++++------
 include/linux/mfd/bcm2835-pm.h                |  1 +
 7 files changed, 192 insertions(+), 91 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml

-- 
2.25.1

