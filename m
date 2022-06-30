Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE0195619C6
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 14:03:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235064AbiF3MDb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 08:03:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47408 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232297AbiF3MDa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 08:03:30 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A47C18374
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 05:03:29 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-317710edb9dso177111997b3.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 05:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8O/w6TR2dKsRuoJRXVx1rxTI1qz0Ac85hpk1AotklVE=;
        b=OvhmTdXsUFXudzC4Db9CeVlt7PR+DhwZ+8Z546M0E1phi04c0e4iX5oLS2n8llWbqh
         FLm13l1HEBmpE9Obrcvj/zQhUNF3pbAw4OPbk6cldT/g0RX0l1y0IQGf6ZkCsj8Zi758
         xxi7DPZd2gP3gq+6LzPxiczBxhQKuGJ2VFX6jPX3Cl3SrnTJY4FXdE436lzA5wGZhi7M
         cdAuQNQpfOV1lIObfhAvN9BVwSer5KwP+6KSeW0gL8F7Sh2yDyhlixbHcm5UHbw0SlIq
         BOmRfDIduWiptmYy2Aamj8vUaW/zn9n74qWwXURteRLinMPnDKst9+Ggw9Q1+tKZQubq
         x1tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8O/w6TR2dKsRuoJRXVx1rxTI1qz0Ac85hpk1AotklVE=;
        b=5lYBl6nhl7x18Nyuwe1RmdlviEX6S8aAfzgWuR0S7tKqvgcsvUrp4r2stwe7y83P+B
         bTWjV7sIXY68h7N/sU8VSc0kjeeuBrgGCVoF8/bpaCYljVVVoB6A9YYZOfjLg9PdHRgk
         SBPydXQEsuJkPx7aNJN0rZhxDOVrAoTwBzM5mUDyA8hI/UFIB85ufJis00ApTwSBSQ9F
         lnOguLF9Zxp2a318tOsx270btQdYvhHYp/Jqu/iivx66jgVCZR8OJIt3vw77R2EtepRW
         xcJ0SskGZv87kKbrZ1kEYcyngOUIsVzKnRAhirKZTSJOp9WZVUqFbzo/jIlRd/xoZ9Ri
         coqA==
X-Gm-Message-State: AJIora9hvD1fxxU+uuyJSz814Pr/hrb6PiP2frArMKBR1AGouBkXF9/b
        XqtORbbFJmQUNIvsa3X/lLIl8VCyaJmWCdoB6iv3zA==
X-Google-Smtp-Source: AGRyM1uGnFWeICHREqTtkt6nsJZf4nJAafYGq6WIA3kCzShh5g1PMnoKrOUMMK06t3SoS2b7YQzUY/Qn4NNSVXeZAO8=
X-Received: by 2002:a81:6587:0:b0:318:38c2:2fb1 with SMTP id
 z129-20020a816587000000b0031838c22fb1mr10163769ywb.118.1656590608731; Thu, 30
 Jun 2022 05:03:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220621034224.38995-1-samuel@sholland.org> <20220621034224.38995-3-samuel@sholland.org>
 <CACRpkdaxodnaJsKfFMvYHWtPwZyACiec4iX3ZXSBL5Ptfa6mRg@mail.gmail.com>
 <ffe66c81-9a2c-e2b3-ad9c-ad46824fe76e@sholland.org> <YrwZJEFNBUJvmA6x@google.com>
In-Reply-To: <YrwZJEFNBUJvmA6x@google.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 30 Jun 2022 14:03:17 +0200
Message-ID: <CACRpkdbRdyaf_jVMS=ncs3rcJwhRodqWzFvZi9i98So9vinA0Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] mfd: axp20x: Add AXP221/AXP223/AXP809 GPIO cells
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 29, 2022 at 11:19 AM Lee Jones <lee.jones@linaro.org> wrote:
> On Tue, 28 Jun 2022, Samuel Holland wrote:
>
> > On 6/28/22 9:03 AM, Linus Walleij wrote:
> > > On Tue, Jun 21, 2022 at 5:42 AM Samuel Holland <samuel@sholland.org> wrote:
> > >
> > >> These PMICs all contain a compatible GPIO controller.
> > >>
> > >> Signed-off-by: Samuel Holland <samuel@sholland.org>
> > >
> > > If I can get Lee's ACK on this patch I suppose I can apply patches
> > > 1-3 to the pin control tree?
> >
> > Looks like he already applied v1 of this patch (which was identical):
> >
> > https://lore.kernel.org/lkml/YrnZof9lwsIQCqu7@google.com/
>
> Right, you don't need this one Linus.
>
> Please take the others.

True! No compile-time dependence.

I'll queue the others.

Yours,
Linus Walleij
