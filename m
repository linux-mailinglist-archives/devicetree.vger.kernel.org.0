Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F6AB5F8DE3
	for <lists+devicetree@lfdr.de>; Sun,  9 Oct 2022 22:42:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229716AbiJIUl5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Oct 2022 16:41:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229590AbiJIUl4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Oct 2022 16:41:56 -0400
Received: from mail-oo1-xc29.google.com (mail-oo1-xc29.google.com [IPv6:2607:f8b0:4864:20::c29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33A261659F
        for <devicetree@vger.kernel.org>; Sun,  9 Oct 2022 13:41:55 -0700 (PDT)
Received: by mail-oo1-xc29.google.com with SMTP id s1-20020a4a81c1000000b0047d5e28cdc0so6834741oog.12
        for <devicetree@vger.kernel.org>; Sun, 09 Oct 2022 13:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tvaot2L15NY1QUpSajE/jgPmRugZzKKTWuvwSu4wnMI=;
        b=bK7HmiQjmO4dSo5b7wHYga7E610PKTFoUB3bEyEy/8+nbyN9WwPP9DeVd16OFiMjU8
         ufgzyQWLqpAjSYrnbK4kP6bQgYxG9wmcAORtTCQaKpV18LAbrL9J6kJ0lzJAyX1Svf+W
         dK1S7BadL1d2E4QpzliZr2T4WE44tC1oePd20=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tvaot2L15NY1QUpSajE/jgPmRugZzKKTWuvwSu4wnMI=;
        b=rrmviQ+bNVZhkjITDuxPsFiY+aqkH5axriZKWoS3tkdGE9QnCSeC0snh2qQpyHIU1g
         x4Zseveqxa0MVh9uwMEUZepcpmUVTh8jilTLXjjomDHo8+CJRlmJnuQVzbTNoDeYo6os
         Sm1cFocScRQ2WiacSAETvz+tzdGcIQQW5NSv/Huu4IOPhNdzplEdQgkNLWmUPHQFBKJ2
         bI3qzc7imK0IKuE339A76IQfEGR3AVANkFKYAbVBm27HtjhRIKR3jHb+P8r88NMR1QjB
         NrwhTjRuaAwZY2RmmFEhj9mlhZEJTVbCm1IWAa4QNjnuJ2pyEdGKzcCg0otsgJC+nsDk
         v9qg==
X-Gm-Message-State: ACrzQf3v3HRpxAThSxGa6Onaoin2+8k1dYgIHRcr0OSHg/ZPQS2SQ9me
        YuSegiLHQIqZb5Nj+1IOOeXJgagYcZm7kw==
X-Google-Smtp-Source: AMsMyM7LAAx4ZTvE5nAQxordXh7JKLHa6EMw5bg2gciym22AYw27Slkn8CnA90rbW3X9gSrXGGBFHQ==
X-Received: by 2002:a05:6830:600b:b0:661:152:5de9 with SMTP id bx11-20020a056830600b00b0066101525de9mr6703585otb.143.1665348113587;
        Sun, 09 Oct 2022 13:41:53 -0700 (PDT)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com. [209.85.160.41])
        by smtp.gmail.com with ESMTPSA id u19-20020a056870441300b0010d7242b623sm4245637oah.21.2022.10.09.13.41.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 09 Oct 2022 13:41:52 -0700 (PDT)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-134072c15c1so7461002fac.2
        for <devicetree@vger.kernel.org>; Sun, 09 Oct 2022 13:41:51 -0700 (PDT)
X-Received: by 2002:a05:6870:c0c9:b0:127:c4df:5b50 with SMTP id
 e9-20020a056870c0c900b00127c4df5b50mr7800531oad.126.1665348111500; Sun, 09
 Oct 2022 13:41:51 -0700 (PDT)
MIME-Version: 1.0
References: <20221003203129.GA2767725-robh@kernel.org> <CAL_JsqLR=9czyHPngjKczSxK8icw1=vBFHKgiRNz2AdvVRKC2A@mail.gmail.com>
In-Reply-To: <CAL_JsqLR=9czyHPngjKczSxK8icw1=vBFHKgiRNz2AdvVRKC2A@mail.gmail.com>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Sun, 9 Oct 2022 13:41:35 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjNaJWvvUKTk43H-OtdP+wnM31tw8v4oz5t1TzfO4x+TQ@mail.gmail.com>
Message-ID: <CAHk-=wjNaJWvvUKTk43H-OtdP+wnM31tw8v4oz5t1TzfO4x+TQ@mail.gmail.com>
Subject: Re: [GIT PULL] Devicetree updates for v6.1
To:     Rob Herring <robh@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 9, 2022 at 11:32 AM Rob Herring <robh@kernel.org> wrote:
>
> Linus, Did you miss this?

No, it's still in my queue.

Right now I'm doing merges (very slowly) on my laptop, while waiting
for new ECC memory DIMMs to arrive.

I have had some instability on my main desktop the last couple of
days, with random memory corruption in user space resulting in my
allmodconfig builds randomly failing with internal compiler errors
etc.

When that happens during the merge window, it's obviously a new kernel
bug causing problems, which is never a great thing.

Except this time it wasn't - it was literally a DIMM going bad in my
machine randomly after 2.5 years of it being perfectly stable. Go
figure. Verified first by booting an old kernel, and then with
memtest86+ overnight.

My new memory is "out for delivery", so hopefully I'll be back up to
full speed by this evening, but I'll probably leave memtest86+ for
another overnight with the new DIMMs just because this wasn't the
greatest experience ever. A fair amount of wasted time blaming all the
wrong things, because _obviously_ it wasn't my hardware suddenly going
bad.

              Linus

PS. And yes, my system is all set up for ECC - except I built it
during the early days of COVID when there wasn't any ECC memory
available at any sane prices. And then I never got around to fixing
it, until I had to detect errors the hard wat. I absolutely *detest*
the crazy industry politics and bad vendors that have made ECC memory
so "special".
