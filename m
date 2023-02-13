Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D25B969401B
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 09:56:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229850AbjBMI4S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 03:56:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57362 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230182AbjBMI4M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 03:56:12 -0500
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D7E813DF5
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:55:45 -0800 (PST)
Received: from [172.16.71.140] (unknown [49.255.141.98])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 5A8B220034;
        Mon, 13 Feb 2023 16:55:39 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1676278542;
        bh=805Rlyhp1RvwvPx1kSRwx0ocdJBODymtJNL4keLIhvU=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=LPbOy8m+vOz21u/ZqcRYCITsCWtw7iYAuiL1myx3Wgio46FlBaOzOqWy47RTb3GPx
         SIQxGux4Opl63nFvFOYNzVH+tjuxRKFqRc5+1Qld3UdD5SWHhSD+U90wGY3Gp0Ls1R
         F95K2xOkfa74/izkYFVPCm5nZaCoV759ul8K6l28QptgU5trN1n4lQSNFCtMB6BfMJ
         QVpeD1FwhvyykqveK7ztd9i5cwbY5DlXIC2L2jviHP1CXH1D5hFOXW0rrW3z8trKms
         BdIkPxEnOU9rqrSn+0aqEVB+e+6EzTu+XLzz9tQ/Nw+/Nz49KoWE7gJYRMGlLmOvrM
         /VoTtQsTYZZRQ==
Message-ID: <91e9e815bed8c2eff19dbe6b3ed36d10c6edcbfd.camel@codeconstruct.com.au>
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
Date:   Mon, 13 Feb 2023 16:55:38 +0800
In-Reply-To: <7c6741e1-ae41-ba20-b859-736214c680e8@linaro.org>
References: <5c047dd91390b9ee4cd8bca3ff107db37a7be4ac.1676273912.git.jk@codeconstruct.com.au>
         <7c6741e1-ae41-ba20-b859-736214c680e8@linaro.org>
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

> 1. Do not use "This commit/patch".
> https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/sub=
mitting-patches.rst#L95

OK.

> 2. Use subject prefixes matching the subsystem (which you can get for
> example with `git log --oneline -- DIRECTORY_OR_FILE` on the
> directory your patch is touching).

So "dt-bindings: i3c:" instead of just "d-bindings:" here.

> 3. Subject: drop second/last, redundant "binding". The "dt-bindings"
> prefix is already stating that these are bindings.

OK.

> 4. Where is the driver? Where is the DTS? Why do we want unused
> binding in the kernel?

The driver is coming next, but I wanted to sort out the structure of the
binding before committing to how the driver consumes the DT data - hence
the RFC.

Cheers,


Jeremy
