Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 913C9403BB6
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 16:45:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235393AbhIHOqu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Sep 2021 10:46:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231304AbhIHOqt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Sep 2021 10:46:49 -0400
Received: from mail-il1-x12c.google.com (mail-il1-x12c.google.com [IPv6:2607:f8b0:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E361C061757
        for <devicetree@vger.kernel.org>; Wed,  8 Sep 2021 07:45:42 -0700 (PDT)
Received: by mail-il1-x12c.google.com with SMTP id b4so2559325ilr.11
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 07:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5+eW/ZheKXj4ZX5orDoqEWxFt7XRuMsqdbmkjUkkg0Y=;
        b=fXFb0hn8qw8T9Jg1x1peuRXYSEoCZ7/hzNJMifqcQuxXdfiGk92VPL8zqn7yayp76A
         HZhgCxmXxcKlmHBHH2QTmQmtJkclTo1P8+XJ+PQyjHCtfu/weWuDpRtzLihXwUkcxstO
         KX3Kl7eJr8K0xfN0aQTcwn84dD13SedzA45RtIGwHYSvrDpC9H/P5uofXoCdAZrQqmiv
         HhzjJ2PfoPTMQkXJXjmNcR9WKf0iEFa6qRMuxZmv3lOd3IrfVta/uBQPMqKZMCZgOb8Y
         TZuf29q7GJr3APg3xdTEjfit52YLo44PHV5/I+tc6EXcy130Dj9URPnw5GEp/qJcw+PH
         xr/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5+eW/ZheKXj4ZX5orDoqEWxFt7XRuMsqdbmkjUkkg0Y=;
        b=M2J6Qk6FCZplkRKfkRTqmJK6iFkTO0zNLVwokFZEvMdmhUivZSEYFqKOfC/LJr1sR8
         oynRwKIMzIxi1W2mTPLfaMrMkxAVr21gvlVRgZoz1B3xnojCiItw8SEst57pqjkoHYvq
         a68T1xfD4GeK7tAt4wDKWZpurd9AfHBqWbeg/H0lkTU4iiUeI2xRMJdP68h3QV3hrsRe
         C+BxxsmUAHlPQ/RCiGWpuswTwZNFyhSnmqb6ZbksTqD8QanvjCOq6urV4eDPGh2r4EyS
         T/t75A/GzxsVvEssifTttijdMmamwiFaa95h+Lyz4Exy8W+wTazOwvh0G0gIpjIxeoRJ
         QkLQ==
X-Gm-Message-State: AOAM5314hQWk8OY5nVRRUKQKdaCyswTpnGHJ37p7ENC2IPN7ztYHtX7z
        y7E+OP29rXpBjsFuIAJbvGxUrDQumONGjAtKyrfINg==
X-Google-Smtp-Source: ABdhPJz8YaQ9sLyJy0cQgutspDJTH9PZxDifyu0mxyEfhPS/VizaquyGfUh/HKcbYv/hXaNK093SulStSwzhVwCnjWE=
X-Received: by 2002:a92:6b0a:: with SMTP id g10mr160726ilc.27.1631112341151;
 Wed, 08 Sep 2021 07:45:41 -0700 (PDT)
MIME-Version: 1.0
References: <20210830023849.258839-1-yangcong5@huaqin.corp-partner.google.com> <20210830023849.258839-5-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20210830023849.258839-5-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Wed, 8 Sep 2021 07:45:29 -0700
Message-ID: <CAD=FV=XzUUdh-hTTg_Pv1P8WHwTTXa7F5m6q1xq=XVdPxyDDpw@mail.gmail.com>
Subject: Re: [v4 4/4] dt-bindngs: display: panel: Add BOE and INX panel bindings
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

On Sun, Aug 29, 2021 at 7:39 PM yangcong
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Add documentation for boe tv110c9m-ll3, inx hj110iz-01a panel.
>
> Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
> ---
>  .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml   | 4 ++++
>  1 file changed, 4 insertions(+)

Not worth re-posting just for this, but when applying we should fix
s/bindngs/bindings/ in ${SUBJECT}. If you end up posting a v5 for some
other reason then you should fix it, of course.

-Doug
