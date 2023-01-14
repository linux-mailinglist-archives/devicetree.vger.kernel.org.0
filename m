Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5057166ADA4
	for <lists+devicetree@lfdr.de>; Sat, 14 Jan 2023 21:24:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230201AbjANUYq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Jan 2023 15:24:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229971AbjANUYp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 Jan 2023 15:24:45 -0500
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD9AE55AA
        for <devicetree@vger.kernel.org>; Sat, 14 Jan 2023 12:24:44 -0800 (PST)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
        by mailout.nyi.internal (Postfix) with ESMTP id 3C6B75C0084;
        Sat, 14 Jan 2023 15:24:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Sat, 14 Jan 2023 15:24:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
        cc:cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm1; t=1673727882; x=
        1673814282; bh=lQp6wvjnDSWgDgWBU9sCba6kbbbR46vdb3st2nVIvl8=; b=F
        8+1fQ5LwyyBh2ATWkSV1/LmWLG/i4e6uiaK/RNsfotVELdD9oQuh+BH2ABe7TjpA
        QtvcpISoNvPUz+MdbvQWNEyB9D0JZ77y68PSRIwghdz23AZ/vMlgnMntl3CpD1qE
        Zktr4jslW0prCf5pk2ZpW3/mjso9mDcw+pV23KrDUvvWHVZl9gWjGKGok0k/K46G
        25t6Gd2wkkQvm/7D+221snEMFDOQiEg6mgd6lJoVm3Hc69Vs/ldQyxZDt0ZNIg4X
        SFPwTIr3IniPpuxtsEMQzweqGWWVO3rchItdfALK0N8RGurog3Ch1mfjSfBbIfdb
        4Bru6IHEjmSF8oNL8uyUA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1673727882; x=
        1673814282; bh=lQp6wvjnDSWgDgWBU9sCba6kbbbR46vdb3st2nVIvl8=; b=n
        gNEWbfWyDZNAHjWJXK9xO6LmX8G1uUPnmJHPi0RHMGTDFaKnwUbfsI0y/3uJUYoy
        WIU8QRwsx56AOs8TGjqQEtk10zLjjFmYiw0UJYKrcYa/7dlOS/KhTYGn5HQUseVc
        Bw2jptYU7BHEZK0O6IPFeYQx3lkinRoT4D8A/+1qepDxr32SJkE1crdvjIBRXfft
        LFP1bHiidGmdk7mEoh7JzKCLIIjOiHAHWc88xv/wl7XWAIVMjZQ2uMBTaU+//3XK
        ichNWNSgc7d4O8A9YMjtsyUwc3sVzeHEnyqZrsn68DgGJMPsPMlqioole7CKzrsE
        EyG4VXzMzeIn44bPsuUfQ==
X-ME-Sender: <xms:iQ_DY3miCKFslLzjZMszWy_tA7XiXtJpBahsxJmWfczwPxO3xWdJEw>
    <xme:iQ_DY63_J1DLUblsg01m5dcMK3xAi_laB2w-RyaQGXh97hL5P8QMk_tI8L2fwey7l
    jPJ9f3qdz-USTbPRg>
X-ME-Received: <xmr:iQ_DY9qimcGzp3wtIMF0ULwCELebwKZLbKqGoNwIbQle66J_Nt5dKZTkUUcnEVYxsROLitlArjdOAYXc4QIyd63ixLMaUreRR9MQZrrGyENAEn6a9-9rmlr1OA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedruddttddgudefjecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefkffggfgfvvehfhffujggtgfesthejredttdefjeenucfhrhhomhepufgr
    mhhuvghlucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqne
    cuggftrfgrthhtvghrnhepjefgfffhudejfedtuedugeeutdetgfeiteffffehjeeugfeu
    vdehjeetfedtffdtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepshgrmhhuvghlsehshhholhhlrghnugdrohhrgh
X-ME-Proxy: <xmx:iQ_DY_melegBkg6EMBVtLp2FAx8Y_fNyjPIMhrFHyAv-hPONsVX9Jg>
    <xmx:iQ_DY10qWCzpm7msPBhMKNJazHpN7mAGbyO9RhzH-HkISCkKleZ2WQ>
    <xmx:iQ_DY-szPEwjRXzEvkj_wRxJhGlCN69s8xy0BkTTsfrRs-7Up2N_VA>
    <xmx:ig_DYynP9FZekKWcR2qIH_3_cGV5NIJgTNBq2QpGOpT2s512k0yWzg>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 14 Jan 2023 15:24:41 -0500 (EST)
Message-ID: <4278c3b3-03b0-4b08-b37e-ef70f7453d49@sholland.org>
Date:   Sat, 14 Jan 2023 14:24:42 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux ppc64le; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>
Cc:     Icenowy Zheng <uwu@icenowy.me>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
References: <20221110005507.19464-1-andre.przywara@arm.com>
From:   Samuel Holland <samuel@sholland.org>
Subject: Re: [PATCH] ARM: dts: sunxi: H3/H5: Add phys property to USB HCI0
In-Reply-To: <20221110005507.19464-1-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/9/22 18:55, Andre Przywara wrote:
> As many other Allwinner SoCs from the last years, the first USB host
> controller pair in the Allwinner H3 and H5 chips share a USB PHY with
> the MUSB OTG controller. This is probably the reason why we didn't have
> a "phys" property in those host controller nodes.
> This works fine as long as the MUSB controller driver is loaded, as this
> takes care of the proper PHY setup, including the muxing between MUSB
> and the HCI.
> 
> However this requires the MUSB driver to be enabled and loaded, and also
> upsets U-Boot, which cannot use a HCI port without a "phys" property.
> 
> Similar to what we did in commit cc72570747e4 ("arm64: dts: allwinner:
> A64: properly connect USB PHY to port 0"), add the "phys" property to
> the OHCI0 and EHCI0 DT nodes in the shared H3/H5 .dtsi file.
> 
> This is not only the proper description of the hardware, but also avoids
> a nasty error message in U-Boot triggered by a recent patch. (The port
> never worked in host mode, but the error was suppressed due to a bug.)
> 
> When using the MUSB port in OTG mode, this also fixes host mode
> switching, so people can use OTG adapters to connect a USB device to
> port 0.
> 
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> ---
>  arch/arm/boot/dts/sunxi-h3-h5.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)

Reviewed-by: Samuel Holland <samuel@sholland.org>
Tested-by: Samuel Holland <samuel@sholland.org>

