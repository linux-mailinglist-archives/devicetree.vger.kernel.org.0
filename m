Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C028B2A2C57
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 15:13:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725914AbgKBON6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Nov 2020 09:13:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725889AbgKBON6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Nov 2020 09:13:58 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EE0DC061A04
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 06:13:57 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id h6so17649643lfj.3
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 06:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KxbCraeiLdRhhJpaK4sNkK6tPwuu92CTTqqZ8+wCJio=;
        b=ZM4LaTgzml5bUPWSYTKj3diGMPNamkdpShH5l8t1VMnmUehipaDrX71br6RaGOveNc
         /yl8Xzi0wn8Cxlsb498dQw5DOCL5LLMqIUxozIqEL8Jv/Dfj/H+Bb9yIVxfgwO2Qgwq3
         eUytQo5ExrWGWR6O4ZESs3SNl+spxTGTn5gsYW9CwiSsMuMHxhVbhV+NhCgL3wDzIWn4
         Ht6OUKJNYAkn1Hfq3yRM9OUyYjva3aGEPid7gLU80nOcfW8sb4adbwyvbbNYDBFH4WqG
         26EaYiNDR9YIwdHeFIDLSJilMRqoe/8Z2OeUaLrrI1jXOwP2uh3xV7We0sPiS4LFhUPm
         1lxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KxbCraeiLdRhhJpaK4sNkK6tPwuu92CTTqqZ8+wCJio=;
        b=fU22IcufgsHAl0yBTLZ85uHIS+GKwAv5M7M9wwEK6IJKmz7M/q9wxvtekEwD1WRrof
         W6bbfBptm0G1xc1Qa/E6SF/CmAt0wjx0N0GUEwn3YjK8g45IH6TDnMxsT/lPbuqDkuWX
         d1hNJ5UJ9pifjzF9vCgOauadUrGpY3YqOhpay8c60eA7mPX/nhpH/totgc/DrYNxwKXV
         CfPDRso2Rd8tg2bS8bFRfpvH0T2dsmAI+WMjFaq365z39PoG5zX/4g7RyYxkQB2Uaj/G
         ye3jXmQsmccShoif0rvaPqQbxC4rqs8SfJK+u5/VWpbkKOLy1bqteRWDHfAg13V8LtoD
         VD7w==
X-Gm-Message-State: AOAM5335+jaHYpm6liuWtHKjU881IjE2wTTKxkcbWR8csJWfGrWDxEu6
        4Y0k7xvAd6l+7p2T/z2dbSA9hZCCH+7lB7VKHJONSP4qdapEEukw
X-Google-Smtp-Source: ABdhPJzqeipx/W1I0SHKEcjfqh+sscD2n/q6sWL0P3hkangcPzWHpBBKHArZunBT2LjnW+rq6DfD3qni7BR6JlMFOpE=
X-Received: by 2002:a19:a56:: with SMTP id 83mr4927665lfk.131.1604326435967;
 Mon, 02 Nov 2020 06:13:55 -0800 (PST)
MIME-Version: 1.0
References: <20201102062408.331572-1-ajye_huang@compal.corp-partner.google.com>
 <20201102062408.331572-3-ajye_huang@compal.corp-partner.google.com> <CA+Px+wV9Lmdphp4iMgF1d72vewb2m9aiZzywvavLGgtkAczCDQ@mail.gmail.com>
In-Reply-To: <CA+Px+wV9Lmdphp4iMgF1d72vewb2m9aiZzywvavLGgtkAczCDQ@mail.gmail.com>
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
Date:   Mon, 2 Nov 2020 22:13:45 +0800
Message-ID: <CALprXBZ-nO5NtgEeS+G4bhE=EHcwvtZOOa67ea4k=CXyT+JpJg@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] ASoC: qcom: sc7180: Modify machine driver for 2mic
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     Ajye Huang <ajye.huang@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Cheng-Yi Chiang <cychiang@chromium.org>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        ALSA development <alsa-devel@alsa-project.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 2, 2020 at 6:46 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
>
> On Mon, Nov 2, 2020 at 2:24 PM Ajye Huang <ajye.huang@gmail.com> wrote:
> >
> > In addition, having mixer control to switch between DMICs by
> > using "dmic-gpios" property.
> >
> > Refer to this one as an example,
> > commit b7a742cff3f6 ("ASoC: AMD: Use mixer control to switch between DMICs")
> >
> > Signed-off-by: Ajye Huang <ajye_huang@compal.corp-partner.google.com>
>
> I am not sure if it would be better if you use another email (e.g.
> @gmail) for signoff.
>
hi, Tzung-Bi
Thank you for your review, it's our company's rule to use  this PD account

> > +static int dmic_get(struct snd_kcontrol *kcontrol,
> > +                   struct snd_ctl_elem_value *ucontrol)
> > +{
> > +       struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kcontrol);
> > +       struct sc7180_snd_data *data = snd_soc_card_get_drvdata(dapm->card);
> > +
> > +       if (data)
>
> You don't need to check for NULL.  If snd_soc_card_get_drvdata()
> returns NULL, it shouldn't run into here.  See other
> snd_soc_card_get_drvdata() calls in the file.
>
your are right, I will remove on v4

> > +static int dmic_set(struct snd_kcontrol *kcontrol,
> > +                   struct snd_ctl_elem_value *ucontrol)
> > +{
> > +       struct snd_soc_dapm_context *dapm = snd_soc_dapm_kcontrol_dapm(kcontrol);
> > +       struct sc7180_snd_data *data = snd_soc_card_get_drvdata(dapm->card);
> > +
> > +       if (data) {
>
> Ditto.
>
I will remove it on v4

> > +               if (IS_ERR(data->dmic_sel)) {
> > +                       dev_err(&pdev->dev, "DMIC gpio failed err=%d\n",
> > +                               PTR_ERR(data->dmic_sel));
> > +                               return PTR_ERR(data->dmic_sel);
>
> Remove 1 level indent.
Your are really attentive, I will remove the indent on v4, thank you so much.
