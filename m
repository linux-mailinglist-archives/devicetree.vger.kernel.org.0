Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 251294A6265
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 18:28:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241504AbiBAR21 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 12:28:27 -0500
Received: from mout.kundenserver.de ([212.227.17.24]:60619 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241495AbiBAR20 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 12:28:26 -0500
Received: from localhost.localdomain ([37.4.249.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MBV2f-1n5HMa2EfP-00CwHm; Tue, 01 Feb 2022 18:28:11 +0100
From:   Stefan Wahren <stefan.wahren@i2se.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Phil Elwell <phil@raspberrypi.com>, devicetree@vger.kernel.org,
        soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org,
        Stefan Wahren <stefan.wahren@i2se.com>
Subject: [PATCH V2 0/3] ARM: dts: Add Raspberry Pi Zero 2 W support
Date:   Tue,  1 Feb 2022 18:27:44 +0100
Message-Id: <1643736467-17764-1-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
X-Provags-ID: V03:K1:eDhVeUtS63vbpXs4XFxlvnqH3pm0pPCC2v1Slnr2riZB5mBDZt/
 hzVP8oPEZFfVjOv5IrgAArUuqQCdiwAE8SdDxGvIOhynorc3kPtE2wJ1/cv4lNhAtRAyW2Q
 wQ+Br2Vk0oXJEfXC7kwFEV6ze5NChcF5mdXfwpVGaKPaBKNpV5OLD4gvW5h1diM2LIQfCLX
 i1F13PuKnad77W4DcWDVg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ZG3YC0Ga/ac=:l+tMPY6czC1233YqISI7qw
 yZUChVJOnTd34q1iEE5WsMmMrnGLMjg8Qijaxj4MXT2Mhfr04uOt96vKNJeRYzVxyibTdnGwV
 sPfq0MgjUbiqYH57P1/+3Revg10OplTvQQRrYVncjb5tbN+S32vR84JHO0Y0G6o24dGoYUha4
 wpQJxTEcF+a0gabibM9xqRi8I1GlzOeg0L6o3MaoP7WyyIvkLX1taHlKAGirpKGBCGZGBIXQP
 2N70yWxAv4MYHsVSHyCL94ou7z+OlCdelv0uYsyhsco5G7zFRMnxmzKPa0++Zw6md+KQe0ghr
 ucTKnL1rVv4plgUvJ0SI8e3q1bqfbzVrq4njxpGMyP7c4xqmIg5mpPv6SX1ucN2dmWWksJV41
 Cu+9VvFGqgKXNmvXjKhkp5tdWBOBMacBkGbyNz3TeFjSHJ1XW2ggMAUnc+h8Lv+063MKeoltn
 8EKBCYDMv8Pn278vz5g63lqzDPNbPlIMi7IRXi5bzh9nGn2+w1p2dCYzOHfhtjl5gGk0urjvG
 7ey4yms5w11K3Zh8McVDDnvvVv7urd9kYAfVGzRUQY3F2PVrpOszmYZ5E26rd8xSvNM6jyDXk
 FrijpWCRuFd79qXQPhS33pcfNb+uNvR72f3NmmPXL0kBDGsFf2q3czxgI/JsuJrx1+1LOENJt
 RflCOhLS7h2NhJs/aQkLe1rUpIUkifZmKKYdfTvQ8zOCyjLqa+cfqq4y138dtJ8OtkG9jNeol
 pmHvVble0o+2u51a
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This small series adds support for the Raspberry Pi Zero 2 W.

Changes in V2:
- drop brcmfmac patch, because the driver is already able to handle
  the wifi chip
- improve commit message of DTS patch
- add Robs Acked-by

Stefan Wahren (3):
  dt-bindings: arm: bcm2835: Add Raspberry Pi Zero 2 W
  ARM: dts: Add Raspberry Pi Zero 2 W
  arm64: dts: broadcom: Add reference to RPi Zero 2 W

 .../devicetree/bindings/arm/bcm/bcm2835.yaml       |   1 +
 arch/arm/boot/dts/Makefile                         |   1 +
 arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts         | 136 +++++++++++++++++++++
 arch/arm64/boot/dts/broadcom/Makefile              |   3 +-
 .../boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts     |   2 +
 5 files changed, 142 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boot/dts/bcm2837-rpi-zero-2-w.dts
 create mode 100644 arch/arm64/boot/dts/broadcom/bcm2837-rpi-zero-2-w.dts

-- 
2.7.4

