Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4DCF4B64E2
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 09:00:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234997AbiBOIAQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 03:00:16 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:49508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234995AbiBOIAP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 03:00:15 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BBB313E1B
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 00:00:05 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 155ED40336
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 08:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644912004;
        bh=WKmF3ofcPXNkDjn7YKxiUvOekr6rsM7Z5lgS0lqXT8w=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=ImtJcd9Y2EJZSTmmzMcLpF6yEhEB6ow/DW0+JbMdIUNHvJ8MguMcaySEAfvTj3fzp
         xLapMygUHhEfYchXZIThst6cwQXK8IWTNyPPe5ijKDpZ6LVwLd6my8Er0sC13gihUi
         1V+CVAWmjIcUOgPoZ0yfaNTwczo0WIop6hXNbjgiTXX0FgykvsvMzuu96qSV2AYdHK
         Dp5qmgWHiqQL77tPBNY1psn/N6EWfHYTE9ljby1J/79L+V2MqUKeLuyJP+HpsMYivf
         7u/Jy5OmzGDeCyHRFXvZjGGGZ1owDbtjIRGlX5aqVTsui/N67OdFU1M0WpUw73+g4n
         ohS2iRVjeqO5A==
Received: by mail-ej1-f70.google.com with SMTP id q3-20020a17090676c300b006a9453c33b0so6869006ejn.13
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 00:00:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=WKmF3ofcPXNkDjn7YKxiUvOekr6rsM7Z5lgS0lqXT8w=;
        b=NwGnG5qtZuKGr4wkgoa7q7TPzAtqlmHkb+ueQQWfQedogKnyxwqSurAZYnyscnucn/
         S9ZYjkjCvJgvAybMc0ZB2cv/XS1ski4h4xfuMVRHxFJIHE9Kh5bnxKemu5FizxvTtifQ
         9+ay4m21pV6cjnNQfjng7gc8H1NU6Ywi3UdJ4zikrJfOc8YkH8O8H6MXmJwEuzI5y2EH
         tkD0UTZyZkO4rNZLTnZGlYB7vN1M7kjKQF4q/bH4x08HDalE9X91ETCD5E5578qlcc1f
         Femd3GtPx11vywriHZc2VQRxBkW5uAkB/X/rJr9ih1Lo8akCkdlvk37VN80YMsDHCDvb
         CQ2g==
X-Gm-Message-State: AOAM530vMkJDkjKO40Wo4tvqIs+r+ppKPjTrgOVbGBt2tAWjQ0Qv/z22
        COeARoEQ7k2J38Az9DSpo+SVNmxUVZ120lHEDGCPCPG0EWjFiS+KsrysXc90haYKuGehWysI5OL
        SCrfFfwvN9FIdqtrlFfmY3z50lGAC+WauTDiCIl2oiDrTIPRKM4qG41M=
X-Received: by 2002:a17:907:1c01:: with SMTP id nc1mr2010465ejc.659.1644912003511;
        Tue, 15 Feb 2022 00:00:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwuZ4VRaFsrBt53zgXGJrUAfN8tOgQwKpQDCWWN0b0yuET7r2Bc26aSK/euYsuMQ1hH/V9RfLx8GOJpFFdq8EM=
X-Received: by 2002:a17:907:1c01:: with SMTP id nc1mr2010457ejc.659.1644912003335;
 Tue, 15 Feb 2022 00:00:03 -0800 (PST)
MIME-Version: 1.0
References: <20220214212154.8853-1-krzysztof.kozlowski@canonical.com> <20220215074030.3nugwproxjh3lwhl@pengutronix.de>
In-Reply-To: <20220215074030.3nugwproxjh3lwhl@pengutronix.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Date:   Tue, 15 Feb 2022 08:59:52 +0100
Message-ID: <CA+Eumj42Hojp1m4deuWnqMOaaNaupTSkzPaNbL_0eyBL-aDi_g@mail.gmail.com>
Subject: Re: [PATCH v2 00/15] pwm: dt-bindings: Include generic pwm schema
To:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <mripard@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>,
        Rahul Tanwar <rtanwar@maxlinear.com>,
        Jeff LaBundy <jeff@labundy.com>,
        Sagar Kadam <sagar.kadam@sifive.com>,
        Vignesh R <vigneshr@ti.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 15 Feb 2022 at 08:40, Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> Hello,
>
> [dropped Anson Huang and Yash Shah from Cc: which were not reachable for
> my last mail]
>
> On Mon, Feb 14, 2022 at 10:21:39PM +0100, Krzysztof Kozlowski wrote:
> > Hi,
> >
> > Changes since v1:
> > 1. Add tags.
> > 2. Adjust subject (Uwe).
>
> However you only took a part of my suggestion ...
>
> > Krzysztof Kozlowski (15):
> >   dt-bindings: pwm: allwinner,sun4i-a10: Include generic pwm schema
> >   dt-bindings: pwm: imx: Include generic pwm schema
> >   dt-bindings: pwm: intel,lgm: Include generic pwm schema
> >   dt-bindings: pwm: iqs620a: Include generic pwm schema
> >   dt-bindings: pwm: mxs: Include generic pwm schema
> >   dt-bindings: pwm: rockchip: Include generic pwm schema
> >   dt-bindings: pwm: sifive: Include generic pwm schema
> >   dt-bindings: pwm: renesas,pwm: Include generic pwm schema
> >   dt-bindings: pwm: toshiba,visconti: Include generic pwm schema
> >   dt-bindings: pwm: brcm,bcm7038: Do not require pwm-cells twice
> >   dt-bindings: pwm: intel,keembay: Do not require pwm-cells twice
>
> ... The actual patch has a space after the comma, I like this variant
> without comma better as this is a compatible string.

I am confused. My patch does not have comma after space. Your reply
had such in the subject, but not in the proposed new subject you wrote
in msg, so I left it as is. Without comma. If you still see comma, it
is something with your mail client.

See:
https://lore.kernel.org/linux-devicetree/20220214212154.8853-12-krzysztof.k=
ozlowski@canonical.com/T/#u

Also reply from Vijayakannan does not have comma:
https://lore.kernel.org/linux-devicetree/20220214081605.161394-11-krzysztof=
.kozlowski@canonical.com/T/#m80af695f2c751341bc971114aefa00ccc929a3ec

> Also a # before
> pwm-cells would be nice.

I can add this.

Best regards,
Krzysztof
