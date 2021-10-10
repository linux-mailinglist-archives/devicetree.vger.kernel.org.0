Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3640C427E8F
	for <lists+devicetree@lfdr.de>; Sun, 10 Oct 2021 05:27:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229907AbhJJD3M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 9 Oct 2021 23:29:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59380 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229895AbhJJD3K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 9 Oct 2021 23:29:10 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF52BC061764
        for <devicetree@vger.kernel.org>; Sat,  9 Oct 2021 20:27:11 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id n8so54735553lfk.6
        for <devicetree@vger.kernel.org>; Sat, 09 Oct 2021 20:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/EhOtGkof34MroXZl3kc78gCn2HP9vUs7fx4bJ4VLTE=;
        b=SCoxo7inefadR+lZ3WcKj7jCMSukZG/iwKTAYicGl3dce5yKP0jllTCnngu29QSvn8
         66rOpWOddcosDkLiUoIJF5J9LbK4v7XXHxcsQGbIcm8hClmtGr2G69LU8CVVAE4ZDzZC
         2+vD9aD7E0QKXOjW7yXSYOgO7gjbdDf2mGoS/GWhl6ZBcVIPhzBWUreTbgUZp67OnjfO
         PpxtorD9nysw7ELF0cmvpAdARRtTsxYp/fl/oTgLey/Mll+9cETdVeQFjN74HZHgHbls
         6ZdfUyJF7sda4DFBPoLt8ZBLm8TSJ5snXfaD3sV1nJgoycy3aukWNtxrtaPpHbAkABn0
         ooGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/EhOtGkof34MroXZl3kc78gCn2HP9vUs7fx4bJ4VLTE=;
        b=U6rZhP24MS+NOIIdeb8PGproiJkvbjlkWqIksGUCYnftFTEY6elMmc3vXOnQguuVAl
         pYNx5wc5NdparLIGIxKRNtOk4eGeE2VBdH+Il+YYf0CkHi5o848E0pwVEnVbqkFFOWRc
         RFFEoQCN7Uq/dxrVHNeo/ujSEVsqM1KH8DLTsq90wb+KShkcAxj1mwcMUxQ3qNo6NnmW
         BNJDtKzbM2p+u0xNY3rENowMf33xw/a8M9u/VjFGcOE2tN7smp6hyJdfZwbBasr0aDwv
         tyT8H6OVkznYKW+aSNWcIamlZ92Ng8OomWz6CQ/oQRC1VK9FbX6mMbKQdJ/Ng2Zz7qYx
         SmtA==
X-Gm-Message-State: AOAM531JoFrbS8Ln0aHG7n85l4nvZ9D4n9HSpbmSFIwvq8SB19KcipVT
        A+qmpQUsKwjUx/tNpxQx2gLYn+gksusG4zOomYI5jg==
X-Google-Smtp-Source: ABdhPJzFxzrYlMnOq8h2iuZd8IgdG+WqSZk/RddRGV8MON6EABWDUhL9VXlz4OOOMUSA2DizQEkAYdConh3Yg3Hrd04=
X-Received: by 2002:a05:6512:2253:: with SMTP id i19mr19067459lfu.480.1633836429731;
 Sat, 09 Oct 2021 20:27:09 -0700 (PDT)
MIME-Version: 1.0
References: <20211009185257.2230013-1-osk@google.com> <20211009185257.2230013-2-osk@google.com>
 <638924f2-4323-16d8-5a8b-2afd2b1872d6@roeck-us.net>
In-Reply-To: <638924f2-4323-16d8-5a8b-2afd2b1872d6@roeck-us.net>
From:   Oskar Senft <osk@google.com>
Date:   Sat, 9 Oct 2021 23:26:53 -0400
Message-ID: <CABoTLcS5NJ50Hykizfh842TjZGcT=d0wxMm2-jO4i6wmoDK9Kg@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] hwmon: (nct7802) Make temperature/voltage sensors configurable
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Jean Delvare <jdelvare@suse.com>, Rob Herring <robh+dt@kernel.org>,
        linux-hwmon@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Guenter

Thanks again for the review!

> > +     bool found_channel_config = false;
>
> now unused, as 0-day points out.
Argh, I'm so sorry. I don't understand why building this for OpenBMC
didn't flag that up. I thought building with warnings as errors was
now the default? But obviously not :-/

> > +     /* Enable local temperature sensor by default */
> > +     mode_val |= MODE_LTD_EN;
> > +     mode_mask |= MODE_LTD_EN;
> > +
>
> Either make it = and drop the initialization above, or better
> initialize the variables with MODE_LTD_EN right away.
Oh yeah, makes sense. Will do in V6.

Thanks
Oskar.
