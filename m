Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2128F44A5DC
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 05:43:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242768AbhKIEpo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 23:45:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242738AbhKIEpn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 23:45:43 -0500
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4964FC061764
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 20:42:58 -0800 (PST)
Received: by mail-ot1-x331.google.com with SMTP id o15-20020a9d410f000000b0055c942cc7a0so6406669ote.8
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 20:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hRWrAVz0LbsjGfzT/KErKvm82LLvk3rt/5LNrrCj4jM=;
        b=k8LtbYvz/V8FJOqGJxyALA7GqYWynBUH520RA+hNxHBem4RnCwwK6YCLwweF0LCcnH
         4BIex3m870z6ZhvdQnLcfHM7XNK68wTrqQkDaTqysUGZqQq2GWtUzGIntFC2a2jLa4hj
         qsmMY3FoF+8JlwfacNNgHtKDw9ErBwNJxsbnhkH+zFnAe3FCjqFAK4pgSItnBCDNGhXt
         w9UqcIlc1ZDEaabVgGPH6WWDDWIvEgUK/ehJIAymx8qY+fcusnU75Ti+wb0t2GdyxWXq
         qg4rjaWAQJQtI2uyDbFLveQEiUt+ezSToGZE9+ncNwo5PBflEnagyIswz/JWyfInqaZ6
         dZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hRWrAVz0LbsjGfzT/KErKvm82LLvk3rt/5LNrrCj4jM=;
        b=oVEa6zRL1ODQMvUCARKIKoH8vgevX7ZGfQrCiGzgDZP3Dl9mVUDkIG4f5L8KYLIey9
         pGlxPJ32+M3kcyd8zoBfqbE6gO1mf09CcCDYHW6h3MTCvzkSxwFElNbcqm4qtAqxoYjc
         Ekz8osd5vzKCDaVCj9sDQnPo5u7QQF30sk0Rsd0Lr7Bmlid7y12yr4Ne4PbuNdk79k+w
         T2O1CT9y7DJSy7snXDhaRgY+YSRZWIKroiEx4AyTSJIwlzDORt6dO3nPhgWHDZNeIhTL
         YLdk7NaHniP99xqrjklKJYPp0H1KKmUs+722J1K3beQQgq5jMUt7VubSsU9mxoZ0ey/q
         A5cw==
X-Gm-Message-State: AOAM530ZHpA0cmEsuZ4mSScNsu/FWteqnnfLC6DuD80kL2JOi+RXaQjM
        yQ4CdRo56hXVrUMZIMhop3SfwCikVEmrt9rVCdNsnA==
X-Google-Smtp-Source: ABdhPJxiBqLFXtpx4U2A/SmFkodEEd+6sULFRqg+EnNMAnE2WeB72WVAAQ/aF3fE1KT6+Y/1vp13qdcNom199WfnBLk=
X-Received: by 2002:a9d:6348:: with SMTP id y8mr3615949otk.179.1636432977687;
 Mon, 08 Nov 2021 20:42:57 -0800 (PST)
MIME-Version: 1.0
References: <20211027181350.91630-1-nikita@trvn.ru> <20211027181350.91630-7-nikita@trvn.ru>
In-Reply-To: <20211027181350.91630-7-nikita@trvn.ru>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 9 Nov 2021 05:42:46 +0100
Message-ID: <CACRpkdbffWNHZZvP+cCU12umvt6T7cshAgxuDzu1OFanMVUFDQ@mail.gmail.com>
Subject: Re: [PATCH 6/6] input: touchscreen: zinitix: Add touchkey support
To:     Nikita Travkin <nikita@trvn.ru>
Cc:     dmitry.torokhov@gmail.com, robh+dt@kernel.org,
        Michael.Srba@seznam.cz, broonie@kernel.org,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        phone-devel@vger.kernel.org, linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 27, 2021 at 8:15 PM Nikita Travkin <nikita@trvn.ru> wrote:

> Zinitix touch controllers can use some of the sense lines for virtual
> keys (like those found on many phones). Add support for those keys.
>
> Signed-off-by: Nikita Travkin <nikita@trvn.ru>

Nice!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
