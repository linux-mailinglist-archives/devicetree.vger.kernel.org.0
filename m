Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A179F4EB827
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 04:03:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241406AbiC3CEs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 22:04:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241223AbiC3CEr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 22:04:47 -0400
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BE22BD2CC
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 19:03:03 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id 749BC5C0139;
        Tue, 29 Mar 2022 22:03:02 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
  by compute5.internal (MEProxy); Tue, 29 Mar 2022 22:03:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm3; bh=wEpEjAf2Kyjbb2L9jqCTw9PREJ1VL23kPZArqb
        knM70=; b=C5ToEF7Q7CGQ1OXZkq8UEkufgxS1Bfd6PZRoie+huBfIu+aIvVibEj
        /coO4BSwr2AcSB7hUygWQdmFn5wPcNF8spfoNG+9MTaROoY/svN+BwAqCQ2XKAXU
        ozDJDjxQGowoF79y5i6ApYQo3em5jWs761aUtqDx3emHNdWrL0eHfJovJCplSTlY
        svVDua6DLrWoBBX5NODaMr5dTX3MZKpV5JswD7M4clwjSM0ELELdjGBQMVcc4BWX
        aSDIzoROt5TYBgsPn90Q/XejBSzCvIlpBBp/xZie/mv2VyLkdkHREl2WWVouMRdI
        VhL/ZRtbRpHRq2gL9so2pnLgfT2Jg8cQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=wEpEjAf2Kyjbb2L9j
        qCTw9PREJ1VL23kPZArqbknM70=; b=gt36O6XYnCv0vil5hQ2q+l9ALmDoV14Cy
        oW6xwnfGPjIkwU7iDwfg40rLeVRLOyu8L8pVMdX4UxJtrYM7yeejfVI5tgKo0NSe
        udS370IHohqw41YkZo4Kg/vyRQ3v6IMjaF7ivT82KdTDvMEF7oPP/I8431j9sh2Y
        d1QLHwoyEopzVRMJQsfkfcM/+vr28T+oVJ0caigFQViYrdk8sInYTjyVPWm2K/uJ
        XweK48zukM2pKdUlXv2HScj/N6mlcMLBz6YBQfjDs0pimy2+Z1OdXnnWItygfw30
        eswoh5NBHCGQ8Q+cqPvb1+gDUI/8RUo1ic+geFDmmHfDp0PA+2F+g==
X-ME-Sender: <xms:VbpDYuxZ8-IO3gKsutyqcEStLp9iXQwkil9-EM-VLscVYp0rttYcDQ>
    <xme:VbpDYqRt7RkEYIQCthRXMiAdHAuDQ-XIgqYBo78LePmmb2OFrHntYA6nfWnJY8j7M
    iLqNJuNZAaulYOI8g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeiuddgheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:VbpDYgVfKZ3K8jlpziXhGeFw4md5Q-WgccpOPUVtg8FnHuI97cMK5w>
    <xmx:VbpDYkhfe0kvrXq-NOULebsBM-4nqLGDrZyU2OOiMden0CWkIAeCLA>
    <xmx:VbpDYgAGxqO_3jh9lC31ByYalNvpR-Wa0SZOcLHvoTTmePAzCCDWZA>
    <xmx:VrpDYgvixuiXdgh6kN2HDYYuxscNWh74sKqGfE1YvD-V0zu7FvMGkA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id AC094F6043F; Tue, 29 Mar 2022 22:03:01 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4911-g925b585eab-fm-20220323.003-g925b585e
Mime-Version: 1.0
Message-Id: <484751b1-86d0-40e6-b5cd-013ef076f3e5@www.fastmail.com>
In-Reply-To: <20220329173932.2588289-5-quic_jaehyoo@quicinc.com>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
 <20220329173932.2588289-5-quic_jaehyoo@quicinc.com>
Date:   Wed, 30 Mar 2022 12:32:41 +1030
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Jae Hyun Yoo" <quic_jaehyoo@quicinc.com>,
        "Linus Walleij" <linus.walleij@linaro.org>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        "Joel Stanley" <joel@jms.id.au>, "Arnd Bergmann" <arnd@arndb.de>
Cc:     "Jamie Iles" <quic_jiles@quicinc.com>,
        "Graeme Gregory" <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org,
        "Johnny Huang" <johnny_huang@aspeedtech.com>
Subject: Re: [PATCH v3 4/7] pinctrl: pinctrl-aspeed-g6: add FWQSPI function-group
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Wed, 30 Mar 2022, at 04:09, Jae Hyun Yoo wrote:
> From: Johnny Huang <johnny_huang@aspeedtech.com>
>
> Add FWSPIDQ2 (AE12) and FWSPIDQ3 (AF12) function-group to support
> AST2600 FW SPI quad mode. These pins can be used with dedicated FW
> SPI pins - FWSPICS0# (AB14), FWSPICK (AF13), FWSPIMOSI (AC14)
> and FWSPIMISO (AB13).
>
> Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
