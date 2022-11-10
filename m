Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C102A624850
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 18:25:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbiKJRZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 12:25:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230359AbiKJRZM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 12:25:12 -0500
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E38E0167D8
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 09:25:10 -0800 (PST)
Received: from stefanw-SCHENKER ([37.4.248.71]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MqapC-1pO44N1xS4-00mcjn; Thu, 10 Nov 2022 18:24:47 +0100
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
        Stefan Wahren <stefan.wahren@chargebyte.com>
Subject: [PATCH V2 0/2] ARM: dts: bcm283x: Minor clean up
Date:   Thu, 10 Nov 2022 18:24:20 +0100
Message-Id: <20221110172422.6263-1-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:of2yQhhgMdowZ2ObZHT0w/J0yKIkCSB7gqLo/O3VhARhrEX4yt/
 sZ0U5DpD1LjS/Q/vZAES9V5bAaqPdy7FKTriVqfgJE97MBwBSg0hoDE5o4TfY4rFQAaAv0D
 jXXX6hgIOQnKSL4esyOTsRXq94qcHUYLuJIrwbKdHtMXhqT4W6873NZcC29B5pVyRRKjnOG
 +cMstleLpyKkG9oMqbt9g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:aVr0e1Iiei8=:WfJC527yC7BqqNtOWE3xUs
 XIFv+v6OoFzshk2gGlV3G+6WLj8Mb5iIUueLzTGJj9lJR5NFIHgcKHMtXMXBwWdIzfwY+5Kmv
 MoEBFf/a15MTezsInSoD5CWROQMRIPmjopOep2nFyWEVsbJ78LxESO4+DjvixT0F0VSoItAv+
 JCjz/TngwXjo+BmYrGW3EPX0mvlnNAGNbf1ynJRa8fJs/QgOgb0JjO0x6vEfrLZkdfMR+vUwH
 ARV6Ipx2rsGchl0fonFID4foyP8CiM+JKRroAFiBiImSQV5b8nlHOrygFDV/vPLbgwaX7fmeY
 zZUmEGr/955w4c7s4m2pfOtMdDJupKbWMh3yB+g2xYoSX5S0w5465cnArXXPwkaim0bOS4uYB
 Tt8vH1Ta+ZF1dlGn7EU8tvvUErWUVcIyJP/pRuqAN1FAq55OXm8ouhyimUhQONxHzVVUdJoiA
 HeXVhEW+F6kOmX6PBLpa2HftD6sTHzJI6losvsZqTR2eGL5CP4qRV4kF2c33GFCB7svTGcvEg
 lL1si36vlrMOvdUfETevtRvcmMTIXEmQ1XPikDVVIknT4PeOgwzeo+DVKlXfh0cF5fGPIA8cp
 0KYSsEjyMLtYm4e+pIiNvBRRPqxnJ+Am7NlmqXidRf9LwB70PjZqlHk3vN1fDynFvin0C5fOt
 ahnjmDDrS4vXmq85oqg470Eq9ejHUMd7d3Ak2n0OkhDLqMi4EjB84D7szxhviz/hakESMLr4I
 dsqEHkPjWIlhF9IzsHdUbbUfMkjryAq50EzFzHT3C7y1BfMyS73DpycdyVjsx6sOm4GxNtRwp
 JXyhlGwSnx1VwJ4e/DqO6V7g/2zY5FO58rDNYlHqQGizT+yQ1Q7o8NKKEPnLLGECutzxtkdP4
 0QqaiGVgBIR18pmcOT7AYTJRRqi438Ncx0u0OTmLBg+i4eCswmGWMj7AgFdoS88uGWKsmjUo6
 9Yd+UeXHHb67Wt4Ea9d2k/eatXLSUql8rXWQ3hE7DWZz7OtyQvNAqIRWBW7Vmxc8ruTKWOO6P
 Yj+TyweMNNyo4551RE8KDDkiMC0MPXACNq4arrEflYm/7hBrEs+sY+6u+kglloqjJZ3hgiCtS
 hWnuu7zfiUX9Iv6VZ9c+leijVpMKfAbcb4p6tdDDbDg8b63pm1n8j5+bYVIyfimuRjLlPSKmy
 WbGQU8HK1o/vbUUaFMEpuGYDZD4BqzAPYjBZJA8p4MTFVnYxxRhMjoAfnpv3yOXBy5v8RyEiL
 Q9ldfNqF6AgY9fbokkki2Tm0gkih6PFIZTwox9xMW+O8+spwvrONdfdYYpAfRM2qUjKbRr8yJ
 931VWlwn68Dzl56ZQpM0RyFdPHWmHA==
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stefan Wahren <stefan.wahren@chargebyte.com>

This series cleans up some minor issues, but this affects most of
the bcm283x DT sources.

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

