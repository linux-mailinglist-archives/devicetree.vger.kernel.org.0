Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D69445279C2
	for <lists+devicetree@lfdr.de>; Sun, 15 May 2022 22:21:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232341AbiEOUVi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 May 2022 16:21:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231891AbiEOUVh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 May 2022 16:21:37 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F21641EAF0
        for <devicetree@vger.kernel.org>; Sun, 15 May 2022 13:21:35 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.94]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N3KgE-1ni7Vn2dko-010LgX; Sun, 15 May 2022 22:21:17 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>
Cc:     Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 00/11] soc: bcm2835-power: Prepare BCM2711 V3D support
Date:   Sun, 15 May 2022 22:20:21 +0200
Message-Id: <20220515202032.3046-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:1z0DJu1ynMuKbi/g6TGVt1ylKM8nVVtHcpGR+LseE/ZtjsEC6ft
 1OAuNW0gYjKlbBCSkOFHeBoUddbJMuLXHUrcEoeZY5owSt5uARnfYugNo/T+UNP8q1x8oD/
 PrIRbqe/IvLxkXed/ZHqUzHFlEh4nbey6cvl7spfV7i8EM1zFcQkx+WLnSGC+rfg9azubZg
 1Qeo0nexyKiisnomIh7LA==
X-UI-Out-Filterresults: notjunk:1;V03:K0:r97v+5F5WgQ=:2dqMiVN2rQukv5m+PYIsoa
 gDwET7nerywDZ4PdLi+PGNf2EGokqC1JCx7eyE/K8uF8iydYkW1mdA3Nc9epr2kGWATmixLR8
 OwXv/OJ2eGCo6l66f1LXx+9KRyDLF4E4r0eNjO21cENKMJuBOaHy7ve1Sv+7poNVJ/wzfWlav
 C+WVLlKZvjO7RZbtcql3/se89ruRPJ0N36yAncmvtxhQIqW6jWgZOhgZP2PsSwshg2d20IG7b
 WsZAoGVBrt2MXTQgeJ2nDzLR9Q0Me3JAjGCUDpycFe/xbqC35rkl3UyAUd01swOY6ahWLi8Iv
 VSq4KPh9cawn8S3n0nvpPvvBDKcEMe5GpPInLMhF/4Fvptw97ezuA3h+hFK0ie8lwdizsVeEm
 D+1S5lizNYOXXxW+I9MzZQ1ZUA20pa6LTY1oW9C3+sYh0o5/C5RHeaOb6CvxLw8fteDs4cxb9
 VhkyzJoVlfi1bjMzwoE9aAGcmQw4JCoym+YdQlucZVpqgaRBz4F3SEdK8Uij5h/yLXwQyHEaf
 OvbvdY507Lb9f/JFuQc2Yvi034OLbZXZxnkDgmvbFG4Nj38nDuIGyc2DuvM6eGS0v7R8m7ydh
 XOhyudVNVuQnv4QFfeNp/b8vmEXBSZVHTXUkV9ZyDNQXnSVGjjnIxPh6H0E7X/5NyDye84G50
 Jx5wtx/8gVuKLeZT4bU1RhCBH6u7I7vLmyWVr7YmtYeEWkGAMDxQEo2fSqo7OFToiCCgSz6Fy
 MP+HGs2f9Jgh8Xyy
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series is a split out of version 4 - Raspberry PI 4 V3D enablement send
by Peter Robinson [1]. It attemps to enable BCM2711 V3D support for the
power management driver. It's a rework of the less controversial changes
(excluding V3D GPU driver changes) so this can be reviewed and applied faster.

The changes has been tested just superficial on RPi 3B+ and 4B, so further
tester are welcome.

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
 .../bindings/soc/bcm/brcm,bcm2835-pm.yaml     | 89 +++++++++++++++++++
 arch/arm/boot/dts/bcm2711.dtsi                |  3 +-
 arch/arm/boot/dts/bcm2835-common.dtsi         |  1 +
 drivers/mfd/bcm2835-pm.c                      | 77 ++++++++++++----
 drivers/soc/bcm/bcm2835-power.c               | 72 ++++++++++-----
 include/linux/mfd/bcm2835-pm.h                |  1 +
 7 files changed, 199 insertions(+), 90 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml

-- 
2.25.1

