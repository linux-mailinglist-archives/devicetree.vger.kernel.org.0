Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 511B83D1D08
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 06:26:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229913AbhGVDpm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 23:45:42 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:54747 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229905AbhGVDpl (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 23:45:41 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 768BE5C0040;
        Thu, 22 Jul 2021 00:26:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Thu, 22 Jul 2021 00:26:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:mime-version
        :content-transfer-encoding; s=fm1; bh=Msvw4ctgGZHaR9LWWouoTsrGvh
        YXDZr1DWJABvxN5zQ=; b=oZDK8cQHjIOW+LQP5ic1cSVlbIE+2M9XEO46n1trtJ
        Lbahe2hpA7DCmpHM8wqbf5e5hkEQrdzibyrilPsVbD9wseultvLf82XGOYTAkChz
        Yn3SLFB2TiRdBAG/cwsp4Thd1KbrhgCg8P2AsivNRq2XPIiUMN+rle2ezXCZb+x5
        gwHQMv8P5QOyhaYEntWQ68ofFubh578ijdi/kcwfIFvoQ7FYBJHoPH/+1vQiEPLj
        Q81Uei8gSNxjJuce/0OTkXJ/CYEgy3uhjDcfKH6X3qcDEXoQQcqUk+tl39ojTi3a
        Ww8bJJci3V5cTpMm3t0TRPF2a6306IyeS+8h6QxFnaHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=Msvw4ctgGZHaR9LWW
        ouoTsrGvhYXDZr1DWJABvxN5zQ=; b=aVoGtlUHRHTEfxWuCYZThxrwCvxX8cswc
        kVE1h0wPpIIbG9smaArH/SpfFMltMLdFeV3qcFXd6Z+d33KaHKm6g00TzQU2P6e0
        Ixyq4Tza53ITIzaibcO+GHBsUHmsqSodH9MwALk7qERZU+MgKqncfZe1lddRTqw6
        pnTsecAvf4+9nrYbIIpyLsHxanW7XUAqq64++F03mi3oIBEL4uVlnLAfCcOVodLX
        ZrvfFWkWw7yAK0hw6StS3oEKA9e+ynHbd9er4VZvmBGNTsdRqOfT3bjH+JXJNurc
        WPi05KyAwnqpW5ohb5n/PD5qU30iQaJ4N3gQQvDx2zXuD5piMFa7Q==
X-ME-Sender: <xms:Z_P4YGx9XAW-MlPTVmJRpMIqGxArUhSp4M7G0bEzYbtK-wOIWlieDQ>
    <xme:Z_P4YCSLlvCCLi30uVXjUg-3bDjt-KSAO8lbA_CokZH6oQjRlqfw7UTgDZfy4YPwq
    rH-loomoO0GVRkxu4c>
X-ME-Received: <xmr:Z_P4YIXuqyV0U6A5sgLGhFE_EHAonLClRGUNl_kSxix2ABGkbyl_B1XgqSYcS4QgFKi1mGd20ZMNu7u-IgWWHn7GT03DnBAk5wpadhjuuA_dKIJjBH0BWghXq91WWFA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeehgdekudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrthhhvgifucfo
    tgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtffrrg
    htthgvrhhnpedtgedtheevfefhvedvueetveetgeefueekledttdefudehtdegkeevleev
    kefgieenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivg
    eptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtsehtrhgrvhgvrhhsvgdrtgho
    mhdrrghu
X-ME-Proxy: <xmx:Z_P4YMh4___3E1NG95vPXKtoEX-I73bjV3Yo4uQT56PqyvahWG7sNw>
    <xmx:Z_P4YIDh7Yq6wzzUSdYq_CIBfixnV6DTDK0CuaKG0LGCZ_kwaRUdKA>
    <xmx:Z_P4YNKfyELG9sAaM4aF9XrykjaqLujRaMXXTgQNI8MQaJuU2lKZlQ>
    <xmx:aPP4YH4PYLdcBezXnWBzYWSAzYwmEpluuOcLk_rkrWmFPr6PXBhB_w>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 00:26:13 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 0/5] Add Traverse Technologies Ten64 board DTS
Date:   Thu, 22 Jul 2021 04:24:45 +0000
Message-Id: <20210722042450.11862-1-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Traverse Technologies Ten64 board is a networking-oriented
Mini-ITX form factor appliance using the NXP LS1088A SoC.

This patch series adds a basic device tree (fsl-ls1088a-ten64.dts)
for the board. At the moment only hardware features supported
(or soon to be supported) by mainline kernels are described.

In the course of verifying the DTS on recent kernels, it
was found that some LS1088A features were not described
in fsl-ls1088a.dtsi. The first two patches add them.

The device tree includes a reference to the Epson RX-8035
RTC which depends on this patch series:
"rtc: Implement support for EPSON RX-8035", reviewed but
not yet in the Linus tree.
https://lore.kernel.org/linux-rtc/20210709044518.28769-1-matt@traverse.com.au/T/#t

Mathew McBride (5):
  arm64: dts: ls1088a: add internal PCS for DPMAC1 node
  arm64: dts: ls1088a: add missing PMU node
  dt-bindings: vendor-prefixes: add Traverse Technologies
  dt-bindings: arm: fsl: Add Traverse Ten64 (LS1088A) board
  arm64: dts: add device tree for Traverse Ten64 (LS1088A)

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/fsl-ls1088a-ten64.dts  | 374 ++++++++++++++++++
 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi |  18 +
 5 files changed, 401 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts

-- 
2.30.1

