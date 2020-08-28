Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 714B3256358
	for <lists+devicetree@lfdr.de>; Sat, 29 Aug 2020 01:13:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726851AbgH1XNz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 19:13:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726536AbgH1XNy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Aug 2020 19:13:54 -0400
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com [IPv6:2607:f8b0:4864:20::e42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B9C99C061264
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 16:13:54 -0700 (PDT)
Received: by mail-vs1-xe42.google.com with SMTP id y140so487270vsc.3
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 16:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eTKdXiRCKS6tUmMOhEk7xSRiz3K0QjMIqXKfgOUTwVI=;
        b=DTx98g6eHjR9eWZ8L8pNZvzNzyyoyGJGoCSVzxnwe383QCEf6CiPXBYd7KGVxtcyWM
         imHYSMTzYzDKbP9GdybbwuCc5YWmZJB/nMyEkOnXnO1PMF4GDNLmCJ3JJQnnthHL+c6q
         B4VizqndaVWBqtihAlgf8low/9/yvPUV9bIiU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eTKdXiRCKS6tUmMOhEk7xSRiz3K0QjMIqXKfgOUTwVI=;
        b=QPk31HxHPwDNOQYWoXNokstc41j8UYCDay6rWW5mOcfLaQUGZ6NIaOe4GCo9kUP90t
         lf1scnQGIhqUTpY5qMbm+2q+jPhGDC2T8A24tuMoygfROnskTNIeh1QoANEORmLkLGJK
         UTOkRQ3PSorOgmYg4IbFPeHdKlb+Yde2mGyGaEGFkmONvA27lSPueP2U+2jNIf7xQkPe
         yeEhi4xIu8aoMY6dJu9sIh5ULst5x6gd6+CmQabJ3nn68uEvOpJ60VEVkyWjxl7HbEE0
         Li3Egt1q8vwDnmwiwKRcO6RQU0nTCkkvvhc3qdWcZHjTBUqEH85XCSaEqpFKByHEjUBU
         adCg==
X-Gm-Message-State: AOAM530g2NUKWVo3Zr6M6L9Bj89YH7zyxbhkPNV6kUL2ltkIqhov8wle
        rq2as/2clVTbKLSkht/ZboVLCplBY9L00A==
X-Google-Smtp-Source: ABdhPJziWtEO2IyoU9+Ul9K6Y1oDO77yRrUutEEThLNcvGl8b9nlA7k26FXe/npvRvw/kkWUxOId5g==
X-Received: by 2002:a67:b345:: with SMTP id b5mr716083vsm.45.1598656433789;
        Fri, 28 Aug 2020 16:13:53 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id l84sm126418vkl.36.2020.08.28.16.13.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Aug 2020 16:13:53 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id a13so451397vso.12
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 16:13:53 -0700 (PDT)
X-Received: by 2002:a1f:d6c4:: with SMTP id n187mr874772vkg.65.1598655985575;
 Fri, 28 Aug 2020 16:06:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200826110454.1811352-1-cychiang@chromium.org> <20200826110454.1811352-3-cychiang@chromium.org>
In-Reply-To: <20200826110454.1811352-3-cychiang@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 28 Aug 2020 16:06:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XaCt6V+VXfk8T+2mS4d5sKQzMC12AcH9a=MNkgguvmjQ@mail.gmail.com>
Message-ID: <CAD=FV=XaCt6V+VXfk8T+2mS4d5sKQzMC12AcH9a=MNkgguvmjQ@mail.gmail.com>
Subject: Re: [PATCH v6 2/2] ASoC: qcom: sc7180: Add machine driver for sound
 card registration
To:     Cheng-Yi Chiang <cychiang@chromium.org>
Cc:     LKML <linux-kernel@vger.kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        ALSA Development Mailing List <alsa-devel@alsa-project.org>,
        Ajit Pandey <ajitp@codeaurora.org>,
        Tzung-Bi Shih <tzungbi@google.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 26, 2020 at 4:05 AM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> +config SND_SOC_SC7180
> +       tristate "SoC Machine driver for SC7180 boards"
> +       depends on SND_SOC_QCOM
> +       select SND_SOC_QCOM_COMMON
> +       select SND_SOC_LPASS_SC7180
> +       select SND_SOC_MAX98357A
> +       select SND_SOC_RT5682

I haven't done any significant testing / review of your patch (I'm
mostly sound-clueless), but I believe that the above needs to be
"select SND_SOC_RT5682_I2C" atop the current top of the sound tree.
When I fix that I can confirm that I see the rt5682 probe on
sc7180-trogdor with Rob Clark's dts patch.

-Doug
