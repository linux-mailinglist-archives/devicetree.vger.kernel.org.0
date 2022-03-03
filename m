Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D5064CC307
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 17:41:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235089AbiCCQme (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 11:42:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230442AbiCCQmd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 11:42:33 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9A21A19D631
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 08:41:47 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id bg10so11927502ejb.4
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 08:41:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jxP+Xw6wPB8ZIhMnioV3Otj/1gb/UWZW6hrVr3vPJh4=;
        b=JJ4qQXPFXhyPdRQ0jQQAs/7g/HtEmcuxjknmziNouLk2APczDb9gNerpsCYvxKiJ5K
         aWtbVRqTo7FT+DLr5vQPqTPdNSTiNewBOYpdsd8k5Sc4NHxlaezItfTgp9QvsXaG6ncg
         QHuppgQ5OWsYYaz4dlXR+Tra8Yi3baP/LcF58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jxP+Xw6wPB8ZIhMnioV3Otj/1gb/UWZW6hrVr3vPJh4=;
        b=PUpE10cFwIbCsFIAY4ap+P5JJF1iK6a3Kzj5gjkeHeRBN2+XpM6dkGPXWGkB5mBf76
         5ixy6XKa/KbzWAhFGymC+Q0cKRSGaulj8or7D4ZdrlZ/T0uPywESkSPzXhNAMMcBeToo
         9pHrmCNmDnxRe31vgK7633Hj8UumxNeEeOjVVWK/elI2jD9nGrdlvjWP0mrckLGA+dxl
         07P166vcdst5CiJjvk7DloD2AkxZBJ3qT2iwr8HKKMEwm6T1JM7LdSS7qIF+zfSBblli
         ecFQBe4EDkmhEOyrpCphwml6wHpbJqMwhnHsurcqY8ve0nhROrlL4AoTOMMOq9FPVZoD
         XBLw==
X-Gm-Message-State: AOAM533JmV0lTlV1AQ3j1QdfHPls/nc4y/Y2KVcVGiVNhQ/TgPtUIp+P
        GpZdqo5L6t0mo4A9OOx70dOqKTSRtIa6R6fY
X-Google-Smtp-Source: ABdhPJwf95UpFViKKcuu8UEPW9+KClfBLFOZdywKhxbfjltoWc6a702qGuUYGIcyG6T1agN0ehrgxA==
X-Received: by 2002:a17:906:c10b:b0:6da:a190:edb0 with SMTP id do11-20020a170906c10b00b006daa190edb0mr1497469ejc.512.1646325706204;
        Thu, 03 Mar 2022 08:41:46 -0800 (PST)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com. [209.85.128.42])
        by smtp.gmail.com with ESMTPSA id c21-20020aa7c995000000b00400506d388bsm1068263edt.48.2022.03.03.08.41.45
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 08:41:46 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id p184-20020a1c29c1000000b0037f76d8b484so3585146wmp.5
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 08:41:45 -0800 (PST)
X-Received: by 2002:a7b:c0c1:0:b0:385:be1b:e6a with SMTP id
 s1-20020a7bc0c1000000b00385be1b0e6amr4453828wmh.73.1646325705202; Thu, 03 Mar
 2022 08:41:45 -0800 (PST)
MIME-Version: 1.0
References: <20220218183116.2261770-1-bjorn.andersson@linaro.org>
 <20220218183116.2261770-2-bjorn.andersson@linaro.org> <CAD=FV=UOLcu5xycimDsYTO1spwf=CMRPUSU3o0qRRC+a+zuRTQ@mail.gmail.com>
In-Reply-To: <CAD=FV=UOLcu5xycimDsYTO1spwf=CMRPUSU3o0qRRC+a+zuRTQ@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 3 Mar 2022 08:41:33 -0800
X-Gmail-Original-Message-ID: <CAD=FV=We4Lv25h2XF6BsdYhMbYu4716LBuhAjH5N0s_HHt_Xcw@mail.gmail.com>
Message-ID: <CAD=FV=We4Lv25h2XF6BsdYhMbYu4716LBuhAjH5N0s_HHt_Xcw@mail.gmail.com>
Subject: Re: [PATCH v13 2/2] leds: Add driver for Qualcomm LPG
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Pavel Machek <pavel@ucw.cz>,
        Thierry Reding <thierry.reding@gmail.com>,
        =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, linux-leds@vger.kernel.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        linux-pwm <linux-pwm@vger.kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Luca Weiss <luca@z3ntu.xyz>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 2, 2022 at 4:03 PM Doug Anderson <dianders@chromium.org> wrote:
>
> Hi,
>
> On Fri, Feb 18, 2022 at 10:29 AM Bjorn Andersson
> <bjorn.andersson@linaro.org> wrote:
> >
> > +static void lpg_pwm_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
> > +                             struct pwm_state *state)
> > +{
> > +       struct lpg *lpg = container_of(chip, struct lpg, pwm);
> > +       struct lpg_channel *chan = &lpg->channels[pwm->hwpwm];
> > +       unsigned int pre_div;
> > +       unsigned int refclk;
> > +       unsigned int val;
> > +       unsigned int m;
> > +       u16 pwm_value;
> > +       int ret;
> > +
> > +       ret = regmap_read(lpg->map, chan->base + LPG_SIZE_CLK_REG, &val);
> > +       if (ret)
> > +               return;
> > +
> > +       refclk = lpg_clk_rates[(val & PWM_CLK_SELECT_MASK) - 1];
>
> I don't know why I didn't notice it before (maybe I was accidentally
> not building with KASAN?), but in my recent boots I'm getting a KASAN
> error pointing at the line above.
>
> Sure enough, the above looks a bit on the unsafe side. If (val & 0x3)
> is 0 then the "-1" will not be so wonderful. I put some printouts and,
> indeed, it's not so great.
>
> [    7.201635] DOUG: val is 0x00000004
>
> Amazingly my `refclk` ends up as 0 and I guess somehow this doesn't
> cause a divide by 0.

I dug a little more and found a document that talks about this
register. I guess the answer here is that at boot time on my device
the PWM is disabled and has never been enabled. That explains why, at
boot time, the "clk_select" is 0 AKA "no clock". So we do an invalid
memory access here and that's not so great, but it doesn't _truly_
cause any harm. All we need is something like this right before the
array dereference:

if ((val & PWM_CLK_SELECT_MASK) == 0)
  return;

I'm still pretty interested in seeing this patch series land and, if
it helps it land sooner, I wouldn't object to the above getting fixed
in a followup patch.

-Doug
