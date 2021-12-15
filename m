Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5BED0475C16
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 16:46:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242917AbhLOPps (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 10:45:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244069AbhLOPps (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 10:45:48 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEABFC061574
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 07:45:47 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id p3-20020a05600c1d8300b003334fab53afso18798236wms.3
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 07:45:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Xn1Ll/zwwc6I6T/3u63MToa9pnrJf15QvBtvMTGTwEw=;
        b=cV+mGs4NRZG4GsjyQJe9jKNMeEcZTmYddiyBPolESjWlUl9INh6zFgOj8lDo4QJpsO
         bJPicfSNQOGQrwoAqSOYo8+MfoRLQZbutRzXmRyNSTNiN31tAqbJfOYNED8vY2A2N6OV
         3EZesBnOjcjuUlq+tEI3h4L3E1PhGnVzLpCy97g+bFg55vm7tgNsBLGbgggiQGi/Odl8
         NW4y3xQvzvKk4q9EYIZrhEKipj2HTuNE+Lk6SGFMysGEXCfMp1faIo4xsiQ+sP8sGHIs
         WjIHba2yWqbuNsGIdYTiU3VeYonFAQVEVWKZDSOAPG53iORZRdPT8984Gfh5Yab52Os6
         mAsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Xn1Ll/zwwc6I6T/3u63MToa9pnrJf15QvBtvMTGTwEw=;
        b=M6IXalQbvHppddGPGpEV2flRZykr3mJEb2LFz7krKCXLDFzaj8mUjagV9LMaZX6zqx
         vqY3VYfMqo+UCzKIx7+x8ufUKj6wxq0UlFpbHZJUcYYa+BQgAHTj9BVD7QWaQXjh89Xq
         gm3/kU2kLN42g3d4O/46CVCxkv4GPozJym2IahmFqXw3swAhO+lHcOw3DNTB16p/xgTw
         LsmoQSMZ+dwT0GlikjhZe+n9rUl9PQ7JOSPxEL0kOsrajNt+3HtejLpGfgjo3fBkQAak
         2+pD33rk4JdYEXcaNUlIDmI+RWQfg4r1cjtLvOBQSDg9owbEgVhdVUFid7MUY/wJKco1
         q9eQ==
X-Gm-Message-State: AOAM533Q9sWeYxaG6Bk2t2su6+jOqj+LaxbTgpX6sS7uMxt96FyydPX8
        WduJI2BHOCfL1aAhA5ND9mUhzA==
X-Google-Smtp-Source: ABdhPJyT/9KSiuR3jBg4CCcDkaDCJWmmGa5oRYKyEe/0Ms3ZQJPcsUbg2WLCtUhdd8tgCwOujj6Htg==
X-Received: by 2002:a05:600c:22d2:: with SMTP id 18mr388735wmg.158.1639583146106;
        Wed, 15 Dec 2021 07:45:46 -0800 (PST)
Received: from google.com ([2a00:79e0:d:209:8505:8095:9f82:42b7])
        by smtp.gmail.com with ESMTPSA id f15sm2681600wmg.30.2021.12.15.07.45.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Dec 2021 07:45:45 -0800 (PST)
Date:   Wed, 15 Dec 2021 15:45:41 +0000
From:   David Brazdil <dbrazdil@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Will Deacon <will@kernel.org>,
        Andrew Scull <ascull@google.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] misc: open-dice: Add driver to expose DICE data
 to userspace
Message-ID: <YboNpWFL8v+FuWXC@google.com>
References: <20211215150410.1707849-1-dbrazdil@google.com>
 <20211215150410.1707849-3-dbrazdil@google.com>
 <YboHh6TJJ0VNHpV2@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YboHh6TJJ0VNHpV2@kroah.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 15, 2021 at 04:19:35PM +0100, Greg Kroah-Hartman wrote:
> On Wed, Dec 15, 2021 at 03:04:10PM +0000, David Brazdil wrote:
> > +	drvdata = devm_kmalloc(dev, sizeof(*drvdata), GFP_KERNEL);
> > +	if (!drvdata)
> > +		return -ENOMEM;
> > +
> > +	*drvdata = (struct open_dice_drvdata){
> > +		.lock = __SPIN_LOCK_UNLOCKED(drvdata->lock),
> > +		.rmem = rmem,
> > +		.misc = (struct miscdevice){
> > +			.parent	= dev,
> > +			.name	= drvdata->name,
> > +			.minor	= MISC_DYNAMIC_MINOR,
> > +			.fops	= &open_dice_fops,
> > +			.mode	= 0600,
> > +		},
> > +	};
> 
> That is a lovely abuse of an implicit memcpy(), took me a while to
> realize what it was doing here...
> 
> Anyway, this all looks great to me, I'll wait for the DT maintainers to
> review the dt change before being able to take this through my tree.
> Thanks for the cleanups based on the review, the driver is now almost
> 1/3 smaller than your first version with more functionality!

Thanks, and thank your for your help!

David
