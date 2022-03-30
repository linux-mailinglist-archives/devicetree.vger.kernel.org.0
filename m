Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37DD24EB82A
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 04:04:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241223AbiC3CGE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 22:06:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235508AbiC3CGD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 22:06:03 -0400
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 94531C6EE3
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 19:04:19 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id 05AAE5C0135;
        Tue, 29 Mar 2022 22:04:19 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
  by compute5.internal (MEProxy); Tue, 29 Mar 2022 22:04:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm3; bh=NIpyGkqRkWw3Y7sDshii26yHD3TWoCmmcaYVoG
        pKQSU=; b=V9YjlGLyCihdgB5+0McmMEV16HZ4c5k4hZFPrgOnhEeepg6loBB6du
        IEYuCLJjrmkKs9yIqLsEyk8FNHXE/AZsF/QL/Ha7C3p6zbr1PIR7ZNNBjb7HmvKw
        6f9mP0wuIUqi4a3GwFAI3dTCZDh7BZyhBBJl864cDuO9rGWMJTdA0u4UHUBCaqnM
        rBP7L4kTw0gernM6221l1h5KJXW4ZsGtIe0ym8ZdAvhJaxJQEPIIgPvK/ccHSz1r
        EQPsq1ReErlcGlJR1/+wQTvah1P3Ca0ebRg89ln/l+wQFBsMNJj5OHl8jOsXXTzs
        SwWvWpJ1GoBDN9T6HJT9sgbU/sPLjKEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=NIpyGkqRkWw3Y7sDs
        hii26yHD3TWoCmmcaYVoGpKQSU=; b=oMOvExnb4aPcGfpOuidhjDBHQDJsjYSjN
        oFyfP3YziewV88tImNTNf0SwVsIoFMnaPGr9Ds+JfrmZybzer+NK3Jwx6ygqi/s/
        IF4QlyRe6Xx6iBi4zJaPHwK7m25P/yVcadUIcDnuRLdqTpNSNd4yka6qt64vU0o8
        cLOewl2AiXYDEmrrR+F+ol8khmL1hfa3U8XJIMAiE4c8lXGM4MFzGB7QaWjRVhx6
        nhMyqFDCecb5QvLN2bkaFji+u/aflh77HCD1yQRz2xHbkG/FUcfSH39F+BvzihTg
        JMIVhte9ukQAloO5FlUzdBE5h0kp3XfbXSVM5ONYU3bHOtc+fCkWQ==
X-ME-Sender: <xms:orpDYqzRfZbUGx1hCUbmYGDFEMy-TGmwogTUUV9RVRH4kLgOw3etiQ>
    <xme:orpDYmTqeNi60aDDPK1VOqd18p7GUX2luBsRQYbdbjOd7MyeIc8SQfZsiUiyThpqp
    pVelmVF9_q0iZm77A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeiuddgheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:orpDYsX8oZES-Y63qCXx1O97hur4gUFsPtIXJ7YIFRMKgRMWJ3bQzw>
    <xmx:orpDYggKkauencbt97Du26DWo5si_ccCcEV3Bs242f0CRkkxR4VuoQ>
    <xmx:orpDYsA5aMd9wT3jwq7Mj5s_E1-yWCifOtE_bzZEBRlxoeK5wK-Fvg>
    <xmx:o7pDYsu8nFpOldp3zbcX7zg-XLLo-RWxwVTMMPMBX33Zk8fEJBVEuw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id C6175F6043F; Tue, 29 Mar 2022 22:04:18 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4911-g925b585eab-fm-20220323.003-g925b585e
Mime-Version: 1.0
Message-Id: <5d92ed84-be77-45f2-98e9-29f9ad0d233b@www.fastmail.com>
In-Reply-To: <20220329173932.2588289-7-quic_jaehyoo@quicinc.com>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
 <20220329173932.2588289-7-quic_jaehyoo@quicinc.com>
Date:   Wed, 30 Mar 2022 12:33:58 +1030
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
Subject: Re: [PATCH v3 6/7] ARM: dts: aspeed-g6: add FWQSPI group in pinctrl dtsi
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
> Add FWSPIDQ2 and FWSPIDQ3 group to support AST2600 FW SPI quad mode.
> These pins can be used with dedicated FW SPI pins - FWSPICS0#,
> FWSPICK, FWSPIMOSI and FWSPIMISO.
>
> Signed-off-by: Johnny Huang <johnny_huang@aspeedtech.com>
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
