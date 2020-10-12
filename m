Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4C96828B412
	for <lists+devicetree@lfdr.de>; Mon, 12 Oct 2020 13:48:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388268AbgJLLsu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Oct 2020 07:48:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41948 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388237AbgJLLst (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Oct 2020 07:48:49 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 449E4C0613D1
        for <devicetree@vger.kernel.org>; Mon, 12 Oct 2020 04:48:49 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id s9so6735178wro.8
        for <devicetree@vger.kernel.org>; Mon, 12 Oct 2020 04:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=Q6n1VfSlPeYvAYXi3X+McChRUB1U53qE0icC0y04rMg=;
        b=MlE8AXarx2worHi4q7CJY1BPT575y5Eph90OrpPsS60YFxU0azPItXiw94v2NNig+M
         /XVWvI9x66INxGk6a94OG3w6q6ePfCPTC4iJbIBefItyga9a3O/bvOjcK6VAqoLciY6U
         pNWysSgLoYz1MXCEkl7Wkn/acKvsyBfw7cUNHPnaSKVTOwvL42yaqcwjhDMXQjCLkO6f
         KuZ6BfFzb/U5m1NTM/jweDTUVVK449wIZOvrCxdV16n1smdi1TFe3nTjZ65mARSGo7sr
         j7p79cm0DaCMUWeLyYMi+GN3rLMMSonRIqZohXKxrkdlwYLAX/Gd0uJ0BAa3d404J1QV
         Egbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=Q6n1VfSlPeYvAYXi3X+McChRUB1U53qE0icC0y04rMg=;
        b=MgOAbPIv7u7I7P46fKE8mP4+3JOdD/s/mhKp3tPW/Gls5pNjDjFJxlw1D24ya2FAa6
         sIUM1rT9tGaKbh6ZEsn3sIVYXwuItp5hdr8SodU4bFPZLw9arJ2QfiBBWD7EdfOGmLGo
         oiqcQLp5Dx2aIbJq4fLokwA/dNLQbThT3dn1ajZ6pLasiuVTMZQyXHsmLxIhQNuGy8g9
         SWTk5lasvah+r4B/xQiAXYAehbNByMf7oj58tjjMR+W9QmJv2HtaSlOJio7pH59wTQcy
         ++ZMt7RYBIAV74/fbsjlX9yhh2oRfvRdjSJIPNXr2dI9LyuSfTgvw9ntw0g8XPHobPjN
         uZOg==
X-Gm-Message-State: AOAM533A3tAgFxbkIiR0t4n7TibpzY934AhSEdyBVQWOIU6uf7gbDyA2
        XC1L2xnZkC5Y6WSCKSNTvLNCcw==
X-Google-Smtp-Source: ABdhPJzDZm0wFpc5zf4P88lMJXp54ZLTHc2e7Lk86RniSNFOP38YB9kxDfBS+Nxrj8yfCOXboR6bbQ==
X-Received: by 2002:adf:e54b:: with SMTP id z11mr20988583wrm.128.1602503327662;
        Mon, 12 Oct 2020 04:48:47 -0700 (PDT)
Received: from dell ([91.110.221.138])
        by smtp.gmail.com with ESMTPSA id c21sm22940930wme.36.2020.10.12.04.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Oct 2020 04:48:46 -0700 (PDT)
Date:   Mon, 12 Oct 2020 12:48:44 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>,
        linux-kernel@vger.kernel.org,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        linux-pwm@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Fabio Estevam <festevam@gmail.com>, linux-rtc@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Daniel Palmer <daniel@0x0f.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Andreas Kemnade <andreas@kemnade.info>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, Stephan Gerhold <stephan@gerhold.net>,
        allen <allen.chen@ite.com.tw>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Alessandro Zummo <a.zummo@towertech.it>,
        Mark Brown <broonie@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        Josua Mayer <josua.mayer@jm0.eu>,
        Shawn Guo <shawnguo@kernel.org>,
        "David S. Miller" <davem@davemloft.net>
Subject: Re: [PATCH v3 1/7] dt-bindings: Add vendor prefix for Netronix, Inc.
Message-ID: <20201012114844.GL1763265@dell>
References: <20200924192455.2484005-1-j.neuschaefer@gmx.net>
 <20200924192455.2484005-2-j.neuschaefer@gmx.net>
 <20201012071909.wjbclmorlfcz7lln@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201012071909.wjbclmorlfcz7lln@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 12 Oct 2020, Uwe Kleine-König wrote:

> On Thu, Sep 24, 2020 at 09:24:49PM +0200, Jonathan Neuschäfer wrote:
> > Netronix, Inc. (http://www.netronixinc.com/) makes ebook reader board
> > designs, which are for example used in Kobo and Tolino devices.
> > 
> > An alternative prefix for Netronix would be "ntx", which is already used
> > in code released by Netronix. It is shorter, but perhaps less clear.
> > 
> > Signed-off-by: Jonathan Neuschäfer <j.neuschaefer@gmx.net>
> > Acked-by: Rob Herring <robh@kernel.org>
> 
> minor nitpick: your S-o-b should be last in the tags area.

I personally like to see tags in chronological order.

I doubt Rob Acked it before Jonathan originally signed it off.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
