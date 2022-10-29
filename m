Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECE58611ECB
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 02:48:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbiJ2Asz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 20:48:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229552AbiJ2Asy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 20:48:54 -0400
Received: from mail-vk1-xa32.google.com (mail-vk1-xa32.google.com [IPv6:2607:f8b0:4864:20::a32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B6E61A9102
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 17:48:53 -0700 (PDT)
Received: by mail-vk1-xa32.google.com with SMTP id m18so3173815vka.10
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 17:48:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BDS3ulkQIxhYCZbh1V1L3PfaPH69PD07SdVB+UaLXp8=;
        b=pwewBiSe8kgr5OyR4MYc9DaLdOxWP7IpXKCyX6ezcMtw9LHHQj54aSEmUONaARXKqV
         VFPgRqbpTm9XQH1pcqSmOkE9YOzheAnRZV86wmzxQsmsL4rPW9JixOyKNClt7qYVUk0X
         xFfMBnbytKKlph8Ei9bPgczLR5y/G7t6oCk206tuO5KIYVHUm7CwjUFyx1ZKummaUUrg
         ZHyK/6Ids0do/GraJ1FkLnfbAWu+ElZqn5JUxWBix1ukXh1VzmgxhEuLWifipug9y1VF
         TWqPJs5KNjkhHS+ZEOxGi9KNWzFKxrzN9MYV7cyO9faNwa3EdKaYWYe6YXv4HRlR2Got
         NeMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BDS3ulkQIxhYCZbh1V1L3PfaPH69PD07SdVB+UaLXp8=;
        b=nfoE2gExyCSSBEqF+82KoySfdrGOXNHI1KlhwavuQZsheY5tZhC7vXvQQwA33UL85U
         2FS9nwpXADO60zHF2wstTOjcAdJwqXccaRlbmMxDybdGKRx8v2Eg8ax5D5zc/PHxoRed
         stU4ivVfNUcsISg/Bcwsq81vD2R22VlN3veQgbP1dsS3hKmqunyL1tPdHVTZeuDljOOP
         BBr9HRSoPa9bpZP9xKwD37puloE8DMVOGMZIhPecb+H8gdk9zxrcQI6dvVXS7s1EMeK/
         ZJRq9jZ/DzY5hHzuFLSRCM9dSMBu/EI82NGBSuRos1xgHMULXui+AS77EsXJ+eIkCQjJ
         7xdg==
X-Gm-Message-State: ACrzQf0ydch2BYJTWw2WWKk3NiwQoBZTYrNulo8G+1ibdlXkn8we27c7
        7H13349bVrIgwmXcfCWs694LIJsZd3yQX/83P6U=
X-Google-Smtp-Source: AMsMyM7Hes/zSO3PE6h3xDAln6LW0KE4fd8l4MhQd+0NZUZeTGXqU6ljtxJbYkhrtwBp9nn9wokCysdVYmEMj1a30oc=
X-Received: by 2002:a1f:aa83:0:b0:3ae:b1e2:af74 with SMTP id
 t125-20020a1faa83000000b003aeb1e2af74mr1075293vke.20.1667004532524; Fri, 28
 Oct 2022 17:48:52 -0700 (PDT)
MIME-Version: 1.0
References: <20220929080110.3182561-1-paweldembicki@gmail.com>
 <YzWVOyM+Z3AFSI7c@lunn.ch> <e78b6ece-8dfa-733f-d449-1108a9545223@baker-net.org.uk>
In-Reply-To: <e78b6ece-8dfa-733f-d449-1108a9545223@baker-net.org.uk>
From:   Tony Dinh <mibodhi@gmail.com>
Date:   Fri, 28 Oct 2022 17:49:00 -0700
Message-ID: <CAJaLiFwJtbB+gm5Q9knK_oxE5NhDaonx5ur5N2D44j2Ff8drvw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: kirkwood: Add Zyxel NSA310S board
To:     Adam Baker <linux@baker-net.org.uk>
Cc:     Andrew Lunn <andrew@lunn.ch>,
        Pawel Dembicki <paweldembicki@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Gregory Clement <gregory.clement@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Adam,

On Fri, Oct 28, 2022 at 5:15 PM Adam Baker <linux@baker-net.org.uk> wrote:
>
> On 29/09/2022 13:53, Andrew Lunn wrote:
> >> +// SPDX-License-Identifier: GPL-2.0-only
> > Same license comment. However, you can only change the license if it
> > is your code. If you did the conversion from a board setup file to DT,
> > you can change the license. If somebody else did that and you are just
> > submitting it, then we need to keep to GPL-2.0-only.
>
> As it lists my name in the copyright I'm guessing it is derived from my
> nsa320 device tree.

Yes, I created it based on your device tree DTS from way back. Thanks.

> If so I have no objection to relicensing to GPL2 +
> MIT for anything that came from my code. It is different enough I don't
> think I could reasonably lay claim to it anyway. It looks as though some
> of it such as the keys section came from the earlier nsa310 device tree
> rather than mine. That looks like Andrew Lunn's clean up of it rather
> than Tero Jaasko's original.
>
> There is no temperature or fan monitoring listed in the device tree, do
> you know if the 310s supports it and if so what sensor it uses?

The ZyXEL NAS series 310S/320S/325 don't support the sensor module
(i.e. lm-sensor cannot be used for it). The CPU temperature and fan
speed can be read from i2c, but so far nobody has discovered how to
set them with i2c commands.

All the best,
Tony

>
> Adam Baker
>
