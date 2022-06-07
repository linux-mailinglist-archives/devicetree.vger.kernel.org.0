Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 076295422C2
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 08:50:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349171AbiFHCrL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 22:47:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383705AbiFHCiT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 22:38:19 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.24])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA95B1F0FCF
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 13:43:06 -0700 (PDT)
Received: from localhost.localdomain ([37.4.249.155]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MGyl3-1o2Cgi3Bfn-00E22J; Tue, 07 Jun 2022 22:42:51 +0200
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
Subject: [PATCH V3 00/11] soc: bcm2835-power: Prepare BCM2711 V3D support
Date:   Tue,  7 Jun 2022 22:42:15 +0200
Message-Id: <20220607204226.8703-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:95IZT/hv9VsgclPJn6CoB4XLPs5t9/b/k8nKkbIprddSSRDDCm+
 ffidJaQH/5DXaJsTrv+47t5BYB8lH1tGuY2bDlVw2s54ar472C3Yt42ZIc/6OIy2ZOZVmlu
 2hfYjtuCphGoGsiMJllA1khuc67Bt9F2ptTtUUOedxTVghmcadwydy0JbNxUvNJBs7OcSUZ
 Y3POskhRcWoUfMfMxXR2w==
X-UI-Out-Filterresults: notjunk:1;V03:K0:qslAVAJZLjc=:y/MDIRl5MLSnOZU2OB5O8z
 Ms388ropO6IugFg2c58Yez5x1ChUlDce5KjacRD7pOHUxJzkXsS2UrxSqk8qw8t8ab3CrPwVW
 zVV2gQuWb4JdXkfVFJ3H8hW6O21pOBD7DcnORPQnBS9a/ILNWzPDQZx57PVIOeveVUshqbckM
 UYTEFHUZVAqcCbk09TklwtL+ifwiQMqqpvq0kiul96SFVSltNNGbdOH1Eixi6g7W+1CXYZNfb
 cX7+bfaglYS6ZRCOYdT7tL2Cw/3mzv+YC/bzJtMAH+V/TFyqLhcLJRjYfI2DAcf8PlEHnY3os
 4G0ZZhy1nHDC5Fxbv0OlDM5IESGlQXPpsAmPTYoUC5IIY78pvwoP1lpNr9MZWFSucB4WSzGBY
 hmkXRytCqe8f7GSwFzLggWRGYW0J/p1CvbZA3jFsJ/WXs0zdlAOGoVyZhFvgHbJXIKSd9/tU/
 3LH0i9WocTucJ/yzhVepbkDHe39jHsKKhQWX36Wclqzubdoqg9kspnsgUfSaFZpLx+yTc2N7F
 5E02ICAfsJxWBsqifjHeeHdQSuzhhSZOzxrpAHEUrk+TTmt3i9sroGTmhHS87QrNdP+ZRWOjL
 zhWmyEEzWFfwDJUAX+GVkuir+cf1coPwfr7553/zefUxMkF57IRkXMPwJ6Xv2UIf5+w0I5l95
 B8ZBrBphYNwcLpw99bjk2G0jxPo+8OWDE0WQxeMCTfo5IDc6zxnyKGTWBqgB4XC6M1Qz4DMUJ
 1BdV8Q5Su21pOFVXbCV2bbSN2SN6iRp6Du+8iVXiowx0+BpH9K7gDYv0DMc=
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
 drivers/mfd/bcm2835-pm.c                      | 80 +++++++++++++----
 drivers/soc/bcm/bcm2835-power.c               | 72 ++++++++++------
 include/linux/mfd/bcm2835-pm.h                |  1 +
 7 files changed, 199 insertions(+), 90 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.txt
 create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-pm.yaml

-- 
2.25.1

