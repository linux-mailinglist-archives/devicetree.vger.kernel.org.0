Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BEAD32CC67C
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 20:23:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726884AbgLBTWi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 14:22:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726028AbgLBTWi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Dec 2020 14:22:38 -0500
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB5ACC0613CF
        for <devicetree@vger.kernel.org>; Wed,  2 Dec 2020 11:21:57 -0800 (PST)
Received: by mail-ej1-x643.google.com with SMTP id a16so6112493ejj.5
        for <devicetree@vger.kernel.org>; Wed, 02 Dec 2020 11:21:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cIr/TqJfU4iObJfpNCSE069urbnIjjxEb9dHjImS2os=;
        b=LKC2ji6lsQhUlmhtdoNmHDnB9A21BmZDoU67iZkOF3kbK5mZpsWtBpPA5KR5Cs8hfl
         CvIoKMwemrlT0XBY4mNBI+JJmbA2yyrJ7UB3Ookyp6++fYeOvOvskESIQP6YdvM+22O0
         ZmXZPjrDZm1xy/Xk3KfGIUjcQltWeobbZ+H2w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cIr/TqJfU4iObJfpNCSE069urbnIjjxEb9dHjImS2os=;
        b=I4vERn1i24KiEc4dx7pk20bAKGN24sbTJwqkVddwQhMDX3bkbfg7pS/S2i6xi4AUGS
         hFsvx65dB82vtUYxcbYsVta5Tkq4BR4kkNXPGdTsT0Jrs/6qUVxprIqlqn+UQ9xBL4ZG
         FpohIYNp7+1CLMfo5ssSF4SW0Nv3jo+dQOwaWKoLb/LD09nj4RPpnT8EcNR1y+vY98Rm
         twc6rWB9edvpV0UDcc+yy24i9sofPeLc2flO4P0oH0uXaxE9RTpSylbt1/c7Dtrj4QDe
         hLjAuSz7dY5b+7+iE4MquKQwhEF/x2EpIo7HFEKMMQEZCZqcFgKFoPNL5W4gKGkR9oOl
         K4lw==
X-Gm-Message-State: AOAM531pdaARRw9S/EJ3hN8aK/MIXt1mSCI/z5jFIQldcdl9ZVAeE93V
        /UkpqWvwPyFUzoIKctloRDcC6vmxl200CbNsCRIcBA==
X-Google-Smtp-Source: ABdhPJxN//SsN9vLgNQdENQdn0eBiur3RcH266OmmaISZe06mAc204ZNbyCYwHurY2W81B+kPJo/1zhX/+9WWCMg8Ic=
X-Received: by 2002:a17:906:7d91:: with SMTP id v17mr1274556ejo.522.1606936916614;
 Wed, 02 Dec 2020 11:21:56 -0800 (PST)
MIME-Version: 1.0
References: <20201202121241.109952-1-jagan@amarulasolutions.com>
 <20201202121241.109952-2-jagan@amarulasolutions.com> <20201202172200.GA3490@kozik-lap>
In-Reply-To: <20201202172200.GA3490@kozik-lap>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 3 Dec 2020 00:51:45 +0530
Message-ID: <CAMty3ZC_G32xe7-VrTqXY+YW=SELMxnn8+g0Ec6p4D-dh2=tdA@mail.gmail.com>
Subject: Re: [PATCH 01/10] arm64: defconfig: Enable REGULATOR_PF8X00
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Li Yang <leoyang.li@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Matteo Lisi <matteo.lisi@engicam.com>,
        devicetree <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        linux-amarula <linux-amarula@amarulasolutions.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 2, 2020 at 10:52 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> On Wed, Dec 02, 2020 at 05:42:32PM +0530, Jagan Teki wrote:
> > Enable PF8X00 regulator driver by default as it used in
> > some of i.MX8MM hardware platforms.
>
> Could you mention names (one is enough) of platforms this could be found
> on? This would be more detailed reason why the option should be enabled.

Sure, I will update it on the next version commit message.

Jagan.
