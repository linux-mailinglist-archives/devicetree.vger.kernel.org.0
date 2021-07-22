Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E1EF3D1FB9
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 10:16:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230100AbhGVHfr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 03:35:47 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:38229 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230048AbhGVHfp (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 22 Jul 2021 03:35:45 -0400
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
        by mailout.nyi.internal (Postfix) with ESMTP id C22CA5C0105;
        Thu, 22 Jul 2021 04:16:20 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Thu, 22 Jul 2021 04:16:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:content-transfer-encoding:in-reply-to; s=fm3; bh=N
        zvHG+wziDIDToWXNvoj2lzuPbVVWXasVbsRChNVX7Q=; b=LigxQMRLDo1YSmv6W
        vhXqg1PIj/89JWybrk/XAvLzFiKKOzMGWNVHqhZS98ldbPDcSGJ1SVrulcxJCuX5
        Leog4f87Hgy3GPYdwJa/2tMBeOgNbrI2plSB4RBhf1+eqYebc21cNTfJBc+YTVNw
        cPuwzID1BaP35iTIbyRRHQI4cYx5Kef0TXOKU7/O3Fp1AG0ORJr3ZMO/oew0XuKi
        0rDNIYvOK9TomvFplIuv2e+BSbpkjJxxgCUJEffA9CuH7v5uYEdaN1+6MU522kq0
        SAA0BAGGHqbN3JtUm3zA/e0Mz9rb5XR1uTsXJGJanr8Cos4nTTSj1GoNAeCQzk/J
        I7/3Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:content-type
        :date:from:in-reply-to:message-id:mime-version:references
        :subject:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
        :x-sasl-enc; s=fm3; bh=NzvHG+wziDIDToWXNvoj2lzuPbVVWXasVbsRChNVX
        7Q=; b=wjalVnBgJ4Vxf1h383U3p+vPi+eiLXsFP0XJq4JU2EYh8SnrBx+Nxm0fv
        QNnjR3x3apJquX7x/c02zNJJE7s9nj6lD9x9X/esyOfw6sSCjKboREor/V3O2w8r
        J6/6Isx/azaDWCIb7Rn0B6q8CD0p6Wzjg5Dd8CzoWHW3yU4wbVpH+8rXx7MRDbOi
        VO2oAzpwPSwQjsxtXRh01+pfwg6CMOU3aPBvrNP4DZJi+weEPtRW76qsh9Z62J4d
        hDJa7edihwhNIg2o6PLcqDxSsncf8IkSiBCuWV743emkGmJdEhHbtUnjqPQdnmSw
        bVnk1slDoPOdqZZANfGusn1QJ80TQ==
X-ME-Sender: <xms:Uin5YDVoEq9GvSzfLMQjey3LV77WpCR3h3euVMQ8L-SmKv0a9f4Y7Q>
    <xme:Uin5YLkYSGNSdopbiJ7dFhCeptY-lgxYPp6su1niQb08APDvxqXjAoxAFtVXfls8w
    zL2E940nQyqMABTnfc>
X-ME-Received: <xmr:Uin5YPYU1TvbfWmn5GwV6jH9NiulRtsUiHaiz9Sm8vkzgEaBEAj5qxzlzrfsm5uXMXcxN_00oH20_UNSkD2DaJJbRPlZlpNL7rhO>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeeiucetufdoteggodetrfdotffvucfrrh
    hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
    lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
    epfffhvffukfhfgggtugfgjgesthhqredttddtvdenucfhrhhomhepofgrgihimhgvucft
    ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtthgvrh
    hnpeevheeuheekkefftdduveevheetfffhudeghfevkeegkeehiefggfdvkeehheeiheen
    ucffohhmrghinhepsghoohhtlhhinhdrtghomhenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Uin5YOVcOtb3DfLEZHy3C6E6-twOutqD9JeUKncXqvdHoQQBEDvSrw>
    <xmx:Uin5YNkPrxs3XD_kYucnG-k-X_tdenyg8XnNgMrDMgWWVZkyX_PPZA>
    <xmx:Uin5YLdRuVzgvMP1F96PB7JPTnD7iCE1AneEYYBop23zvjZksfdBXw>
    <xmx:VCn5YLZE7lsdUwgg3SE_Y0ZTrnWCCujy_g3w4JdZwozTvoXYvKZPvw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 04:16:18 -0400 (EDT)
Date:   Thu, 22 Jul 2021 10:16:16 +0200
From:   Maxime Ripard <maxime@cerno.tech>
To:     Samuel Holland <samuel@sholland.org>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@googlegroups.com
Subject: Re: [PATCH 52/54] arm64: dts: allwinner: Remove regulator-ramp-delay
Message-ID: <20210722081616.arxwrn5krbaocymf@gilmour>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-53-maxime@cerno.tech>
 <5469a059-dad1-38d2-9ea4-f1b5fa9ac616@sholland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <5469a059-dad1-38d2-9ea4-f1b5fa9ac616@sholland.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 22, 2021 at 12:55:53AM -0500, Samuel Holland wrote:
> On 7/21/21 9:04 AM, Maxime Ripard wrote:
> > The regulator-ramp-delay property isn't documented in the binding for
> > the AXP806, and it's ignored by the driver. Remove those properties.
>=20
> This is a generic regulator property, parsed by
> of_get_regulation_constraints, which is called by
> regulator_of_get_init_data in the regulator core. And it appears in
> bindings/regulator/regulator.yaml. I believe the binding needs to be
> fixed, not the device trees.

It's indeed parsed by the regulator framework, but then it calls into
the driver if that property is set using set_ramp_delay if it's set.

https://elixir.bootlin.com/linux/latest/source/drivers/regulator/core.c#L13=
78

We don't set that hook for the AXP806 DCDC-A and DCDC-E regulators (that
use AXP_DESC_RANGES) at all:

https://elixir.bootlin.com/linux/latest/source/drivers/regulator/axp20x-reg=
ulator.c#L343

And the only implementation we have (set for AXP_DESC and AXP_DESC_IO)
works only for the AXP209:

https://elixir.bootlin.com/linux/latest/source/drivers/regulator/axp20x-reg=
ulator.c#L368

So, it just looks like those properties have never been tested since
they were just ignored.

Maxime
