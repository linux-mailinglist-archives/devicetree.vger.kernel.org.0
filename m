Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3830B3B0CF2
	for <lists+devicetree@lfdr.de>; Tue, 22 Jun 2021 20:33:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232464AbhFVSfo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Jun 2021 14:35:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232386AbhFVSfo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Jun 2021 14:35:44 -0400
Received: from mail-qt1-x834.google.com (mail-qt1-x834.google.com [IPv6:2607:f8b0:4864:20::834])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19F05C061756
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 11:33:28 -0700 (PDT)
Received: by mail-qt1-x834.google.com with SMTP id j12so147530qtv.11
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 11:33:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pumBvi+qi7d1sRM6cwo7R1W/BHxp1boGJK8L9dh8S7I=;
        b=Gnb/8JfrLJ+yvZfpmSoMuJKpnj9MskU5T49YYM3w8+ZW9IypPBpCVKfYBZ02l5sZS0
         52RS8k1paGyZM5BA6bltHp9N0Sq2IWSZwbT/ojCUlljFvnkTkQmcIHt74VxA+KVyV8lY
         wiVJcA1DfdRMryKyocv7WRfaVD9tANv1RWGyU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pumBvi+qi7d1sRM6cwo7R1W/BHxp1boGJK8L9dh8S7I=;
        b=VGF9fYLHmCxyzNltP62R+DhHheT6Mn4hTz7RghULhs5p7NzwVeNVy9J/fcVZiDOcvk
         Buxr8ira+m1Yd7pABeJpiwLxIqvC4zlQ/3XnRHe6uARbJF1jitilq/zk5N2mOJpTPJv5
         KZjk3yLUP58riyZbSS0+x588Rsn1DIy5KOabu82AaTB46WT2SPV4DGWoitOCWcNAVvRD
         YvSy1h/Z4wjuCQVEEeVYwQ0FUCNlwWHg5uIPwfd2H6YQNH0gxh9Xo2YP6oNJMcPl7kHA
         3VXVf8tHActdMMJmOtdd4xBXGuvslodeFDeL26gHEw77ZIxsViDx7ojVMtgP6P7gqnXE
         YZgw==
X-Gm-Message-State: AOAM533E5ebk2D2So2NWq9rrHxVnFM2hOQqWLxK0Xvg5XAEa1+Ovyw2H
        QFDkq+6HLrU2S/pMFB8s++tTwTSVv8Z35g==
X-Google-Smtp-Source: ABdhPJwF1942oJ225VktmUPi/g3e9koRRRCA2F9dVYriOX2OaI/a+tIz/FUhQZxxs+nFge/8bbqhLA==
X-Received: by 2002:ac8:1411:: with SMTP id k17mr151475qtj.316.1624386807156;
        Tue, 22 Jun 2021 11:33:27 -0700 (PDT)
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com. [209.85.222.181])
        by smtp.gmail.com with ESMTPSA id b188sm13119362qkf.133.2021.06.22.11.33.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jun 2021 11:33:26 -0700 (PDT)
Received: by mail-qk1-f181.google.com with SMTP id j184so42103673qkd.6
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 11:33:25 -0700 (PDT)
X-Received: by 2002:a5b:54a:: with SMTP id r10mr6520278ybp.476.1624386805037;
 Tue, 22 Jun 2021 11:33:25 -0700 (PDT)
MIME-Version: 1.0
References: <1624099230-20899-1-git-send-email-rajeevny@codeaurora.org>
 <1624099230-20899-2-git-send-email-rajeevny@codeaurora.org>
 <20210620093141.GA703072@ravnborg.org> <ebf5581759daee9596c2f092ca836ecb@codeaurora.org>
 <20210621183828.GA918146@ravnborg.org>
In-Reply-To: <20210621183828.GA918146@ravnborg.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 22 Jun 2021 11:33:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WJiA+RxaQA9xt7Tik_2pCEJo0+6b39Di8cfnSWGuKkJQ@mail.gmail.com>
Message-ID: <CAD=FV=WJiA+RxaQA9xt7Tik_2pCEJo0+6b39Di8cfnSWGuKkJQ@mail.gmail.com>
Subject: Re: [v7 1/5] drm/panel: add basic DP AUX backlight support
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Rajeev Nandan <rajeevny@codeaurora.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Rob Clark <robdclark@gmail.com>, Lyude Paul <lyude@redhat.com>,
        Jani Nikula <jani.nikula@intel.com>,
        Rob Herring <robh@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        "Kristian H. Kristensen" <hoegsberg@chromium.org>,
        Abhinav Kumar <abhinavk@codeaurora.org>,
        Sean Paul <seanpaul@chromium.org>,
        Kalyan Thota <kalyan_t@codeaurora.org>,
        Krishna Manikandan <mkrishn@codeaurora.org>,
        Lee Jones <lee.jones@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, linux-fbdev@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Jun 21, 2021 at 11:38 AM Sam Ravnborg <sam@ravnborg.org> wrote:
>
> > > I cannot see why you need the extra check on ->enabled?
> > > Would it be sufficient to check backlight_is_blank() only?
> >
> > This extra check on bl->enabled flag is added to avoid enabling/disabling
> > backlight again if it is already enabled/disabled.
> > Using this flag way can know the transition between backlight blank and
> > un-blank, and decide when to enable/disable the backlight.
>
> My point is that this should really not be needed, as it would cover up
> for some other bug whaere we try to do something twice that is not
> needed. But I am less certain here so if you think it is needed, keep
> it as is.

I haven't tested this myself, but I believe that it is needed. I don't
think the backlight update_status() function is like an enable/disable
function. I believe it can be called more than one time even while the
backlight is disabled. For instance, you can see that
backlight_update_status() just blindly calls through to update the
status. That function can be called for a number of reasons. Perhaps
Rajeev can put some printouts to confirm but I think that if the
backlight is "blanked" for whatever reason and you write to sysfs and
change the backlight level you'll still get called again even though
the backlight is still "disabled".

-Doug
