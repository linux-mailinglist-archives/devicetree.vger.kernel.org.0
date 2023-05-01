Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 441B76F2EE5
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 08:48:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232149AbjEAGsm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 02:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53532 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232148AbjEAGsi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 02:48:38 -0400
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7589D1709
        for <devicetree@vger.kernel.org>; Sun, 30 Apr 2023 23:48:37 -0700 (PDT)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
        by mailout.west.internal (Postfix) with ESMTP id 88F21320091F;
        Mon,  1 May 2023 02:48:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Mon, 01 May 2023 02:48:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=cc:cc:content-transfer-encoding:content-type:date:date:from
        :from:in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; t=1682923716; x=
        1683010116; bh=idqbozVBxui5TRyjUzpW3ZxRb8lkSIhw7EzrFztN8qM=; b=A
        MopRCKD9M95LY5lkgrFAykT8uszagbGbN+MhJ+Rs940Gpf0EjTVfyi2SVbgZTvLg
        jpiPk8affdkxfk8prQD4j1whoOeahGPqYxANUxF9JDWLo5IBJKmpHfBJMrjpY9hT
        H9MzNKfNQhcYg0Ouq8/B5hKMcLwPLfbtJO1ksbxMnsM8Qphsaiq7k9OtXeWiCQQy
        9H1oI1OCsnSmzbIUTmyhNdMUzdqLB+GNPPkDTSjhyb060tRpZa/xchzF+Se/DWmR
        Rmg6myDr71xAO3nO0j95gbM5/l243LPCqlkhlxANgyB385tMEOEbj0IeEbiwWxf2
        xo0Qh0BD4AHbDxwnH8G1w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1682923716; x=
        1683010116; bh=idqbozVBxui5TRyjUzpW3ZxRb8lkSIhw7EzrFztN8qM=; b=X
        /G7yDKkDA9u3GCN9JOczIet4WQRbY1/wBNoplMyif2tK2jDQAcwkMSlHOxUrhimm
        /LhlffpZn9/oIr8cPtDQxLbMS+SggMYaQR0iXRbCUef8CooGKe7LftCHZ5VvrsmF
        LudkOaJKqq63qnH6fCtvx0kYvZV1DxLmSFY9KqSADcT3qn3Njk90ftd4P51ximpX
        76u75pNl/pPiKsUuQjP7sDA8TkLrUa7Zur0iGrayxT2js7DTC8n3mQzrxWxM6xWF
        JgySQ6Nn4pVw0VMGn2qj2koCXFHxDUua4YgEP09djGsqPtli/pzvJSiTiamAxPpK
        EwwOUQzMwP0kMHM995/zw==
X-ME-Sender: <xms:xGBPZNsHk8pXsf_ck3Fj0J_cVnVdgo4GsY3q3a37gwYbu6PwjaHkFg>
    <xme:xGBPZGc2g8mRr8dudNqUpoJ6V67kS8mHzk6vwoQvWxxsH8WTgmwBb9aJpiLjCi8zt
    SB7JAggqCI1RzUma_c>
X-ME-Received: <xmr:xGBPZAwMEyAF39VmH11JoMjkqnGeOgz9J-gAUSl0b41d2VqTiZXtTg1-NKQHpR6KCcRcIN8ALgOEE_uDsCl1mQHD1lQIVEOMRptvB2atoubmYL4dDrleCAWmg6X5QkM>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedvfedgudduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforght
    hhgvficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqne
    cuggftrfgrthhtvghrnhepieeifeehieeiueeludefgfdtveefjeffteegvdevudffffel
    heejtdejgeelleegnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:xGBPZENV4oz9BnoQeSIHhIyQYgaEWaOFzt0B5SEdBy4-04zOg4nVcA>
    <xmx:xGBPZN9DAEUZfy_AR2Tcd_wizj5ybG2kf3zdxwkmVKE-JzzLYq6s9w>
    <xmx:xGBPZEXckRKPSXsVMYPSLTzXqsXULUUC6wol6tequKdKHmIhZ0-QzA>
    <xmx:xGBPZAkz2CQ-LI8c2rHS2KA2YCES7mIT5HRoYe8pQloHY5tFWgD59Q>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 May 2023 02:48:33 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 3/4] arm64: dts: freescale: ten64: reduce maximum SD card frequency
Date:   Mon,  1 May 2023 06:47:26 +0000
Message-Id: <20230501064727.8921-4-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20230501064727.8921-1-matt@traverse.com.au>
References: <20230501064727.8921-1-matt@traverse.com.au>
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

There have been user reports of timeouts when using certain
SD cards. To improve stability, reduce the maximum SD card
frequency to 25MHz.

If this issue is resolved in the future (by PCB change
or software tuning), we will apply fixups in the bootloader
to set the correct parameters.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index c4259d3a5712..31404143010d 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
@@ -209,6 +209,7 @@ mdio1_phy4: ethernet-phy@1f {
 
 &esdhc {
 	status = "okay";
+	max-frequency = <25000000>;
 };
 
 &i2c0 {
-- 
2.30.1

