Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A5FE3EB17D
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2019 14:47:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727696AbfJaNrT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Oct 2019 09:47:19 -0400
Received: from new2-smtp.messagingengine.com ([66.111.4.224]:57759 "EHLO
        new2-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1727580AbfJaNrT (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 31 Oct 2019 09:47:19 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id DFFD8537E;
        Thu, 31 Oct 2019 09:47:17 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Thu, 31 Oct 2019 09:47:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        from:to:cc:subject:date:message-id:mime-version:content-type
        :content-transfer-encoding; s=fm1; bh=mxOfBSFmMtNDkPSOJie/vgVchS
        SSrW9932xKMGBkwl4=; b=kqiwf0p2+WFRFjYSGqu+RWMGsO6fuvkeG4l6AOf2hH
        OmBGK9yrr6PzHVze2juELULcdBZKNE6ppkVMpjVzUf8Zfoy+vY4/5FQ0SFfCToZT
        G0poaGByzujt3yA+JN/NtOgTpGalF4Ihcb2jCKziKqILdrzeMCDByYrRZThm/aD7
        Qr87hNHdk95MBJ1sCWm32Yfpg21QiqPCIS5A+JkJc08tLZF4bhW2XtLGqlsleFQ3
        oImk3TgEhDipO5AGiE+7EbOmqLkYQywJai1injDvNsFEAXhaZTZivmX8vhjfBi+8
        i+7FnBQyqLdvbLXBbdv+EFZ1Jscbnt6VzqGwJfan90qA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:message-id:mime-version:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=mxOfBS
        FmMtNDkPSOJie/vgVchSSSrW9932xKMGBkwl4=; b=C+ziwgP4Lq6S/b2UlYclsf
        cuQbCIPXiREKnSeouyyA3A1XQPJ/QR6pw7welKc4QwKwFCgvWeE6UbbuN4HvThsN
        cflRjsLtfN8pFsvQDqNpVC5pTJrhJZ//A0qmPYGzzKxbzC7PbSmrRli5cU8rVr1o
        Mx8UbWcCSKlw75PxnYQaGdfHVAHhHvKp5SYbsLeiP0LM4poZmczk89Gs/gb9bT0V
        aS2mlm51A7AICQQSGkOKvlIWHHwk4OVq8PX0MJWVKPrR3jO/JuhC1924OQm4yqqe
        +VTZI7I2pDcttJdktxnpe7S9lfVhxyJma0NBFq77JX2SZyv88axtuzIhpSGoa6AA
        ==
X-ME-Sender: <xms:5OW6XXsjKac-cLE5jiB5Gs6KEGi32dXpWIY5NfBWZcKEzC1f9mghQA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedruddthedgheegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffogggtgfesthekredtredtjeenucfhrhhomhepofgrgihimhgv
    ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepkedvrd
    dvheegrdegrddufeeknecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
    rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:5OW6XWJ9JCshUvBTeglksUS7tvVeTJb8YJ9DgWWGgrtEgodaA7PZZQ>
    <xmx:5OW6XS1WFigLB_FaKpA_heus3FTGuteKmv2H7_LDuxMpkZKNutnlOQ>
    <xmx:5OW6XekB3NUWGy1mc_3LIMg-beiVCqYpgOoFF6Fuz95srIDgSFRl_w>
    <xmx:5eW6XQG10NOZThzujco-9w-20MKWRf05yDNh3SsBIuZ5nGpUwR9IYg>
Received: from localhost (lns-bzn-32-82-254-4-138.adsl.proxad.net [82.254.4.138])
        by mail.messagingengine.com (Postfix) with ESMTPA id 7B85A3060065;
        Thu, 31 Oct 2019 09:47:16 -0400 (EDT)
From:   Maxime Ripard <maxime@cerno.tech>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>, broonie@kernel.org,
        lgirdwood@gmail.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Maxime Ripard <maxime@cerno.tech>,
        =?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>
Subject: [PATCH] dt-bindings: sound: adau7118: Fix example warning
Date:   Thu, 31 Oct 2019 14:47:13 +0100
Message-Id: <20191031134713.241157-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The ADAU7118 has an example where the codec has an i2c address of 14, and
the unit address set to 14 as well.

However, while the address is expressed in decimal, the unit-address is
supposed to be in hexadecimal, which ends up with two different addresses
that trigger a DTC warning. Fix this by setting the unit address to (0x)e.

Cc: Nuno Sá <nuno.sa@analog.com>
Fixes: 969d49b2cdc8 ("dt-bindings: asoc: Add ADAU7118 documentation")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 Documentation/devicetree/bindings/sound/adi,adau7118.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/adi,adau7118.yaml b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
index c3f10afbdd6f..65f6844a0c6d 100644
--- a/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
+++ b/Documentation/devicetree/bindings/sound/adi,adau7118.yaml
@@ -65,7 +65,7 @@ examples:
         /* example with i2c support */
         #address-cells = <1>;
         #size-cells = <0>;
-        adau7118_codec: audio-codec@14 {
+        adau7118_codec: audio-codec@e {
                 compatible = "adi,adau7118";
                 reg = <14>;
                 #sound-dai-cells = <0>;
-- 
2.23.0

