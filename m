Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C1C9D668700
	for <lists+devicetree@lfdr.de>; Thu, 12 Jan 2023 23:32:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231833AbjALWc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Jan 2023 17:32:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44898 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232816AbjALWcD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Jan 2023 17:32:03 -0500
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 524B2B43
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 14:31:58 -0800 (PST)
Received: by mail-yb1-xb2a.google.com with SMTP id e76so20402084ybh.11
        for <devicetree@vger.kernel.org>; Thu, 12 Jan 2023 14:31:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=/C/ZRKjPzNTEZUCk+rnSkeE6htJTMyaRVi+BQ5BKJ+U=;
        b=JUPY63vtT6QcwqD9Ws2QE/pf7jC1/0su4w2j3d9Xn0NTdACzrFBjxjuFHWgpThUZws
         imdknTpaWEjV9uHtradW98A1u35lfMGg1dddhCwsBClQF94e0939KX7UTkXNgez4GIry
         JxaKGHbkQ7QWJVTYQ0VQgYI43iHND9qXIlcZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/C/ZRKjPzNTEZUCk+rnSkeE6htJTMyaRVi+BQ5BKJ+U=;
        b=SDGQUdG2BDTFU0HGgktF1MT4YYes86NI2q7BEbwc4mf1dhHn865nNTDHrc3TM2Lw0/
         /fQtRm3koFvccvMnk0P/WlT6z1bewjr3q8U0ray7qnJLiNtbClo4Be3mkpf3CBTY1S+S
         W/HDjm5HYRBkRXVgsReGwEtjTT5n3arde9cV7hMecMzWcHJUCZFJlhBPY1hei8nK+wrI
         29LBRbZkHOq6okIhFbgFbptZra0VJPFCCCbgg1k1XquKnnTdeyV+dOnkuAaQ00+EAfqT
         hC8Y6fuLjaEEyllbBbt/dB/X3wD56niFH4BfxtRTScmvNdH14j7EN06twIdnJZ2Ydyfu
         K95w==
X-Gm-Message-State: AFqh2ko4dVmyS1A+kzuBGIFThMWj2muotqWPL+z/sORSsN7dZDeJD3P1
        nlrpsj42pao2vWV6KLlv8hi++Lm5hnVT1CtXHZmS/Q==
X-Google-Smtp-Source: AMrXdXuznEwChU9VQQ72rYVGqmbsFrMqOVBPMbeBVwgDM2AWPc/3hytO7eUeE33HPvr9ax9Vk/LALEeTjlK/OvpNWf8=
X-Received: by 2002:a25:1083:0:b0:7ae:5e48:383b with SMTP id
 125-20020a251083000000b007ae5e48383bmr2843942ybq.223.1673562717561; Thu, 12
 Jan 2023 14:31:57 -0800 (PST)
MIME-Version: 1.0
References: <20230112042104.4107253-1-treapking@chromium.org>
 <20230112042104.4107253-2-treapking@chromium.org> <Y8AL8nTcNcl6zX7H@paasikivi.fi.intel.com>
In-Reply-To: <Y8AL8nTcNcl6zX7H@paasikivi.fi.intel.com>
From:   Prashant Malani <pmalani@chromium.org>
Date:   Thu, 12 Jan 2023 14:31:45 -0800
Message-ID: <CACeCKaeN7KBi30M1fRWhTPgMbxF6=B+KuAS7Ny7+i9qCx+=49Q@mail.gmail.com>
Subject: Re: [PATCH v10 1/9] device property: Add remote endpoint to devcon matcher
To:     Sakari Ailus <sakari.ailus@linux.intel.com>
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
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        =?UTF-8?B?TsOtY29sYXMgRiAuIFIgLiBBIC4gUHJhZG8=?= 
        <nfraprado@collabora.com>, Marek Vasut <marex@denx.de>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Javier Martinez Canillas <javierm@redhat.com>,
        Lyude Paul <lyude@redhat.com>, chrome-platform@lists.linux.dev,
        Xin Ji <xji@analogixsemi.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-kernel@vger.kernel.org, Allen Chen <allen.chen@ite.com.tw>,
        linux-acpi@vger.kernel.org, Hsin-Yi Wang <hsinyi@chromium.org>,
        Chen-Yu Tsai <wenst@chromium.org>
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

HI Sakari,

On Thu, Jan 12, 2023 at 5:32 AM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Pin-yen,
>
> On Thu, Jan 12, 2023 at 12:20:56PM +0800, Pin-yen Lin wrote:
> > From: Prashant Malani <pmalani@chromium.org>
> > +             /*
> > +              * Some drivers may register devices for endpoints. Check
> > +              * the remote-endpoints for matches in addition to the remote
> > +              * port parent.
> > +              */
> > +             node = fwnode_graph_get_remote_endpoint(ep);
> > +             if (fwnode_device_is_available(node)) {
> > +                     ret = match(node, con_id, data);
> > +                     if (ret) {
> > +                             if (matches)
> > +                                     matches[count] = ret;
> > +                             count++;
> > +                     }
> > +             }
>
> Aren't you missing fwnode_handle-put(node) here??

It shouldn't be necessary. We aren't break-ing/continue-ing here,
and fwnode_handle_put(node) is called latter in the loop [1][2]

BR,

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/base/property.c#n1256
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/base/property.c#n1261
