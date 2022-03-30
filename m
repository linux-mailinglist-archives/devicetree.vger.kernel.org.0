Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBCE24EB81E
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 04:02:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237379AbiC3CDu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 22:03:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235508AbiC3CDu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 22:03:50 -0400
Received: from out3-smtp.messagingengine.com (out3-smtp.messagingengine.com [66.111.4.27])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37E14B8211
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 19:02:06 -0700 (PDT)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
        by mailout.nyi.internal (Postfix) with ESMTP id 9D7CF5C011A;
        Tue, 29 Mar 2022 22:02:05 -0400 (EDT)
Received: from imap49 ([10.202.2.99])
  by compute5.internal (MEProxy); Tue, 29 Mar 2022 22:02:05 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=cc
        :cc:content-type:date:date:from:from:in-reply-to:in-reply-to
        :message-id:mime-version:references:reply-to:sender:subject
        :subject:to:to; s=fm3; bh=LKpOabm7SOo/CuJ7jhONrV0+KXCQn4hSxuNmQ1
        hmqMI=; b=EdwLrbZjTq293GMPh+VbLKeqa/H89ka3CLJmj++4dT69IewU8WOcxy
        FSxzI/vzltyBec7tpiKECqJ0NaF1xThxE4Dx4An+5+/RdlvyNF6dg8lSYPaz+Psi
        ss6z7B3gb/peR6sVq9V0X5Lfw1N6AdN7Ri1h8SCuWwb1do+WvBrWLRp2aUy2gjS1
        kvaqEpbEnwtkwdWz9UfMJFZ7z+N7t1EB0+BKpseY0wM1kT7gHpmaJGzWYbQ4m/oP
        nqwyGoUE+T59PXaBk+YIaDmFXMaWNEFtT826eR6L4C60k0NpmeLm+lpEcX8rqUNB
        5ajJeN+YN1itUR5gmmso7V1gt1hChXmA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:cc:content-type:date:date:from:from
        :in-reply-to:in-reply-to:message-id:mime-version:references
        :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
        :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=LKpOabm7SOo/CuJ7j
        hONrV0+KXCQn4hSxuNmQ1hmqMI=; b=myI5tTuh551bP9LkZFyBNAAPFRjJjMTHX
        hYd02yHK5rUW7sNc7F5I3NgNY4FaFXkTMtGMbparVA2OB2wRFjQ/5hZVW/UHXS80
        NlC5h/9/o8RrxoKF2p7K4LDEoHUAknehZVuPGLM95mo3W3ca0fTaFY8802q/ULRs
        2y2Iq9ngRGr89t7gbwHGsNgk7I6MB+BZOXTIW0dtwLXLNg3WaxANrFrN1POf20eA
        c1SVhygK+1zaJ8HfBc0F6KMB4XFwglBSBc5jd9Qp8P3s+5jzvLzcaA43je1O6Jxh
        7VQO1Ke8kcJ0dSJS1Gz4RxA+BeHdQ/L+UKd8aUUdlppA2VktpWHAQ==
X-ME-Sender: <xms:HbpDYo6mlb3CkGoh15jW1oHP08Pf7czUHY_klhPQMfzO0TQubG6Xfg>
    <xme:HbpDYp6aOSP_P9aEt48y92pxUqJUon0poAjjCUe4lh5KgLrzk2BgjyLX9bWkBY8PC
    LGKHq4qdxgT9oK9Qg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeiuddghedvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:HbpDYncheUUu75PpCVZTsH2NCbkmB383eErpj2VdAcn3Ojjv3T6Axw>
    <xmx:HbpDYtKVO7kIfw9_lTZe3hEavzPG2utDL-F4thUqYJuDeBDl_8hmAQ>
    <xmx:HbpDYsI61dy2Mf6NWRS7vU7r4m4Q1QYz48ooBlJ2HkV7U9WS4vAvzQ>
    <xmx:HbpDYr9Vn5dqmFMnBL0-3WWaP649lCh8OBSAO0vMC5IikvSuq03eOw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 6199AF6043F; Tue, 29 Mar 2022 22:02:05 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-4911-g925b585eab-fm-20220323.003-g925b585e
Mime-Version: 1.0
Message-Id: <a4029290-69c4-4df0-8b34-988a281d9cb0@www.fastmail.com>
In-Reply-To: <20220329173932.2588289-4-quic_jaehyoo@quicinc.com>
References: <20220329173932.2588289-1-quic_jaehyoo@quicinc.com>
 <20220329173932.2588289-4-quic_jaehyoo@quicinc.com>
Date:   Wed, 30 Mar 2022 12:31:44 +1030
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
Subject: Re: [PATCH v3 3/7] dt-bindings: pinctrl: aspeed-g6: remove FWQSPID group
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
> FWQSPID is not a group of FWSPID so remove it.
>
> Fixes: 7488838f2315 ("dt-bindings: pinctrl: aspeed: Document AST2600 pinmux")
> Signed-off-by: Jae Hyun Yoo <quic_jaehyoo@quicinc.com>

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>
