Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2E82144A5D6
	for <lists+devicetree@lfdr.de>; Tue,  9 Nov 2021 05:39:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237416AbhKIEm1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Nov 2021 23:42:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36238 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242606AbhKIEm1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Nov 2021 23:42:27 -0500
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3BE7C0613F5
        for <devicetree@vger.kernel.org>; Mon,  8 Nov 2021 20:39:41 -0800 (PST)
Received: by mail-oi1-x22e.google.com with SMTP id t19so1277853oij.1
        for <devicetree@vger.kernel.org>; Mon, 08 Nov 2021 20:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+Pz92NevhlQIIHyCP8oFIg+pYIGx0bc+HYq2+R7qC0s=;
        b=VXV3qFd6feUoGA0Dj9phwKZpS6bnzrgOGgkh4jB6zxhBHGrJWiE6ZPWQgiOL0hf+4y
         qPFNTS07kLxXPEKjgkJZzla9vgUarIHavmn1Ebk5vhwk+FFIBNaaOlm6pzP9GD2NL2Ao
         C0CyaC3M/FdxyahUSp/7HVE4/xD8h5YPBFjhow+/rSFRhtkFwEb84oV98XeX7HDzDfJU
         dxozTPS9XosCvtTuDh4cAldDz0QIS5FIGEnB1k0U2Hj1fzrgwxhka4ppO18Pujf+CBPR
         yZzAQaLyzeGmKVuwpo731edvn++wOhyMWouW06nGXaBFbnfau+FdLMn5PFgKordxB1wv
         0eIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+Pz92NevhlQIIHyCP8oFIg+pYIGx0bc+HYq2+R7qC0s=;
        b=O0bREIwcG0GLjFubaGQW2g3AmZ9uDocTKYqtaKONWBWGSJe0BA0d3dPWFDNnGtswFi
         ZlQ8lP/H/6gGgBMkbs3eCQmW6FayEgX4B8XsuKLZWIHRSi1h02tO+HgBVa79+vHBseie
         SXjUEo+XQc7nRM02h7fZ/o2lg8ksaWipQ4PmETNvDfEbHUSX7GXtNxtg3p8BgnaYvW/b
         SZ7IMHonqS/ImsGSXbHPoMkMivCZKZ5nL8sH1FaAHyCadIrBUXkvCEdDTuvDkFTTKFyg
         uibviWubqrIpb/AMbVg+DprRfiH4VqgweAvDWNWE+p1E/8Pal1SjjUVW7FmEvYyctT2Z
         9FOQ==
X-Gm-Message-State: AOAM5339KKB9bDvR6aiD0eQwiaVg7Amb+U6kIm1Wg31H6e0Y9sQNx+DV
        o3nuxmkAV6R6NB6vPVYEwAhMNK3QN+goPGnyOMRCng==
X-Google-Smtp-Source: ABdhPJx4wXgHEOdy5PVg8KK2lc3tL/e4WuUSdMvP/hxe2OguXf8K6B7xBS6H6P73oUEw7ixFmlMFF5XtvO0seM32+74=
X-Received: by 2002:aca:120f:: with SMTP id 15mr3108464ois.132.1636432780940;
 Mon, 08 Nov 2021 20:39:40 -0800 (PST)
MIME-Version: 1.0
References: <20211027181350.91630-1-nikita@trvn.ru> <20211027181350.91630-3-nikita@trvn.ru>
In-Reply-To: <20211027181350.91630-3-nikita@trvn.ru>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 9 Nov 2021 05:39:29 +0100
Message-ID: <CACRpkdb1LJkKd8L6XtbDbvenV7=nSLPBqKYkfiVH4UNO64c=Hw@mail.gmail.com>
Subject: Re: [PATCH 2/6] dt-bindings: input/ts/zinitix: Convert to YAML, fix
 and extend
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

> This patch was previously submited here:
> https://lore.kernel.org/linux-input/20210625113435.2539282-1-linus.walleij@linaro.org/
>
> Changes since the original patch:
>  - Use enum for compatible list instead of oneOf + const

Thanks for picking this up. I was meaning to get back to fixing up the
Zinitix driver but haven't had time.

Yours,
Linus Walleij
