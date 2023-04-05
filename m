Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 564396D7368
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 06:34:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236534AbjDEEe4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 00:34:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbjDEEez (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 00:34:55 -0400
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5092E1BDA
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 21:34:54 -0700 (PDT)
Received: from pecola.lan (unknown [159.196.93.152])
        by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 4E08120034;
        Wed,  5 Apr 2023 12:34:46 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=codeconstruct.com.au; s=2022a; t=1680669290;
        bh=/JY2GxUV8U7PZngfK9sN6bkoR5ACX/UvT6PfeNBweuM=;
        h=Subject:From:To:Cc:Date:In-Reply-To:References;
        b=IXb2wDEdqFp90wdXnhW8iMMEHY8wgKoHLl7EYL59NXC0Wd/Z+LQP9si5bE78O4Hpu
         jgoyRd1c8MVesV4H8maoFsrFl48WhplmDRpRbTEiF0vQtsdi7SaN+TkN+WYSvm54IX
         Pi766232ohCgD1zl4lsOIit1FdEjvgI3k3mtTqHTiAhAeSfTRY7X3TsyMgmKCLWhPQ
         C/spOsDuM3q1MlJ83SW3pYgbQb2BNvEoL5cdZ7WQH83DKxm1MkudoUpKBLbEcuCNzD
         kpp6y9D2Ld8V42fbjI9bTaZVzI9/Z2r9/txrOrz4GkTnYJJog/Ua6Q2pJRjUStX7rp
         axgm7LdCgP/Dw==
Message-ID: <94e941a2895bbb40d7b87acd7de6525b8596b096.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3 0/3] i3c dw,ast2600: Add a driver for the AST2600 i3c
 controller
From:   Jeremy Kerr <jk@codeconstruct.com.au>
To:     Joel Stanley <joel@jms.id.au>
Cc:     linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        Matt Johnston <matt@codeconstruct.com.au>,
        Vitor Soares <ivitro@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Jack Chen <zenghuchen@google.com>,
        Billy Tsai <billy_tsai@aspeedtech.com>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Andrew Jeffery <andrew@aj.id.au>
Date:   Wed, 05 Apr 2023 12:34:45 +0800
In-Reply-To: <CACPK8XdLpg2H4a2nHo4PokfBc4r3D8MbK2-62jXkPXAq8Q03Rg@mail.gmail.com>
References: <20230331091501.3800299-1-jk@codeconstruct.com.au>
         <CACPK8XdLpg2H4a2nHo4PokfBc4r3D8MbK2-62jXkPXAq8Q03Rg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.3-1 
MIME-Version: 1.0
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Joel,

> Given we have acks on the bindings, I think it's safe to send the
> device tree changes now so we can merge what you have in the upcoming
> merge window. If there's changes we can modify or revert.

OK, I'll get those into shape.

There is one dependency on this though, and unfortunately it requires
solving *two* of the known-hard problems in computer science:

Do we start at i3c0 or i3c1?

[i3c1 would match the schematic...]

Cheers,


Jeremy
