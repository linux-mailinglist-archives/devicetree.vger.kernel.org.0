Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5EDDB3D539F
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 09:13:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231778AbhGZGc3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 02:32:29 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:53541 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231332AbhGZGc2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Jul 2021 02:32:28 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 99BDE5C00E9;
        Mon, 26 Jul 2021 03:12:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Mon, 26 Jul 2021 03:12:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=B4PYo5hrnWXMV
        +ebL3rG8S9eo6IVBaf8/nWvEX8lWBE=; b=FywPbgpwjqTc30ukWsidrdSXM4ItN
        7MTkV/drtGxmaj+YruobymOO5W1FKMUHw3tTisCN5mdhEDs66eo7fVqlNpfJob10
        OBsr77mxzxE+t5Tw+NGaOasV0mStQiytCiaFiwRRQl/v3C6SRhmxKfFCiN738msE
        e5pPOhD4orjepKGITzes9ndfazEyDjYOHIn9Kx4B2ztn+e3PrP6dDiM/bQgC+n9n
        QC+KeA3mVDE4+F3IbCaemZf46g5dWub4dKippXbO/Ehdt0QUuswqrGr6d9OPj+Ih
        qYoLWP6YJrDHc/FXPix5XzxpzwOeXereSA1OAUMfSrhMcRaVRmCUtvlFQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=B4PYo5hrnWXMV+ebL3rG8S9eo6IVBaf8/nWvEX8lWBE=; b=hjHliBg/
        ciLj6EHU4IKW6ZBmbGsM6x+jomgIafojY5vuMLaYm8eSrRk4n166bc7dJ8+Svi81
        kvyJaAPMweg9QM1C9ovUTclFhOJx/SS4cNZSqMwFut9P/1SO2UR/we4IPzNvyTYF
        FdL6/xJZFMskNb09daVx7XWhKeOArpIsvvrhMQcMeUskCDQbN+Wbw2C8FwSEU4Ne
        GiEpALjyv2aDakogUn3GrT935A08Eo6jjFVYNoZ3MLLdHoJ9cYD4ZKlW1BdvpCLD
        2ndp64oAudFeV6fZg1ACLN4dmXVrEhPMAu8ezOZPGpsWR9sdkuaIo45vRN9gE8aM
        LydnS1Azu3JWHg==
X-ME-Sender: <xms:eGD-YJeCXmYSvUl1TmFSuGvGa-JEC0BHbUw3EFDQYZxRCXg00ZPLwA>
    <xme:eGD-YHNguxzayiBR7GdC6FJGdABHsQ0_JHLwy1w-qMZUSk8IC4dZulXr1pbc-FnbM
    b0DLoqHi6j7jJHIcfo>
X-ME-Received: <xmr:eGD-YCi70y9uL8X3qbDasoD1Qo3EUke19iSwOXRGqf7rs61kjPIUdqepyj8hZMufpBrRlLrwjoUxN_BXrz13J5LQ6RbEc-4HbfgQyGgNr5-byWXjnTXcIcc3fxTc2J8>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrgeeggdduuddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgv
    ficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecugg
    ftrfgrthhtvghrnhephedukeegvefhfeeuiedugeejlefgiedtveevkeektefgieetteet
    ffelveevtdelnecuffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghruf
    hiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrghtthesthhrrghvvghrshgv
    rdgtohhmrdgruh
X-ME-Proxy: <xmx:eGD-YC8MEBWq-THkt01KzTGio0m9u1vTOBOHDhldFqLNYuEb1TQiTQ>
    <xmx:eGD-YFsuX5zW09QlJgqjtHBDf2YSEiO0TK77foNKRGt1YEp9uTaSLQ>
    <xmx:eGD-YBEb9z6mOP7ITvdsjHdRFG7WTtDMurdkNQ26q6U9Kh6icuqZ_w>
    <xmx:eWD-YDX21_0PbYLHIv8x7hj_bpdpaKzfkzkHFZ0WoVAmlwC7dSe_Zw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 26 Jul 2021 03:12:53 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v2 0/5] Add Traverse Technologies Ten64 board DTS
Date:   Mon, 26 Jul 2021 07:12:11 +0000
Message-Id: <20210726071216.22711-1-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210722042450.11862-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
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

Changes since v1:
 - Pick up Reviewed-By tags for PCS and MAC/PHY related parts
 - Use constants for describing interrupts for the PMU
 - Use the Cortex-A53 specific PMU compatible instead of the armv8-pmu3 generic
 - Fix formatting issues for the board DTS (ordering, newlines, node names)

Mathew McBride (5):
  arm64: dts: ls1088a: add internal PCS for DPMAC1 node
  arm64: dts: ls1088a: add missing PMU node
  dt-bindings: vendor-prefixes: add Traverse Technologies
  dt-bindings: arm: fsl: Add Traverse Ten64 (LS1088A) board
  arm64: dts: add device tree for Traverse Ten64 (LS1088A)

 .../devicetree/bindings/arm/fsl.yaml          |   6 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/fsl-ls1088a-ten64.dts  | 375 ++++++++++++++++++
 .../arm64/boot/dts/freescale/fsl-ls1088a.dtsi |  18 +
 5 files changed, 402 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts

-- 
2.30.1

