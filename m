Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C70C254B85B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 20:14:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229946AbiFNSN7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 14:13:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230107AbiFNSN6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 14:13:58 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4408019F80
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 11:13:57 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-30ec2aa3b6cso37947597b3.11
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 11:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZsjTA9iJIzTxX4ygR8FdKM9wnHJIUgreAx1BZ2osk+k=;
        b=elkEMMAy3wPQwGf1ROmnn/4Isu60xOrk5kwhUf9POtxNbXra9m+VOIyaYdDcP+3CU3
         2JT5ARrP4xwLtPX0Ds74mSJUDU0WpEwRhBDquEnA4hNv+/G/6Q6UFzYcWShmefjq8AjX
         gz+FlbByjs1p+vyfBLAp58Tc0jFjVzOn1TINg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZsjTA9iJIzTxX4ygR8FdKM9wnHJIUgreAx1BZ2osk+k=;
        b=JarGW13G+jfcC5se9+2FoadAKl+z2tcyM+0eL9cIR+KWM1yGBOJKs9aMHf/n+ZUvrb
         DUNmSxhjgI7ScwzbctAzDwQkmRn0TCtswQpVXOQpDZxlLV/LwtanXOhnHD9WQJzxlJpU
         /dkHhc1as1uagp3fGhLGxqurEib/h1sNS5drdGU3OlOYPjuJQO5s5/J6gelpuC6CsJXi
         Oa7dGjwzVesb0d3Gg4WtmhVsbkRc/KcmRZlvmVsCw+b+Kj7wsQOQI43aKOlDSzRlRtz4
         kkw2NQLdJCT1fln+wXA/N32+hf3Y/mc32xWAh95psPQ4OEsuP+sBOcTnFVTAEJAWANuw
         CL+g==
X-Gm-Message-State: AJIora+4yIsem1vjLXx+y3FgB32AuAskW8Fp29ngT3GRFipF1X7pU6HD
        BT0JLKbx66P3gteKy8u5a7brzkbH8ZVfFcGjN1srnQ==
X-Google-Smtp-Source: AGRyM1uE67Atomlar3nLQdgT+jy4zLDSFTPt4ERa1X/kLBHMBihOauBraRP729dfHSV8ag/nSgM1IEdsAe/aMtNwTF8=
X-Received: by 2002:a81:fd1:0:b0:30f:f98b:4957 with SMTP id
 200-20020a810fd1000000b0030ff98b4957mr7329858ywp.350.1655230436484; Tue, 14
 Jun 2022 11:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <20220609181106.3695103-1-pmalani@chromium.org>
 <20220609181106.3695103-6-pmalani@chromium.org> <ef3933a8-88c2-f19f-97df-3498f54b9a4f@collabora.com>
In-Reply-To: <ef3933a8-88c2-f19f-97df-3498f54b9a4f@collabora.com>
From:   Prashant Malani <pmalani@chromium.org>
Date:   Tue, 14 Jun 2022 11:13:45 -0700
Message-ID: <CACeCKaegCzKZdnbZFkE0WWb=99jCfQDA60kTVhOS1TGvdHgpDg@mail.gmail.com>
Subject: Re: [PATCH v2 5/7] drm/bridge: anx7625: Register number of Type C switches
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        heikki.krogerus@linux.intel.com,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Tzung-Bi Shih <tzungbi@google.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Jonas Karlman <jonas@kwiboo.se>,
        swboyd@chromium.org, Pin-Yen Lin <treapking@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Xin Ji <xji@analogixsemi.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Robert Foss <robert.foss@linaro.org>,
        =?UTF-8?B?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 14, 2022 at 1:22 AM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 09/06/22 20:09, Prashant Malani ha scritto:
> > Parse the "switches" node, if available, and count and store the number
> > of Type-C switches within it. Since we currently don't do anything with
> > this info, no functional changes are expected from this change.
> >
> > This patch sets a foundation for the actual registering of Type-C
> > switches with the Type-C connector class framework.
> >
> > Signed-off-by: Prashant Malani <pmalani@chromium.org>
> > ---
> >
> > Changes since v1:
> > - No changes.
> >
> >   drivers/gpu/drm/bridge/analogix/anx7625.c | 20 ++++++++++++++++++++
> >   drivers/gpu/drm/bridge/analogix/anx7625.h |  1 +
> >   2 files changed, 21 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/bridge/analogix/anx7625.c b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > index 53a5da6c49dd..07ed44c6b839 100644
> > --- a/drivers/gpu/drm/bridge/analogix/anx7625.c
> > +++ b/drivers/gpu/drm/bridge/analogix/anx7625.c
> > @@ -2581,6 +2581,22 @@ static void anx7625_runtime_disable(void *data)
> >       pm_runtime_disable(data);
> >   }
> >
> > +static int anx7625_register_typec_switches(struct device *device, struct anx7625_data *ctx)
> > +{
> > +     struct device_node *of = NULL;
> > +     int ret = 0;
> > +
> > +     of = of_get_child_by_name(device->of_node, "switches");
> > +     if (!of)
> > +             return -ENODEV;
> > +
> > +     ctx->num_typec_switches = of_get_child_count(of);
> > +     if (ctx->num_typec_switches <= 0)
> > +             return -ENODEV;
> > +
> > +     return ret;
>
> You aren't using the `ret` variable for anything other than returning zero:
> remove it and simply return 0 here.
The very next patch does use it, but sure I'll remove it from here and
introduce it in v6.
>
> > +}
> > +
> >   static int anx7625_i2c_probe(struct i2c_client *client,
> >                            const struct i2c_device_id *id)
> >   {
> > @@ -2686,6 +2702,10 @@ static int anx7625_i2c_probe(struct i2c_client *client,
> >       if (platform->pdata.intp_irq)
> >               queue_work(platform->workqueue, &platform->work);
> >
> > +     ret = anx7625_register_typec_switches(dev, platform);
> > +     if (ret)
> > +             dev_info(dev, "Didn't register Type C switches, err: %d\n", ret);
>
> Type-C switches are optional for this driver and this will print a sort of error
> on boards that are *not* declaring any switches on purpose (because perhaps they
> don't have any, or for any other reason).
>
> Even though this is a dev_info and not a dev_err, it's still printing an alarming
> (and useless, in the aforementioned case) message.
I'll go ahead and convert this to dev_warn, but only trigger if there
is an error other than ENODEV.

>
> Please fix this.
>
> Regards,
> Angelo
>
