Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E333B6940CC
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 10:21:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229983AbjBMJVl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 04:21:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbjBMJVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 04:21:40 -0500
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A7E314EAA
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 01:21:31 -0800 (PST)
Received: from [172.16.71.140] (unknown [49.255.141.98])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 4175120034;
        Mon, 13 Feb 2023 17:21:29 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1676280089;
        bh=xL/m04ySNSpKjFqiSAw/VBahvIfDK5HdjeVbiBcmgfk=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=RHsyzzFMmdmPkXEwVqXe/xZ47K+EgUknJgR/ve0ZqNOSXCOmvkc+pgrDWwKxy8gU7
         zewJhb4ECO+dObwxXSY0Vqoe9P4VXt+mKSIXHnQUlt+R/GrG+Z6bt58K4B70qZI9A/
         vsVtoQLlWPNpkZDxJmUFtnd6V3fuLvfOD9D5RWZ0O77yUNvLa/FrS/DP+R5pKVtxuU
         kzI1I8zymRjC5EzVGj5K90cDAuNr6YoWX3lC5bKy49F0+nG0kVjjhX2yuWTJqnyEYq
         Sf/E4gPRR3LWtUBlSsGEfHYCPK9nuik6/Q8PrJguRlzJ8cVmhreylKHF0mMwCWujqq
         lh6xnorcpp6ZQ==
Message-ID: <80fa21969d9e0e7a123bd525199dbb40e79d47e3.camel@codeconstruct.com.au>
Subject: Re: [RFC PATCH] dt-bindings: Add AST2600 i3c controller binding
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org
Cc:     linux-aspeed@lists.ozlabs.org, linux-i3c@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
Date:   Mon, 13 Feb 2023 17:21:28 +0800
In-Reply-To: <929a30fc-35f3-ab21-3a16-936ed69d5505@linaro.org>
References: <5c047dd91390b9ee4cd8bca3ff107db37a7be4ac.1676273912.git.jk@codeconstruct.com.au>
         <7c6741e1-ae41-ba20-b859-736214c680e8@linaro.org>
         <91e9e815bed8c2eff19dbe6b3ed36d10c6edcbfd.camel@codeconstruct.com.au>
         <929a30fc-35f3-ab21-3a16-936ed69d5505@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

> You should clearly communicate that driver is coming...

OK.

> Anyway binding comes with the driver, otherwise how can we check that
> you actually implemented it?

I'll include this with the driver once we're past the RFC reviews.

> Please send patches, not RFC. RFC means you are uncertain this is even
> correct and you ask for generic discussion.

Yes, that's essentially what I'm looking for with this change -
particularly with the pullup config, which (as you say) could arguably
be a pinctrl config instead.

If we do decide to do this with pinctrl config, we'll need a separate
driver (and minimal binding) for the global register set to act as the pin
controller. That fundamentally changes the structure here - hence RFC.

> generic discussion comment - implement how other recent i3c bindings
> are implemented. This is basic device, there is nothing special here.

I'd say the global register set makes the binding layout a bit quirky,
as you've identified already.

> Since you did not respond to rest of comments, I assume you are going
> to implement them fully - including dropping the questioned
> properties.

Yep! Some of those will then be unneeded in this binding after going to a
pinctrl approach, and I'll make the fixes as you suggested.

Cheers,


Jeremy
