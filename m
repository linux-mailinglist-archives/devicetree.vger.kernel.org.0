Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7680562158B
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 15:13:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235294AbiKHONC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 09:13:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235218AbiKHOMt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 09:12:49 -0500
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8809957B7B
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 06:12:37 -0800 (PST)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-3701a0681daso134885107b3.4
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 06:12:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZS4/7A7uR8ROGh/drdouQHQube7YpqT1U80rwDMtwgM=;
        b=UFXVWbkyTwY5gAbT6ZetyNc5MaK1NDLLXVD8Bhg7TqB85/MJikG2vcrubqMJZ35VfU
         xQ68Khvh9c5ysFVu7HYlcfaQKQoME+Irk1sU52tiayJ1dGEx/bsVj7jFyN1m+lxY0Tji
         TtLEPXS1naEgT8GWEV1LuQ3Q2TimkKqk1bRbCphM/UqZ92CXnhLeIZY6RkaTXwk5ZpE8
         FL2bHXBf1sl1flLGnonMKaTqVrcj/THk+9xYXFKt7Tkvyt/wHVk4gVUZhZS2WIzrvKis
         7gZNP8tfx/4n1n5S6MhdYqNZs+c2tB2iBkkEt5zCyDix6dNfzWZ2+I1Pc7t6xnu7kdTI
         ZCrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZS4/7A7uR8ROGh/drdouQHQube7YpqT1U80rwDMtwgM=;
        b=cUM6MLr+bBwdqz3L1Ag8E3vFpkSaaLwiOwbl7wCocYIY7iwm/HSKHbJM/wTxiOKKOd
         RKsVjk4D9Si/ZLyMRedXLibRRo++6R3UK0GsbcF15tluxAxH3V+wMgub/hc3YNvJsBao
         0vXjL3dI6LOAegRODHf4gURxiO6j9QwVG3/n3Xxp2T58pFx9IDm2CoVOxYVZVSoncrxn
         3uhW2LmeQS5Wg3NoYW3Hd3eO0DY/mraHoASPYHjw2Lnn4ZTnb5sPRgKU9e5oo9TsL6dZ
         RYxEYdAoHHBgJIvOYB6TD9KujkCa29hlncLaga4+eTp0bXCUysUdQ6NZf1iXsf54ywW4
         lSTQ==
X-Gm-Message-State: ACrzQf0nYHTuM6Ih3zZmi6Jl7bE5+esMKCY0j8SfhoM74jIQ4Fwy0DiZ
        O4p4l4pbFIJQ8gaFQoIYTdSczuRFIa7U6HACPvOaYQ==
X-Google-Smtp-Source: AMsMyM4OP2zUGBnfwEM1zz9G6bDnE/vktJzs0yVSbH49S3Z3kfDvLLQpg1pNbtjU6PCODa40ClvlgZ2qadooOqTSNwo=
X-Received: by 2002:a0d:dd49:0:b0:36b:f81c:ceb8 with SMTP id
 g70-20020a0ddd49000000b0036bf81cceb8mr54401842ywe.171.1667916756940; Tue, 08
 Nov 2022 06:12:36 -0800 (PST)
MIME-Version: 1.0
References: <20221103141155.1105961-1-jagan@edgeble.ai> <20221103141155.1105961-4-jagan@edgeble.ai>
 <CACRpkdYEW4z6EZ7UC9wT3NtRVnE=0L6AAHJDxtu5Jb-UrB+WSA@mail.gmail.com>
In-Reply-To: <CACRpkdYEW4z6EZ7UC9wT3NtRVnE=0L6AAHJDxtu5Jb-UrB+WSA@mail.gmail.com>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 8 Nov 2022 19:42:26 +0530
Message-ID: <CA+VMnFxyx=NP2QUiJ6RnfapZ9c=S4-cj+0kQn8PYyaMTBP3i-g@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] drm: panel: Add Jadard JD9365DA-H3 DSI panel
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 8 Nov 2022 at 19:31, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Thu, Nov 3, 2022 at 3:12 PM Jagan Teki <jagan@edgeble.ai> wrote:
>
> > Jadard JD9365DA-H3 is WXGA MIPI DSI panel and it support TFT
> > dot matrix LCD with 800RGBx1280 dots at maximum.
> >
> > Add support for it.
> >
> > Cc: dri-devel@lists.freedesktop.org
> > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > ---
> > Changes for v3:
> > - updatd to WXGA
> > - use JD9365DA_CMD_DCS and JD9365DA_CMD_DELAY
>
> My comments on v2 have not been addressed, for example I asked to
> remove the delay from sequences and just use an explicit delay and
> to then use the existing sequence sending macro.

True, I responded on the same day [1], since I didn't get the reply I
have posted by assuming my comment is valid. Would you please check
and respond?

[1] https://lore.kernel.org/all/CA+VMnFz0w-6O=wt3iuJo1BhQgPZ2XbpX6JdDz6vg_JW9nHTR2A@mail.gmail.com/

Thanks,
Jagan.
