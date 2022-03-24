Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 598634E6920
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 20:11:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229827AbiCXTNL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 15:13:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352886AbiCXTMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 15:12:53 -0400
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 098D9B82E8
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 12:11:21 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-2e5e176e1b6so61192597b3.13
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 12:11:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=nzI2Ptra96kLBKRjEaED+zGkgY7+4rTTAppT9oSKNJg=;
        b=weWqZdGOagSSdbx8MBQitSlj+RV3DvRUBmB6zRGph1kdYeAHCYc2JtIfN96JP7c3IJ
         oILG6ewHmmWiRtqDUmgGAEWyT4b3KnTi9VNJFfEs0XBY5/B9b+fqRGaJre0ZCVFm2w1Z
         pCKDbSDBGsGhmYnDAwiq/nuRfcfXB0N4689EWt3gVmtV3pjupoCtWyUNxLDw9ndVVXfe
         UBUedEjjdKsf1eIBfj7MnsXmSJ6k8C+SOI3PW9EP4k/wk/tMCf6RvBVouV/VyuzioaUM
         Kcq9aoThof47R56iAs0jTRZbMQXE/Sv7WnuLjGDgSrfjjEM0ED4YdZwyKqyuushmoTC2
         CtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=nzI2Ptra96kLBKRjEaED+zGkgY7+4rTTAppT9oSKNJg=;
        b=QKIsWoFR1AUvhS6DkjUyvvuDfRRNlFpUxkUoE0XZTyaUuMf6XxVTfCjLWF0SvYkWOr
         nBF4wkopeVZxTZ8E5J+/BSPEa5AQQyJ3yqTUKQIVBk0imH+C7Nq233sv2KTlyZplP3UD
         9hoDasfQsuVJiQJPh5R2DDKS1XSqw16mobxri8m9lo1Zd4Ite18Iw3iOPTjUu1TNNXQ2
         IzMift4fXxusZrH+T9l3e9BPYqSuMlWLlfVHvKTmXECs8D0pRnw8P8y2EavRYV/i0gUq
         a3VfuigOO3BW7GMX7isxmhRmPefQ4feFOUiJ7F/ron53baM6riLUUKYM/A7HSGtFGblP
         7DhA==
X-Gm-Message-State: AOAM531bvOPcajZykmtx6MCz9Wokyew532dFHnjC7UJwTonmkXH5J1gu
        3tL/US6n+qvRxcP+fLcwPZrFWEXV4nEW7ywXenNSuQ==
X-Google-Smtp-Source: ABdhPJwGqpU6WKxIPdYbC87irVrC94guHnyeitOgVL8saG6LpgunCTzt36BGTJcLpTbXgk2xQ6Z5ANo2sxioQlWx6hc=
X-Received: by 2002:a0d:d68e:0:b0:2e5:9f48:a24a with SMTP id
 y136-20020a0dd68e000000b002e59f48a24amr6650614ywd.151.1648149079903; Thu, 24
 Mar 2022 12:11:19 -0700 (PDT)
MIME-Version: 1.0
References: <20220308003745.3930607-1-quic_jaehyoo@quicinc.com>
 <CACRpkdbFNLLve1-JntNW=eMT9ivZTZHBk-xpwK6w-kE0fczr+g@mail.gmail.com> <CACPK8Xejcvv37uhGUXOTrbXJ=0O17tiDNizo9jtbRqHxyFiLhg@mail.gmail.com>
In-Reply-To: <CACPK8Xejcvv37uhGUXOTrbXJ=0O17tiDNizo9jtbRqHxyFiLhg@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 24 Mar 2022 20:11:08 +0100
Message-ID: <CACRpkdY72b3PWsmi98Fsirb3wVkskSpRhg+Anzf3xPSsa3EXZw@mail.gmail.com>
Subject: Re: [PATCH 0/5] Fix AST2600 quad mode SPI pinmux settings
To:     Joel Stanley <joel@jms.id.au>
Cc:     Jae Hyun Yoo <quic_jaehyoo@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Jamie Iles <quic_jiles@quicinc.com>,
        Graeme Gregory <quic_ggregory@quicinc.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 17, 2022 at 2:18 AM Joel Stanley <joel@jms.id.au> wrote:
> On Thu, 17 Mar 2022 at 01:11, Linus Walleij <linus.walleij@linaro.org> wr=
ote:
> >
> > On Tue, Mar 8, 2022 at 1:37 AM Jae Hyun Yoo <quic_jaehyoo@quicinc.com> =
wrote:
> >
> > > I=E2=80=99m sending this patch series to fix current issues in AST260=
0 pinmux
> > > settings while enabling quad mode SPI support.
> >
> > Patches 2 & 3 applied to the pinctrl tree.
> >
> > Please funnel the DTS patches through the SoC tree.
>
> Thanks for jumping on this Linus. We're not sure that this is the
> correct fix, Andrew is still reviewing (see the comments on patch 3):
>
>  https://lore.kernel.org/linux-arm-kernel/CACRpkdbFNLLve1-JntNW=3DeMT9ivZ=
TZHBk-xpwK6w-kE0fczr+g@mail.gmail.com/T/#m2cdf4f8b55427d6040f5c13eb85dd656f=
3579c48
>
> If you haven't pushed it out then please hold off. If you have, I'll
> let Andrew jump in and recommend the best course of action.

I just dropped them again.

Yours,
Linus Walleij
