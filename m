Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EB5151C8AA
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 21:06:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244406AbiEETJx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 15:09:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234595AbiEETJw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 15:09:52 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AF724A3D0
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 12:06:12 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id r185so480732oih.5
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 12:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=D0hIIaQCI/Dh7yD1DKDpvDpYdxU4Kww1YfWBC7PJ66o=;
        b=Y5TZ8gwH28OUdcotbTOTVpcbR4pDhTI/YaqLz24TF+cgaEBsGrcHfKJ6FBpz5fI8YD
         0ZQoF6vw49X7WRHB1KNIwNnaHPbGRAeoDQ27rWR0fcMzDbA4qQ8IRsYiuu1tu/cgCh6i
         7ztBLJfvDKa2BhXMW2eS+XrHhX8up86RwTwaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=D0hIIaQCI/Dh7yD1DKDpvDpYdxU4Kww1YfWBC7PJ66o=;
        b=fQa737l1xUBcdlt5ww1972gNhqqVptC+GH7KGGTh+6Q+RKOTdu+v6zAo2tBZ6V3BOV
         G5d092L4cQEjcOyfkZkECiyPerGOWbk/WpKFldzjxl1x68n/5ZWgt229H6y0PW3tLdAj
         yILMZDCM45QDPMR53ahvHX3H7IWMVewmmkKQYs6bGC+J5oQD+kHevo+Oaz9Ukbwdgd9W
         hALZEstYPozJA+RmlyWqQNZ3l3Ucz+Brhu31lZ3Kjw0rSO9BxrnihHB6kPThtnTV4+DZ
         sVlCjbA8BACYMmZ8RS0kLRl3arSRItajzZWAFupJwlHSCp+Od4uvUXXN6BFrwsWGoI5E
         Ahlw==
X-Gm-Message-State: AOAM533rW7gH1Jr4jV0PeT4RWBvosrJuZ+MIBOHMCc7tJYPbzfxBTf+r
        xvO0zxFCYBn/2aWfSXQ9Cf00cX0F1C4Ffd+4RhM3zQ==
X-Google-Smtp-Source: ABdhPJynlWjxd2luIxa71ND0gePgQJv4YZ4ySZIIn/1gXDonkO41PQ/jE3q3+0goFTuJnjQr8o6y5FLtPhweRHmec9s=
X-Received: by 2002:aca:bd41:0:b0:2ec:ff42:814f with SMTP id
 n62-20020acabd41000000b002ecff42814fmr3286599oif.63.1651777571605; Thu, 05
 May 2022 12:06:11 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Thu, 5 May 2022 15:06:10 -0400
MIME-Version: 1.0
In-Reply-To: <MW4PR02MB71867A18732B266DE8FA2040E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
References: <20220425210643.2420919-1-dianders@chromium.org>
 <20220425140619.1.Ibfde5a26a7182c4b478d570c23d2649823ac2cce@changeid>
 <CAE-0n51eZpAKprRQ0HqjLciF_BVQHBDN8SMFNVmmOd=B9UBEzg@mail.gmail.com>
 <CAD=FV=WmVK3wTQf_EAxSi0WPXedSFGCsKdyqRnHsskmMYTHDQA@mail.gmail.com>
 <MW4PR02MB718610FAA14F966ADE1B1585E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
 <CAE-0n51Q=cGwrMec3JEQENqWHV3pAUjLPT6RwZLA5xV080sgxQ@mail.gmail.com> <MW4PR02MB71867A18732B266DE8FA2040E1C29@MW4PR02MB7186.namprd02.prod.outlook.com>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date:   Thu, 5 May 2022 15:06:10 -0400
Message-ID: <CAE-0n53MEBYhyRtGWOCmjj923UQU_iVE_SEBQw6_FUci8NLz3w@mail.gmail.com>
Subject: RE: [PATCH 1/2] dt-bindings: msm/dp: List supplies in the bindings
To:     Doug Anderson <dianders@chromium.org>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>
Cc:     "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
        "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        "linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Kalyan Thota <quic_kalyant@quicinc.com>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sankeerth Billakanti (QUIC) (2022-05-05 11:47:20)
> >Quoting Sankeerth Billakanti (2022-05-05 11:02:36)
> >>
> >> Our internal power grid documents list the regulators as VDD_A_*_1P2
> >> and VDD_A_*_0P9 for all the platforms.
> >
> >Do your internal power grid documents indicate what these supplies are
> >powering? The question is if these supplies power any of the logic inside the
> >eDP controller or if they only supply power to the analog circuits in the eDP
> >phy. If it's the eDP phy only then the regulator usage in the eDP driver should
> >be removed. I would suspect this is the case because the controller is
> >probably all digital logic and runs at the typical 1.8V that the rest of the SoC
> >uses. Similarly, these are voltage references which sound like a PLL reference
> >voltage.
> >
> >Please clarify this further.
> >
>
> For the DP driver using the usb-dp combo phy, there were cases where the usb driver
> was turning off the phy and pll regulators whenever usb-dp concurrent mode need not be supported.
> This caused phy and pll to be powered down causing aux transaction failures and display blankouts.
> From then on, it became a practice for the controller driver to vote for the phy and pll regulators also.
>

That sounds like USB-DP combo phy driver had improper regulator power
management where aux transactions from DP didn't keep the power on to
the phy. Where does the power physically go? If the power isn't
physically going to the DP controller it shouldn't be controlled from
the DP controller driver. If the aux bus needs the DP phy enabled, the
DP controller driver should enable the phy power (via phy_power_on()?).
