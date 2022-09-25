Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F5675E946B
	for <lists+devicetree@lfdr.de>; Sun, 25 Sep 2022 18:41:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230303AbiIYQlK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 25 Sep 2022 12:41:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33526 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229711AbiIYQlJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 25 Sep 2022 12:41:09 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.13])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE8C31F2DA
        for <devicetree@vger.kernel.org>; Sun, 25 Sep 2022 09:41:07 -0700 (PDT)
Received: from stefanw-SCHENKER ([37.4.248.18]) by mrelayeu.kundenserver.de
 (mreue106 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MYN3E-1ohZBU2r2o-00VSK0; Sun, 25 Sep 2022 18:40:46 +0200
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH 0/2] ARM: dts: bcm283x: Minor clean up
Date:   Sun, 25 Sep 2022 18:40:19 +0200
Message-Id: <20220925164021.3600-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:ZU7rfvzfLZVi79qbSp3T1N/FlsY+R2pwrD/9PWCu7kyA6sb1SyL
 htrECU87iNWKQ/hft+IhKPTsraDIUPtP0RrMyjZVSKXmslhWUcdckB70dcBtuQ29QJdTlQc
 Q58/dTMv5JwlQkYm23utXcBpn47bfnCsqrmS4qwTYrMYxwzvQx2v+aWMkg2xJAUnNsUfAow
 yb6zsgmkrZGAoDBHTU1uw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:K90DxOFI9JI=:b6JNGLOuQ4XBhXLaRkpEBz
 Wrccqds85od3Czkv1syjkv6mPMKy+SAfy7bXeJIOGSWgFNJvhr0CFonpDKX84EQYEdpHKuOs7
 /ZJuQKDTuFOSTij9gUkEXw6epL0vgGRUsnUsnMUbnye0+UNUaN5m5Lg8KCeO+Eq5yLvcTpyoC
 YeGNQy5wJRXCQ6Tf6WUI6jdIZnGzmaALFmJEhsYVWk4AdZdF2K93TEvvy6QH9gOrJcQtoxz97
 v4QJSaZomw74a0hqdYFTRjfLoK7/8Iapw3aO1tOHlfEubG7HPSy/oMX8WriO6EgdFnvfX6ReI
 aYijygZocua2Ulf0AD+dwR7/KASFum23uKZiPhow7/KfcKQ/PCD030LFssLWEs7o8D3UBRwRe
 kqP2rh/mC7o1ZGGuhArGKn9TswgIYFDz2PMhK9dBpQ5ct5tYGQyqj+2fa6WHd8190VS5WA6oN
 Pk5bS5tiRZwkLg+w1J5yhBBwXmudcHIElP06u0DY8QRjAiNFcoOoKjMqJOLav9bez/zR4d5o6
 W99yJ0/5oX/zHIBwAAmOmmX2kutDyeFsZd9UeizdFOmpQ13LAOHtbrlTECJMq13ZB2sIOT32w
 gCfj4QT6lB3khvVQCauXRSQdMYH+5Gu7EsO+2UYwKMFH8p+MHrxWUEgSgb0UqX+TxcvB2w456
 KuWiPx0CKVkhNUy+c69Slf3qpf7P84+lvEYpq2hDfEhbLFpf31Ln4ODmjZtW5EkFTxu/WdkP0
 ssca4rp2RSTCgNCitsF2nJb0xfy0vFyn6AxvCy38M/ARsUWOfNE41q9ImBSx3KPsIR9q2VSFO
 ErkmLv20ppoRr3zG9FZ/WktxQss/w==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series cleans up some minor issues, but this affects most of
the bcm283x DT sources.

Stefan Wahren (2):
  ARM: dts: bcm283x: Fix underscores in node names
  ARM: dts: bcm283x: Move ACT LED into separate dtsi

 arch/arm/boot/dts/bcm2711-rpi-4-b.dts         | 31 +++---
 arch/arm/boot/dts/bcm2711-rpi-400.dts         | 16 ++--
 arch/arm/boot/dts/bcm2711-rpi-cm4-io.dts      | 27 +++---
 arch/arm/boot/dts/bcm2711-rpi-cm4.dtsi        |  4 +-
 arch/arm/boot/dts/bcm2711.dtsi                | 94 +++++++++----------
 arch/arm/boot/dts/bcm2835-common.dtsi         | 18 ++--
 arch/arm/boot/dts/bcm2835-rpi-a-plus.dts      | 27 +++---
 arch/arm/boot/dts/bcm2835-rpi-a.dts           | 11 +--
 arch/arm/boot/dts/bcm2835-rpi-b-plus.dts      | 27 +++---
 arch/arm/boot/dts/bcm2835-rpi-b-rev2.dts      | 11 +--
 arch/arm/boot/dts/bcm2835-rpi-b.dts           | 11 +--
 arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi        | 11 +--
 arch/arm/boot/dts/bcm2835-rpi-zero-w.dts      | 11 +--
 arch/arm/boot/dts/bcm2835-rpi-zero.dts        | 11 +--
 arch/arm/boot/dts/bcm2835-rpi.dtsi            | 10 --
 arch/arm/boot/dts/bcm2836-rpi-2-b.dts         | 27 +++---
 arch/arm/boot/dts/bcm2836.dtsi                |  2 +-
 arch/arm/boot/dts/bcm2837-rpi-3-a-plus.dts    | 27 +++---
 arch/arm/boot/dts/bcm2837-rpi-3-b-plus.dts    | 27 +++---
 arch/arm/boot/dts/bcm2837-rpi-3-b.dts         | 11 +--
 arch/arm/boot/dts/bcm2837-rpi-cm3.dtsi        |  8 --
 arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts    | 11 +--
 .../boot/dts/bcm283x-rpi-led-deprecated.dtsi  | 18 ++++
 arch/arm/boot/dts/bcm283x.dtsi                | 70 +++++++-------
 24 files changed, 260 insertions(+), 261 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi

-- 
2.34.1

