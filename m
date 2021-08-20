Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A98CF3F2FF6
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 17:47:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241211AbhHTPrd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 11:47:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238124AbhHTPrb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Aug 2021 11:47:31 -0400
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com [IPv6:2607:f8b0:4864:20::d29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92D9AC061575
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:46:52 -0700 (PDT)
Received: by mail-io1-xd29.google.com with SMTP id b7so12837227iob.4
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 08:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=92ifLfUdCfgzu4dobglorYhOZke3wvKfuSJrLJppmSI=;
        b=PNYN10dYDhFe0EbJZmnbL2MpCc/Phz+KekA56PuYlXGfyhrgadC8ZBvqP4bgYpHkrD
         c2NV9qlj5/XxJrm1f5erIMDqX8r37yNUz6tT+xYNmRz4LnKQL400qBwAXSZ5vavybAHB
         nq3oU74XvwgJ7R8daQQsXnf3Ste24aetEfBeA1H31in6MI2EyaFoKvWIjoKLcV8zxTpV
         c0vR23TBx0Ul3wqKuqc39RVQMyDBBxgAdnkqdQSgTxNEgVi/YN0sn246I6wEzw7BWwmq
         SDTDniiYRrRkYvS90ZsL67MedF0t9Z/SfccTQlPILAXazDy0obz1nyx7gNxfzMB1SFpE
         H7Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=92ifLfUdCfgzu4dobglorYhOZke3wvKfuSJrLJppmSI=;
        b=NoHJXKNc7xBYqkUaM6odcL7oWolVWIpm4LfNY4/Vasx3OrJZeQyc9HEVhBTazRBP0a
         fsAhcFEtSdhARfpXKRtg5+sxp2fEL8IVrJXdhTy2LDNOD6ODX743n7ZqlRrvtLhbKLYN
         kETOg7LRPeUD4BQWTIs4k7OTQ1Fvjl8OLUBuQSKm3d+ToK7jc+DfOOOOTmOzoJPRNgkF
         3c3x5zn3cGjCGdZDvnpPP7udizSXWXxr5r5p0ZgjqKZONGQHISD1rpO3bYMzfeSFEzQ6
         ke0Q/Jih3UPIPyd8oagVKa7kFwfMJUjuCGR6VjgjivVFb+J/wuBqYE+tBB+DvRngZdNZ
         aw/Q==
X-Gm-Message-State: AOAM533MeX0w+q24+2XO0AKf/B7RqWa83xtPrUotB/3+6a2YLS3d7TGu
        abjzBujL2aNQ6K7QWA1Cw2k7+H0IcTVHJkAj2HcZqg==
X-Google-Smtp-Source: ABdhPJyeDULv+E/a2RqKOUTOS0IIYgxZw7LAHi9Cjof6nWXftZVSKfx+/Uvzqc2gH3xg/vAkChi9QjcC53vMuWU9SEA=
X-Received: by 2002:a02:cf18:: with SMTP id q24mr18404225jar.5.1629474411859;
 Fri, 20 Aug 2021 08:46:51 -0700 (PDT)
MIME-Version: 1.0
References: <20210819124844.12424-1-yangcong5@huaqin.corp-partner.google.com>
 <20210820070113.45191-1-yangcong5@huaqin.corp-partner.google.com> <20210820070113.45191-2-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20210820070113.45191-2-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Fri, 20 Aug 2021 08:46:38 -0700
Message-ID: <CAD=FV=UTQz8_a+nNE9JiaD-bAa_jxDyho6VBMfqG5Jz6qwcUSw@mail.gmail.com>
Subject: Re: [v2 1/2] drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
To:     yangcong <yangcong5@huaqin.corp-partner.google.com>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Aug 20, 2021 at 12:01 AM yangcong
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The auo,b101uan08.3 panel (already supported by this driver) has
> a 3.3V rail that needs to be turned on. For previous users of
> this panel this voltage was directly output by pmic. On a new
> user (the not-yet-upstream sc7180-trogdor-mrbland board) we need
> to turn the 3.3V rail on. Add support in the driver for this.
>
> Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
> ---
>  drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
