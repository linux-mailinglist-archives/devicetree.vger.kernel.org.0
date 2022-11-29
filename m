Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 44E8E63CB01
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 23:24:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236132AbiK2WYL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 17:24:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51562 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235889AbiK2WYK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 17:24:10 -0500
Received: from mail-vs1-xe2d.google.com (mail-vs1-xe2d.google.com [IPv6:2607:f8b0:4864:20::e2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFF986CA1A
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 14:24:09 -0800 (PST)
Received: by mail-vs1-xe2d.google.com with SMTP id i2so15510417vsc.1
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 14:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nrFwTN9BiLta33FPLi07/p55YMkunEvw0W6UmazSgw8=;
        b=BlCjgvxAXRfz2cB0ZnD1GJamzbgE2qhLaJ5cZjEyxc5ARqTULxWlMjD3n5MSgrx4FX
         uOr5bdaz1wOWTpigoXW59uw1v0ROySPkSvoELsCBGz7SpnL44tLEhE7DKRfKy5nbdiEK
         GX0UM2pvRatjgUJICrmq3tvGDdUTikCQjSLmAfKA+THtBnCKZeDl2TKJwjYLuXJxSrcN
         +jS0fhR9f1r6yvAIXUcV0hLecp/1ZNpIPOh6CcoWQPm3rhQ5XNsXoShCsnRCftmIvo8Z
         NfQs45Er4xK/D3mgRrui4x4Kj4pHFP7h5J5rsP4xxaKSBsrLV9QwxFMb4iRyCFAawA+8
         7WPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nrFwTN9BiLta33FPLi07/p55YMkunEvw0W6UmazSgw8=;
        b=yV1Vm6iEzAykONOdVawv2sFTf7GfDM8ymeRGouXCZitJi/37KaRTomxN35izu2lkEe
         eF6L5KYUZ9t1QPv/ez0RsqvSNr1UH+i1cn7+xNKb8k5wc8ndjMMdTZq5OCSwHgXXBQeJ
         4k84PlWZfGFMv3AgQl5mKKFh1NJ4kX4YASn6O40O0PYThaTWulByTTywmxcbPKHkSjUo
         SSiD0pUaPo4VORv2G+UDajBNVQlXVOV7FQz50Qwwup3wGC5iR57krW2c0oOPGZpWE20A
         sPWZ+8fwtNqSZ1vEJiXB793a8GSgaR+KwCxuwCrz8BPz75IUsgC/4sdlMXgnAe2ZaES7
         KEiw==
X-Gm-Message-State: ANoB5pkXv0XXezkm8GInrjUbDLKPhKxemGEXlaeC9aCCMXGzMRIg+kom
        RJFfMl6/2lLTm1ex8nNLtVQlgFxGDDFPL41X9c36hO7fXUA=
X-Google-Smtp-Source: AA0mqf7HfGTAHXCCT13SHUgSIuXmRCuGItUx/SW5De9fMEX0/RkE5pGZaLfxAyhdepZrLJnH6SM2sMoSQ8E2NEavvi4=
X-Received: by 2002:a67:fe52:0:b0:3ad:c930:b9bb with SMTP id
 m18-20020a67fe52000000b003adc930b9bbmr24553815vsr.10.1669760648641; Tue, 29
 Nov 2022 14:24:08 -0800 (PST)
MIME-Version: 1.0
References: <20220929080210.3189925-1-paweldembicki@gmail.com>
In-Reply-To: <20220929080210.3189925-1-paweldembicki@gmail.com>
From:   =?UTF-8?Q?Pawe=C5=82_Dembicki?= <paweldembicki@gmail.com>
Date:   Tue, 29 Nov 2022 23:23:57 +0100
Message-ID: <CAJN1KkzR7NR8TguS7uDs6peDOpkFn0duVBqvKKzm3xnMs9iJ7A@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: kirkwood: Add drivetemp thermal zone in Ctera C200V1
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     Linus Walleij <linus.walleij@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

czw., 29 wrz 2022 o 10:02 Pawel Dembicki <paweldembicki@gmail.com> napisa=
=C5=82(a):
>
> Ctera C200 V1 have two SATA bays, but thermal zone is handled for only on=
e.
> For some reason thermal zone works only with first disk.
> It was reported one year ago [1].
>
> [1] https://www.mail-archive.com/openwrt-devel@lists.openwrt.org/msg56599=
.html
>
> Suggested-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>

Hi all,

Gentle reminder for this patch. Is something blocking it?

Best Regards,
Pawe=C5=82 Dembicki
