Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53F335344A9
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 22:07:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344911AbiEYUGr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 May 2022 16:06:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238402AbiEYUGh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 May 2022 16:06:37 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EBA755BF
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 13:06:35 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id i82-20020a1c3b55000000b003974edd7c56so1392782wma.2
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 13:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5MlRh8v/O/wHhNLDVqNAGwAJO3u/nvYhL6suQln4qMM=;
        b=aOtG+77g4SUVZr8bbvfMI4s7jJQI5gdHfJc7aakPzg+lNkGNOOQVJV9iG4Yu/jIe3/
         QbmCPdfeXzcf5y/4GD8DI74dKjylTbj6yE5dszfna3WO92tO3psktxusV3598aleUFYq
         6H1cCeAlBOFu3Va+kmZhuRKXO39pTz4MvBX3soqViH7SE3lZthU3f7oHiFWMBQ0Mc3k+
         nSwL7XWWbT3FArlMgP4a3hyS7DfL6PQZDPlYYkm+NsWMmmjAr3cXFnn9+kjPnlIb1n6d
         qwgLFiy3/gBjTWnjPyLyJOmMCNivCq0vgmMJcwttRd3X2eybN1mqziJcEI/6rKIvaeeh
         7K2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5MlRh8v/O/wHhNLDVqNAGwAJO3u/nvYhL6suQln4qMM=;
        b=iziLMOIGimjJLie48WTkGWrfmwYvlVoO0pX9At8XdmLBXKSz3etaKNbiP9WHtYetqw
         6UIpEUmDmW0qzo1rcOzIPZkBpWqwRpfD4dLvMgRFNCBRHFxcY4wJePGkTO8ZyQWnBXE0
         4fA/Rv2WNkGLQ1uQJbMNYduWbAXrhBCFhf7Mm/Fpf9nz4vpEaRfc/4IOg2VYY+SNQQJC
         X+0SolYdYN9qRiq0FEOs6TNWHEqD/wIW8P020+sMqMlquXog0AJuUc+mhaIP8sARmf2Y
         Gr21UpJRpMG9xrRqRdT2ApMGYfoKYEoTw/IfEygTjl+GOx7Th4cRiTjMU6OISrFEj9T6
         PY7w==
X-Gm-Message-State: AOAM5312AwONHr1IRLsbA2buOQ4UFjUp+TE+irXWxxEbO0iNp2VrDrhN
        umKE4bKsNd3XmxZeVcU39vh6emIi30qKxxcE3WyqLA==
X-Google-Smtp-Source: ABdhPJzwmm4iFgAvq41IWkRIMaeSW61oQACieHYUK5Pp+Z5/usjraflqW/p2zQWTbtlA0quoR70s8kdRGnwXUQJemek=
X-Received: by 2002:a05:600c:3515:b0:394:8c7e:fbde with SMTP id
 h21-20020a05600c351500b003948c7efbdemr9559357wmq.165.1653509194127; Wed, 25
 May 2022 13:06:34 -0700 (PDT)
MIME-Version: 1.0
References: <20220406233648.21644-1-brad@pensando.io> <20220406233648.21644-12-brad@pensando.io>
 <20220412112239.cucvqqlfsdpjnzju@mobilestation>
In-Reply-To: <20220412112239.cucvqqlfsdpjnzju@mobilestation>
From:   Brad Larson <brad@pensando.io>
Date:   Wed, 25 May 2022 13:06:23 -0700
Message-ID: <CAK9rFnz9a_21Bc9yyUqqmQET_o6g5XK6=mfZVv9jUp4dNxCx4w@mail.gmail.com>
Subject: Re: [PATCH 11/11] arm64: dts: Add Pensando Elba SoC support
To:     Serge Semin <fancer.lancer@gmail.com>
Cc:     Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        David Clear <dac2@pensando.io>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sergey,

On Tue, Apr 12, 2022 at 4:22 AM Serge Semin <fancer.lancer@gmail.com> wrote:
>
> On Wed, Apr 06, 2022 at 04:36:48PM -0700, Brad Larson wrote:

> > +             spi0: spi@2800 {
> > +                     compatible = "pensando,elba-spi";
> > +                     reg = <0x0 0x2800 0x0 0x100>;
>
> > +                     pensando,syscon-spics = <&mssoc 0x2468>;
>
> I am wondering do you really need to define the
> "pensando,syscon-spics" property as accepting a phandle with an
> additional argument? That would have been justified if you had at
> least two SPI controllers with different CS override registers. AFAICS
> you've got only one here. So you can simplify the bindings by defining
> the property like "pensando,syscon" (with no "spics" suffix) which
> accepts the syscon phandle alone. Respective SPICS offset can be
> locally declared in the driver as a macro with respective name.

Yes this can be simplified and doing that in updated patchset.  Only this
API call is needed in dw_spi_elba_init().

syscon_regmap_lookup_by_phandle(np, "pensando,syscon");

Regards,
Brad
