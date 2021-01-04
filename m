Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC4BF2E9797
	for <lists+devicetree@lfdr.de>; Mon,  4 Jan 2021 15:48:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726685AbhADOsu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jan 2021 09:48:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725840AbhADOst (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jan 2021 09:48:49 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FE47C061574
        for <devicetree@vger.kernel.org>; Mon,  4 Jan 2021 06:48:09 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id l11so64950451lfg.0
        for <devicetree@vger.kernel.org>; Mon, 04 Jan 2021 06:48:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nG2AjKleZe/MMg/+l3MttP/gNqHREnKnr0A94onw/qQ=;
        b=mrHPn2OLOi4YME7VPJwM1Rx1e/Q264762rjOvhewz3zu6B+GVeVIs+U9nhANj6GWXD
         ENlFBRHOhRucQZ/S6Sxmimwn1/NHvCzrVeevg0idAbZb/4y2KFyunTGygGvuaPab7ANB
         mJd5/YUzU8OgAa4X5X/mH5pRltea0sfjplVpNpAY8MVJZzhM8P5kYzR+gmnMh9HyCkoC
         NA9lOioDiJtGUhRGK4o8OAOOicpcpstztggK6H5VeD8k2b2NgX/TN5IViM1rcEkVQl4j
         Y0S5Sum0sXxTBKY5Gsep8+24gREX/IsNqxeQ3UJJruthO9rkeu4VoYKDGSYLYwqh6VR2
         LKlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nG2AjKleZe/MMg/+l3MttP/gNqHREnKnr0A94onw/qQ=;
        b=qOG3/vzf8+wGE6V5Mon3+2AIYMYLi33019qDLeGi6rzj0hqFzMkfo7xIQX0O0veGy5
         pfmFkvTTmkQTwAizBlBRkAm1Qa+qqy2I4H9vDA7xZJ1DGZtghwCvtX4gqowh90kK9r3G
         8/BSqZx+Vb6DlQVgTOvfw6p7CmTR/1Q/7+s65NU7nes31dnBzIs5al4qEJeWR320CI9x
         gFrmhI+a/Cm2G5EpQxDpozWX0j3BuCNrUlTPREeYE/voJF/KY7TLBW22GXdLipwHjho1
         OW7qRMCmsOZPXynwvaICryntzxgNuO3n0SKbdP/5a4pcoAI1v5jmc+wzDxTQ58kt1Iz7
         koNQ==
X-Gm-Message-State: AOAM532r13CFedI75pCyy/ybE1BiXQyBvRhsPk9h/EQJm0YMAUWswccT
        2ElJbvkx3f+oWUZvxfsjr2NKKpRxOeiMskcMbqY6Gg==
X-Google-Smtp-Source: ABdhPJxb6AkCuGsmhq0qIIX6WKbPdSm7r/t8ww3A8ZuDSPhv2/36r1RAxLqOm0mMjX17aL3Ia+ibXVc7QDRG9fW6qTk=
X-Received: by 2002:a2e:9dc3:: with SMTP id x3mr37547603ljj.326.1609771687776;
 Mon, 04 Jan 2021 06:48:07 -0800 (PST)
MIME-Version: 1.0
References: <20201212040157.3639864-1-icenowy@aosc.io> <20201212040430.3640418-2-icenowy@aosc.io>
In-Reply-To: <20201212040430.3640418-2-icenowy@aosc.io>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 4 Jan 2021 15:47:57 +0100
Message-ID: <CACRpkdaeOEFEf_sz4Gs-hobVopq2HUkS3F+22ca9VzQzVKAU=w@mail.gmail.com>
Subject: Re: [RFC PATCH 05/12] pinctrl: sunxi: add pinctrl driver for V831/V833
To:     Icenowy Zheng <icenowy@aosc.io>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Icenowy,

On Sat, Dec 12, 2020 at 5:04 AM Icenowy Zheng <icenowy@aosc.io> wrote:

> V831/V833 are new chips from Allwinner. They're the same die with
> different package.
>
> Add a pinctrl driver for them.
>
> The difference between V831/V833 pinctrl is implemented based on the
> user manual.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: linux-gpio@vger.kernel.org
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>

Could you respin patches 4 & 5 with Maxime's comments
addressed and include Rob's ACK on patch 4? Also please rebase on v5.11-rc1.

I suppose these two patches are independent from the rest of the stuff
in the series so it can be managed separately?

Yours.
Linus Walleij
