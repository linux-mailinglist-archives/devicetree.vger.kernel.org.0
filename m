Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 56A143D1DD2
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 07:56:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229931AbhGVFP0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 01:15:26 -0400
Received: from out3-smtp.messagingengine.com ([66.111.4.27]:38043 "EHLO
        out3-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230123AbhGVFPV (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Jul 2021 01:15:21 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id 547125C00E4;
        Thu, 22 Jul 2021 01:55:55 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 22 Jul 2021 01:55:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
        to:cc:references:from:subject:message-id:date:mime-version
        :in-reply-to:content-type:content-transfer-encoding; s=fm3; bh=Y
        xsb6Cpj6x3/3PIpedmDhhJBEggqhxSmE1lISmLlGos=; b=NGFtXMzBMlbWynfyW
        BKFyuPWHSVCd2rhhmAnwhhSjiwo4IwjtXth7qvJJIJkER6rl7TivMSJEbuNVN1DA
        CV7KmbMLed/I7WBxsiuL/C8GVxG+sWLaFikb9D1ZoDzucClIFsZYhBPwOcgKd5/y
        vq0QpgpNvYLGvLymMwe761Rke0qwkWP4Gz89PpwR0QW0eYYuHm1dn27+JkaeEtEW
        9TrAknnZ/TOyxg1LcycYYaVghvVAVEnRrszOlSZNofw6Ui+3ejgwkUGT4/lBZtY4
        L9GEIUYVwYYwma33hB7Dam1fNF+z+tjNhZx0tCwQ91A835ScVPzRwnKpoMh3P1g1
        xG2KA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:in-reply-to:message-id:mime-version:references
        :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; bh=Yxsb6Cpj6x3/3PIpedmDhhJBEggqhxSmE1lISmLlG
        os=; b=Y62Tl10GLGt5WytsqrshL8z6lniP4Js5yK7W3uzQjVwY/qqmPCn4XoEwa
        k3YbOvq/9TIEVOzXxYIcpZH3wu8AN9R/cvjiOJXqZ6Npra48s1RsKRajjTEqUGZr
        6QB5s48R9SuJeUGcolxtGG9+0hJ+e93MA4jxGRTd8lKbP1yK+Qa4LG4C+vBiFW/Z
        XgdEpqr43JYAHfqTSeG+ITM1/g3ZCxD3wxNaJ+/+SIZq/Dt+JEicODA28a9/vLDG
        0p54UF0sbFnTPrqvaLAmKY5DjXtyZVzrNzX9IO/7UCTlsYFszcg+HlKNQygmT/G8
        6iD3L1efn3m7rI1lLsIIZen343NMA==
X-ME-Sender: <xms:agj5YLTrU_mgw_X1Jwt2sNc_azL070DcWtokCBQ0XSc_B-iGTLTH1g>
    <xme:agj5YMwvZThRrm0mvi8S6L6iAy4cBWfrYlWMdUN1ywppmvpkRh1h-pXK4Qlz_x71E
    i4S6s-3Vv6-F0aBcw>
X-ME-Received: <xmr:agj5YA36dttmXq8ZNN_awyQOreQOU596hIdjGNE-HqvS9URl5Wyv5zQILG7QZKxTDr6cYdCLM4DKR6GSLRt7ghpqqaUWyxIUy87o2TWL3b08EQ7SYsPqflXNQQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeehgddutddtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepvfhfhffukffffgggjggtgfesthekredttdefjeenucfhrhhomhepufgrmhhu
    vghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecugg
    ftrfgrthhtvghrnhepvddttdejieduudfgffevteekffegffeguddtgfefkeduvedukeff
    hedtfeevuedvnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:agj5YLCRL2VHzhC8OfPOG_dB29oVxfDJvO88eDqrijjTCyfxlNwgqA>
    <xmx:agj5YEjsqPwYkTzkSvSEeeOgJYDhi8DRZHKcjTm3CgtexKxMKGrTig>
    <xmx:agj5YPrmexu4m92JUt44znyA75KQtkaP7_5AZVVG8t_tyfIYyt3RPw>
    <xmx:awj5YPWlI-_-WXgalSzUXSO4okVLX_w-5VhV-d8CG7oyUbpS_0e1MQ>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 01:55:54 -0400 (EDT)
To:     Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-53-maxime@cerno.tech>
From:   Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH 52/54] arm64: dts: allwinner: Remove regulator-ramp-delay
Message-ID: <5469a059-dad1-38d2-9ea4-f1b5fa9ac616@sholland.org>
Date:   Thu, 22 Jul 2021 00:55:53 -0500
User-Agent: Mozilla/5.0 (X11; Linux ppc64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <20210721140424.725744-53-maxime@cerno.tech>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 7/21/21 9:04 AM, Maxime Ripard wrote:
> The regulator-ramp-delay property isn't documented in the binding for
> the AXP806, and it's ignored by the driver. Remove those properties.

This is a generic regulator property, parsed by
of_get_regulation_constraints, which is called by
regulator_of_get_init_data in the regulator core. And it appears in
bindings/regulator/regulator.yaml. I believe the binding needs to be
fixed, not the device trees.

Regards,
Samuel

> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts | 2 --
>  arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts  | 2 --
>  arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts    | 2 --
>  3 files changed, 6 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> index 6249e9e02928..a02644eebbe4 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-beelink-gs1.dts
> @@ -256,7 +256,6 @@ reg_dcdca: dcdca {
>  				regulator-always-on;
>  				regulator-min-microvolt = <810000>;
>  				regulator-max-microvolt = <1160000>;
> -				regulator-ramp-delay = <2500>;
>  				regulator-name = "vdd-cpu";
>  			};
>  
> @@ -264,7 +263,6 @@ reg_dcdcc: dcdcc {
>  				regulator-enable-ramp-delay = <32000>;
>  				regulator-min-microvolt = <810000>;
>  				regulator-max-microvolt = <1080000>;
> -				regulator-ramp-delay = <2500>;
>  				regulator-name = "vdd-gpu";
>  			};
>  
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> index c45d7b7fb39a..69c0293aeb16 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-orangepi-3.dts
> @@ -262,7 +262,6 @@ reg_dcdca: dcdca {
>  				regulator-always-on;
>  				regulator-min-microvolt = <800000>;
>  				regulator-max-microvolt = <1160000>;
> -				regulator-ramp-delay = <2500>;
>  				regulator-name = "vdd-cpu";
>  			};
>  
> @@ -270,7 +269,6 @@ reg_dcdcc: dcdcc {
>  				regulator-enable-ramp-delay = <32000>;
>  				regulator-min-microvolt = <810000>;
>  				regulator-max-microvolt = <1080000>;
> -				regulator-ramp-delay = <2500>;
>  				regulator-name = "vdd-gpu";
>  			};
>  
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> index 1ffd68f43f87..6a1ee4232675 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
> @@ -245,7 +245,6 @@ reg_dcdca: dcdca {
>  				regulator-always-on;
>  				regulator-min-microvolt = <810000>;
>  				regulator-max-microvolt = <1160000>;
> -				regulator-ramp-delay = <2500>;
>  				regulator-name = "vdd-cpu";
>  			};
>  
> @@ -253,7 +252,6 @@ reg_dcdcc: dcdcc {
>  				regulator-enable-ramp-delay = <32000>;
>  				regulator-min-microvolt = <810000>;
>  				regulator-max-microvolt = <1080000>;
> -				regulator-ramp-delay = <2500>;
>  				regulator-name = "vdd-gpu";
>  			};
>  
> 

