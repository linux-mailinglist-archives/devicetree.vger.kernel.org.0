Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B4A536F2EE3
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 08:48:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbjEAGsd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 02:48:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229663AbjEAGsb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 02:48:31 -0400
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64F548E
        for <devicetree@vger.kernel.org>; Sun, 30 Apr 2023 23:48:29 -0700 (PDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.west.internal (Postfix) with ESMTP id 9C62832008FA;
        Mon,  1 May 2023 02:48:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Mon, 01 May 2023 02:48:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=cc:cc:content-transfer-encoding:content-type:date:date:from
        :from:in-reply-to:message-id:mime-version:reply-to:sender
        :subject:subject:to:to; s=fm2; t=1682923704; x=1683010104; bh=U8
        8mlZgIhYFm8zbzVA0MavZQYh4MnbdTtW+b2g7x2kg=; b=qXA14QCx4oDjUYFKJQ
        aJJWeHHPXjnz1ysM/8Lwa3MNXoqDkyLo1dy7LVdpgUDDpbgGzAisXsfJVXz5YMU7
        NmctvOgZ4Lk570MEGFyMUfdsg0m/jLjLOn9Kv7Xj2p3W/z7i4o3SxTEnczMi7af+
        hSuvb7roGRdyPCoWUhHeCoDl111CfLU88kVtW/9mK/cFb9mqgapeD1r6WrMqrUs9
        GimJc2vnucmyORhxZgJvdhaGkZ1GhB76j8fLJSy7E6nstjWvbqFBe5/PoXEDwANo
        j80lr4Zxm//UckBjHu2Lnn/TcfJ2cHJcYnbwQVVNil6OJbWeINNQdl4+52st47kC
        O1hw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:message-id:mime-version:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; t=1682923704; x=1683010104; bh=U88mlZgIhYFm8
        zbzVA0MavZQYh4MnbdTtW+b2g7x2kg=; b=TPbgi1GyRiMTCPS/oUQb1NqUPRScH
        k7yhk95dkjadWZlZX9rs3TRScHjf+3I5iH0UGMujClDMAxqVFxFldrYxSjeL7yYs
        mrt6JfC0m2UIBAW/oOGVGygKOKPDKSx1km0lDXIF926dqiTMpc31snq/BujAwZT8
        k1pYLyXv53+fgmNPMRTPuqm4t4lMq3einWBPWvtFDS0OXX1NVTaU0Gx2WLWIqYQv
        tQREv0KyMb+eJaB+mO52B3dPc2e0zqECAH35WeqCZwxUqfaJrhGJc2CmcOyZgVit
        foJj3tAKBZ2u7kfVtC4MUVm0vgyI3H+aUays7HQwPWAZi5LJn+E6rQcFA==
X-ME-Sender: <xms:t2BPZLlFVwhhBFH-t2ikMu9WNVUyUeqeVDqIMFqBk6WEYtcd4Ys-IA>
    <xme:t2BPZO0BT_KOR9IkHiQEyEPkCHoI70sO6Y-ohGXn-3aQgv7LB4pyNPCjircy6adw6
    2pmfXXDhx9r_rXytyg>
X-ME-Received: <xmr:t2BPZBoYO2thnooAR2f9WvSbw12BvW7KFp0POvMxKPcAAE9-bVO8Uco5pr7QEfOSpefI8Rrx6n8rK2ss9FdxQafqZ1tAueyJd_VNCD1fveNoQIGcZaWcEcupe3y5csQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedvfedgudduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgv
    ficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecugg
    ftrfgrthhtvghrnhepgfekteegudffgfdtvedvjeejffdtgffhteefgfeuhefhleejfffg
    feeuueejleffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:t2BPZDkLrMg3CyAYR19Ii-kEV7AEp0XXyPzgqm2kHCmAqIlVwDwN6A>
    <xmx:t2BPZJ3BJQaxeYZmDZLteGcytvJuCjIRsHROhZnCLEioja7646XaJw>
    <xmx:t2BPZCsaqa1qz7u0OXLDgsCWlUsKjpLRF0GeY3lzLWf2qOdtEHpj9A>
    <xmx:uGBPZB_nGxh4PS6cnz3YRbMjqfPWkKCpoVcy_DaQ-tNVfUlMxFJFgw>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 May 2023 02:48:21 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 0/4] Ten64 (NXP LS1088A) device tree updates
Date:   Mon,  1 May 2023 06:47:23 +0000
Message-Id: <20230501064727.8921-1-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds some properties which have been missing from the
mainline DTS:

- Binding for the microcontroller on the mainboard
  This is only consumed by U-Boot.

- Reduction in SD card maximum frequency
  Resolves timeout issues seen with some SD cards.
  This change has been in the Ten64 "production" firmware
  for some time

Mathew McBride (4):
  dt-bindings: trivial-devices: add traverse,ten64-controller
  arm64: dts: freescale: ten64: add board microcontroller binding
  arm64: dts: freescale: ten64: reduce maximum SD card frequency
  arm64: dts: freescale: ten64: fix header typo and update copyright

 .../devicetree/bindings/trivial-devices.yaml          |  2 ++
 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts   | 11 +++++++++--
 2 files changed, 11 insertions(+), 2 deletions(-)

-- 
2.30.1

