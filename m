Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5896C4E8C8B
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 05:19:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234289AbiC1DUj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Mar 2022 23:20:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237784AbiC1DUj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Mar 2022 23:20:39 -0400
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7B261EAF0
        for <devicetree@vger.kernel.org>; Sun, 27 Mar 2022 20:18:59 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id 23D3E5C00E3;
        Sun, 27 Mar 2022 23:18:59 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
  by compute5.internal (MEProxy); Sun, 27 Mar 2022 23:18:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm3; bh=/VcwSKrXwmG6PLNjcuTqq8RD2bfdP/TfV3BPLQ
        v4qhI=; b=PWJQBl/4M908k0+MQc3n1E7NGMaZNPhtaoSeY75JR8KkOx1TQLYQvK
        SHiCE8sa3N8vYnL6Dizs8uIEftV3FJyqh0t4kPHYyYdlPLRRxGOibmUgIOGPGmtt
        k85TJFS/4Pr/5uivB+xcpEMu9XzyeLfY/Cwo3iTmkxpKuhp0+/DOmWjAV7vP7Opu
        OTSEhlop7bG1SfgEvTtZHwQbQoJsY9phltgOwcwYmKrxjZS2B/phYtqGj/ZLh8Jh
        lq8v9wpNg+bnSLJZBLvr0OWoT6tZ3DgfVKvK1xDEFArMtQSortSHAI6JlAKhL/n/
        67JKxvjLINs/ADvU9/zRfNPWA6eRD8iQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=/VcwSKrXwmG6PLNjc
        uTqq8RD2bfdP/TfV3BPLQv4qhI=; b=MkEqTFdluXbU5SkxbxgRvijzjJeR67zSI
        cjTDWnYuugzF/sWFr+IDlI4FidXO8JDohItnO8XlcG+3CbjVXiceiT3IGl2ctuUs
        7eA2vnR1nHG4T/C9Wj/enyqChwEA3lg3ePxrFz2MzCII9s3EpCfVna1yklS9re4b
        ztRqx62362fH3wUC0gGPHNRUIPaKW5DWhAcgEQDk/+RoFg6U2KCzX9K6OAmRY373
        XA+yt24qi5lymoye1t9xhkjew1OsKEFULKRu6fIbuZNU+dd6nJJImw3DaiXN4Hiw
        wgEBRQVd/M8dVpQzvH5j3fymCIvrvf9vfP+BxTyVI0a74kPqXIfAA==
X-ME-Sender: <xms:IilBYqTdQoAVYp3Zd-EGhd5gUVXhX2keyALFjLFkOlfNIKjBUxi-uQ>
    <xme:IilBYvzSv4JPY8TQ8_Ocpgjx-rXkq9fJzUjlTZ-cYMq0vdcNmrPumdrJL1_B-vf5u
    nc_J-qbDemiGVqVbA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudehiedgieelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:IylBYn2V6wKbtFVsUZejpP4THzGmlNXvX9SMxpOrD9YFoojoD-sxyQ>
    <xmx:IylBYmBgvGDqLIDWvjrTcRAumf2OTlr6nWy1HmrsYS86qTPjOVtUyA>
    <xmx:IylBYjgNj8M5F8fhRZM9XYsp3PZDDBXyYF8EK4nn65X8LA-96t4ouw>
    <xmx:IylBYuXzcrAM2of7HyWCYmvaqvBW1krPZj7WMQCQZZoMxDuxH7zxCw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id E9120F6043F; Sun, 27 Mar 2022 23:18:58 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4911-g925b585eab-fm-20220323.003-g925b585e
Mime-Version: 1.0
Message-Id: <8a381a39-a6f9-43d6-bfc4-6cf2ae4ead1f@www.fastmail.com>
In-Reply-To: <20220325154048.467245-6-quic_jaehyoo@quicinc.com>
References: <20220325154048.467245-1-quic_jaehyoo@quicinc.com>
 <20220325154048.467245-6-quic_jaehyoo@quicinc.com>
Date:   Mon, 28 Mar 2022 13:46:58 +1030
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Jae Hyun Yoo" <quic_jaehyoo@quicinc.com>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Joel Stanley" <joel@jms.id.au>, "Andrew Lunn" <andrew@lunn.ch>
Cc:     "Jamie Iles" <quic_jiles@quicinc.com>,
        "Graeme Gregory" <quic_ggregory@quicinc.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-aspeed@lists.ozlabs.org
Subject: Re: [PATCH v2 5/5] ARM: dts: aspeed-g6: fix SPI1/SPI2 quad pin group
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



On Sat, 26 Mar 2022, at 02:10, Jae Hyun Yoo wrote:
> Fix incorrect function mappings in pinctrl_qspi1_default and
> pinctrl_qspi2_default since there function should be SPI1 and
> SPI2 respectively.
>
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>
> Fixes: f510f04c8c83 ("ARM: dts: aspeed: Add AST2600 pinmux nodes")

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
