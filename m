Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D91350CEB8
	for <lists+devicetree@lfdr.de>; Sun, 24 Apr 2022 04:56:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237795AbiDXC7X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Apr 2022 22:59:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229885AbiDXC7W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Apr 2022 22:59:22 -0400
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FBF013F25D
        for <devicetree@vger.kernel.org>; Sat, 23 Apr 2022 19:56:23 -0700 (PDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id D4A205C00C1;
        Sat, 23 Apr 2022 22:56:22 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Sat, 23 Apr 2022 22:56:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
        cc:cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm2; t=1650768982; x=
        1650855382; bh=JqFpsiVGIAqRWQSDW7yIX+O4lSdHSNm0rrFZT6Ixwzk=; b=p
        RJfM1mqWlNLsKFQNrKZqM7o54ZD21QXdlLkkXzN8F/Jdy+EK+caONMh/iPKtZI/H
        bWWjCPjLmY7+nTI2VigDYGqwYlPtYFuY8ZBKMIFaTzS+LDQZuJr/Q9KrVpGiQgIq
        KTiF9fzQr+COwuKnzx7XbsS7QtjBEcHbnCREqK1pIeN4wc70wI8qEpL7jKNdVFwP
        fMIiswpmDk8U9rPW6bMP8cHWWT4wp2JvnWp5ucA1lJV8M9GN4pVuCfNgRvyjwhT4
        2lZA0E/IfJNXsGFVLmW/GmXRetDMvaMbvXnGnOzP/deEbm2er1s98bUt4N2y2q5e
        feUfCA9Oiymk88cjeWUpg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm1; t=1650768982; x=1650855382; bh=JqFpsiVGIAqRW
        QSDW7yIX+O4lSdHSNm0rrFZT6Ixwzk=; b=tpAELAynGfIgkJqtYlb7wgHMu/p/n
        hQba1lB1iDhyUbWskeNLnXiyJDd+pF4m+JecrkKFMw+4FqsmWUe4sDqwEE93AYyD
        vPlZ/5khcZ3Xn8xDLEDJRqxrRZMrEk6VGzvKU1utwVkIs0btXWUj41+o06jbDnnZ
        blQwb9A1Kd2LcrVCkiBEIGqTpyWFpWl2x4Xzr8qKEfXLbv/N/NEQbTb/Qmzc6LIX
        YKMFkeLyH54mBmLZyZy8DnlPaws4ZOdsVxHTP6a/e0Afo0kHgopV1vCc0OXY1kNP
        fvMwa7BYIfSCgQ3sRMWZMr8VeX1HvRGlAm/FwOIlBmqa7XQQUGTbXdb/w==
X-ME-Sender: <xms:VrxkYpoXwALJlBiv3qNQ5FLgSRk65baDhKt1l-H-j9LCVzFBQLlgNg>
    <xme:VrxkYrqE7FZ8NWCTRANvJFNMVmkCEmbBlLT36Xlk-BzZ81BpCQ01h0FT5B2H1lLVZ
    7asB1Znx2jEeWp1Ng>
X-ME-Received: <xmr:VrxkYmP3yyCtiK0RMln5Y2NhyzoSPRsx6Pifw7mDzU3sqFw7s7tturFMz4ivQEkEB8dDBnjMHaaxOnjX7a47mMT6pepYekU50phGrRPDBUtkx_Iv6GoWaO0xHQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrtdejgdeijecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefuvfevfhfhkffffgggjggtgfesthejredttdefjeenucfhrhhomhepufgrmhhu
    vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecugg
    ftrfgrthhtvghrnhepffdtveekvdegkeeuueetgfetffeileevudekuefhheelvdfhiedt
    heduhfduhefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:VrxkYk6zQmW2nkNjCSSmGR3GUcfeYmU75yShgqHgY5pf1L_CmpBf5A>
    <xmx:VrxkYo4wqjbUyV_r_itjCezwuIcxDz-mxy2JyMFQTPAzeD2UNHbpIw>
    <xmx:VrxkYsjc5JXCiBAZGCib4cRdYLYKTSrZ8MFagKfjvYi1f25Mxj0hpQ>
    <xmx:VrxkYj05tZ25tY2sYmG4RlBktrHTpfsOCc3zSBlwgyq7TvBOCPB8XQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 23 Apr 2022 22:56:22 -0400 (EDT)
Subject: Re: [PATCH] arm64: dts: allwinner: teres-i: Add GPIO port regulators
To:     Harald Geyer <harald@ccbib.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org,
        Torsten Duwe <duwe@suse.de>
References: <20220415165605.28560-1-harald@ccbib.org>
From:   Samuel Holland <samuel@sholland.org>
Message-ID: <336f8b96-6eee-16a5-e896-e90c4020f740@sholland.org>
Date:   Sat, 23 Apr 2022 21:56:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20220415165605.28560-1-harald@ccbib.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 4/15/22 11:56 AM, Harald Geyer wrote:
> Allwinner A64 SoC has separate supplies for PC, PD, PE, PG and PL.
> 
> Usually supplies are linked via the 'regulator-name' property of
> regulator nodes. However when regulators are shared we need to
> declare the additional links in the pinctrl node.
> 
> Signed-off-by: Harald Geyer <harald@ccbib.org>

I'm curious if this solved an issue for you, or if this is just for accuracy.
Both of these regulators have the regulator-always-on property, so they should
have been enabled already. If it's the latter reason, why not add the other
ports? Regardless:

Reviewed-by: Samuel Holland <samuel@sholland.org>

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> index aff0660b899c..cc316ef2e2d6 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-teres-i.dts
> @@ -197,6 +197,11 @@ &ohci1 {
>  	status = "okay";
>  };
>  
> +&pio {
> +	vcc-pc-supply = <&reg_dcdc1>;
> +	vcc-pg-supply = <&reg_aldo2>;
> +};
> +
>  &pwm {
>  	status = "okay";
>  };
> 

