Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6023545E3E6
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 02:05:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1357389AbhKZBIj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 20:08:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57714 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244362AbhKZBGi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 20:06:38 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B34EEC061746
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 17:03:26 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id 47-20020a9d0332000000b005798ac20d72so11685697otv.9
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 17:03:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Lq2I4/4/5ACYz2sGwNZgqqOmgm68d0IFzDiUN/SOAfw=;
        b=l/RZk1bQ9tYCgfBYkzadv/mLRJ6uzvJDu7yeTQmw6H7+LNvVUxNaAw6Ejifwulo5+C
         z2H+rXIZn9V19l8tzxoPHpDzk2V9hH3aolHS90IIUbGgDaVvfsytk2QGNI73EOwr+epQ
         eg/9tRAAZLx/8VmEltbP6UhvkruvWf12KICdJ0JnNe8aH4FBZrzSW512uVQLSgqkq1Qe
         JhwD1XNt7KWOAX8fNQ4r9Gh50KXYekTq4JnmEw96fwHNol6eJjguPwRVyeIj1Q/ZYZ0t
         krEPrRUNwETjh/OYdpLSc9KcBR/H02HI/pWmhdYrJP9LUf1HUMbFu0kmZdt/6gVUjIEC
         ivaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Lq2I4/4/5ACYz2sGwNZgqqOmgm68d0IFzDiUN/SOAfw=;
        b=LJK4A9pRe+sEipcQcghIx2G8QeNSDBwFAGaogCHG3w9YBWK9DJiwU3hVeFtCocFOlH
         guXQu684k+KDD8Dyl4mX8pJEVCU9MWalj5aaK9UBZSHcxKdmSd00exp60iv9fL+lttvd
         qezukbgJfLnwR5WPyJvYnK37aO5hD2WdHA2okx7mLdtUpOzCbYMiijS5qSKsar9dh2dk
         KCQcAkByBga3G655i+dFu1BTQwaPBLTImDkLMkNB3/cXXRRW+O0CccsDzG/ufZ01J9po
         c6SttyGpCogmTpdaN/donFFIB22yQ4mE3Zecj+53/yWnsYnbI1ZGYB2Ik9R64rmocUON
         bt/A==
X-Gm-Message-State: AOAM5314stdLtUlM31Kx9ODvvVZEHfoQBaF6RfCWTI5d9r9vQMY0naHb
        vNEoHGLz5BeszWSE3ZhIjfVtkgBOb7dzCypzzUyOJepT6Rw=
X-Google-Smtp-Source: ABdhPJwxAlB2qiGOlrcv+g+QZNQD/JUyT9Jl2snvfySftlMWND1NVIRL/EctyLrrhDtRDSPZ7nSdOW3oLVfor1op/hQ=
X-Received: by 2002:a9d:74d0:: with SMTP id a16mr24132510otl.237.1637888606115;
 Thu, 25 Nov 2021 17:03:26 -0800 (PST)
MIME-Version: 1.0
References: <20211124230439.17531-1-zajec5@gmail.com> <20211124230439.17531-2-zajec5@gmail.com>
 <YZ9OAC/swfCbBXFt@atomide.com> <3acea66e-c5e1-ff6c-aedb-d9ee61dcf8ab@gmail.com>
In-Reply-To: <3acea66e-c5e1-ff6c-aedb-d9ee61dcf8ab@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 26 Nov 2021 02:03:13 +0100
Message-ID: <CACRpkda9kMQ4EwroCsBKCiLWZZsHth+uLWtdQOQT2DZ4bO=V3A@mail.gmail.com>
Subject: Re: [PATCH V2 1/6] dt-bindings: pinctrl: support specifying pins,
 groups & functions
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Tony Lindgren <tony@atomide.com>, Rob Herring <robh+dt@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 25, 2021 at 1:28 PM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> =
wrote:

> This is a new bit to me and the reason why I got this binding that way.
>
> I had no idea pin numbering is system specific thing. I always thought
> pin numbers are present in every chip datasheets and that is just a part
> of hardware.

It's this way because some chips do not even have numbers on the
pins, just names, like "UARTTX" or so.

The numbering is often not numeral, more like a chessboard
at least for BGAs. So "C14" is a typical pin number.

If the datasheet had numbers we just include it in the string naming
that pin like "UARTTX_C14" or so.

Yours,
Linus Walleij
