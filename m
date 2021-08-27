Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 325063F9A68
	for <lists+devicetree@lfdr.de>; Fri, 27 Aug 2021 15:45:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245321AbhH0Noz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Aug 2021 09:44:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245273AbhH0Noy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Aug 2021 09:44:54 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9972DC061757
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 06:44:05 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id i13so7054613ilm.4
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 06:44:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nTcz622O5BJSdhwbyQLpgjIcVtxzhbuuDPAw/ERSb34=;
        b=nwMZdArwlv8PgqotkRBgtHlu7yabfcDMjYgvJM0IH8awX+9VQ78BYs+kxfawbg3ByI
         GVS2wJYh0hYBdqKT4ICNSQV2kSks6YSWLi64KWD9FOvegcbUE1JoBGwviQVEp37Kfscl
         t4BCXUCwTJbY3jAnUapbGiJ+WVyuxkBirs6cIOvHq2A3KzvYoG7qb3SG0QK884hzvCcv
         ZBHvOhm56MO6mWgbQin0tWbYzy4ca1GAUd8qfyl39NysGaPjI6q2Zrsz1TmZnpodQrGZ
         B2NIt3gK8LQHWMtNAIZngIXslebF4zKQ8vgVzFkxtmQx53VwA2/kqnEHWWVi9Bp6b3+c
         6MZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nTcz622O5BJSdhwbyQLpgjIcVtxzhbuuDPAw/ERSb34=;
        b=iOkpB2QgcxoL2uUWuyvQ/J44ohuxmc11cfdu+/zo5pYUAlKwOGs+e/RwCcXkShJ5Og
         Ux1YAMrFMTo40IWNHBTlaZSNxpOi9j85OUz7cSryu8+FXYabyYjSf8Thtn+55U4lg2DI
         0a2f+qMVnI8bwxgglzVMp0hsVNEJ6TJ9KmZvoZHB6TMdUfZrfmmRBvQm/59eeIRoygKM
         WracLFIPtTnmUOX/u/mWwR91wZ+uQjHbhQuIPVsQ2AJ5TYa0r0L7AwNwE5zNTj/oOeLz
         2bkQ7wJe/36rYxasXfYweXyLvR/0BcaS1gcZIMnXv6GNJCku/8+aiVnWU/MlrZO3l2GM
         Ht+A==
X-Gm-Message-State: AOAM533CxWMdhon3PR5wVb/3i48G0AP8iiaK0jb/OkxAZ3ZhIAUvMSgM
        us1lvsFDeZa52GFBx24X7prfC+/dB4gGr1tMsfDuhA==
X-Google-Smtp-Source: ABdhPJzTQDUwgP1HqS9A4c6xvJF2fQzeReSUEOiC4fqaM82hDkXm4wHKQiR4QMH5GN+DLTEf0xhxY3gl84w/dQcXMBY=
X-Received: by 2002:a05:6e02:168d:: with SMTP id f13mr6835390ila.12.1630071844764;
 Fri, 27 Aug 2021 06:44:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210827082407.101053-1-yangcong5@huaqin.corp-partner.google.com> <20210827082407.101053-3-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20210827082407.101053-3-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Fri, 27 Aug 2021 06:43:52 -0700
Message-ID: <CAD=FV=V9GQXJo8YRwnPFK2QZY-CmaFG14v7H4Qb+JqmmiEF0Ug@mail.gmail.com>
Subject: Re: [v3 2/4] dt-bindings: drm/panel: boe-tv101wum-nl6: Support
 enabling a 3.3V rail
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
> The auo,b101uan08.3 panel (already supported by this driver) has
> a 3.3V rail that needs to be turned on. For previous users of
> this panel this voltage was directly output by pmic. On a new
> user (the not-yet-upstream sc7180-trogdor-mrbland board) we need
> to turn the 3.3V rail on.
>
> Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
> ---
>  .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml    | 3 +++
>  1 file changed, 3 insertions(+)

There were no differences between this and the previous version [1]. I
added my Reviewed-by tag on the previous version, so you should have
included it in this new version. Rob's too.

[1] https://lore.kernel.org/r/20210820070113.45191-3-yangcong5@huaqin.corp-partner.google.com

In any case:

Reviewed-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Rob Herring <robh@kernel.org>
