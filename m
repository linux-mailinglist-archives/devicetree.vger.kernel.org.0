Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 208003F9B15
	for <lists+devicetree@lfdr.de>; Fri, 27 Aug 2021 16:46:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233207AbhH0OrB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Aug 2021 10:47:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52600 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232477AbhH0OrA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Aug 2021 10:47:00 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD62CC0613CF
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 07:46:11 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id i13so7251423ilm.4
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 07:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TzOUQOR04WNA4/YVeKBqMlLPAY17QH2nosfTS9IvUQM=;
        b=tZDh69nDdVY5p7wRtH8bR1I7nA5Lti7qTlnAa+w2NJMyRCyNUDyujRpwCrdFBwcM9c
         wOkBjm2SZoBOXeA75VW9eEXPBO6RHPJvykSOIAfv1w3a+ad7jPs7uYOiNSuusNIlumh6
         nSsyDYW3SbZjy88g9okTipYz0IjSQXXJpb/+3Iyz0KTpIxP3RIK7YtTn/G5e2UkTckvB
         qey7hclft0SQShoNbO3yj8qYz8OJrSDRy8XJpTwREgJbKNKOWpsPbrc1br7t5+2SRnix
         bjTxpNKKuDAp8QH8C+hV3mWtFPjPa32fe/lhHP8ffNAOiGfPv6FaFus9FhAcWPK/Qh83
         QsFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TzOUQOR04WNA4/YVeKBqMlLPAY17QH2nosfTS9IvUQM=;
        b=alt70B5y+9u1mXZsFTsMjPTz3GVO+9uVr6x5aAZdXD2VYb7ug9i/2/oJ9Qf/dlaDuq
         e5KTU3IQytLHTGOpSid7UaYbvuRQvnYGceljxCRimgPoFqzvkHfgYamxmRlS3Dtlt5I6
         +CGN4njLZ5bFy8nKBKeqG6yCnql+ZoU+A0y/vtIf9Z6r+1HmH75KRR1t31NYtzQBDcH9
         2I1WfvrujI65WEyDlUqowL+D2JY4zEvS6GdDvedT9W/uBxVPiISAMTPuXOrybuy8tUUb
         oJRW5LE2owrlbCIwo5Ejp+26XhJM0mUrywgv56X16V08Mx7O2g9YMVmJASxs3XI+FAAw
         suQg==
X-Gm-Message-State: AOAM533YoKZa84N4gdFruRT32ooMUBWlxmiCazRDQGQM8p+r/isFfamI
        A8yOJkmrBmm+dhf8U7Ne3nFltmgWe7utdzWz41/G/Q==
X-Google-Smtp-Source: ABdhPJx90jiXR/+Kuna9VvwisR0DddZo5lVJ7fj2PG+cx5IfLN0T4GMa1sjlVy8FyIiIF7WR0UGBSnO1/nHgexAlrhc=
X-Received: by 2002:a92:a008:: with SMTP id e8mr6603471ili.187.1630075571040;
 Fri, 27 Aug 2021 07:46:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210827082407.101053-1-yangcong5@huaqin.corp-partner.google.com> <20210827082407.101053-5-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20210827082407.101053-5-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Fri, 27 Aug 2021 07:45:58 -0700
Message-ID: <CAD=FV=URvNk1rBpRaRKTjGS+0u8PePd7reY9ix6cT272_MZcjA@mail.gmail.com>
Subject: Re: [v3 4/4] dt-bindngs: display: panel: Add BOE and INX panel bindings
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

On Fri, Aug 27, 2021 at 1:24 AM yangcong
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Add documentation for boe tv110c9m-ll3, inx hj110iz-01a panel.
>
> Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
> ---
>  .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml   | 4 ++++
>  1 file changed, 4 insertions(+)

Lumping these new panels in like this seems to be what Sam was
suggesting [1] and it seems fine to me. Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

[1] https://lore.kernel.org/r/YSPAseE6WD8dDRuz@ravnborg.org/

Note: please make sure to carry forward Reviewed-by tags to the v4
version of this patch series unless something substantially changes
about a patch.
