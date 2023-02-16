Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 62001698FBD
	for <lists+devicetree@lfdr.de>; Thu, 16 Feb 2023 10:26:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229890AbjBPJ05 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Feb 2023 04:26:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229932AbjBPJ0z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Feb 2023 04:26:55 -0500
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4CE8C4C6DD
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 01:26:53 -0800 (PST)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-52ecd867d89so16295977b3.8
        for <devicetree@vger.kernel.org>; Thu, 16 Feb 2023 01:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vJiYeBuRbUyqBpvdpmdPFQ9l8unN3J1b2Ti1iTz0lSE=;
        b=zDqcN5PV8yCaAPtx8AA+t4OOsL8jwkNK61af7dz2vdj3EiPFRhA53nmxCQV1ApS/CQ
         YgavKr/ynnbgnxaphfMF1XkHpREBqQpcclXiyTk3JqOzdLY2x+mrwjj0JtIShkv8Ml9O
         5eYLoGk1Due7pgJXafdo4mC+hxXx05OFEa7HYGdSm+MymhfLk7ej1vowkqNh5msO78c9
         SHRPzl24uQ86OyNAIF/BWwPPe2wxHvRsJ1cEBBpFIPHugycklooLmW/PibEex5K0JB1F
         msFpJ8HxAKoZfc30rhVlQFIGgBC6QvubpCvW2NNvCdk0dhftFn9O5VcKTYejjNWHh1bq
         L1NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vJiYeBuRbUyqBpvdpmdPFQ9l8unN3J1b2Ti1iTz0lSE=;
        b=JgHTHV4KLWhl2IFDKnvbOHU47oEQrOLCADtP1zWldGs+uvEROLJ6BCAE4HUJH1ERCc
         ULPpx3TUOkqhDkmDuZTNIrVcM7aTS38EbQSrCTvfjU3L5pqz/8ViOW039kYtTn07yEeG
         dgtm0HF+1b8ZQi3SJn/DLTIIHwm4pFnXN0RkebYE+bHuaopCV2hathYlh9v7zPDA2hh1
         PertXBr3Z5VdHkE7oCLNm9I1iT9V+dHkWr+OG50oeIS4BgXRNUg1K7lewVusiONbY/H/
         kZ8+mKfaw/bJh+ZGqTWA/2LW90Z7X1hWworUBaornGr3KdX4SJxj/A8VDdD4b30q6Jls
         o2EQ==
X-Gm-Message-State: AO0yUKWAK9tVGqFjW4NqBMFuqcL/ucpEddo+jMztDPTsiJElYUqmhiyB
        3q1BQwgB52QyhdfYkCtgugQugsgwEOziRqEd3FkyLQ==
X-Google-Smtp-Source: AK7set9Kw7+m2OQdLQsth3N5Bv1S4uFgvtXcMm+Tt+7oDEkc4khG+Xo6Sp15TOjvSX+LADa+kSceN0ck1vMMf20ltDs=
X-Received: by 2002:a81:6383:0:b0:530:c755:cb82 with SMTP id
 x125-20020a816383000000b00530c755cb82mr603398ywb.336.1676539612458; Thu, 16
 Feb 2023 01:26:52 -0800 (PST)
MIME-Version: 1.0
References: <20230211030646.24549-1-twoerner@gmail.com>
In-Reply-To: <20230211030646.24549-1-twoerner@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 Feb 2023 10:26:41 +0100
Message-ID: <CACRpkdY3bKrLq=F4X_KkdoSQtgwi_=0OwRLV24TPfVQja6Ab5g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio.txt: expand gpio-line-names recommendations
To:     Trevor Woerner <twoerner@gmail.com>
Cc:     linux-kernel@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Feb 11, 2023 at 4:06 AM Trevor Woerner <twoerner@gmail.com> wrote:

> Provide more guidance to differentiate between recommendations for names of
> lines which are hard-wired to on-board devices, versus recommendations for
> names of lines which are connected to general-purpose pin headers.
>
> Signed-off-by: Trevor Woerner <twoerner@gmail.com>

This is really helpful, thanks Trevor.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
