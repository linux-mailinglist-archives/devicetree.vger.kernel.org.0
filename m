Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0C42A566266
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 06:29:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230355AbiGEE3C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 00:29:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230042AbiGEE3C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 00:29:02 -0400
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com [66.111.4.29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89C31387
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 21:29:01 -0700 (PDT)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id EA83B5C00CF;
        Tue,  5 Jul 2022 00:29:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Tue, 05 Jul 2022 00:29:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
        cc:cc:content-transfer-encoding:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to; s=fm3; t=1656995340; x=
        1657081740; bh=Qrb5zwTqGV+Kn2pe8Mi8PPM1f1qcqQR3xTh3pdV4mCw=; b=W
        TaeowdU6DtmKa9sSwVPuI8ZHlkCfBVbb2xqMc7eAWkxvULNlL32ouzocyyTJPGCG
        drX309MQmkU9AUiSnL8tHsMDivwB/wjjqTbr2eJfLtWxT2/xugsIrSgjETH5Hqkz
        hu6P7qugW0lNyhsw6t791ylL0COStAry6g/SVAUQrg2gSWdeDBWS8tOQo64ueZh3
        cxGfjnpGHVfxe5XQekQ+G/A0xzQYep7dei1mXT/I6dPXsrbKulBP20ABtBfFfQ1z
        k01pHPZ9DrjD1wfcISo9BFGgJ6sSS0YM/mubsCu4lTNrbmGk2rbEAmb/oJqMBYd2
        731S1apxKR0EMnvzl/7wg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-transfer-encoding
        :content-type:date:date:feedback-id:feedback-id:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1656995340; x=
        1657081740; bh=Qrb5zwTqGV+Kn2pe8Mi8PPM1f1qcqQR3xTh3pdV4mCw=; b=M
        GMwQ6S4zURYXMnXcRX8UZ2kxPnkHAIR77SVsanSE48KT97f9U2wJJgzG6SYw+cwM
        TMTTqnhoFf7J6znlCPUvNlzFu72+JTbHWzF61wcITExSXAzdgyuOJ7adNC0+Mxe+
        nPlh73HRzcFrSM79dAXbN7XGgxhZNV4qjjxcDiKo4LPTrITfvayzPF+pnMcR0Iiy
        LAEr3nkHkwXxIwgSLZ5bDaYt2YDnVoUnqw1cNLskvWqNLiLlTmpdqdwVTCKzUJLq
        gDYzA0VGkbVeGdCU569uaahLL89FWaAP/NZwpe4l0UxXlkjC3NQN6rKT4C3nL7O3
        C5WZthR1OAnCorVX93+jA==
X-ME-Sender: <xms:DL7DYn2AVhO8TFY8vLika5R5kUe1VwIBQQMpMScz6j8Vr002ZMQeeA>
    <xme:DL7DYmEfdxRpuvklD1XyjprcuMmH_n7j0FKSL16dEE3uuCjqvAzsp-bX4Um_LpMoR
    7bmJLGlwWIKnHQFvg>
X-ME-Received: <xmr:DL7DYn7atb-hHGWc7kuaovEzrpqa4rBZ3-ZosjSW1OWtykOAeRWLcWa2IJ1bat5FZgIHXbKncotJNjz4qgduBRzYskNWYE_Roip6ymSS44MAQLFgp39MBvKpeg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrudeitddgkedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepuffvvehfhffkffgfgggjtgfgsehtjeertddtfeejnecuhfhrohhmpefurghm
    uhgvlhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenuc
    ggtffrrghtthgvrhhnpeelteejffdvgeehkedtkeevueeuteffteffhedufeeujedvudef
    udetieeijeevleenucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrh
    fuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhl
    rghnugdrohhrgh
X-ME-Proxy: <xmx:DL7DYs2nxvdcVeGRuvWsy1wx9qiJ9ufEU_HUfLh56bevwNF-I6fj9w>
    <xmx:DL7DYqFkl60MMQjHl8nNL3cW0R8m-Y9v3dXdrneKK7k6afryfbKVCg>
    <xmx:DL7DYt8aMdHHNr1MhWHDJkITU9jMI1Ik_TRAJIDqRMJajENJmcyPig>
    <xmx:DL7DYv7-CFqmR6IfP3gKwJ6lrfhkICalRVnbXgQdF73U2JWjqeMn6A>
Feedback-ID: i0ad843c9:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 5 Jul 2022 00:28:59 -0400 (EDT)
Subject: Re: arm: dts: sunxi: h3/h5: add gpio-ranges for pio and r_pio
To:     Andrei Lalaev <andrey.lalaev@gmail.com>, andre.przywara@arm.com
Cc:     wens@csie.org, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
References: <20220522222630.7faab948@slackpad.lan>
 <20220523191913.285283-1-andrey.lalaev@gmail.com>
From:   Samuel Holland <samuel@sholland.org>
Message-ID: <f9f7a1b0-5813-f114-b27d-1bfe7c3c78bb@sholland.org>
Date:   Mon, 4 Jul 2022 23:28:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20220523191913.285283-1-andrey.lalaev@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_LOW,
        SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrei,

On 5/23/22 2:19 PM, Andrei Lalaev wrote:
> Andre, I checked the gpiolib API and didn't find any function I can
> use to register gpio-hogs specified in DTS.
> But I found the similar patch to the qcom driver. Could you please check it?
> https://patchwork.kernel.org/project/linux-arm-kernel/patch/20180412190138.12372-1-chunkeey@gmail.com/
> 
> What do you think about it? Is it a good idea to impelement
> the same changes in "sunxi-pinctrl" driver?

Yes, those are exactly the kind of changes we need.

Regards,
Samuel
