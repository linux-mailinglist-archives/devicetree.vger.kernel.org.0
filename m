Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 49CEB6272BD
	for <lists+devicetree@lfdr.de>; Sun, 13 Nov 2022 22:35:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235085AbiKMVfv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Nov 2022 16:35:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229692AbiKMVft (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Nov 2022 16:35:49 -0500
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06C8EB7E8
        for <devicetree@vger.kernel.org>; Sun, 13 Nov 2022 13:35:49 -0800 (PST)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 6E3355C00A4;
        Sun, 13 Nov 2022 16:35:48 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sun, 13 Nov 2022 16:35:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
        cc:cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; t=1668375348; x=
        1668461748; bh=UwDqRAdE0lGuvi08hWmIZnebfm2ixMls5oaMxod5OkM=; b=I
        OAOix7RGyqFJIYKpHzjz+hKRmQ5ZlhCuRuCcyzV3+71SZR+SBXL6SyJZmvl2mRVL
        Zm3bc4UGQNKbRIXxQQbaG+d1npFEoD5aHSVlMK/rCGi/xqZf6GrP9VI0Bo/W4vi8
        fZMPVtQCFBx84+ofCgLKpQRIQOfvlIwh1xIOgUEjhrJx4XIZHypbLlesjv3QK/+O
        Zp3joaUmaQ6bbEyWTdfTHln9/RVOlr5FelI14+lKOujCSqMXBqSRjvHz4UtgeAEU
        0bTNMT597HwoxqU20fnQzwQ8lf5gcbkrBozIjLqNNhBelSIx/11Dd1iiH8gTvj6B
        mW3DaKfxE2wjFuAhMnmQA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1668375348; x=
        1668461748; bh=UwDqRAdE0lGuvi08hWmIZnebfm2ixMls5oaMxod5OkM=; b=f
        m7utLHd890Tvpzf7RSA6xGPndCqgnVk2as/5E7gMKTDa7KCQMjRhCSo6sZ2YcLgS
        wptaHYxZtDjsVSA2QK7BpekLx9cfJxTo5ZQsBRKok8NKmucNsNlAPSHyYuUBJHUB
        QJ9n6tOzd9IYByRhKReiJ6zZopIX/JymEQ9VVg+CaOzfPp509Pebp89tR5amREMG
        QsDx7JirGgM9ZmPvYRMENrmKTqLDIrUh9cjCyl89T26pBBQyMi0cc9+mcN24+KcP
        fxsXcMU6mUGenyhF8QlWtAWrQT3Kr/lQT6GlSiO4Rcnhc6tfhDq4McdzftpMyL2b
        P4c3K35M9ISGeh80CINUg==
X-ME-Sender: <xms:MmNxY0iAxb-8gBPK_khiJVgsHAILToQyyeP-Q_TXnfqYGi3niaZa3A>
    <xme:MmNxY9BqrhLeCuVbDeVRxkRLuCbDCyMSQgBlGgyT9hKM7vBUU4aj5-m6NMEK3vjEY
    hU_DV3mDhGE_CLJuA>
X-ME-Received: <xmr:MmNxY8GyWneK1E-W5dG_LYYX25yBGlXSgLIz_MrElBY250hm_3ejjxAnFt_Njm2vk837OA_BZPd-DuvZfpntpLsVWeVDvcKeQvVgbCC25VKzKzclk6N5xOnZ6Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvgedrgedtgdduheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpeekjeelleefiedthfdtgfekgeehudefudeugeffvdfhudekleel
    fedtteejhedutdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:MmNxY1TuBrv8l0w9OfTS-dg7y1Uk1KDgyVrqOP0xn_qUDX40VL6KsA>
    <xmx:MmNxYxy2xqUd_ThW9M9RomK2wGAat3T2nAM14eU0ycJLCna7H8EYpw>
    <xmx:MmNxYz5O78fn_c54744aVAzfM5DctfdOewNiIVN65PsS4rp4tQQgSg>
    <xmx:NGNxY4nNj5pX82xw2zllEQX_lyfotvgcLzfwmO3GYIwpqZ6FQZjWng>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 13 Nov 2022 16:35:45 -0500 (EST)
Message-ID: <df50359b-b480-a313-5997-1f6a753b111c@sholland.org>
Date:   Sun, 13 Nov 2022 15:35:44 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux ppc64le; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH] dt-bindings: arm: sunxi: add Pine64 SoPine Clusterboard
Content-Language: en-US
To:     Renze Nicolai <renze@rnplus.nl>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Andre Przywara <andre.przywara@arm.com>,
        Conley Lee <conleylee@foxmail.com>,
        Andrew Lunn <andrew@lunn.ch>
References: <2335500.ElGaqSPkdT@werkpc>
From:   Samuel Holland <samuel@sholland.org>
In-Reply-To: <2335500.ElGaqSPkdT@werkpc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/10/22 14:57, Renze Nicolai wrote:
> Add device tree bindings for the Pine64 SoPine Clusterboard.
> 
> Signed-off-by: Renze Nicolai <renze@rnplus.nl>

You need to send this in a series together with the new devicetree, with
the DT updated to used this compatible string list. When you do, you can
add:

Reviewed-by: Samuel Holland <samuel@sholland.org>

> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
> index 3ad1cd50e3fe..00bb4cdfa77f 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -736,6 +736,12 @@ properties:
>            - const: pine64,sopine
>            - const: allwinner,sun50i-a64
>  
> +      - description: Pine64 SoPine Clusterboard
> +        items:
> +          - const: pine64,sopine-clusterboard
> +          - const: pine64,sopine
> +          - const: allwinner,sun50i-a64
> +
>        - description: PineRiver Mini X-Plus
>          items:
>            - const: pineriver,mini-xplus

