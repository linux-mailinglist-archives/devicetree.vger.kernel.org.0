Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 713E26F2EE4
	for <lists+devicetree@lfdr.de>; Mon,  1 May 2023 08:48:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229663AbjEAGsf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 May 2023 02:48:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230127AbjEAGse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 May 2023 02:48:34 -0400
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com [64.147.123.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 864978E
        for <devicetree@vger.kernel.org>; Sun, 30 Apr 2023 23:48:33 -0700 (PDT)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
        by mailout.west.internal (Postfix) with ESMTP id 893AF3200937;
        Mon,  1 May 2023 02:48:32 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Mon, 01 May 2023 02:48:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=cc:cc:content-transfer-encoding:content-type:date:date:from
        :from:in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; t=1682923712; x=
        1683010112; bh=1Pjn431pqFvikUzGLI0eOuV8B3wq7sspZFEF/V182Vw=; b=L
        rtLx+ZlHRurlJ4B5vYI3D+TK5Jz3CHo2CptQH6lSHoIj6dP7SigStG57fsCLwUuz
        /sa7Vn2UCrJTVVhrHBipZ9I2nKX9SzMcUiHGqXuqypKnu1hxT6JouF69WaXgSkkA
        xQLR4/RKY77HxPxty8U1CJPmyvowJ/bUxVG51fqokNmBgHMnMhius6zZCsDt0RCH
        QXMiKJ4C7dDjRZicFUCslNTIfnV6Mb2B268fIak3v39cDrjb6lv4fgoF1b65FYl7
        dlJ+dC66W0Nq2x2ujAvXipTDFlEd2kLSiGcpo1OpGsiWWCeyglkiAZKRKo8lEuRh
        AYILZIPR+kiy7pkAGma8w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1682923712; x=
        1683010112; bh=1Pjn431pqFvikUzGLI0eOuV8B3wq7sspZFEF/V182Vw=; b=D
        Th0dzCTx4o6eOaulq1mJmB7f2XhGXtqDJc079Q1KwV4MhfoUfiye0l/wlaGD1MPb
        8KtA0Nme4sH6DFYSUDl9DMwQQW2TPgnFFyRtDQyXZuCHuXDq8FCP4Oh/XW09KsBm
        zey/8N7F3SuO0E/gFeo/9FbO2d+IM9y21h/9zybcez+TrSMm8rHuX7ldAnrqGzsJ
        YzqjDVk3+RG189Rw1NpZYLmFyi4UVCIujk0fTYqjpXpVwwPYs39t26HDjG0E0SJ6
        wOTlmSZgcPMg4DomD2m/aGV4dXDEABQTihIyN2j3iFNkG9gayuGZEt46Fp1UyVXM
        8fGRlARxekYF1Yy38hKNA==
X-ME-Sender: <xms:wGBPZJ-FzOiNzPwwUrm3ivRPpC2ypmx3Po6xz3nkUxci4OSgzANCAg>
    <xme:wGBPZNvaqzf1lZl9adk_r8oNoDk6FXuYBK8pgyuo6ssTNg2yzSXfG7B9ZT1qBNZWf
    dZnXdHEH-BAvLNJWsU>
X-ME-Received: <xmr:wGBPZHBJEb6dHbJNbcRqrbO6O_pRI8kPguYMR5WeUHdgg0S00yImR1uXMPysf4kFoCXF6XkXdtyrq_IGF-TN1Lq-mx68_K6enhS9FomcdtX7oo75THe9SxZmEB2P12E>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrfedvfedgudduhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforght
    hhgvficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqne
    cuggftrfgrthhtvghrnhephfffueehtedukeevjedvieevffehjeeiteehhfefkeehgeff
    leefleejudekgfevnecuffhomhgrihhnpehtrhgrvhgvrhhsvgdrtghomhdrrghunecuve
    hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrthhtseht
    rhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:wGBPZNdQeo3OeZ_gdWAQTAfDY9zVi4QkocnpFzy-U-4E0arJdzNPFA>
    <xmx:wGBPZONZLVbYPfjVzmn_c_nT-uvgc2_nLe41g6HuVNykK2TyLqVa0w>
    <xmx:wGBPZPnTO6gNPAuXHmYMGBBcTv82qYqSydskao4ES8T6Qmk2BMjjwA>
    <xmx:wGBPZF2atyZp1MBajdWWzDBuLq60PChgLAjsRFNryiKwzpKAbUig9w>
Feedback-ID: i426947f3:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 1 May 2023 02:48:29 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 2/4] arm64: dts: freescale: ten64: add board microcontroller binding
Date:   Mon,  1 May 2023 06:47:25 +0000
Message-Id: <20230501064727.8921-3-matt@traverse.com.au>
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

This binding is only consumed by U-Boot. There is no Linux kernel
driver, however a userspace utility does exist.

The board microcontroller[1] on the Ten64 is responsible for
certain management functions such as storing the board
MAC address, 10G retimer and boot source selection.

Signed-off-by: Mathew McBride <matt@traverse.com.au>

[1] - https://ten64doc.traverse.com.au/hardware/microcontroller/
---
 arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
index d4867d6cf47c..c4259d3a5712 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a-ten64.dts
@@ -231,6 +231,11 @@ at97sc: tpm@29 {
 		compatible = "atmel,at97sc3204t";
 		reg = <0x29>;
 	};
+
+	uc: board-controller@7e {
+		compatible = "traverse,ten64-controller";
+		reg = <0x7e>;
+	};
 };
 
 &i2c2 {
-- 
2.30.1

