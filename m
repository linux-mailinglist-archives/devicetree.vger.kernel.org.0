Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBB41563763
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 18:07:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229572AbiGAQHD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 12:07:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229544AbiGAQHD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 12:07:03 -0400
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7948222BE6
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 09:07:01 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id k20so3485980edj.13
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 09:07:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=iU1WXNqtWMrZUa+JVDcKXW+n/u2YiixZY6UAGKLDnPg=;
        b=iq8OARlHdwjKJaotlBm1jpgne1kU1PT5n8rnl6fpp9YAyJoLGzBe5hekwwTHO4U6WG
         ZHK2qR50/rtNqUyDApnn0W+70spOH37v/wSryluuzENNpTsfhHWf5E7ADyc2jEgaJWZ7
         jHT3znd5Z/JBcuN1ieNFm6MgqTMUf+yFMuuW4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=iU1WXNqtWMrZUa+JVDcKXW+n/u2YiixZY6UAGKLDnPg=;
        b=vObb7dyjuAHHDJcbyqvvzKMCT464/gXAdBnL5Fbrtwv0/8Ra2D3ODXLLO3LitBlMao
         YhUCOGt4sULNbGNMoX5/6JkJ5vuTS3o+JSiLyKmW/deGGN6dmu55MVK43aPffZsg2hAD
         llVpso1gpO4gp7os4mDmvAGqIqnREiA2ULMdQp2yd/Gdd4TxG/2V/gWbfF4J2SSkCNzi
         ybJFjSqYaAg+y3B04D0HNDndIk6BYCY8le2ul1nU99rJ1BAtuZA3TYo2LJ7Qklqqbij5
         wPFbq7Q1QJHPu2eh53Es4CKIHDQK63aTHGL006DMovm72qJblKlgUsf55iV1swAtfyl0
         b3ZA==
X-Gm-Message-State: AJIora8NY2u5QF7gURJNo4DkckEGt2XXs3HN8BGRvWyVyEZzf8l8ys/r
        txj8jtzlF9Aivzs75dKFgdTuL2HE2MgDbcVU
X-Google-Smtp-Source: AGRyM1u/zmB+w2MXA/3awm+FVQSvUCzulO1KeSTecPL4cOvxIvEQHb0qL7t7gwsTdI9jkGgU6gilhw==
X-Received: by 2002:a05:6402:3514:b0:435:f24a:fbad with SMTP id b20-20020a056402351400b00435f24afbadmr19169383edd.311.1656691619786;
        Fri, 01 Jul 2022 09:06:59 -0700 (PDT)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com. [209.85.128.47])
        by smtp.gmail.com with ESMTPSA id o7-20020a170906860700b00722d5f07864sm10393003ejx.225.2022.07.01.09.06.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jul 2022 09:06:58 -0700 (PDT)
Received: by mail-wm1-f47.google.com with SMTP id 205-20020a1c02d6000000b003a03567d5e9so3566403wmc.1
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 09:06:58 -0700 (PDT)
X-Received: by 2002:a05:600c:4e8d:b0:3a1:2e4d:1dd2 with SMTP id
 f13-20020a05600c4e8d00b003a12e4d1dd2mr17792094wmq.85.1656691617857; Fri, 01
 Jul 2022 09:06:57 -0700 (PDT)
MIME-Version: 1.0
References: <1656690436-15221-1-git-send-email-quic_khsieh@quicinc.com>
In-Reply-To: <1656690436-15221-1-git-send-email-quic_khsieh@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 1 Jul 2022 09:06:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V5uLz9aqrgHrsPYHzBXL+Bx5Ds8aEP_kSzA29d-9jtBg@mail.gmail.com>
Message-ID: <CAD=FV=V5uLz9aqrgHrsPYHzBXL+Bx5Ds8aEP_kSzA29d-9jtBg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dta: qcom: sc7180: delete vdda-1p2 and vdda-0p9
 from mdss_dp
To:     Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc:     Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Stephen Boyd <swboyd@chromium.org>,
        Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        quic_mkrishn@quicinc.com, quic_kalyant@quicinc.coml,
        freedreno <freedreno@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
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

On Fri, Jul 1, 2022 at 8:47 AM Kuogee Hsieh <quic_khsieh@quicinc.com> wrote:
>
> Both vdda-1p2-supply and vdda-0p9-supply regulators are controlled
> by dp combo phy. Therefore remove them from dp controller.
>
> Signed-off-by: Kuogee Hsieh <quic_khsieh@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> index 732e118..824a98c 100644
> --- a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
> @@ -813,8 +813,6 @@ hp_i2c: &i2c9 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&dp_hot_plug_det>;
>         data-lanes = <0 1>;
> -       vdda-1p2-supply = <&vdda_usb_ss_dp_1p2>;
> -       vdda-0p9-supply = <&vdda_usb_ss_dp_core>;
>  };

Reviewed-by: Douglas Anderson <dianders@chromium.org>

NOTE: this is somewhat related to Kuogee's series [1] but it's OK to
take even though his series hasn't landed. On trogdor we always keep
these regulators in HPM mode so we're not truly dependent on the
addition of regulator_set_load in the DP PHY.

[1] https://lore.kernel.org/lkml/8b751eb3-2e19-0e03-4c94-b26b3badd397@linaro.org/

-Doug
