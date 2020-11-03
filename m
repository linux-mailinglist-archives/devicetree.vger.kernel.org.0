Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB6A12A3D19
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 08:00:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726659AbgKCHA0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 02:00:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725988AbgKCHAZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 Nov 2020 02:00:25 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81600C061A47
        for <devicetree@vger.kernel.org>; Mon,  2 Nov 2020 23:00:25 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id v6so20699134lfa.13
        for <devicetree@vger.kernel.org>; Mon, 02 Nov 2020 23:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xd9jmL8NLRJagrGwF9PSXuFGxAsb2QDRMyRb3WHvNB8=;
        b=nPPPBxXfD3t0mgR3L4eyvK3/ip01O16uclOf5uHPMNlPNhNVlAmqasJhy/a+r4og75
         VW9Ub+qibTJzFwSdatbGsTSVcWLdZ5vbShHtw0xfiQO99DR2mPq/8XmHeP/Qm68xKuAQ
         wwzecgg1L6Bv7EnTCa3Mad0MpPdOosUjlcauyy+nwM415UHSyR2fio4Zz3qJO+UyyZXF
         cu9R4m9TE+Oy7OOiEHRm7uB1NTt4czRAQdjxrYBxdQqcOWXQh7I8dnfczwb8cKc2gwv4
         e56usYVODCCZFNyfMYh4MGEeNfdW3bvgu48JhPWqdAeVATErc5slE6HbbmHhyKAe+72u
         XKNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xd9jmL8NLRJagrGwF9PSXuFGxAsb2QDRMyRb3WHvNB8=;
        b=Rdy9Sz7EAXpvEpNB2a7Nc7mTKeWHsAUo/kDtmoVTZVX5UXXF/8jqCULN5LVff9pKR3
         xkTVjCvqUcuh52VzbVmPjZt65DfjuD9essuhZZrUq5cEO3STv37G2fhe5KSHxF8DHqlG
         cTLKan14aVkjj0Q2ffh0Zd71JJzceCX2aVbxgcgsJKRZqK5xeKm+8AKRT/xrx+ItfPvj
         ZV1XV6JGvtYlprO/fpkPgX/KDI5hRMem7F0HS6yww/KS0pdtUrhOgCR81ceZ2s8VOhf4
         UEDG1CdVU2yPEvgB500AqnJTztAS51N5NMgtID3/jEUhPWa+We2Uo8wF2txbvxHdeVC6
         Rusg==
X-Gm-Message-State: AOAM532LhewLg0v9W9Vp1JxfsaBU8iTQqJzspbyfKSkp2/M4+vB8lmKR
        LZj/dpn1/MYSMBTda2dsLsPz5XNeMLMSxwkNZKvXbQ==
X-Google-Smtp-Source: ABdhPJzi0uI6+FMH6ZkQJyTAi3yavIsi+kzHjb9xYY0N60Cx/lyDiUSdCeqHLAosIiGo/QeKWaOn0+S9nHNTkTOnzlE=
X-Received: by 2002:a19:c345:: with SMTP id t66mr4461115lff.536.1604386823858;
 Mon, 02 Nov 2020 23:00:23 -0800 (PST)
MIME-Version: 1.0
References: <20201103025347.510940-1-ajye_huang@compal.corp-partner.google.com>
 <20201103025347.510940-2-ajye_huang@compal.corp-partner.google.com>
In-Reply-To: <20201103025347.510940-2-ajye_huang@compal.corp-partner.google.com>
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
Date:   Tue, 3 Nov 2020 15:00:13 +0800
Message-ID: <CALprXBbPQBsRFWgGBhHo5=5GkcUEODe5pcqz7seeaOkxTb3c8w@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] ASoC: google: dt-bindings: modify machine bindings
 for two MICs case
To:     Ajye Huang <ajye.huang@gmail.com>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
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
        Cheng-yi Chiang <cychiang@chromium.org>,
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

Hi Rob,
Could you please kindly review this patch ?

 I had got your "reviewed-by" on v1 patch, the v1 depends on this patch series
(https://patchwork.kernel.org/patch/11773221) at that time.

Now, that patch what I depended (11773221) had made modification and
it was Applied to
   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next
commit e158d2d83cab ("ASoC: google: dt-bindings: Add sc7180-trogdor
machine bindings")

I noted what I did on cover letter
Changes from v1 to v2:
- Documentation: Modify the dimc-gpios property description and examples.

That is why I bother you again to review it. Please let me know if
this looks good to you.
Thanks!

On Tue, Nov 3, 2020 at 10:54 AM Ajye Huang <ajye.huang@gmail.com> wrote:
>
> Add a property "dmic-gpios" for switching between two MICs.
>
> Signed-off-by: Ajye Huang <ajye_huang@compal.corp-partner.google.com>
> ---
>  .../bindings/sound/google,sc7180-trogdor.yaml | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/sound/google,sc7180-trogdor.yaml b/Documentation/devicetree/bindings/sound/google,sc7180-trogdor.yaml
> index efc34689d6b5..9e0505467e57 100644
> --- a/Documentation/devicetree/bindings/sound/google,sc7180-trogdor.yaml
> +++ b/Documentation/devicetree/bindings/sound/google,sc7180-trogdor.yaml
> @@ -34,6 +34,9 @@ properties:
>    "#size-cells":
>      const: 0
>
> +  dmic-gpios:
> +    description: GPIO for switching between DMICs
> +
>  patternProperties:
>    "^dai-link(@[0-9])?$":
>      description:
> @@ -81,6 +84,7 @@ additionalProperties: false
>  examples:
>
>    - |
> +    //Example 1
>      sound {
>          compatible = "google,sc7180-trogdor";
>          model = "sc7180-rt5682-max98357a-1mic";
> @@ -128,3 +132,57 @@ examples:
>              };
>          };
>      };
> +
> +  - |
> +    //Example 2 (2mic case)
> +    sound {
> +        compatible = "google,sc7180-trogdor";
> +        model = "sc7180-rt5682-max98357a-2mic";
> +
> +        audio-routing =
> +                    "Headphone Jack", "HPOL",
> +                    "Headphone Jack", "HPOR";
> +
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        dmic-gpios = <&tlmm 86 0>;
> +
> +        dai-link@0 {
> +            link-name = "MultiMedia0";
> +            reg = <0>;
> +            cpu {
> +                sound-dai = <&lpass_cpu 0>;
> +            };
> +
> +            codec {
> +                sound-dai = <&alc5682 0>;
> +            };
> +        };
> +
> +        dai-link@1 {
> +            link-name = "MultiMedia1";
> +            reg = <1>;
> +            cpu {
> +                sound-dai = <&lpass_cpu 1>;
> +            };
> +
> +            codec {
> +                sound-dai = <&max98357a>;
> +            };
> +        };
> +
> +        dai-link@2 {
> +            link-name = "MultiMedia2";
> +            reg = <2>;
> +            cpu {
> +                sound-dai = <&lpass_hdmi 0>;
> +            };
> +
> +            codec {
> +                sound-dai = <&msm_dp>;
> +            };
> +        };
> +    };
> +
> +...
> --
> 2.25.1
>
