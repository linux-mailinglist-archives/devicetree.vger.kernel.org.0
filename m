Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D4BA16B09B1
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 14:46:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230379AbjCHNqH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 08:46:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231337AbjCHNpq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 08:45:46 -0500
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 707FE13D4D
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 05:45:10 -0800 (PST)
Received: by mail-io1-xd2b.google.com with SMTP id f14so6780337iow.5
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 05:45:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1678283110;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Gz/Fal0kRuGQs4te+QLHZr2SvmaC9a9yoIN2O4rmEs=;
        b=FzOehmgGzILhkooEFO0biilFd7kiTA0NZcKrhcfEw83BGlvb/DRX3HApX0gd0asQu+
         zXYldxA3v4VRudBB014jDadWTIgo79RaVquXI8m+ip2DXj5WS98GeAQOpgEvrX+7tpbU
         SWqY8TrecDN3LvK2tWghCzQbSw+b/IEJKg1ys=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678283110;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Gz/Fal0kRuGQs4te+QLHZr2SvmaC9a9yoIN2O4rmEs=;
        b=cR4aIaW3pgQvqNrJk+WVsIUSOPjy3hSGE4Bh295tup8pjrfXfld/ztTGLPuCt7zfRa
         OCayH0iz/rLS8P3zLoG0GDqInHYfDKXc0KhmNxj9oX0tfTYzWkW4J/1eAHR6RI3ZhBc2
         rGzD5n4Y6Qn9fJk5n+uCZmB/8Kze+jrYmGIwN0viupRY9lf79vPnCeoXfktt8ktcM8+s
         8cKIQ7YyPWjjp0sEsyvjZGmWrobIxphhUvd7A6NjwmcE/gd3cLIiOSG1PSptWs0dQmt+
         1r5QbAFPcETx5ZEjpEhdCYwqWJ7fGYZ3Ocm87PHhuFJWFEmtxgkMo6lE2bZLc2IgEvXf
         n/qA==
X-Gm-Message-State: AO0yUKVh8LcmZV9q5nopsF5i2lDDWpbCurqRAfSYDbnsYmabUHWfVdSz
        8puvAq+PohR9fS1K0uVJMulkg9OckwTv7BVhbf4uvw==
X-Google-Smtp-Source: AK7set9vEwKu1Idu63ibGwE2iFEiZ7o1hncWOqoEWkYY6ycvzgr26jaWtmtsgD0Zy8mBVQpsXMl2fE6U84RedlItoHs=
X-Received: by 2002:a05:6602:4287:b0:745:50e5:c861 with SMTP id
 cd7-20020a056602428700b0074550e5c861mr8454903iob.4.1678283109499; Wed, 08 Mar
 2023 05:45:09 -0800 (PST)
MIME-Version: 1.0
References: <20230303143350.815623-1-treapking@chromium.org>
 <20230303143350.815623-8-treapking@chromium.org> <ZAXUrJDtHmm7+50H@smile.fi.intel.com>
In-Reply-To: <ZAXUrJDtHmm7+50H@smile.fi.intel.com>
From:   Pin-yen Lin <treapking@chromium.org>
Date:   Wed, 8 Mar 2023 21:44:58 +0800
Message-ID: <CAEXTbpftCVFBQK0bNiWvF0NnbNoMoF=dFStHy1HXOq8LvWYjsA@mail.gmail.com>
Subject: Re: [PATCH v13 07/10] drm/bridge: anx7625: Register Type C mode switches
To:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
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
        Prashant Malani <pmalani@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Xin Ji <xji@analogixsemi.com>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Lyude Paul <lyude@redhat.com>, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        chrome-platform@lists.linux.dev,
        =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Marek Vasut <marex@denx.de>,
        Hsin-Yi Wang <hsinyi@chromium.org>, devicetree@vger.kernel.org,
        Allen Chen <allen.chen@ite.com.tw>,
        dri-devel@lists.freedesktop.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Stephen Boyd <swboyd@chromium.org>, linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy,

Thanks for the review.

On Mon, Mar 6, 2023 at 7:55=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Fri, Mar 03, 2023 at 10:33:47PM +0800, Pin-yen Lin wrote:
> > Register USB Type-C mode switches when the "mode-switch" property and
> > relevant ports are available in Device Tree. Configure the crosspoint
> > switch based on the entered alternate mode for a specific Type-C
> > connector.
> >
> > Crosspoint switch can also be used for switching the output signal for
> > different orientations of a single USB Type-C connector, but the
> > orientation switch is not implemented yet. A TODO is added for this.
>
> ...
>
> > +     ctx->port_data =3D devm_kcalloc(
> > +             dev, switch_desc->num_typec_switches,
> > +             sizeof(struct anx7625_typec_port_data), GFP_KERNEL);
>
> I believe I have commented on this (indentation)...
>
> > +
>
> ...and this (blank line).

Sorry for missing this one. I'll fix this in v14.
>
> > +     if (!ctx->port_data) {
> > +             ret =3D -ENOMEM;
> > +             goto unregister_mux;
> > +     }
>
> ...
>
> > +             ctx->port_data[i].orientation =3D (dp_lanes[0] / 2 =3D=3D=
 0) ?
> > +                     TYPEC_ORIENTATION_REVERSE : TYPEC_ORIENTATION_NOR=
MAL;
>
> I believe that this is an error prone check, you should rather do the opp=
osite,
> i.e.  ' % 2  =3D=3D 0'.
>
The orientation should be TYPEC_ORIENTATION_REVERSE when the
data-lanes value is 0/1, so ` / 2` is what I meant here.

Though, after second thought, I think it would be clearer if I use
`dp_lanes[0] < 2`. I'll update this in v14 as well.
> --
> With Best Regards,
> Andy Shevchenko
>
>
Best regards,
Pin-yen
