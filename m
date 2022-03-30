Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1430C4EB81F
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 04:02:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240508AbiC3CCm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 22:02:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238503AbiC3CCl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 22:02:41 -0400
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28FF1972BE
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 19:00:55 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id DC3D35C0145;
        Tue, 29 Mar 2022 22:00:52 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
  by compute5.internal (MEProxy); Tue, 29 Mar 2022 22:00:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm3; bh=4Q7HdFtOML4vN38tiBIo4WZnYisZzZ25HgTTnB
        08S1k=; b=Jbn5rrQqIcUkdxwmzHt9N0jP4TnRHt0Ch3KoHr5V2FNJ5bPRI68hgr
        05WFaAeWR4aoKwhU9xFQl6vWWD56slTyOofzfOziUC9IFP+L3tQtt349RPy6pIVz
        qB5Ad7X8JtK5XB/55ZFQqHmWU2n74zkrnxDju7jmWE4ByVRYPOND917pOrHLE5MI
        DwkhXt+pTfwm7a/iwKSENwJF9n/YLVbTLmdZa4vlfh8rVtTQR+XOWL4ztELkLyRw
        4xJj9NhyVH7IX7d7YHE1jHi68vjAFxmjEHZzWIBdCnSqNqsvC17Ka5X6jsFTdLcD
        lfdAyDWLoZH46AaK95OAFAjw73MlEdWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=4Q7HdFtOML4vN38ti
        BIo4WZnYisZzZ25HgTTnB08S1k=; b=eaxTZCVYRDnwQqQ76JrilTIA/CGdM19rE
        A8Y4+p+wcC6LkJRozRcLzpMQ6jXMZhdxQwZmUAlbukwGtzs3EdYm5rqw9nbgclzc
        cBNjmA9MZ7qDZDnc7TWOCFZ/i/JaPYe04ls3Vtw+aFHZDdbeyPHJ7A8GS3sulZQH
        t07+4Yrq1etvqcOHvcygw1JYXS//oFbEEiXHiZae5FxP5Y0I9mJlDqQIQSDjvebK
        gnyeIYymjLGiIFFMbqh3gQo85b8n67Lkr00ueSdgxSZaniIMtvfvaTA+Ksw05Rr6
        iQ0z1DA2PMoaURvK8zWky3UdJeKhiCLIMOmXWa43fItM3RdNfhbzg==
X-ME-Sender: <xms:1LlDYpku9h6iGVqeiD54aR2-JJNpPjqrfMWT7Gfl5t7Nb9bok7RIbA>
    <xme:1LlDYk1psUeIdL6J04YsIGXNRA6V_fd_ZY4nzfzewI9OUejUUh0RLSnwB7eBT5teo
    WYwqoZTCRK72Mj4mQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeiuddghedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:1LlDYvpbgbsbvt24ouc3LNmW3yBD31r95qd5JImLjTe0wjaI2Fsn5A>
    <xmx:1LlDYpkxEurjcfAo8fbVidfVaQ3BCF10fL4eDx_CaapQr-sWDkB-YA>
    <xmx:1LlDYn1YnqUYybyguai8d-G5pPboxJduaPysK3d-dlBVXHQ-lz0YVQ>
    <xmx:1LlDYgI3h0MdiHxStrhuqjc1ljgNxKc87J3JV46beGMIRlRESTgXGA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 2E3DAF6043F; Tue, 29 Mar 2022 22:00:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4911-g925b585eab-fm-20220323.003-g925b585e
Mime-Version: 1.0
Message-Id: <a90b8916-337e-44e7-ac01-64ce66e62140@www.fastmail.com>
In-Reply-To: <20220329173932.2588289-3-quic_jaehyoo@quicinc.com>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
 <20220329173932.2588289-3-quic_jaehyoo@quicinc.com>
Date:   Wed, 30 Mar 2022 12:30:30 +1030
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Jae Hyun Yoo" <quic_jaehyoo@quicinc.com>,
        "Linus Walleij" <linus.walleij@linaro.org>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
        "Joel Stanley" <joel@jms.id.au>, "Arnd Bergmann" <arnd@arndb.de>
Cc:     "Jamie Iles" <quic_jiles@quicinc.com>,
        "Graeme Gregory" <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH v3 2/7] pinctrl: pinctrl-aspeed-g6: remove FWQSPID group in pinctrl
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
> FWSPIDQ2 and FWSPIDQ3 are not part of FWSPI18 interface so remove
> FWQSPID group in pinctrl. These pins must be used with the FWSPI
> pins that are dedicated for boot SPI interface which provides
> same 3.3v logic level.
>
> Fixes: 2eda1cdec49f ("pinctrl: aspeed: Add AST2600 pinmux support")
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
