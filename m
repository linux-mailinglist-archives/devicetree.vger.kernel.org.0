Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3B5E621956
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 17:27:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234091AbiKHQ1H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 11:27:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234646AbiKHQ1G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 11:27:06 -0500
Received: from mail-yw1-x1129.google.com (mail-yw1-x1129.google.com [IPv6:2607:f8b0:4864:20::1129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4FB4D1FF92
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 08:27:05 -0800 (PST)
Received: by mail-yw1-x1129.google.com with SMTP id 00721157ae682-333a4a5d495so138379877b3.10
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 08:27:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tAZBstAdAsmK2XVl2Tom+G2xfbr9YP3jCR0NWwLcpbY=;
        b=HiGTzUoVmhEVvVkdyNqwuF6heV9nAwZvdLKlIXsppaoNt+uX/qVAQNtFGgYmPsBGHM
         0F9S5/bsxeZCjF0LQEYGU9FcMiHDVR50vlIZ6RKwgEFqBYEb/SsdGHuFycPHMw9MmghX
         JjXvd2EuDhKDQ9Isyh1iu309DukrHDA6mX8uOCxPHXgO2TvVT3sf1ovRCns3OwWcPg5R
         jRCEfTr/BIz/5+1S8pIwwjXLmEf5g1xz6RFdomtLcAxOnwpB+kWGnszEEf0rbebzYfr+
         32G35niUMCT9cuuQFobooLkMDxKcF4TCb5KHkYcr5IaZ/IFlv1mnMNXdgwXk5goxJNTD
         obsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tAZBstAdAsmK2XVl2Tom+G2xfbr9YP3jCR0NWwLcpbY=;
        b=Am/6xCWFh5mzrR5FrEl5kJog6yY1fgq7rrOqBhhWjMjLuFeG8RqKbll36TM5oPkbqC
         5A/wsAvPnk1/J7CO3ORY6/miPP3uJTjUBfiggXsYhyK61MhPMPoH931a7ILCL2pfnIMH
         5tZHct9OzBay3BL3M3VVF0QdzNp2OEN8A9q6GOzrNajCSPJtRCtdNTAf8Y4aBixhbPsw
         auMSh2IeKTto4sN/iqy6pggkDqAXrUGp68+Za8tVgdch+uHTZ/kPemgCK4j0CoeE6RdY
         FJ7w6OVEKbnZblVd3I8nqL4vn2cRt23ac9xJtR+II5aV70r3y6u0u7J9w8oYoJLRezJo
         nN/w==
X-Gm-Message-State: ACrzQf0Cg7blEnHRjHE9hwLBDwcvBRvDj7UkUN7+lxEOBdJKr9nS6PAk
        U/yqs+WtxcvV2UZ217+YNMuDyyOVF3yxnwElEidz6g==
X-Google-Smtp-Source: AMsMyM6l2BaUQaFUsRd0n/pdKYEWQEefaZfrhq2KgsqeM81bGZLhCI92KaCqsVBeiJB0GDyRYIblXXScpd1fyEvMuwY=
X-Received: by 2002:a0d:dd49:0:b0:36b:f81c:ceb8 with SMTP id
 g70-20020a0ddd49000000b0036bf81cceb8mr55021890ywe.171.1667924824513; Tue, 08
 Nov 2022 08:27:04 -0800 (PST)
MIME-Version: 1.0
References: <20221103141155.1105961-1-jagan@edgeble.ai> <20221103141155.1105961-4-jagan@edgeble.ai>
 <CACRpkdYEW4z6EZ7UC9wT3NtRVnE=0L6AAHJDxtu5Jb-UrB+WSA@mail.gmail.com>
 <CA+VMnFxyx=NP2QUiJ6RnfapZ9c=S4-cj+0kQn8PYyaMTBP3i-g@mail.gmail.com>
 <CACRpkdaZnGgJ3egXEtoH0gTmR0m_-9Q+iGZr2eOx2JVHYgXCXA@mail.gmail.com>
 <CA+VMnFz1h0MfwxiQeFCdvMJWQ9uKWvwstJvKnpDTKjaVHN3pYw@mail.gmail.com> <CACRpkdZGXeGc_vyAGw3zW4MyR+tp9jhvKJ4sf2tSS7L9B+oyOA@mail.gmail.com>
In-Reply-To: <CACRpkdZGXeGc_vyAGw3zW4MyR+tp9jhvKJ4sf2tSS7L9B+oyOA@mail.gmail.com>
From:   Jagan Teki <jagan@edgeble.ai>
Date:   Tue, 8 Nov 2022 21:56:53 +0530
Message-ID: <CA+VMnFwKFFDADLDyjm-EG5p_8K8HE7V851b0uLPqR+i=MKFZDA@mail.gmail.com>
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

On Tue, 8 Nov 2022 at 20:33, Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Tue, Nov 8, 2022 at 3:53 PM Jagan Teki <jagan@edgeble.ai> wrote:
> > On Tue, 8 Nov 2022 at 20:18, Linus Walleij <linus.walleij@linaro.org> wrote:
> > > On Tue, Nov 8, 2022 at 3:12 PM Jagan Teki <jagan@edgeble.ai> wrote:
> > > > On Tue, 8 Nov 2022 at 19:31, Linus Walleij <linus.walleij@linaro.org> wrote:
> > > > >
> > > > > On Thu, Nov 3, 2022 at 3:12 PM Jagan Teki <jagan@edgeble.ai> wrote:
> > > > >
> > > > > > Jadard JD9365DA-H3 is WXGA MIPI DSI panel and it support TFT
> > > > > > dot matrix LCD with 800RGBx1280 dots at maximum.
> > > > > >
> > > > > > Add support for it.
> > > > > >
> > > > > > Cc: dri-devel@lists.freedesktop.org
> > > > > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > > > > ---
> > > > > > Changes for v3:
> > > > > > - updatd to WXGA
> > > > > > - use JD9365DA_CMD_DCS and JD9365DA_CMD_DELAY
> > > > >
> > > > > My comments on v2 have not been addressed, for example I asked to
> > > > > remove the delay from sequences and just use an explicit delay and
> > > > > to then use the existing sequence sending macro.
> > > >
> > > > True, I responded on the same day [1], since I didn't get the reply I
> > > > have posted by assuming my comment is valid. Would you please check
> > > > and respond?
> > > >
> > > > [1] https://lore.kernel.org/all/CA+VMnFz0w-6O=wt3iuJo1BhQgPZ2XbpX6JdDz6vg_JW9nHTR2A@mail.gmail.com/
> > >
> > > OK I see, sorry for not reading close.
> > >
> > > The driver just supports one single variant.
> > >
> > > What you are doing is preparing the ground for more variants
> > > that may or may not exist. This creates the antipattern "big upfront design"
> > > i.e. abstractions added for things that do not yet exist.
> > >
> > > I think it is better to strip it down to just open coding the delay after
> > > the init sequence. When the next variant appears, if ever, they can
> > > add abstraction. Maybe they need the same delay in the same
> > > place? Who knows...
> >
> > I understand your point, but delays are strictly mentioned by the
> > panel vendor init sequence, cz101b4001 do you think adding in the
> > generic or common code is still valid since we have code added for
> > cz101b4001 specifically via driver data?
>
> I would instead of encoding a sequence into the driver data
> encode a per-variant callback that sends the sequence (which
> can then be just static array) and then ends with an explicit delay.

Okay. I will wrap up that delay to make it explicit and update the dcs
packet send sequence.

Thanks,
Jagan.
