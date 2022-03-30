Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 07FBF4EB828
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 04:03:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237369AbiC3CFf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 22:05:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235508AbiC3CFe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 22:05:34 -0400
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3A472716D
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 19:03:50 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id 63F585C01CC;
        Tue, 29 Mar 2022 22:03:50 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
  by compute5.internal (MEProxy); Tue, 29 Mar 2022 22:03:50 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm3; bh=3lOGTngDtZabUxHOzMCXhzSDxrBsH7vOqXNJAc
        qBp+Y=; b=G0cqwnCE5uDlLLTDqN/HKduae+kHxE28qv0BYtgOhhH+KSmdSjGTsk
        XIsh9gVuxThQK+wcgntsdjOjIJNr6zDyWhTHuBDWsS+V9qANjDIZoUJeNJhvb/D/
        mprD7FqJoBPd9qZKzRZOmPbWphSKoJZ1VXAtC8WCcJoKlwKV5jIQLl7uAmxdMtpC
        BclsPZknsVwIrMLx4cB3T453RIuKHcpVd0lkVoemLtwjgGyirhjbTgzltT3iMJRF
        b7m0atM9IoRTq7QqOpIt8b2lVGDp7SP7QwxhOR51Qy8phpgUo0IcVqC5r5sPy5w7
        9GhCXdqM4KswqBKCnsxfZg4r4LUi4bdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=3lOGTngDtZabUxHOz
        MCXhzSDxrBsH7vOqXNJAcqBp+Y=; b=VeEx2Y9ldIPbFf2jhfs4BrjTzdzGsMDS6
        nREazG+U4z5Cm3MpQatzeTAAjblj+X6IMaId0VsF05uMv0RrLgWpljJiQmR4EjyG
        XWJ7ykbExNWLSqhe/wyZSQ00aTblgGM2MeDa9lLQyUgxGG52wBKBSBIFm8dFA57G
        yaUCpdh3AGsiwOb3BxylcCr3SUJTXkaZ4GE9j//bMNSf6oA02RQN4PebAXnj0eDe
        tCCejeJri5XVSXduX8mOcvMwa1UIrqqaFGyIYL0iJbkWWehMhsJaxRzaMz3WlX9a
        9eiWkNpOg41kg1y4TcnPBWBvGE0WsRl/5ioLpx7kppF0cY/ssUElA==
X-ME-Sender: <xms:hrpDYjt9F6kj6jWlRlvPngvthh1gybt0i4GvX6y8c4zVo6S59jGgYQ>
    <xme:hrpDYkdw3f3__IKIL9-28t_4ym5W8nle5jOPipvJu6sOa8-gOMRT4AKV8sFQJcqyi
    6UkoK6guKTu10bGcw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeiuddgheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:hrpDYmzw_BR5csG0M7_HCK2LQLWsAkYSwi-hphQO1QgJ3QacDYnYpw>
    <xmx:hrpDYiPSJsDX_Fx-2YiPPSCyx_1Dl28-Oa8CEsJY_Y7-ON4NFU931w>
    <xmx:hrpDYj-v2v_sD5D-YRFObpvJewbctjugEOUD1mtpncBiu1E6Cda01Q>
    <xmx:hrpDYvTLuPbYI_bJXEjUGYScsiwI5WdhSF4AbB4SPcSt5bC8_6mJ4A>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 3171FF6043F; Tue, 29 Mar 2022 22:03:50 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4911-g925b585eab-fm-20220323.003-g925b585e
Mime-Version: 1.0
Message-Id: <74310f2b-e562-48e0-a3f1-e087eba4b4f9@www.fastmail.com>
In-Reply-To: <20220329173932.2588289-6-quic_jaehyoo@quicinc.com>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
 <20220329173932.2588289-6-quic_jaehyoo@quicinc.com>
Date:   Wed, 30 Mar 2022 12:33:30 +1030
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
Subject: Re: [PATCH v3 5/7] dt-bindings: pinctrl: aspeed-g6: add FWQSPI function/group
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
> Add FWQSPI function/group to support QSPI mode on the dedicated
> FWSPI interface.
>
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
