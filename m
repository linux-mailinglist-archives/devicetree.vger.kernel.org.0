Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6AF14BEB40
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 20:37:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231465AbiBUSf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 13:35:58 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:52764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232959AbiBUSei (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 13:34:38 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4A4620F47
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 10:32:18 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id j15so20193848lfe.11
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 10:32:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=V53eWTyFzxXJsbz+KFVi3xpj3YJA4O3z/bAQ81RYVTo=;
        b=bHLqVIqXmciNyNIryl4JvTW1k3xPS3riIMOsdTzw8F5qtWIlFN1PUlW1XUtMszynwQ
         nOW9RAkEfmlrpOACs2jEptbmnWRadW1x98jfNTMPDdkq39kLfLJq5gfKZdgWu+Za8Jey
         OpyfRrlzj+SEmphpzlP3Lg5eHyTGLoPPk9N74=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V53eWTyFzxXJsbz+KFVi3xpj3YJA4O3z/bAQ81RYVTo=;
        b=1S/dcLK7kKvSdXlbqGZ2E6MCh/6cQRQKQqUzM1PG+RF/gYHniRdpoOhrohDcPwBTOd
         usot5dzwIEmV++4t+XHPxT7PFSoxXYCE975HM99JT6XVqPHun98lk2DW2o6zONPQh8WC
         RYxr3qCxoOrnF6bXStVXBDkftJ7cJtcBYe7R4nDIEPd0Vu5IHHAnCCtdlGHYC7pw8G+s
         XYQ+A6GksWZo03JK5IwvIbHqGViJMCou3h1bZdBilWMh94PsnZyO7tII9jjQTMFljOoH
         f1AwxlmafP2B6Zhq8bxNMSoc8NKtlUT8QiRD40bSvYeDP6IYnqUwstKKvG2bzQWmtQhA
         uPHA==
X-Gm-Message-State: AOAM53387fgAU19J6l0fbmvwUEBfFfYY/TRiKixkMYlIOaAK8NartW3J
        4X/rJvgY4SuUW04j9jZGYwLhHamIO9zR9FAr
X-Google-Smtp-Source: ABdhPJy1hWl/wuYDGNedYXCwmLyWDC1eAUjOLzhw4DPffXv2/0k6dLESWQAOoRMb7iwxh/4bHou16A==
X-Received: by 2002:ac2:4c46:0:b0:443:ed19:f555 with SMTP id o6-20020ac24c46000000b00443ed19f555mr4286606lfk.547.1645468336220;
        Mon, 21 Feb 2022 10:32:16 -0800 (PST)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com. [209.85.167.46])
        by smtp.gmail.com with ESMTPSA id c21sm1182088lfc.88.2022.02.21.10.32.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Feb 2022 10:32:15 -0800 (PST)
Received: by mail-lf1-f46.google.com with SMTP id e5so20222690lfr.9
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 10:32:15 -0800 (PST)
X-Received: by 2002:ac2:4211:0:b0:438:2f1:83c4 with SMTP id
 y17-20020ac24211000000b0043802f183c4mr14986464lfh.435.1645468335096; Mon, 21
 Feb 2022 10:32:15 -0800 (PST)
MIME-Version: 1.0
References: <CAHk-=wiWZ=3dTuRq46KvQVpx-e7xqrnMAVB73dzj7g4Pbwc1zg@mail.gmail.com>
 <1778a683-30fa-9119-c3ce-2dddb5939809@roeck-us.net>
In-Reply-To: <1778a683-30fa-9119-c3ce-2dddb5939809@roeck-us.net>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Mon, 21 Feb 2022 10:31:59 -0800
X-Gmail-Original-Message-ID: <CAHk-=wgyJOBhc9PQr-iAW7yYWoni8Gr+O30vtwDR--opn8hyTA@mail.gmail.com>
Message-ID: <CAHk-=wgyJOBhc9PQr-iAW7yYWoni8Gr+O30vtwDR--opn8hyTA@mail.gmail.com>
Subject: Re: Linux 5.17-rc5
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Rob Herring <robh@kernel.org>, Maxime Ripard <mripard@kernel.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Linus Walleij <linus.walleij@linaro.org>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 21, 2022 at 10:10 AM Guenter Roeck <linux@roeck-us.net> wrote:
>
> Oh, that is "just" the result of the netfilter build problem.

Oh, ok. I assumed it was some runtime failure since it was under the
qemu rubric.

> The real question is why to patch introducing the problem made it
> upstream even though the problem was reported several days before
> the push request was sent.

Yeah, there's a separate gripe-thread for that. The fix is in the
netfilter tree and has been there for a week...

               Linus
