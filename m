Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 839A853A581
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 14:55:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344755AbiFAMyW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 08:54:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245704AbiFAMyV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 08:54:21 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2BC36FD0D
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 05:54:19 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.170]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MD9Ox-1o4sAb2HWj-0096Qn; Wed, 01 Jun 2022 14:54:00 +0200
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
Subject: [PATCH V2 00/11] soc: bcm2835-power: Prepare BCM2711 V3D support
Date:   Wed,  1 Jun 2022 14:53:33 +0200
Message-Id: <20220601125344.60602-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:hqybCJVcsXi2dvi1AbBNUNejJJSaAtq0IFedpVTQ3a8kpBdCtSx
 JP3DLIK7o3hRZ/mAaM/VD85WhHu3dv1gmZtPJOPWtPHQU+c0jPSLVuwLGFHOtGbX4EChw1d
 wUCS7GqDV0gg8sMFxJJrex+1pDW9X4S0sK+LLl20QptyxYN6z9K/Ap42vNTsuctZNNZNJbd
 vZ0CRicuwxnb2YJ3SrY4A==
X-UI-Out-Filterresults: notjunk:1;V03:K0:EYpVZdENoDo=:+csRQDWBsjK0tkHFJDGoY3
 i5yLW1eDlrSS6nYB+UmiP+bTSAZoF8qMG3SqE6K923qtT2d96fxbsUeXl0g86WAeoo7iBhulV
 yPWJWRRA5H4QhjJKXZD7pYRk2gRbcRyL0irRLJCY4CAXngOOsgMhxEryIf609LjtKW2HsRTAk
 4vLetpHoTeycJvKNxrPmw2MYBxEFRvGs5XqvdO3wJIx6AcMF3cyquAcCQj+702MorHEhBmTuH
 csloli+vVQaKr17ptL0ivtqqpBaLFZAZH2otYzkioyO1oOVeS1m3AYcHdZStgOFD/cikV1Tgg
 1e0Rrxre+ur5OQwRpvuH11m8J5MXGoEr+IagtoxQM4Ce4o3DNkcw5t9mYhgSVeLBAyIpQlLS1
 imGqtXXW1L7AHEsWCjy74FH60vx9DuWwxzWGXEEhrOsetN6F2eSfwb5rQLEH4GmuFEFZzP7pd
 FduculE0dj0BX3z1ATITMyoZH52vE6ppbtPxmQm6oH6Aqw1XqX1xczGhxeVPI94Ovmau56tSV
 WORy0TSEAhgD4o703mmUuSbPhQ30Ba0R8L9xRaB00qxj1SnHiehZuie0sEgSsNDmXk4DK/6S0
 kipM3tV3Nc7it6Kabed+z+s0riDfKILMi7mkPAXqAHoaPbd0P7YYnco5KaXDw8th/INc56S4v
 mbN6g+0Cl/VMU6E0u6HcEXpaOt2bdxJcI9JN9lngAh/n3u3mjIU0IinhhJPsvKaD26hK0Xb+7
 Ow+xNc781hExzK7Fr00fAzy5/1ML/VPysbW2Y/DUzjFVjE8C2jOBY0ZpmdM=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series is a split out of version 4 - Raspberry PI 4 V3D enablement send
by Peter Robinson [1]. It attemps to enable BCM2711 V3D support for the
power management driver. It's a rework of the less controversial changes
(excluding V3D GPU driver changes) so this can be reviewed and applied faster.

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
 drivers/mfd/bcm2835-pm.c                      | 80 +++++++++++++----
 drivers/soc/bcm/bcm2835-power.c               | 72 ++++++++++------
 include/linux/mfd/bcm2835-pm.h                |  1 +
 7 files changed, 199 insertions(+), 90 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml

-- 
2.25.1

