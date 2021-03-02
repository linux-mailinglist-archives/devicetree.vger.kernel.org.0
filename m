Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D78C32AB76
	for <lists+devicetree@lfdr.de>; Tue,  2 Mar 2021 21:33:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1836598AbhCBU2r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Mar 2021 15:28:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1839027AbhCBP4L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Mar 2021 10:56:11 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AA4BC061D73
        for <devicetree@vger.kernel.org>; Tue,  2 Mar 2021 07:30:26 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id r23so24439966ljh.1
        for <devicetree@vger.kernel.org>; Tue, 02 Mar 2021 07:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=W834NQ1vAh6LWdXU80aAvj1G8P2ffq4WwVKe01ihhOs=;
        b=gKyg1Muwq2lNtJ5GXY+ygyJPb/wwpaaAi1kBGRe7mFZmw8B8tViDhbynkysd4lYarJ
         RnUJwn+JNLRcoX2ZYOJQuYMcmTFTmrV9vKERejJTkso//LWx0ulfjhBrT2wygnU5sDA6
         hyzYxssPd9sN3sCntg5mSL47i7uY5gAMqhbxROdUrtN8i27FYVZk+1QtDJ/cSnv/3mE2
         d82H/xfJJXjX4PXAGc4q8my3bF/LseKJNkuG/knSItT5dXHE420CrWGxLWaqgwBy+xfl
         tlIENx5fwOJ3pgfoDAJXaqnVXblnxySTj9Dqep3d4zUXwJmNb8UOccIT9G594r3i9t42
         F9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=W834NQ1vAh6LWdXU80aAvj1G8P2ffq4WwVKe01ihhOs=;
        b=cCbCsKqtkEcsWFujlFUHWkZyM7WcIYxe33Z+8aaV6NRke7rrEJggafF0Rv7CpTqrC2
         hyybx4TtnMdBsPuoVhjb8dDOvwD12LkIzcQN4wF+GV1871k/bF1JiSjuDl36rZv4uRQm
         kE/R98t93NjPIX4b7WQmJLefjLti6FZDbOE009CUooeYkzyX0GR9XuojPP+hST8ojsor
         2IsCZ7DGL862RGB/4l8iQj8fddUHroCinv/7KwFoVHSrD3h7XVitTOynitGNwpPkH02L
         wvHVMLxPg95Ah5BbYie2QD0ly63KFzJQKfiPB+mNDibM5gZqZWhJwB3f6jUmB0z8krGm
         5xmg==
X-Gm-Message-State: AOAM5320usYjB/0IZiXv1+eWt2brTbramIwR7zMkBLlxOgCZvc3AqPtv
        9bD3EoYFYyjbzUd2PYgBJ/Fuom2bVDZb7hpCV9Y9Lw==
X-Google-Smtp-Source: ABdhPJybFFwipXyQWZHYVEaekG+qg6cTGcIeBxjc1+hy1oZItqJ7bLzKK82xiAtjTPHwPwKPsZRGK6FA4Brq8Mg7bXk=
X-Received: by 2002:a2e:700a:: with SMTP id l10mr12496829ljc.368.1614699023063;
 Tue, 02 Mar 2021 07:30:23 -0800 (PST)
MIME-Version: 1.0
References: <20210225164216.21124-1-noltari@gmail.com> <20210225164216.21124-13-noltari@gmail.com>
In-Reply-To: <20210225164216.21124-13-noltari@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 2 Mar 2021 16:30:12 +0100
Message-ID: <CACRpkdamVjNOua1ZVriPnhb6GDerpchMFepqekx_NP40_KH9Ew@mail.gmail.com>
Subject: Re: [PATCH 12/12] pinctrl: add a pincontrol driver for BCM6318
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 25, 2021 at 5:42 PM =C3=81lvaro Fern=C3=A1ndez Rojas
<noltari@gmail.com> wrote:

> Add a pincontrol driver for BCM6318. BCM6318 allows muxing most GPIOs
> to different functions. BCM6318 is similar to BCM6328 with the addition
> of a pad register, and the GPIO meaning of the mux register changes
> based on the GPIO number.
>
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Signed-off-by: Jonas Gorski <jonas.gorski@gmail.com>

Same comments as the other drivers.

Looking forward to the next iteration of these drivers!

Yours,
Linus Walleij
