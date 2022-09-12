Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0B0965B6191
	for <lists+devicetree@lfdr.de>; Mon, 12 Sep 2022 21:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229916AbiILTVL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Sep 2022 15:21:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43244 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230410AbiILTVK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Sep 2022 15:21:10 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1AE7340BF5
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 12:21:08 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id y127so9573796pfy.5
        for <devicetree@vger.kernel.org>; Mon, 12 Sep 2022 12:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=SZHaj8okATHVu/Q6unhlirD3gdvtLQE0uzOf/LJ8iDA=;
        b=3jCsf+VpeWOvXcTHOtj3qCcqITNJAWUXdFB4Af2SSbboVCNSqGCXIa/g1mo8eeB/Rv
         ECJ0bR2AromSL8szpZbzsbrJN6NbS1XzRyVMqUSxL2lgIPvQ+sA10mrSI9rTizSW7OLZ
         N1OBXiISmx3TJbLxQ/lArGmmNwgltBOKtdrooRGQtAqlSLxW+f48DNTm/fKpYAyBpYMY
         G478oyvo6RYUmGTZc7MX1fsccejQa5O+kgUBaYtyIV86wmVbX2Uyc2qIuqv/Fv/vOgoc
         l7Y5QZQcqHzsN9ZvxxU3TD+A/9cfviUM1UCPjixA3oL1y5AdM7TY7wTVChO6OOk5f06I
         YJ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=SZHaj8okATHVu/Q6unhlirD3gdvtLQE0uzOf/LJ8iDA=;
        b=dwVgJQrh0IgkfzlMkGNa+HZ/TCQasSIfR4ZQB126K7qDuKFOYhVwiNqtIICbgLW40W
         98qOfIqZ6OFtUqQS5MrWKh4fS0tJIDiBK4w1L3Xl38/H2azwOpOAezj3TjWwZQcmApYA
         v/X5aDtU2VppywvAnwF1EAT//IbSdxpllbIAQ0wSgcmhBSVCSoZ2e2qGPVnsRW1u6ohj
         Dj9Lo+QbJwGZkDtA/7b3AO7uwJb6iaobvfQfJypqKEMZvevRbRJ4M8bndNXuexjs1twL
         qt5LEJUTuvr96K+1ohR1vDIqw97ZJv9xNfXSGrrrdtYIsuXBY3lz6126ZUTLU+NzF4xd
         e6nA==
X-Gm-Message-State: ACgBeo2yuTfQj8nwpiSRu6ZWgJn6ai/rglqYzDTpl3OwNGLs7K83247d
        k3dO5sOKZQGYbosQ9FhqxD5R28oOTIjCcgp1+R5bVQ==
X-Google-Smtp-Source: AA6agR4QSkhDFUb4mywD3J9h/2Xq5LTVyTodEmqOY/s8+f884DXkrrz5OQO3/bz3sSdo7c6fEuYfhoHcnGlD4O+2qrc=
X-Received: by 2002:a65:6a4a:0:b0:434:a2b8:1a83 with SMTP id
 o10-20020a656a4a000000b00434a2b81a83mr24179676pgu.125.1663010467524; Mon, 12
 Sep 2022 12:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <20220908135940.299324-1-jagan@edgeble.ai> <20220908135940.299324-4-jagan@edgeble.ai>
 <CAPY8ntARtgRT_kYbS-zw9kAuc16Qy49UF+y2H1143s_2=cnmYg@mail.gmail.com>
In-Reply-To: <CAPY8ntARtgRT_kYbS-zw9kAuc16Qy49UF+y2H1143s_2=cnmYg@mail.gmail.com>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 13 Sep 2022 00:50:56 +0530
Message-ID: <CA+VMnFwTFbisCJOB_9XcwT_xxnyxNjeqNX5cyMHmviWtpZ6T3g@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] drm: panel: Add Jadard JD9365DA-H3 DSI panel
To:     Dave Stevenson <dave.stevenson@raspberrypi.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dave,

On Thu, 8 Sept 2022 at 20:33, Dave Stevenson
<dave.stevenson@raspberrypi.com> wrote:
>
> Hi Jagan
>
> On Thu, 8 Sept 2022 at 15:00, Jagan Teki <jagan@edgeble.ai> wrote:
> >
> > Jadard JD9365DA-H3 is WUXGA MIPI DSI panel and it support TFT
> > dot matrix LCD with 800RGBx1280 dots at maximum.

Look like I wrapped the wrong text, maybe this copy came from vendor
code. Yes, the datasheet mentioned this as WXGA resolution.

Thanks for this. I will correct it.

>
> Sorry, I'm confused by this commit text.
>
> WUXGA is normally defined as 1920x1200.
> So the panel is 1920x1200, but it supports a max of 800x1280 pixels?
> What do the other pixels do then?
>
> Google implies that Jadard JD9365DA-H3 is a driver IC, not a panel. So
> is this driver for all JD9365DA-H3 based panels, not just one panel?
> Having a compatible of "chongzhou,cz101b4001" implies it.
> (Thinking about it, I have a JD9365Z based DSI panel on my desk, but
> the JD9365Z is made by Fitipower and it supports a max resolution of
> 720x1280. Those trailing letters are obviously very significant on
> this range)

Yes, chongzhou,cz101b4001 panel which used JD9365DA-H3 controller IC.
Though JD9365DA-H3 itself is not a direct panel, we usually denote
controller IC as panel driver as these are part of Linux DRM panel and
as its own compatible "jadard,jd9365da-h3"

Thanks,
Jagan.
