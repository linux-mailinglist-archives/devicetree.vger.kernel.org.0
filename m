Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E613717166
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 01:13:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233774AbjE3XMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 19:12:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233767AbjE3XMy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 19:12:54 -0400
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D92E115
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 16:12:51 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-568af2f6454so18298197b3.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 16:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google; t=1685488370; x=1688080370;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3Sk+qWXcGW0GUpvgiyhHnfROShVA7dmyiswjVrrXG8U=;
        b=B05Pid/LKtGjtIJfO8foDbZeVsvkHTrT2f2SBzRS4zWcf1S+2cZB96uHjjgtpX3PDH
         qho7GHfBesnm2u7U0N+Pk1Gk76IAp3zZyfnLIySrQwwN0cROIbNHN9mXCzcAdi2pnnPp
         FcuHHT0sojhyqk+b8IONXCFLSyZd2H5gxGVb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685488370; x=1688080370;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3Sk+qWXcGW0GUpvgiyhHnfROShVA7dmyiswjVrrXG8U=;
        b=JXYE8/iO0jf/rRExNezPOjRDywOfTwKJdlWyq0aJNBaXyWx2b+TySh4Xkoy5vA/lY4
         cHmU4iCE5mB2IUUIZyQDCZV9gU+yuvyHGOhVKqRMCOFkL8DJ7kBRB2T05gWfDmb6iJqE
         uWwHW2PldEWDcv3BLbqRj/C4+LUHaqnUr3gh5h/tggtEbeQ4gFSg/iOVxMhOEOgPLfj7
         yvqHTzVDO6QPbLeTKOuY5ZVfV0tWm/JpTP0Wsqp6HNvWovYsDbJoBfdiB4Fju6oQyPgv
         RYPbp9rVkLY3fyQm9Ob3zoulWmGNWiVv5l8YVGsd/TyZeuojmSQftGGzBugFP20EU3HI
         YJ8w==
X-Gm-Message-State: AC+VfDy8xBqmZcIvCd4xVstmFlkVDaJmWhxMxh53ypLCUGeVi4tKmvZQ
        YzcamgJcs41cyMfTmDe7/68s9YbdMLUrWWECDXsGWQ==
X-Google-Smtp-Source: ACHHUZ7IWuuIkbJHtCvA06a4W4OlLV+CuNxuRKBq081h6V6711sEGkR9kqXrFauvtb28sape68GwRuOip1snlQlaww8=
X-Received: by 2002:a0d:d752:0:b0:565:6634:d106 with SMTP id
 z79-20020a0dd752000000b005656634d106mr4492319ywd.2.1685488370082; Tue, 30 May
 2023 16:12:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230517144144.365631-1-romain.perier@gmail.com>
 <20230517144144.365631-3-romain.perier@gmail.com> <669d7b79-71a6-e1f9-8d7a-71c4b64de28d@kernel.org>
 <CABgxDoKaVip=T5=s2Gd8qpX15cLD=_0TZtQoNodK1CCf+GTYZw@mail.gmail.com> <ad788d84-48ea-2fdb-607a-a8d49c8fe52c@kernel.org>
In-Reply-To: <ad788d84-48ea-2fdb-607a-a8d49c8fe52c@kernel.org>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Wed, 31 May 2023 08:12:39 +0900
Message-ID: <CAFr9PXmkvunO8mu+n7_YFSixe3k0vzowJzrmEWKcs9W677=WNQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: rtc: Add Mstar SSD20xD RTC devicetree
 bindings documentation
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Romain Perier <romain.perier@gmail.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>, linux-rtc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Tue, 30 May 2023 at 17:01, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > This is
> > exactly the case for rtc-msc313e and it was not an issue.
>
> So that was my question - can it be anything else? There is literally no
> description of the hardware... Neither in commit msg nor in description:
> field in bindings.

This RTC block is a block inside of the SSD201/SSD202D (they are the
same die with different memory attached) and is only found there.
The documentation we have for this is literally one page in a PDF that
says "RTC registers".
It could be an IP block licensed from somewhere and technically have a
better name but right now all we know is this RTC block is the one in
that chip and that chip is the first known instance of it.

Say we manage to get the ethernet mainlined at some point: That's a
lot easier as we know already it's a hacked up version of the cadence
macb so the compatible can be "macb something".

> >> What about interrupt line?
> >
> > There is currently no interrupt right now, we have not yet the irqchip
> > code for handling the alarm irq of this rtc block.
>
> So you are going to change the hardware and add the interrupt line? We
> do not talk about drivers, but hardware. Whether your driver handles it
> or not, matters less.
>
> Describe the hardware, not the current implementation of one driver.

We don't really know how the interrupt is wired up in the hardware properly yet.

Cheers,

Daniel
