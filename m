Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2271A6D7230
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 03:52:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231589AbjDEBwd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 21:52:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232695AbjDEBwb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 21:52:31 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE60D3AA4
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 18:52:28 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id h8so137419439ede.8
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 18:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google; t=1680659547;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=d4lO58vBzScCago2059HBRosOdt96vH3MDCMxFhDpLU=;
        b=HwSCCqXDMy0m5qpeuL3nho2ae7NGTVlp+favKncFsOEx+buTc7X76zde/6X9FZfRII
         dV/YFIHSGCBcdRTGl7XqPcAMmnbUas1kvc1hTPh67y9MHgcsTzgv8vup8iENJWoXfOzM
         NaKoLk9WvGGmezSnFQSkQKVME+kd61lNwBa7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680659547;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d4lO58vBzScCago2059HBRosOdt96vH3MDCMxFhDpLU=;
        b=wiTLubdM6su64D71oBLyQIr0MUgC0UDiHNcNt7vvuIDO5GkJt6eL59VNCprlsa+LVP
         gV/v+27d2KCRjugQilI3CSWm7wlTKBDW+J8VZvclRfsWhlsYHbF7IIShkkPLTNeVJehA
         sAxYRxvQtW/Y94+LWgPf/tUuuhjLSBrRetORQMUKmuaBhGGQrOPi9AQaOE9c1kooERUN
         kGk0WHpxrhvjxgLCbD/2UyI610Trbdy7R34LIKeqMrAFiCNfN0qxMmXPE8hbnblL7fk1
         iBA96i5oHnCM17Z4KCFbxDABL5z0PKFgqxyMHZLsv3AO5wBLtutdu+Sv31yb3H/9K1r0
         fTVw==
X-Gm-Message-State: AAQBX9d2Ox47xz/dEsOm3Ij3wGf/zO+Q9wNZ8steiA1QRWvUXTLVpQx7
        6JE91TwP9QNfkBGbs3x7K6huxWRvu/UcwLiNGHw=
X-Google-Smtp-Source: AKy350Z4GY34/FyJIoHiTzDXPRoet2XYtZIsGqixctsIhgTdsjsUlDCm0ENZtjAH2qUyMbTU2uFhN6f3zFswoiR0zKo=
X-Received: by 2002:a17:906:e41:b0:933:1967:a984 with SMTP id
 q1-20020a1709060e4100b009331967a984mr726139eji.15.1680659547205; Tue, 04 Apr
 2023 18:52:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230331091501.3800299-1-jk@codeconstruct.com.au>
In-Reply-To: <20230331091501.3800299-1-jk@codeconstruct.com.au>
From:   Joel Stanley <joel@jms.id.au>
Date:   Wed, 5 Apr 2023 01:52:15 +0000
Message-ID: <CACPK8XdLpg2H4a2nHo4PokfBc4r3D8MbK2-62jXkPXAq8Q03Rg@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] i3c dw,ast2600: Add a driver for the AST2600 i3c controller
To:     Jeremy Kerr <jk@codeconstruct.com.au>
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
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 31 Mar 2023 at 09:15, Jeremy Kerr <jk@codeconstruct.com.au> wrote:
>
> This series adds a new i3c controller driver, for the ASPEED AST2600 i3c
> SoC peripheral. This device is very similar to the dw i3c controller, so
> we implement this by adding a little platform abstraction to the dw
> driver, and then a platform implementation for ast2600.

Reviewed-by: Joel Stanley <joel@jms.id.au>

I have also tested it in qemu.

>
> For those testing at home: there's a couple of prereqs for getting this
> running: we need the ast2600 i3c clocks in their proper configuration,
> as implemented in:
>
>   https://lore.kernel.org/all/20230302005834.13171-1-jk@codeconstruct.com.au/
>
> - this series has been merged to clk-next, but has not hit Linus'
> upstream yet. The series will still build fine without this.
>
> You'll also want the dts definitions for the i3c controller and
> pincontrol setup on the ast2600 platform. I have changes for those in my
> dev/i3c branch:
>
>   https://github.com/CodeConstruct/linux/commits/dev/i3c
>
> - and will send those once we have the driver accepted.

Given we have acks on the bindings, I think it's safe to send the
device tree changes now so we can merge what you have in the upcoming
merge window. If there's changes we can modify or revert.

Cheers,

Joel

>
> v3: expand the prereqs & background above, and implement some feedback
> from review. Mainly: rather that using a platform_data pointer, assume
> platforms will use an encapsulating struct for their platform-specific
> data
>
> v2: This is a rework from an earlier series that implemented this as
> part of the dw driver; I have adopted Ben Dooks' suggestion to split
> into a new driver + exported hooks from the dw base.
>
> As always: comments, queries etc. are most welcome.
>
> Cheers,
>
>
> Jeremy
>
> Jeremy Kerr (3):
>   i3c: dw: Add infrastructure for platform-specific implementations
>   dt-bindings: i3c: Add AST2600 i3c controller
>   i3c: ast2600: Add AST2600 platform-specific driver
>
>  .../bindings/i3c/aspeed,ast2600-i3c.yaml      |  72 ++++++++
>  MAINTAINERS                                   |   6 +
>  drivers/i3c/master/Kconfig                    |  14 ++
>  drivers/i3c/master/Makefile                   |   1 +
>  drivers/i3c/master/ast2600-i3c-master.c       | 168 ++++++++++++++++++
>  drivers/i3c/master/dw-i3c-master.c            |  76 ++++----
>  drivers/i3c/master/dw-i3c-master.h            |  54 ++++++
>  7 files changed, 358 insertions(+), 33 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/i3c/aspeed,ast2600-i3c.yaml
>  create mode 100644 drivers/i3c/master/ast2600-i3c-master.c
>  create mode 100644 drivers/i3c/master/dw-i3c-master.h
>
> --
> 2.39.1
>
