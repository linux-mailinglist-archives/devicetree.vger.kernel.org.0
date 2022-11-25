Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66D836383AA
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 06:53:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229597AbiKYFxt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 00:53:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbiKYFxs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 00:53:48 -0500
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com [IPv6:2607:f8b0:4864:20::735])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C15C31AD91
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 21:53:47 -0800 (PST)
Received: by mail-qk1-x735.google.com with SMTP id k2so2083885qkk.7
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 21:53:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=sJO4CKtz6uCVjlMUGm3BSASo1KZZ4zekB4W49uCXr0Q=;
        b=GEQWK1zMTOaNgc6Jsw7BvrlA2RvLaRBKdutwd2mWXuN32GcN/F/lh7Do+jJwhu/lKf
         eUQzy4v825QJ8od3gmSFrmEbBs06XRTg2khVxN2jX2t/NUFG68evKAZHk2uGyqoEdH/l
         BYs68ifkf0D5ULeS+KO0T9nvkikk56lTOVFYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sJO4CKtz6uCVjlMUGm3BSASo1KZZ4zekB4W49uCXr0Q=;
        b=TpWMjCJvd01nw5BacLHHMp0hBR5A1Y+tjoW6MFGGAWFclztYzsODn0p4hGgu5JhDd2
         tju/i0jOFBUTMGrNeYQe4bYbTsG/cBV6NsTKC4WkNr/1xQPS3iLrVx/SbJC5KC+1Ktko
         DN9c87tYlniR/7J2lrDEfgPvZHPQ7XehPtkde+CjUuTYqV5ovbC5qQm9t/TeEYbfR0F2
         qTJe3TQuG6JZIkGVZ4WCyWczLQOF6uWy/E1Hr4p8xgeC+Or6PKbgwNJMWCSZwYue/Ir9
         tPNdxwu/na7ukyrE5SnsfX4neK8PzsMtD5tBr48Cjk9ddiUGvrelWqbGJxquN5ieEO3V
         i/1A==
X-Gm-Message-State: ANoB5pmsDMeEAoKPeaS9sEZ8XnUGCHDdl59mMXGy93sfKNf0t5MU3GYV
        iB19RyAGay9rv17wEEHrie2X1bZjSL0yXFMMAdikPQ==
X-Google-Smtp-Source: AA0mqf6knSu6QR92mZ0wCOhRti8BSXDFhhs9fIvKI9CaT08+1NzMdooQC08kJNAEDw9GfohzPzP4gUJ+R3xq6VWqYa4=
X-Received: by 2002:a05:620a:31a5:b0:6fb:ff0f:e7e0 with SMTP id
 bi37-20020a05620a31a500b006fbff0fe7e0mr19622315qkb.747.1669355626882; Thu, 24
 Nov 2022 21:53:46 -0800 (PST)
MIME-Version: 1.0
References: <20221124102056.393220-1-treapking@chromium.org>
 <20221124102056.393220-3-treapking@chromium.org> <Y39ikbcqx5/pEc64@smile.fi.intel.com>
In-Reply-To: <Y39ikbcqx5/pEc64@smile.fi.intel.com>
From:   Prashant Malani <pmalani@chromium.org>
Date:   Thu, 24 Nov 2022 21:53:35 -0800
Message-ID: <CACeCKaewXJYUJCyGyh==dsA6wsU4OESXFXJRiKm9AWPECS_ZBA@mail.gmail.com>
Subject: Re: [PATCH v6 2/7] platform/chrome: cros_ec_typec: Purge blocking
 switch devlinks
To:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc:     Pin-yen Lin <treapking@chromium.org>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        dri-devel@lists.freedesktop.org,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
        linux-acpi@vger.kernel.org, Marek Vasut <marex@denx.de>,
        Xin Ji <xji@analogixsemi.com>, Lyude Paul <lyude@redhat.com>,
        =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= 
        <nfraprado@collabora.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-kernel@vger.kernel.org, Allen Chen <allen.chen@ite.com.tw>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy,

Thanks for taking a look at this patch.

Pin-Yen beat me to the punch with comment responses, but I'll add mine anyway.

On Thu, Nov 24, 2022 at 4:25 AM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
> ...
>
> > +     /*
> > +      * OF graph may have set up some device links with switches, since connectors have their
> > +      * own compatible. Purge these to avoid a deadlock in switch probe (the switch mistakenly
> > +      * assumes the connector is a supplier).
> > +      */
>
> A bit too long lines...

They are within the 100 character limit [1] which is followed
elsewhere in the driver; has something
changed recently to make that invalid?

>
> > +     if (dev->of_node)
>
> Why do you need this check?

This issue only arises when using DT for this device. So the rationale
is we don't need to
perform this step on systems that don't use DT.

Best regards,

-Prashant

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=bdc48fa11e46f867ea4d75fa59ee87a7f48be144
