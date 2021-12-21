Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72BC147C7CE
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 20:53:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241922AbhLUTxh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 14:53:37 -0500
Received: from mail-qk1-f175.google.com ([209.85.222.175]:45974 "EHLO
        mail-qk1-f175.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229779AbhLUTxh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Dec 2021 14:53:37 -0500
Received: by mail-qk1-f175.google.com with SMTP id e16so100078qkl.12
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 11:53:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NGzh+u9zgih1OilNpGRfn3efB9d9f7H/SjN4hU57YBw=;
        b=bBtyyURgGIMTbJQePnmkiyOObOwclzBe1b1sU7daLHrNZCjgJqCJk562WdFTJL7gEb
         xkN9qrAob8bucEZ9Lxc651+kuZlSFCv6l4NGCxQlYNZRKc8DUP0KMsOrpEKe+XK1b1MR
         if3kHavXtlK52f5Nk5y/NBQRB2Q2+biuKbhTF0WaTJu+lk61bxrf4miCydxdF65m2kDg
         H1FQWQhvGv0YKqRSP5dHHo4r1U52MU/njBX9GLYqP6feseJ1+SYWSn75cD+a3p9pa0Zl
         ICPU+Aq0nnlRyEfQjp5Cm4XfLLDx2eVvIZAzS9D2zQKmJaPOim+wNnREeJDTTh0CVQ7B
         acAg==
X-Gm-Message-State: AOAM530mTrxab+bZB98qmPsnfRKZKjssGJl9In9nKf9aUAcTULjYhBW+
        vfKTmy5bSS+xM3TnpYC+Og==
X-Google-Smtp-Source: ABdhPJwHl3YGCDYjAcPybldSWY0QQVSEU5strTejd2EPK6i0gzZO2JWr3IuXP0Dtlk1/M3yYtwBO2Q==
X-Received: by 2002:a05:620a:2942:: with SMTP id n2mr3214929qkp.608.1640116416864;
        Tue, 21 Dec 2021 11:53:36 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
        by smtp.gmail.com with ESMTPSA id h1sm1222061qta.54.2021.12.21.11.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 11:53:36 -0800 (PST)
Received: (nullmailer pid 1642505 invoked by uid 1000);
        Tue, 21 Dec 2021 19:53:34 -0000
Date:   Tue, 21 Dec 2021 15:53:34 -0400
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@mailbox.org>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Jerome Brunet <jbrunet@baylibre.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        Liam Girdwood <lgirdwood@gmail.com>
Subject: Re: [PATCH v2 2/3] ASoC: meson: t9015: add missing sound-name-prefix
 property
Message-ID: <YcIwvvJm/kq1jX65@robh.at.kernel.org>
References: <20211218143423.18768-1-alexander.stein@mailbox.org>
 <20211218143423.18768-2-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211218143423.18768-2-alexander.stein@mailbox.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 18 Dec 2021 15:34:22 +0100, Alexander Stein wrote:
> This is used in meson-gxl and meson-g12-common .dtsi. Add the property to
> the binding.
> This fixes the dtschema warning:
> audio-controller@32000: 'sound-name-prefix' does not match any of the
> regexes: 'pinctrl-[0-9]+'
> 
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> All users have set this to "ACODEC", but I am not sure if this value is
> mandatory, so I opted to not set a pattern for this property.
> 
> Changes in v2:
> * None
> 
>  Documentation/devicetree/bindings/sound/amlogic,t9015.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
