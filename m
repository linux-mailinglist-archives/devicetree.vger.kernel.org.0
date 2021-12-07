Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0635A46C08B
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 17:17:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239310AbhLGQUe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 11:20:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234845AbhLGQUd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 11:20:33 -0500
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C33BC061574
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 08:17:03 -0800 (PST)
Received: by mail-io1-xd2a.google.com with SMTP id e128so17831986iof.1
        for <devicetree@vger.kernel.org>; Tue, 07 Dec 2021 08:17:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=gmWS9TjLgGqZ+g1YHcRQV99bcbdUvJkmlKsPhxgxsCY=;
        b=SSYZUtmknty2K0xQ3CwS7w4YcGWspE+Nfqyy3dv/dEqrdOoowNYgFukY6yRnj/4jnN
         Z8kgMEP4/vdUOnTOiX2ACoadIctzI2lBYo7MRdAYnx6k6IEb1+JxAwo/sTuMje5y0fM2
         lJSdFQOCRkioBiCmI2qKpJTgyAspTesDXwo+4XSSzSJlUj+nBdEboyxvqgKZRygruYbs
         GJYeilG+8u/wcEbMZoV4SX00EC0Q1YCUoVmPFbybQANbddT07zD8j/dCIP/u3NhabC5s
         Nx99cK0gUP3R3UXyU0oQYIDZGLe/S1KzY3zmgQ4f/8lb7UvN44OriAHXFD/FXC/tatZn
         Fapw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=gmWS9TjLgGqZ+g1YHcRQV99bcbdUvJkmlKsPhxgxsCY=;
        b=7piCSwnqCjfWFdSN+nWoOknbiTo+zmQaRsyXV4+twFWDpMQnzKjQfAn8UQtiOhln7S
         F1ZY9ifCNRHzaGIw+QxgUAuhQ/GHZa7H+YegtgQ9O7AYNMvwTtc/MfFSYjPNoT+e+E+l
         wPFeDobKm6nTGz1FfbSntWo/hdIkL+arBAFJ8J78SZS/5jKJf7ET2a0wGwnc4D6kE5ZQ
         OZ86VkXNEApqKw61uWntqWSrWY+g+mpGmH8PFx4mxbFhdPtHemu0Ql8unb7AFqYDY+ta
         SzkAzcDZ+1i6ImUpeTZ9ytk36xzyrtxy7lng5OVNlGXbkh+oYATHhEZbi7JWMxF58zUa
         c/IQ==
X-Gm-Message-State: AOAM531+EO5Xo1JRXbQRjZguhxXwHwcO/L7o51IKVlaMK27bQqYdkvXg
        +PTf0KAezIKTne9n+qL6+humMMB9COxN++pje26hdw==
X-Google-Smtp-Source: ABdhPJyy+b+L3LlvJM1Iiho74qcXJCkSlfcsc/kFP26/3ibIGOCb0nEAJqVkhN+uv7XitGO1xv1s9gKsMfM5DSy234A=
X-Received: by 2002:a5e:9b07:: with SMTP id j7mr355952iok.136.1638893822676;
 Tue, 07 Dec 2021 08:17:02 -0800 (PST)
MIME-Version: 1.0
References: <20211123075205.2457975-1-yangcong5@huaqin.corp-partner.google.com>
 <20211201023230.344976-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20211201023230.344976-1-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Tue, 7 Dec 2021 08:16:50 -0800
Message-ID: <CAD=FV=Ut=gP9EWPmVqar9pxPA_mTZFD+E1L14fjmFASCfh8_6g@mail.gmail.com>
Subject: Re: [v2] drm/panel: Update Boe-tv110c9m and Inx-hj110iz initial code
To:     yangcong <yangcong5@huaqin.corp-partner.google.com>
Cc:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Nov 30, 2021 at 6:32 PM yangcong
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> At present, we have enough panel to confirm the effect,
> update the initial code to achieve the best effect.
> Such as gamma, Gop timing. They are all minor modifications
> and doesn't affect the lighting of the panel.
>
> a)Boe-tv110c9m panel Optimized touch horizontal grain.
> b)Inx-hj110iz panel Optimized GOP timing and gamma.
>
> Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
>  .../gpu/drm/panel/panel-boe-tv101wum-nl6.c    | 108 ++++++++++++------
>  1 file changed, 74 insertions(+), 34 deletions(-)

Pushed to drm-misc-next.

42c632b0555e drm/panel: Update Boe-tv110c9m and Inx-hj110iz initial code
