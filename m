Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 890C24283F5
	for <lists+devicetree@lfdr.de>; Mon, 11 Oct 2021 00:04:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233102AbhJJWGW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Oct 2021 18:06:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230364AbhJJWGW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Oct 2021 18:06:22 -0400
Received: from mail-qt1-x82b.google.com (mail-qt1-x82b.google.com [IPv6:2607:f8b0:4864:20::82b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12C39C06161C
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 15:04:23 -0700 (PDT)
Received: by mail-qt1-x82b.google.com with SMTP id w2so6500722qtn.0
        for <devicetree@vger.kernel.org>; Sun, 10 Oct 2021 15:04:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/5ObYAYd+03W3YBA6Pn4wWGWrRT1oHT143L5O16ds/c=;
        b=iixu0wmaF8IUA/xgeB9L8/92WlYvhOjmVUz0NDhb7kc/TIkwUAvwGCjxbIEzhrY/US
         1Tstm41AyFKwl9H9laUcb6Fn/MF0aEdslMb3FioJKkqXR8tbPLlETMQx//2ilxqsYqsB
         0KsvVU1zlidSTC672lVuh3XkD2H9S9Lo7LXjpOuwoJzO05nXbbL3yTNglVHRUHqDu36o
         80V0HkaB6g70lrKGIwq6IU65xFwxRRebxM70QpwYUeWz8dF225DqIMYUAVNNjdJ22urD
         v3BovLFWSW5j+qpi3Ui9NMFgQDnTY3k14oG4t/Qhudz04dy3vj0sBi/0+mzok/dFnZ2f
         TWfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/5ObYAYd+03W3YBA6Pn4wWGWrRT1oHT143L5O16ds/c=;
        b=6OA0TdkcOniO1YZ8ql3jwjitWiqVvbARp/al9UQIB+QcaeDaLcbq+4qG4akO4N8eAt
         bZZouxCSvTPWUWCVQG91W+jlNPuo8oMWVy2TseI+Ccy9LpCD0dAsUJ32qFDAvbvz11v/
         3QPZHIjAVKQnlYxrH44XnpSekcgJaoe3g3f9v2jjRLMmlUeK7us+N7Mp3b6oK1CraBD4
         OdcGBtW5Xn+sQSnhc/Kuv8UU7hh5Jj7mw95/A5d6NJnI8N9FHXS2fT1OqXnCU2Rll6Ro
         2Zf5/qSIX6SqpfGKkdu0LlJheHaw8Ege2qSROAQWz7Uh+/y+skgdptQNiAP7rM35LlV4
         QAIA==
X-Gm-Message-State: AOAM532jSlH7Nbrhqcc6RQmanPJ0Ebbx32h4gHBzUu2U/DNR6eMcN3+I
        /IuSqru39vk362+4O6Cjwq6oqjtHuuCu/RQJmyngYpHVER0=
X-Google-Smtp-Source: ABdhPJywgah7MRxRl8oRmiYWPWnUYFa6xvG6BmWJ9xvv5CRsXI3mGQPiMXd8S0SIeI6iXs311/kDxlBcrKOgV+4Dhn4=
X-Received: by 2002:a05:622a:409:: with SMTP id n9mr11463895qtx.153.1633903462263;
 Sun, 10 Oct 2021 15:04:22 -0700 (PDT)
MIME-Version: 1.0
References: <20211009203806.56821-1-dmitry.baryshkov@linaro.org> <YWMj8Yj5XM7YUPqs@ravnborg.org>
In-Reply-To: <YWMj8Yj5XM7YUPqs@ravnborg.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 11 Oct 2021 01:04:11 +0300
Message-ID: <CAA8EJppqiGa4sgLVNxCO5w0FksfO-a+w_EwFEdjkZ05vU7Jr9Q@mail.gmail.com>
Subject: Re: [PATCH v5 0/2] Add support for Sharp LS060T1SX01 panel
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 10 Oct 2021 at 20:33, Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Dmitry,
>
> On Sat, Oct 09, 2021 at 11:38:04PM +0300, Dmitry Baryshkov wrote:
> > Add driver to support Sharp LS06T1SX01 6.0" FullHD panel found e.g. in
> > the kwaek.ca Dragonboard Display Adapter Bundle.
> >
> > Changes since v4:
> >  - Use MIPI_DSI_MODE_NO_EOT_PACKET instead of the old name
> >
> > Changes since v3:
> >  - Replaced small msleeps with usleep_range
> >
> > Changes since v2:
> >  - Add missing power supplies used by the panel according to the
> >    datasheet
> >
> > Changes since v1:
> >  - Fix the id in the schema file
> >
> > ----------------------------------------------------------------
> > Dmitry Baryshkov (2):
> >       dt-bindings: add bindings for the Sharp LS060T1SX01 panel
> >       drm/panel: Add support for Sharp LS060T1SX01 panel
>
> Applied to drm-misc-next and this time on purpose.
> Thanks for the quick fixes.

Thank you and sorry for the confusion/mess during the merge.

-- 
With best wishes
Dmitry
