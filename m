Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1CD5D388D4C
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 13:53:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352712AbhESLy6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 07:54:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352672AbhESLy6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 07:54:58 -0400
Received: from mail-il1-x132.google.com (mail-il1-x132.google.com [IPv6:2607:f8b0:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67E7DC061760
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 04:53:37 -0700 (PDT)
Received: by mail-il1-x132.google.com with SMTP id k4so8275121ili.4
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 04:53:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UW7fZiIlXVfl0Qc0/A9Hj0P585Ftj5tVT/omHdWRq4I=;
        b=xLPFHrobZa2WtMv3ql7wPlAv5Tlyo5PmflSYyt63GdY1dJxV6q/++PoWUU73Vm8I8Q
         XhykK9d/2gYBEup6fAwa2XK+Umf9GBrejU/zdN/Q5H/8/Fgml0iNnb1gBdWV8iOy8P1v
         VJBUZDNw3f4iM+zvum6Yav1e8S+RzjRmzu0EQdDYM46bamsvc9oBTDOc27AOk9ZJPMzN
         hX73g9wxPHDs13xqAScfxHl1X2NLKl1zx/r5cxUNm2PlXAJ2UXr+O1mvsXUmJHXY/j3m
         t340Ij6y4xra8yVLLznQQEYhjk9BsM/rX0jQObGJQmoKKyBeJyAiwsCqGdNfZvj/t9ir
         +/cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UW7fZiIlXVfl0Qc0/A9Hj0P585Ftj5tVT/omHdWRq4I=;
        b=tylvVPPOZoiH4k2TvQIpGhv197gzzjDdN7P6FF3grHamC/DovPxd1TKn0T9jX6oMgV
         qcRKCiBY0GBFLXTC2PUFuLihAjCYAfHjVlt3Bms4u+9HJ9C9Qg7V0d7HzvSy8/3XbZvE
         Bkkwe5xvXHC0RaNuUiuzCZEuOCxtp8P7SiyuhP8r6q8SDHPxgOl65+yvHCSpUTgOA7ex
         t+iGtgfJCrq4yDSc3QlQVlX44jweTWPkmjjZYu9ZVkX3XOZNxqeFFCRY48HBQ0h1vZCw
         /9CChqv2Li0hR4CwAM9eAgcaDZWFUDHRuHD6lf09KVKtRnxTiesKkL146nQAUz8D0IgC
         x9iA==
X-Gm-Message-State: AOAM530xo2dCBjrKSGnfkSkyhDSuwnboCLGXj93j4XAHE21UQKIcF6nF
        tU7Ph3FZOftYVpQ7jnrbGrfgi/uJNwxJNJZFHmC4Jw==
X-Google-Smtp-Source: ABdhPJyagVuDl87Slxx3PuzN9OBL7HrQnUxrISgaMw3Gc9dfiRyYygGFfRlU4U4XUgvEtNonmfbMHU8PypFnnAmBhHo=
X-Received: by 2002:a92:cf45:: with SMTP id c5mr10915199ilr.182.1621425216452;
 Wed, 19 May 2021 04:53:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210430123511.116057-1-robert.marko@sartura.hr> <af4923ef1ed0693fcd67d7986348b164@walle.cc>
In-Reply-To: <af4923ef1ed0693fcd67d7986348b164@walle.cc>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Wed, 19 May 2021 13:53:25 +0200
Message-ID: <CA+HBbNHCnpg9qCzZbT9KVNqX-daC68iaJKNdyEf7do3w98miWw@mail.gmail.com>
Subject: Re: [PATCH 1/6] mfd: Add Delta TN48M CPLD driver
To:     Michael Walle <michael@walle.cc>
Cc:     Lee Jones <lee.jones@linaro.org>, robh+dt@kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        bgolaszewski@baylibre.com, jdelvare@suse.com,
        Guenter Roeck <linux@roeck-us.net>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-hwmon@vger.kernel.org, Luka Perkov <luka.perkov@sartura.hr>,
        jmp@epiphyte.org, Paul Menzel <pmenzel@molgen.mpg.de>,
        Donald Buczek <buczek@molgen.mpg.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 6, 2021 at 6:34 PM Michael Walle <michael@walle.cc> wrote:
>
> Hi Robert,
>
> Am 2021-04-30 14:35, schrieb Robert Marko:
> > Delta TN48M switches have a Lattice CPLD that serves
> > multiple purposes including being a GPIO expander.
> > So lets add the MFD core driver for it.
>
> Did you have a look at mfd/simple-mfd-i2c.c?

Hi Michael,

Yes, that was my first idea but we have a requirement to expose CPLD
information via debugfs as there are userspace applications using it.
And simple-mfd-i2c does not allow us to do so.

Regards,
Robert
>
> -michael



-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
