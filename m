Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5F70A3E4F18
	for <lists+devicetree@lfdr.de>; Tue, 10 Aug 2021 00:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236175AbhHIWSj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Aug 2021 18:18:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233291AbhHIWSj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Aug 2021 18:18:39 -0400
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com [IPv6:2607:f8b0:4864:20::830])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9866AC061796
        for <devicetree@vger.kernel.org>; Mon,  9 Aug 2021 15:18:18 -0700 (PDT)
Received: by mail-qt1-x830.google.com with SMTP id d9so13848841qty.12
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 15:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1kSuSdOzpn2BC3hOOiKLl3g0gaz4argQkrrvlL062JE=;
        b=kr9pYlMuV9ECH5XIXkt+0asDJ+giRnj4+5OSL6oQgpR/pvLqhUJJIA7vco8MDpekpg
         JNiiBamDLModZJ3liyKJ5Z/cSkx8a67P7K7Q12+71TEeSlCraUlj5CKRm4h3KFF7i360
         35Eu0UmQtpvg4y7StN2DunBOonRSZiHz90auk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1kSuSdOzpn2BC3hOOiKLl3g0gaz4argQkrrvlL062JE=;
        b=kujqNSviMrJDWI0zhfozlCt7jVKVCxTV+xHx32C5JBBNq42+fLWlIqcfkm6/Y6F3M0
         GLy7d7RHBvr2dU53R0XTdOQ8yRq0wEzx+Qx+OPqRSXppKJunq8FYLjuqli+gE4bUCGP8
         m+lElO9ZW/XmbHX87irDDapjhrYGg6lcpeFQM7cMARf+aQ0zoPeDIQh3xf+WwvhPs1+T
         KB5GEcfg8yAZkoa+bTf5bdtz0cSZeHOdTJo92yMK+frgoUgFUhlw9yrIE26SGoj6/MO6
         dOVWNN4PpQv8djGElta7A0uF/8BWoB0W1iV+lgVcF7Bt7avfPUXcGLgumMUws1DT8JLi
         xz4g==
X-Gm-Message-State: AOAM531LpvkDUugLHT50LhJ6qU5Ly/hPit95zc56fQHPA3m/FWIy0ZeD
        EcCpIitHvIYDq4vSu5m7Kf99e89F+rleFQ==
X-Google-Smtp-Source: ABdhPJw+d9GPUOUjkuDVAOI9xt3qIh58lpivkZIRlloAEChS7hYZq585zkK74FjFg8aEZfqGXi+lhA==
X-Received: by 2002:ac8:5949:: with SMTP id 9mr16290308qtz.135.1628547497720;
        Mon, 09 Aug 2021 15:18:17 -0700 (PDT)
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com. [209.85.219.176])
        by smtp.gmail.com with ESMTPSA id e17sm5450027qtp.41.2021.08.09.15.18.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Aug 2021 15:18:15 -0700 (PDT)
Received: by mail-yb1-f176.google.com with SMTP id z128so32387977ybc.10
        for <devicetree@vger.kernel.org>; Mon, 09 Aug 2021 15:18:15 -0700 (PDT)
X-Received: by 2002:a25:b845:: with SMTP id b5mr33593609ybm.343.1628547495182;
 Mon, 09 Aug 2021 15:18:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210730212625.3071831-1-dianders@chromium.org> <YQmp3mGpLW+ELxAC@ravnborg.org>
In-Reply-To: <YQmp3mGpLW+ELxAC@ravnborg.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Mon, 9 Aug 2021 15:18:03 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XxOXJEgq7SiOVwSo2eWEbekQqutucFP=MmrrtmStXxog@mail.gmail.com>
Message-ID: <CAD=FV=XxOXJEgq7SiOVwSo2eWEbekQqutucFP=MmrrtmStXxog@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] eDP: Support probing eDP panels dynamically
 instead of hardcoding
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Maxime Ripard <mripard@kernel.org>,
        Steev Klimaszewski <steev@kali.org>,
        Linus W <linus.walleij@linaro.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Aug 3, 2021 at 1:41 PM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> Hi Douglas,
>
> On Fri, Jul 30, 2021 at 02:26:19PM -0700, Douglas Anderson wrote:
> > The goal of this patch series is to move away from hardcoding exact
> > eDP panels in device tree files. As discussed in the various patches
> > in this series (I'm not repeating everything here), most eDP panels
> > are 99% probable and we can get that last 1% by allowing two "power
> > up" delays to be specified in the device tree file and then using the
> > panel ID (found in the EDID) to look up additional power sequencing
> > delays for the panel.
>
> Have you considered a new driver for edp panels?
> panel-edp.c?
>
> There will be some duplicate code from pnale-simple - but the same can
> be said by the other panel drivers too.
> In the end I think it is better to separate them so we end up with two
> less complex panel drivers rather than one do-it-all panel driver.
>
> I have not looked in detail how this would look like, but my first
> impression is that we should split it out.

I certainly could, but my argument against it is that really it's the
exact same set of eDP panels that would be supported by both drivers.
By definition the "simple" eDP panels are the ones that just have a
regulator/enable GPIO and some timings to turn them off. Those are the
exact same set of panels that can be probed if we just provide the
panel ID that's hardcoded in the EDID. As you can see from the
implementation patch I'm actually sharing the private data structures
(the ones containing the timing) for panels that are supported both as
"probable" and as hardcoded. If we split into two drivers we'd either
need to duplicate the timings for all panels supported by both drivers
or we'd have to somehow export them (maybe hard if things are in
modules). Also, since it's the same set of eDP panels we'd need to
exactly duplicate all the code handling delays / HPD. It just doesn't
feel right to me.


-Doug
