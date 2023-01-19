Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7313673CA7
	for <lists+devicetree@lfdr.de>; Thu, 19 Jan 2023 15:46:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230486AbjASOqR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Jan 2023 09:46:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230457AbjASOpx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Jan 2023 09:45:53 -0500
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDEF582D4E
        for <devicetree@vger.kernel.org>; Thu, 19 Jan 2023 06:43:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674139381; x=1705675381;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=aprGr6eVthOxNxFYeHFmXsfEPa0pNWq7D2Wdek7QuEE=;
  b=a1VRrEmGAEmhAkPHexrm2iG5vzQc+3iMWRhfk4z0P9cQyKgd0uYEy/YG
   SDlm1dOQyD3zcE02RAEqiHTlFxwCgiBJZZz2FwthlaKkOCC3XJkuMXgaO
   W1CL4O3DbucPYM1ZpNFyhsnfOCsY7YG+iT6Zm3BhvY59q9zL9Ltf3zZm5
   gLCNCQvH0jM8RJiYy2u5cG8srWKcUZNtyNmwSdyE/JNsRhdEfZ22qH8LV
   zeWF0S89grGGvE4X6UE7yAD6yXn3wMxpS2fo+RaE7F/R+/LcDcOo0+KE3
   7l0SgTnO4buFap99u6kRu+q1AX7h75vvsY5WTLPK2xNmpjOdYj6g8PZY0
   g==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28537301"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 19 Jan 2023 15:42:43 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Thu, 19 Jan 2023 15:42:43 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Thu, 19 Jan 2023 15:42:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1674139363; x=1705675363;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=aprGr6eVthOxNxFYeHFmXsfEPa0pNWq7D2Wdek7QuEE=;
  b=H1qc7/ET2JwQbRuwAH0CLnHyIgycjCU7xbJdvqQlGf+/weo3rSjil5VK
   3BTzntf1nIu27p7Fu4rbGlO68xzDWOvjKRmnMlOZu/mJOc/R4XN1FUPJ5
   mCbxAU0TXluS5bN+J5vJEUDFPYBNTrAJEDa0tgOQxTvLKZekZA4TPpfTT
   15i+yjPACZkp8QZei/ehE5nvjN7IjTGuxC035PTijBnw2oPxvrUs1UNJx
   QGet3zNLU0DGyhQBnxPvjcevKC8dozu/Oz8bXSIhkZ8vE0HLyfA9IPMst
   nR2zG0HQtHmjYWHDUU4/VGMOcXfJ22STmxUkn/lC7GoO48phG/ZCnOj82
   w==;
X-IronPort-AV: E=Sophos;i="5.97,229,1669071600"; 
   d="scan'208";a="28537299"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 19 Jan 2023 15:42:43 +0100
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id EF55B280056;
        Thu, 19 Jan 2023 15:42:42 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        Marek Vasut <marex@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>, soc@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/9] TQMLS1021A support
Date:   Thu, 19 Jan 2023 15:42:27 +0100
Message-Id: <20230119144236.3541751-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

this adds the DT files for the TQMLS1021A using the MBLS1021A mainboard.
This includes general board support and several overlays enabling various
graphic devices. RCW and hardware configuration using dip switches is not
needed, the default DT can be used. Just video output needs specific
overlays.

The last patch enabling LPAE in defconfig is just for demonstration what's
needed for PCIe support. There was a patchset ([1]) supporting LPAE on
armv7 defconfig, but there was no feedback.

[1] https://lore.kernel.org/linux-arm-kernel/20200203184820.4433-2-nsaenzjulienne@suse.de/T/

Alexander Stein (8):
  ARM: dts: ls1021a: add TQ-Systems MBLS102xA device tree
  ARM: dts: ls1021a: add TQMLS1021A flash partition layout
  ARM: dts: ls1021a: add TQMLS1021A/MBLS102xA LVDS TM070JVHG33 overlay
  ARM: dts: ls1021a: add TQMLS1021A/MBLS102xA HDMI overlay
  ARM: dts: ls1021a: add TQMLS1021A/MBLS102xA LVDS CDTECH DC44 overlay
  ARM: dts: ls1021a: add TQMLS1021A/MBLS102xA LVDS CDTECH FC21 overlay
  ARM: multi_v7_defconfig: Add options to support TQMLS102xA series
  [DNI] ARM: multi_v7_defconfig: Enable CONFIG_ARM_LPAE for
    multi_v7_config

Matthias Schiffer (1):
  dt-bindings: arm: fsl: add TQ-Systems LS1021A board

 .../devicetree/bindings/arm/fsl.yaml          |   7 +
 arch/arm/boot/dts/Makefile                    |  12 +
 ...1021a-tqmls1021a-mbls1021a-cdtech-dc44.dts |  55 +++
 ...1021a-tqmls1021a-mbls1021a-cdtech-fc21.dts |  55 +++
 .../ls1021a-tqmls1021a-mbls1021a-hdmi.dtso    |  36 ++
 ...tqmls1021a-mbls1021a-lvds-tm070jvhg33.dtso |  56 +++
 .../boot/dts/ls1021a-tqmls1021a-mbls1021a.dts | 409 ++++++++++++++++++
 arch/arm/boot/dts/ls1021a-tqmls1021a.dtsi     | 124 ++++++
 arch/arm/configs/multi_v7_defconfig           |  14 +
 9 files changed, 768 insertions(+)
 create mode 100644 arch/arm/boot/dts/ls1021a-tqmls1021a-mbls1021a-cdtech-dc44.dts
 create mode 100644 arch/arm/boot/dts/ls1021a-tqmls1021a-mbls1021a-cdtech-fc21.dts
 create mode 100644 arch/arm/boot/dts/ls1021a-tqmls1021a-mbls1021a-hdmi.dtso
 create mode 100644 arch/arm/boot/dts/ls1021a-tqmls1021a-mbls1021a-lvds-tm070jvhg33.dtso
 create mode 100644 arch/arm/boot/dts/ls1021a-tqmls1021a-mbls1021a.dts
 create mode 100644 arch/arm/boot/dts/ls1021a-tqmls1021a.dtsi

-- 
2.34.1

