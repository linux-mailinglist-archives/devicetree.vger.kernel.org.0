Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEB57357914
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 02:34:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229488AbhDHAeg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Apr 2021 20:34:36 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:49911 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229484AbhDHAeg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Apr 2021 20:34:36 -0400
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailout.nyi.internal (Postfix) with ESMTP id 68AEB5C011D;
        Wed,  7 Apr 2021 20:34:25 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
  by compute3.internal (MEProxy); Wed, 07 Apr 2021 20:34:25 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
        mime-version:message-id:in-reply-to:references:date:from:to:cc
        :subject:content-type; s=fm2; bh=A6y1xhjxB+rYO016EU+ElgKOQtyeyVG
        GpE9ZLWZByAU=; b=MM9XsgZA06Lv6b7FcLpi25PtwPNOLTLOEGZS/xqAzU8CCQ8
        xIVmlYvD4HgVEsdvIgO/tS3HeGPxlrHI9tQLhUnbEFoSVNJSYd1nPAFDcHpGe5V8
        t+pYm4DKrBnO4wNb4KDeq+MqUXpsB/vHGXqAB2KbR4QBATUUbs87tDrZR/7zjsW6
        kAwYaViXr8RZll8x6Y5MJqI4I5u8FyE9QwaaBOS2tvt2skdmECRz0CdSB+4CzUW5
        nyDUnsX/bNXsThWus3TU0E5Xq50lV0dsUphhjyEViNsk4g4NjMUuyq0FXWMoG9mz
        y9iBIxyJBdD4G2E9ZoBgJWcSgLHSNDdWMXI2/sw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=A6y1xh
        jxB+rYO016EU+ElgKOQtyeyVGGpE9ZLWZByAU=; b=YNL4vDQroo3M0wjmEHQfnf
        PO4yvEKjC1+dfFH8BOoIr9EwPf4GavKIkhPU6qYllfSnl80PkoAp8hu8A2PcqFlF
        tayxhpl0sEi07gqurjNd2U+4VhuyKFVMEb9WX6u1Fd5JBPX47YlWT8br7jTAH/td
        kI4Nn/IosWYi2nrFTpyr2WuaYisfXlwQyKS4qDQUYV4MQSN1p1VWxi0b3+UqpK94
        BI5tD/Y/gF3X9xG9ni3jYz0OtiP1iJ1rdGQXf2kQyrJMYE0DYakyZOkHwU6mJU6k
        XiQLKfGhX6wKMdE89N54SjwK9Qb8SneLWd7B5Oh+aZi+Ev+0yERTnU7oSFg2c2og
        ==
X-ME-Sender: <xms:kE9uYMp8BEY32VLg7Qz0qAT7IJ82-tBtQvVNDnBZa7dUxh5nPVP9zw>
    <xme:kE9uYCq6NFa6zTxFIBr0o0dtHT6eo_jDkCV4udIWxcQv9-l4bkSVCYu5zvUDyi2X6
    p80rPa1qyMb3HE8JA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudejkedgfeeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
    rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecuggftrf
    grthhtvghrnhephefhfeekgfekudevheffheeihedujeefjeevjeefudfgfeeutdeuvdeh
    hfevueffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eprghnughrvgifsegrjhdrihgurdgruh
X-ME-Proxy: <xmx:kE9uYBNYzRU148cbJGs9Ll1TWfwG33zNYh2sWPaVFP1aIQpeBIp7JA>
    <xmx:kE9uYD7-9rXNHDFLZgxPmG3cNukQuoYZeD0BgRFaPcP1cq1jW3m8Jw>
    <xmx:kE9uYL64AcSmbQ9hqIx9a2GHimAjuTR3oMv5x8KwjCWKe6KXEuUfAw>
    <xmx:kU9uYNlN7jauyB3FeKCcj1mEbVUbFCjuJFGMZjIMInEza1jd7Bu-JA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
        id 0D824A0007A; Wed,  7 Apr 2021 20:34:24 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-273-g8500d2492d-fm-20210323.002-g8500d249
Mime-Version: 1.0
Message-Id: <dbe4fa5f-370a-41fd-a1ab-7b065b5cb8d1@www.fastmail.com>
In-Reply-To: <20210329150020.13632-21-eajames@linux.ibm.com>
References: <20210329150020.13632-1-eajames@linux.ibm.com>
 <20210329150020.13632-21-eajames@linux.ibm.com>
Date:   Thu, 08 Apr 2021 10:04:03 +0930
From:   "Andrew Jeffery" <andrew@aj.id.au>
To:     "Eddie James" <eajames@linux.ibm.com>,
        "Joel Stanley" <joel@jms.id.au>
Cc:     "Rob Herring" <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        "Matthew Barth" <msbarth@linux.ibm.com>
Subject: Re: [PATCH 20/22] ARM: dts: aspeed: everest: Enable fan watchdog
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On Tue, 30 Mar 2021, at 01:30, Eddie James wrote:
> Set watchdog 1 to pulse the fan watchdog circuit that drives the FAULT
> pin of the MAX31785, resulting in fans running at full speed, if at
> any point the BMC stops pulsing it, such as a BMC reboot at runtime.
> Enable watchdog 2 for BMC reboots.
> 
> Signed-off-by: Matthew Barth <msbarth@linux.ibm.com>
> Signed-off-by: Eddie James <eajames@linux.ibm.com>

Acked-by: Andrew Jeffery <andrew@aj.id.au>
