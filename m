Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4B2B4624865
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 18:31:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231203AbiKJRb5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 12:31:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbiKJRbw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 12:31:52 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.73])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E32EE10056
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 09:31:51 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.71]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1Mg6i8-1pU9qC1Fl8-00hiI8; Thu, 10 Nov 2022 18:31:34 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V3 0/2] ARM: dts: bcm283x: Minor clean up
Date:   Thu, 10 Nov 2022 18:31:03 +0100
Message-Id: <20221110173105.6633-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:WYLdpI9erfJhqBO5efgyraiXcuu34nI2AdIKiUtUYYF1jWcvRX1
 /Qa7ZKYpTkZclaA4ReH5Qkd+RU3Gj6TJbzwU2n3fzqUuip4SKcaiprJcobUt+653WCtRzym
 h42HfPVcMv13F40J0+g63blGw9IL6SG3cihJxzrgqLFgQhA3z1EciFnj9ZWkuvG3nJhKKc2
 CNtkbJu0WqJ6AZK1+U8Dw==
X-UI-Out-Filterresults: notjunk:1;V03:K0:nm242IoxMgI=:ALxayYHuCIsqHKzMweMt9o
 Te5aH/Muh8m34uCXDG0ShHVUWWbChtJrTbof083EMq2GDlqRVsIhwnUedaNHp1XPX6Jjy2pn9
 Dh4/cCWTWtzG4TFnWN7N11zMZsbyzavWUfpUF/+VspJ9JzCVSSVCTFZKipmy0D/gLAbvVk2JC
 3F1D5f5SNalPffnZtOWEB8GlcZZfsCypcw6GSl6wN8JloceM76fQu4DW1432ldu5opfqQlm5v
 MK1M2kc4EfPJZ5Z206F+mT/aPWj2Qn6v6V0JMdeEI0hZAVAYNt5R7GXYNrNubQBnznkUGwEWd
 GtVsa4fHi1SH7elEwKphsXJYTfxabiUqkZfee73glEY0DaQDmNesf1F8Z615mprXvTmYUiJAI
 Nmg6OlJ+mDFt/6IABcQsCdGrnjobCRnuxHiqtUzyCOlMbpZtg3oUPPiwE1cxWQC0DcZudGArA
 8UAlWiezsTEvmhxUMytiWxOBtuP3vq1LY8ySkp1Ne5wD/hHn2g51u3R/lNMMJEU4sOxmVD9Mo
 fIcY0P8H7Sh5n4Pi8u3moHZHQYABp985pTPtXOdbx3X/Nx4AlMFZqjC51M4rOSYLZpep+9+Cb
 8Lhk303Hv6sY45r0XJmkOs5W7T09clmKE7fhEmk0gfIu/DK8H4kGdpYkkW/q62kKE7f+fob0W
 G12d7ozXI8g7JH75GP+3ChL1h43bZEb6OMAybdHuQdyTo2ow191J2qXuo83KSAz0rdlbaeUnl
 7lvZm9bOD3+owjnbxcr34476nwJZt91g4X8tvtoQ9ix40T4qkmuyz3ZVtMYAYzd4kWzdC43nk
 zId8qs9
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series cleans up some minor issues, but this affects most of
the bcm283x DT sources.

Changes in V3:
- Fix sender address

Changes in V2:
- rebase on current stblinux/devicetree/next
- add Krzysztof's Reviewed-By

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
 arch/arm/boot/dts/bcm2835-rpi-cm1.dtsi        |  5 +
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
 24 files changed, 260 insertions(+), 255 deletions(-)
 create mode 100644 arch/arm/boot/dts/bcm283x-rpi-led-deprecated.dtsi

-- 
2.34.1

