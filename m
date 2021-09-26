Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9B2654189E7
	for <lists+devicetree@lfdr.de>; Sun, 26 Sep 2021 17:16:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231994AbhIZPRi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Sep 2021 11:17:38 -0400
Received: from mail-ua1-f50.google.com ([209.85.222.50]:38410 "EHLO
        mail-ua1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231993AbhIZPRh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Sep 2021 11:17:37 -0400
Received: by mail-ua1-f50.google.com with SMTP id b15so4718068uaj.5
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 08:16:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:reply-to
         :from:date:message-id:subject:to:cc;
        bh=766FS/HzGzDEonfiPt4V52EBMkKW9u1/0R9KsOBkyeQ=;
        b=PaGh6+mGKIVv0soZa1gRRpbZ7ugA/IlqRJKVOHTU4rTdQFIgnJ2UiMkMqk8wzjPKqg
         42yS4tK8LH+3RxpjSzknBSZi0e5A7P3oS4TMdDWbJEA1EiBuC01E+N2wc6wAD6Y83p9X
         ICC1nNsH7qV9lRAg3X65GYj4y/2/BfmdRh73QP3st90OZ3XNeoKJ2AWMyuwkypk1wpt1
         /FIPmYDYcE3bB4UFLvVbBE/7forUO3iMX/NDMfGFvGkBzpycoCKwTAdih2GHtqQdaqVh
         Df36k9Zjh/Pt8/FOadOAFHWxLh0Ux40wZeqIi8rAbr0D5qTmXHqBNMMXXu00kwDXRC1u
         r4xg==
X-Gm-Message-State: AOAM531eMjMDFemX2TU/iLFcCJATTVyVOgUZ8W3Kk1ryUwJL4ywRbin7
        1CMsBdmJEO14FkFMRZkVel7eDWZRdAarFA==
X-Google-Smtp-Source: ABdhPJz+yYE+BeydhjnlmiVN/hou9PSt9qF0vDUcHI1JHnKb9WcsP5HNKcWfFXraghbNJmD/8CzM0g==
X-Received: by 2002:ab0:4751:: with SMTP id i17mr16179097uac.86.1632669360198;
        Sun, 26 Sep 2021 08:16:00 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id c21sm810439vkn.21.2021.09.26.08.15.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Sep 2021 08:15:59 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id 188so14369238vsv.0
        for <devicetree@vger.kernel.org>; Sun, 26 Sep 2021 08:15:59 -0700 (PDT)
X-Received: by 2002:a05:6102:3a0c:: with SMTP id b12mr9373742vsu.13.1632669359580;
 Sun, 26 Sep 2021 08:15:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210924071614.868307-1-maxime@cerno.tech> <20210924071614.868307-3-maxime@cerno.tech>
In-Reply-To: <20210924071614.868307-3-maxime@cerno.tech>
Reply-To: wens@csie.org
From:   Chen-Yu Tsai <wens@csie.org>
Date:   Sun, 26 Sep 2021 23:15:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v65JmoLJvX9pVg7FS6U-dG0rBhpsJ=ZUeSkX-iqRgaqy6A@mail.gmail.com>
Message-ID: <CAGb2v65JmoLJvX9pVg7FS6U-dG0rBhpsJ=ZUeSkX-iqRgaqy6A@mail.gmail.com>
Subject: Re: [RESEND v2 3/3] dt-bindings: mfd: Convert X-Powers AC100 binding
 to a schema
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        linux-sunxi@lists.linux.dev, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 24, 2021 at 3:16 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The X-Powers AC100 hybrid devices are supported by Linux thanks to its
> device tree binding.
>
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
>
> Cc: Lee Jones <lee.jones@linaro.org>
> Acked-by: Chen-Yu Tsai <wens@csie.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>
