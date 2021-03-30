Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE23234F1BF
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 21:47:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233151AbhC3Tqq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 15:46:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58032 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233238AbhC3Tqa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 15:46:30 -0400
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96DB6C061762
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 12:46:29 -0700 (PDT)
Received: by mail-yb1-xb2f.google.com with SMTP id z1so18644187ybf.6
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 12:46:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6DYqoHmA+zYKq7nKYyDZpLfhv3PQpbvtdseyGxtr+2w=;
        b=J7o+HmrVDPnqlk05er+9iEO0yix6U99sBC6tcMNMjDGJDn20EJaxiybf8++QhkNApK
         N3sQSpSxQf520/WDjOcKHqJHvWVfxEHrLTBZgz0gZFdwjsnJAloM4TmFtV39RE33JdF6
         fmb5XMZabYNyAXQpiGJykMiKifky7e7xaBknmrOL4LJbWmFl5vXiiIozqGKboPlDyhf4
         astdReaFgb+7tDbMbH3p3JIEbGGlOn6wNCC1wKGIc+sgPOom1O4KERLknIiG/CYf7AY3
         98oonNrjp/VgxRtvAO58eXssMmnZZX+WjvUF5UP1UnFr+w4tvX23xUT5+sGJhPoegw6Q
         /dvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6DYqoHmA+zYKq7nKYyDZpLfhv3PQpbvtdseyGxtr+2w=;
        b=PvNoH9TaALaxPe55odMoD5hLLqqGqHiDPG2X/jz7FoqmT8ptK0BQ9FqpoYWl9HS8yw
         uooU8h2+0BuGvQzQ7w0hd9mB7Cw8paRkCFgyKLwgDFW/IERD9qIKco39mby9anmlNtg0
         lOjfNbbEFPD9v8/UkXTk0xK3lgtRauV9k/nVuYUaob/2EshoV3UQ1p9julvLVMKS6ra1
         Z+XAWOvfmA8BVmNdztheToDVEr/eVRY+lcCsbqQUumXF6rAaDUr7Pkoi2s6RFPEA9SB3
         JfNvhUc6jGenBRjANrHX6qqAlgYBeknsuGELJQD+WiTTf6E7OuhbhjmZOCIOnobNM5iC
         44VQ==
X-Gm-Message-State: AOAM530t9Vdk5NRgI3hafM0whjrzwtrhjGJFK6VxG2Zu6PocWRASlPl+
        EwVzXe/W6jcXloYlN2pVWHnteeeu8CfUbfz1slsS7w==
X-Google-Smtp-Source: ABdhPJwi/ZbH0+s08CVaWjRfNYgE500YFCldoEQ2eRbid+iECt0ft7NXVGlGrXJ+JpwTn7UASmw/L6E8AOoaUlrbgyw=
X-Received: by 2002:a25:698a:: with SMTP id e132mr36525292ybc.412.1617133588489;
 Tue, 30 Mar 2021 12:46:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210330185056.1022008-1-saravanak@google.com> <161713296600.2260335.7459463781834702722@swboyd.mtv.corp.google.com>
In-Reply-To: <161713296600.2260335.7459463781834702722@swboyd.mtv.corp.google.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 30 Mar 2021 12:45:52 -0700
Message-ID: <CAGETcx9W+J2aSKBV-qH0Fe5yoDebcf2+kH8wL061YG7LS_KavA@mail.gmail.com>
Subject: Re: [PATCH v1] of: property: fw_devlink: Add support for remote-endpoint
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Android Kernel Team <kernel-team@android.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Mar 30, 2021 at 12:36 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Saravana Kannan (2021-03-30 11:50:55)
> > remote-endpoint property seems to always come in pairs where two devices
> > point to each other. So, we can't really tell from DT if there is a
> > functional probe order dependency between these two devices.
> >
> > However, there can be other dependencies between two devices that point
> > to each other with remote-endpoint. This non-remote-endpoint dependency
> > combined with one of the remote-endpoint dependency can lead to a cyclic
> > dependency[1].
> >
> > To avoid this cyclic dependency from incorrectly blocking probes,
> > fw_devlink needs to be made aware of remote-endpoint dependencies even
> > though remote-endpoint dependencies by themselves won't affect probe
> > ordering (because fw_devlink will see the cyclic dependency between
> > remote-endpoint devices and ignore the dependencies that cause the
> > cycle).
> >
> > Also, if a device ever needs to know if a non-probe-blocking
> > remote-endpoint has finished probing, it can now use the sync_state() to
> > figure it out.
> >
> > [1] - https://lore.kernel.org/lkml/CAGETcx9Snf23wrXqjDhJiTok9M3GcoVYDSyNYSMj9QnSRrA=cA@mail.gmail.com/#t
> > Fixes: ea718c699055 ("Revert "Revert "driver core: Set fw_devlink=on by default""")
> > Reported-by: Stephen Boyd <swboyd@chromium.org>
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
>
> Tested-by: Stephen Boyd <swboyd@chromium.org>

Thanks!

>
> > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > index 5036a362f52e..2bb3158c9e43 100644
> > --- a/drivers/of/property.c
> > +++ b/drivers/of/property.c
> > @@ -1225,6 +1230,8 @@ static struct device_node *parse_##fname(struct device_node *np,       \
> >   * @parse_prop.prop_name: Name of property holding a phandle value
> >   * @parse_prop.index: For properties holding a list of phandles, this is the
> >   *                   index into the list
> > + * @optional: The property can be an optional dependency.
>
> This bit conflicted for me on linux-next today so I dropped it in favor
> of 3915fed92365 ("of: property: Provide missing member description and
> remove excess param").

Ah looks like a change went into DT git repo but not in driver-core
yet. Yeah, dropping this bit is fine.

Rob/Greg,

I'll leave it to you to deal with the conflict?  I can't send to DT
because the fix needs to land in driver-core because of boot issues
and I can't resolve the conflict in driver-core because the
conflicting change isn't in driver-core yet.

Thanks,
Saravana
