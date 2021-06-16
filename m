Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D120B3A9E72
	for <lists+devicetree@lfdr.de>; Wed, 16 Jun 2021 17:02:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234385AbhFPPEa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 11:04:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234368AbhFPPEa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 11:04:30 -0400
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD4D1C061574
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 08:02:23 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id j184so2915258qkd.6
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 08:02:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=j51VtbWEsPmNthXDSqqlA/0JAvr0xhkR2POpSAUOx9c=;
        b=ZUIi2qzqYGHwJx+79Fc4944r16x9UMQqqYLtcBz8HCOT0nsZkxfGcmRp23lvyNfAP+
         2knAodSGIE5+PM0wcoqn9rQAvNIbG2+5Sas5+iUH6G+5iioPe8sGy4aqBr4h9MHBFQLA
         j4DhsbCGODeTQCqVCt1gM8KYJ3xJ2R6oiax+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=j51VtbWEsPmNthXDSqqlA/0JAvr0xhkR2POpSAUOx9c=;
        b=saeyrNljmbmT5pRggl5ITE1P1Gi7CJ00OBu+81anw2f1TLA1EVA1WuOMOdNA2eEm1m
         DOaR9oDyF4bOWjfHI721oE+5LMeImiBF3w2KpM8mgg0CUf7TezBFP1rX47HwwvfXNsg0
         F/UbfwjFHspcekWslwjUKbbQNq4dUxtSlq9H5t5lhB/T64HstA91G1qfCpetbtRLA7ib
         h9MK6tP53UAhzk/q1HYcBYsvc3MHixnSZ8CKuSRovx7lSJ/cBRJdu3ACcMM/04ut0yp7
         zo8840AwBNxB9N0kborvYEGNBGUvJ1HAF0wUyaf/vIgNnUyv/8ZuMf9eucQQzF6VqxaA
         a0ZA==
X-Gm-Message-State: AOAM531nEp3yOG9lVObORbaZYJb9pbiML7iy8pabM9ZKgDGnf7S/Qdlz
        djt3a/ll4jXvCjCQQefKmruppzhZeCx/yA==
X-Google-Smtp-Source: ABdhPJwg1Jn8zv5aNii1ivuBZLtzdw+2Lh+eq3I8hSa2R8TCVA7a+NYHgSLMeR1V2zDtB3Cr2M/hKg==
X-Received: by 2002:a37:9f94:: with SMTP id i142mr478305qke.216.1623855742129;
        Wed, 16 Jun 2021 08:02:22 -0700 (PDT)
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com. [209.85.219.175])
        by smtp.gmail.com with ESMTPSA id h12sm1423178qtn.44.2021.06.16.08.02.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Jun 2021 08:02:21 -0700 (PDT)
Received: by mail-yb1-f175.google.com with SMTP id g142so3449252ybf.9
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 08:02:19 -0700 (PDT)
X-Received: by 2002:a5b:54a:: with SMTP id r10mr207252ybp.476.1623855739461;
 Wed, 16 Jun 2021 08:02:19 -0700 (PDT)
MIME-Version: 1.0
References: <1623499682-2140-1-git-send-email-rajeevny@codeaurora.org> <1623499682-2140-6-git-send-email-rajeevny@codeaurora.org>
In-Reply-To: <1623499682-2140-6-git-send-email-rajeevny@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 16 Jun 2021 08:02:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V2_LJkXX-9v2ArSspKHy6PABn1E-hkCOeT=Dk5R0CQ+Q@mail.gmail.com>
Message-ID: <CAD=FV=V2_LJkXX-9v2ArSspKHy6PABn1E-hkCOeT=Dk5R0CQ+Q@mail.gmail.com>
Subject: Re: [v6 5/5] drm/panel-simple: Add Samsung ATNA33XC20
To:     Rajeev Nandan <rajeevny@codeaurora.org>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
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
        Krishna Manikandan <mkrishn@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, Jun 12, 2021 at 5:09 AM Rajeev Nandan <rajeevny@codeaurora.org> wrote:
>
> +static const struct panel_desc samsung_atna33xc20 = {
> +       .modes = &samsung_atna33xc20_mode,
> +       .num_modes = 1,
> +       .bpc = 10,
> +       .size = {
> +               .width = 294,
> +               .height = 165,
> +       },
> +       .delay = {
> +               .disable_to_power_off = 150,
> +               .power_to_enable = 150,

As per <https://crrev.com/c/2966167> it's apparently been discovered
that these should be:

.disable_to_power_off = 200,
.power_to_enable = 400,
