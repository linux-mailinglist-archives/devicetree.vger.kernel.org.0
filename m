Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 108E8263A11
	for <lists+devicetree@lfdr.de>; Thu, 10 Sep 2020 04:19:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730783AbgIJCSE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 22:18:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730701AbgIJCMQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 22:12:16 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D165C06179A
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 19:10:41 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id a17so4933296wrn.6
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 19:10:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PlSzeOt9N0W/7KOltCPrNSI8OJ7kFIa46v5Vs5ruAzE=;
        b=JkDoPoqKHm57pQylGVVBMb+2P4mUUyI14KYTHy2HW1JlsrjY4xP6wdtHeD5MFKdcE2
         URp+KWtbpiWbb/kbbYrMULGf9pcBMt1wV3jT5bmtmIq4TCLFYRe2zKmn3uVk+80GLzG6
         UBm7deRjVDb0LhAjTWLBs6RoLDkArABarz6zc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PlSzeOt9N0W/7KOltCPrNSI8OJ7kFIa46v5Vs5ruAzE=;
        b=bidm7hi3Hh+W1cABfipD3z2U2t0gLfzAOoaySSXLyvfKPgbznPgDWYr8pGXPRB3kdO
         7itReWczqm+FpH3N1c7yn7ho/LVwUkwFpVOV1WR2jqEKVmg3AbeRnkgY1X3gGUTPMoHo
         e25bZUjSqbwcO4QVSYrhNYawxx26VVfukuS81OTEG0VLOhMovWoDcR6n7ET2ay+sSUce
         j3g0fIXn30BfM3mqkdqWtABGUzm6sMewWujm01yepNE5CDZShayuNhw01d1sD9iDBYwD
         4jhmfVBWQPw4p5fXjaBGEqdxjEiDn+CDx0eR07BdNsms9Hycx9zNGv1xMXRhDT1ib5C4
         Qrwg==
X-Gm-Message-State: AOAM533rzjfif60LUpnGp/PDT65XGOev+cIkuwBtP6a1AJcF0L93O2YE
        JWiPWZzwtuIl/rNfLy8qcIRSiCth7K3jHkN9iEBGRA==
X-Google-Smtp-Source: ABdhPJzfvrq3ETFzz+i1NYsPH/dvVMCxkhygsXwY9sjZ5D5c8EGzXWs4p8/HuJYhmQ5eijuyWmC6iuTdYlluAj54gYQ=
X-Received: by 2002:a5d:4ccb:: with SMTP id c11mr6416336wrt.159.1599703839398;
 Wed, 09 Sep 2020 19:10:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200907100039.1731457-1-cychiang@chromium.org>
 <20200907100039.1731457-3-cychiang@chromium.org> <20200908203357.GA861143@bogus>
 <CAFv8NwLMAkFhVT-ML7QHbnSkqmgh=5SrNSik5eSCTHB1=DGQ0A@mail.gmail.com> <CAL_JsqKW2bpHP60MX4eFmtfzkvaHJ670m6e8H29=u=mDAYg63w@mail.gmail.com>
In-Reply-To: <CAL_JsqKW2bpHP60MX4eFmtfzkvaHJ670m6e8H29=u=mDAYg63w@mail.gmail.com>
From:   Cheng-yi Chiang <cychiang@chromium.org>
Date:   Thu, 10 Sep 2020 10:10:12 +0800
Message-ID: <CAFv8NwJQpfLW9syXyUpPusfwS39DTp2wi+MQ=aMTzPqpO3vPig@mail.gmail.com>
Subject: Re: [PATCH v7 2/3] ASoC: qcom: dt-bindings: Add sc7180 machine bindings
To:     Rob Herring <robh@kernel.org>
Cc:     linux-kernel <linux-kernel@vger.kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Heiko Stuebner <heiko@sntech.de>,
        Doug Anderson <dianders@chromium.org>,
        Dylan Reid <dgreid@chromium.org>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." 
        <alsa-devel@alsa-project.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 10, 2020 at 1:49 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Sep 9, 2020 at 3:24 AM Cheng-yi Chiang <cychiang@chromium.org> wrote:
> >
> > On Wed, Sep 9, 2020 at 4:34 AM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Mon, Sep 07, 2020 at 06:00:38PM +0800, Cheng-Yi Chiang wrote:
> > > > Add devicetree bindings documentation file for sc7180 sound card.
> > > >
> > > > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > > > ---
> > > >  .../bindings/sound/qcom,sc7180.yaml           | 143 ++++++++++++++++++
> > > >  1 file changed, 143 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/sound/qcom,sc7180.yaml b/Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> > > > new file mode 100644
> > > > index 000000000000..ae809346ca80
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/sound/qcom,sc7180.yaml
> > > > @@ -0,0 +1,143 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/sound/qcom,sc7180.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Qualcomm Technologies Inc. SC7180 ASoC sound card driver
> > > > +
> > > > +maintainers:
> > > > +  - Rohit kumar <rohitkr@codeaurora.org>
> > > > +  - Cheng-Yi Chiang <cychiang@chromium.org>
> > > > +
> > > > +description:
> > > > +  This binding describes the SC7180 sound card which uses LPASS for audio.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: qcom,sc7180-sndcard
> > > > +
> > > > +  audio-routing:
> > > > +    $ref: /schemas/types.yaml#/definitions/non-unique-string-array
> > > > +    description:
> > > > +      A list of the connections between audio components. Each entry is a
> > > > +      pair of strings, the first being the connection's sink, the second
> > > > +      being the connection's source.
> > > > +
> > > > +  model:
> > > > +    $ref: /schemas/types.yaml#/definitions/string
> > > > +    description: User specified audio sound card name
> > > > +
> > > > +  headset-jack:
> > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > +    description: phandle of the codec for headset detection
> > > > +
> > > > +  hdmi-jack:
> > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > +    description: phandle of the codec for hdmi jack detection
> > >
> > > You already have links to these devices. Why duplicate it here?
> > >
> > > What if you had 2 headsets? This doesn't scale.
> > >
> > Hi Rob, thanks for reviewing.
> > There was some discussion in
> > https://patchwork.kernel.org/patch/11737905/#23571643 about how to
> > specify the dailink that has a headset jack.
> > I would like to pass the information of headset jack and hdmi jack to
> > the machine driver so the machine driver can call
> > snd_soc_component_set_jack to set jack when init the corresponding link.
> > Headset jack and hdmi jack will be treated differently for button and
> > event type.
> > Because of this, we can not just set a property "jack" in the link.
>
> Don't design your binding around some driver architecture. Limitations
> of ASoC are not reasons for your binding.
>
> For DP and HDMI, we assume HPD is supported generally as that's a
> standard function for HDMI/DP controllers. There's a 'no-hpd' property
> for cases of broken HPD. That hardware description is part of the
> device HPD is connected to which is the HDMI/DP controller/bridge or
> the connector node in the case of a GPIO line. That doesn't belong in
> the virtual sound card.
>
> I would assume a codec to be similar. The codec node (the alc5682
> node) should have any jack related properties (or possibly implicitly
> support it by default).


Thanks for the explanation. Now I can follow your thoughts.
I see that the sound card driver should assume that there is jack/hpd
available on HDMI/codec unless it is specified in HDMI/codec node
(should not specified in sound card).

>
>
> > As for the 2 headsets case (I guess you mean hp jack and mic jack), on
> > this board we will not have this use case.
> > If someone really wants to build hp jack and mic jack on the board
> > based on this machine driver, we can add two more property hp-jack and
> > mic-jack to specify that,
> > as the machine driver will need to know the different jack types
> > anyway. What do you think ?
>
> I was thinking more of a case of having 2 of the same thing. Perhaps 2
> HDMI outputs. Or if you have DP instead of HDMI? Just going to add
> 'dp-jack'?


I agree that this may not scale. It will become an abuse of binding interface.
Sound card drivers should have more knowledge/control on this kind of
configuration.
I think this can be taken care of inside the sound card driver.
If a machine wants a different configuration, we can use compatible
strings to achieve that.
This will be more flexible than the limited binding interface.

Thanks for the discussion, I will remove headset-jack and hdmi-jack in v8.
>
>
> Rob
