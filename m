Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD2EA44565B
	for <lists+devicetree@lfdr.de>; Thu,  4 Nov 2021 16:30:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229970AbhKDPdb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Nov 2021 11:33:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230102AbhKDPda (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Nov 2021 11:33:30 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 342E5C061714
        for <devicetree@vger.kernel.org>; Thu,  4 Nov 2021 08:30:52 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id b15so3520523edd.7
        for <devicetree@vger.kernel.org>; Thu, 04 Nov 2021 08:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=M+COtvf8+vi8Ame9eqBQdGnMVyl2IED6RewYN1F2OFg=;
        b=4Xsh4IK7kDExeMBYlvtxlMszcSU6a4MlzPyPm4CsN9rtwJ7HXYq5rqALaIX6A/Wa9+
         MXOpvuKYqadDBfUO6fIX5zXQ70hPcpf+xLl4YhPG4xKmA4ifJXiOWrA1uIYhTEZtLbB2
         B35meMFcG/E5ZGLLRaJfMrf3bD1tbGJzt4aTsMPnKg1z4FbTCq/ZlAXW8PVoTBwCgKMB
         fBJtFVmo1y5F/lC/XrSmUMnhRSlSqPjUKk0nb7GGVCqE1qZlo6/0saCJkGYBK6GqfKip
         nLB2HjACKV/qPW88gXdLmoyGh855xX+3MbXFhZ/DYAd+fnBxKUcu/mI+BgrH7pVEdk15
         663g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=M+COtvf8+vi8Ame9eqBQdGnMVyl2IED6RewYN1F2OFg=;
        b=iGd4SI2uXsPcwIj6HaGPGqULe+QNalANhOtCCzafX+WdAi0JWM3ycq/FFcbUHb4Ozs
         LK21FCPw7lk3/2K+10JEPgvzZOBwVLp7GqEZayrg9MMqAr33SN0UkaQ1tmWznBCvPdyb
         jbvhlWmC0iIf54y5b3gXxmLfSP09wKloyq7fSqlu47DGPU9WNr4K3MRIxDeVEydFcX5U
         WQ4FzY2qPS5aIXEALt++hPdpinZyR7LsZHBejTz5rzhDncV30dz8hC4XtB7dzh1kBhvK
         pPjM0XwST7rBetx+D1itTPBhRnXDwkmbtdPBubcyjwNJpqCJDCSJZxu7aTmWpPnsnvTR
         tepw==
X-Gm-Message-State: AOAM5338FwAYyULPgG3zXL2L1rzWi+4x0+0GzhvOoD3VaA8yhY1caiqa
        4GJK8D1sk+vno9rZj7iixYi/wWXCPsZmSyKslnAsmw==
X-Google-Smtp-Source: ABdhPJy2UNzo37eDLa95hvWTCuRgJWES7H+FIc7Pf6QWBH9kQXR3cSgC7tpos9FO1y1FCzGDSQXU0sxJSRS68l6x7p0=
X-Received: by 2002:a17:906:5343:: with SMTP id j3mr63319978ejo.538.1636039836026;
 Thu, 04 Nov 2021 08:30:36 -0700 (PDT)
MIME-Version: 1.0
References: <20211016141839.45460-1-joey.gouly@arm.com> <20211016141839.45460-2-joey.gouly@arm.com>
 <CACRpkdac+NYMSHg_KCb2xQpnFaJMBfGT_7Mk+Kst1WrK9As_ZA@mail.gmail.com>
In-Reply-To: <CACRpkdac+NYMSHg_KCb2xQpnFaJMBfGT_7Mk+Kst1WrK9As_ZA@mail.gmail.com>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Thu, 4 Nov 2021 16:30:25 +0100
Message-ID: <CAMRc=MeXf9wxk6=b7WnjN_Rb5fB3c8g6suo0A830Npc5-dhWVA@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] gpio: Allow per-parent interrupt data
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Joey Gouly <joey.gouly@arm.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Hector Martin <marcan@marcan.st>,
        Marc Zyngier <maz@kernel.org>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Sven Peter <sven@svenpeter.dev>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Mark Kettenis <kettenis@openbsd.org>, nd <nd@arm.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 17, 2021 at 12:37 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> Top-posting because I need a nod from Bartosz that I can
> merge this patch with the rest in the pinctrl tree.
>
> Bartosz: I can also offer this one patch in an immutable branch
> as well so you can pull it in as well.
>
> Yours,
> Linus Walleij

Hey! Sorry, didn't see it. Yes please take it.

Acked-by: Bartosz Golaszewski <brgl@bgdev.pl>
