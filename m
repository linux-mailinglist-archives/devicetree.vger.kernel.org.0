Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D1A266D15AC
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 04:36:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbjCaCgz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 22:36:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjCaCgx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 22:36:53 -0400
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com [IPv6:2607:f8b0:4864:20::d32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA7B7CA36
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 19:36:51 -0700 (PDT)
Received: by mail-io1-xd32.google.com with SMTP id y85so9153442iof.13
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 19:36:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1680230211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JOKd8Q/yyL2Vxt/B7mCiLmN2+GLEWiOvEP6b0sT30PQ=;
        b=fLAVIymlVLtMTb1OjnAuBaj7urPwyZKEBOmwoAFmOw63GSs/eFd54mlEyiF8t/oxH5
         WNBjJbLZutvpZ73ltowGOCUqKIzcUWI2PZlW9vLvaYeQ7U2EWVXoKuxwH+fBk6O8T3fI
         b7Dvz7j9ez80eZY6vUDx3aJCc19D9uPXqpugg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680230211;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JOKd8Q/yyL2Vxt/B7mCiLmN2+GLEWiOvEP6b0sT30PQ=;
        b=2CcXPyiHWPfkP3xC2fEHPZjqQFefYW7CHuB1SN6IsvYys72K1IwzM2N3JKJg3kGKIT
         3aYNluJ+ZMOspXECRBmoBL/sggBKISRL11xDupeQkVHvYAvSAbZutGjnF5KCzjkYN/9H
         apbax0foUGTf3YriEneViJuSmE/E49xtirP4CAoi30OujSupdbrd69ZoXcoV3CNJVur1
         wQRN90Re8PjndmH++zqLVlSjp7X2mxzDpn7pSUDFoAYBV3Hfo0KzH7jFpeAXP271Pq/R
         SpcsAYKTZgKOLIdMoDxebGTUawhu925ZZiHUouBoHnSpEk6mE6j81M4UdyyAqq1Tm9CF
         QomQ==
X-Gm-Message-State: AO0yUKV31c/dtq7d7SPQHH79FS1NCr0EPzJt5CnpWXrgyX+3Bhhd+kB6
        1acdue2rnpiFRh3paS4pjrbMnX+U50RY/8m4/Vhkkw==
X-Google-Smtp-Source: AK7set8iHyEfMscSQN6K+wU64uXRfznAJTa3p7iwGPfwmfjxtVwhD5T091Ndlb+dZQRGTYJqdf7/mi2dwLdlRru+94U=
X-Received: by 2002:a02:2304:0:b0:406:38ac:716e with SMTP id
 u4-20020a022304000000b0040638ac716emr9747717jau.6.1680230211040; Thu, 30 Mar
 2023 19:36:51 -0700 (PDT)
MIME-Version: 1.0
References: <20230322104639.221402-1-treapking@chromium.org>
 <20230322104639.221402-4-treapking@chromium.org> <ZBrgD61p/p17IOJL@smile.fi.intel.com>
In-Reply-To: <ZBrgD61p/p17IOJL@smile.fi.intel.com>
From:   Pin-yen Lin <treapking@chromium.org>
Date:   Fri, 31 Mar 2023 11:36:40 +0900
Message-ID: <CAEXTbpcLU6jr2MoDEhZCz3wWzXmJATwHU+Tird-3Q9bXrGeTnA@mail.gmail.com>
Subject: Re: [PATCH v14 03/10] drm/display: Add Type-C switch helpers
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
        Xin Ji <xji@analogixsemi.com>, linux-kernel@vger.kernel.org,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-acpi@vger.kernel.org,
        Javier Martinez Canillas <javierm@redhat.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Lyude Paul <lyude@redhat.com>,
        =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Allen Chen <allen.chen@ite.com.tw>,
        dri-devel@lists.freedesktop.org, Marek Vasut <marex@denx.de>,
        Stephen Boyd <swboyd@chromium.org>,
        chrome-platform@lists.linux.dev, devicetree@vger.kernel.org,
        Andi Shyti <andi.shyti@linux.intel.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        Imre Deak <imre.deak@intel.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        YueHaibing <yuehaibing@huawei.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIMWL_WL_HIGH,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andy,

Thanks for the review.

On Wed, Mar 22, 2023 at 8:01=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Mar 22, 2023 at 06:46:32PM +0800, Pin-yen Lin wrote:
> > Add helpers to register and unregister Type-C "switches" for bridges
> > capable of switching their output between two downstream devices.
> >
> > The helper registers USB Type-C mode switches when the "mode-switch"
> > and the "reg" properties are available in Device Tree.
>
> ...
>
> > +config DRM_DISPLAY_DP_TYPEC_HELPER
>
> > +     bool
> > +     default y
>
>         def_bool y
>
> > +     depends on DRM_DISPLAY_HELPER
> > +     depends on DRM_DISPLAY_HELPER=3DTYPEC || TYPEC=3Dy
> > +     help
> > +       DRM display helpers for USB Type-C Displayport Alternate mode.
>
> Hmm... Dunno if this help is enough.

Okay I'll add more detail in the next version.
>
> ...
>
> > +     snprintf(name, sizeof(name), "%pfwP-%u", fwnode, port_num);
>
> Would it be possible to have a dup in name and would it be a problem if s=
o?
>
The port_num is included in the name, so the names should be unique.
Also, the fwnode name actually contains the reg property, so this name
looks like "endpoint@0-1" now... I'll change the name from fwnode name
to dev_name() per Dmitry's comment.
> ...
>
> > +/**
> > + * drm_dp_register_typec_switches() - register Type-C switches
> > + * @dev: Device that registers Type-C switches
> > + * @port: Device node for the switch
> > + * @switch_desc: A Type-C switch descriptor
> > + * @data: Private data for the switches
> > + * @mux_set: Callback function for typec_mux_set
> > + *
> > + * This function registers USB Type-C switches for DP bridges that can=
 switch
> > + * the output signal between their output pins. This function uses dev=
m_kcalloc
> > + * to allocate memory, so it is expected to only call this in the driv=
er probe
> > + * functions.
> > + *
> > + * Currently only mode switches are implemented, and the function assu=
mes the
> > + * given @port device node has endpoints with "mode-switch" property.
> > + * The port number is determined by the "reg" property of the endpoint=
.
>
> `kernel-doc -v ...` should complain on absence of "Return" section.
>
> > + */
>
> ...
>
> > +     switch_desc->typec_ports =3D devm_kcalloc(dev, switch_desc->num_t=
ypec_switches,
> > +                                             sizeof(struct drm_dp_type=
c_port_data),
>
>                                                 sizeof(*switch_desc_typec=
_ports),
>
> ?
>
> > +                                             GFP_KERNEL);
> > +     if (!switch_desc->typec_ports)
> > +             return -ENOMEM;
>
> ...
>
> > +#ifdef CONFIG_DRM_DISPLAY_DP_TYPEC_HELPER
>
> Ah, maybe this should use IS_REACHABLE() ?

CONFIG_DRM_DISPLAY_DP_TYPEC_HELPER is a boolean. Is there any
difference between IS_REACHABLE and ifdef when the given config is a
boolean?
>
> > +void drm_dp_unregister_typec_switches(struct drm_dp_typec_switch_desc =
*switch_desc);
> > +int drm_dp_register_typec_switches(struct device *dev, struct fwnode_h=
andle *port,
> > +                                struct drm_dp_typec_switch_desc *switc=
h_desc,
> > +                                void *data, typec_mux_set_fn_t mux_set=
);
> > +#else
> > +static inline void drm_dp_unregister_typec_switches(struct drm_dp_type=
c_switch_desc *switch_desc)
> > +{
> > +}
> > +static inline int drm_dp_register_typec_switches(
> > +             struct device *dev, struct fwnode_handle *port,
> > +             struct drm_dp_typec_switch_desc *switch_desc, void *data,
> > +             typec_mux_set_fn_t mux_set)
> > +{
> > +     return -EOPNOTSUPP;
> > +}
> > +#endif
>
> --
> With Best Regards,
> Andy Shevchenko
>

Best regards,
Pin-yen
>
