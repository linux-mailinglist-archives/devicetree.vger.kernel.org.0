Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 426FA4F4B16
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 02:53:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1573871AbiDEWxg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Apr 2022 18:53:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1573186AbiDESN6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Apr 2022 14:13:58 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C61FD86E36
        for <devicetree@vger.kernel.org>; Tue,  5 Apr 2022 11:11:57 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id k23so24951040ejd.3
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 11:11:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=660LH2+GxfU/Tt425A6dqO9O0qLu2gGwDombZrfKpU8=;
        b=gwNC/cNNASSPrm/edmwXPk0X7RaQdKKSivzCUoyBbji7ak6C8kchHEP5egX8PkIP4C
         sazrZ+UZmtaVXMpC4qrc5t0H+eIPolaDcFXOFq2kJoDEq0rKnwf93q0H04FDyVTlple4
         HndygiAgVBA2rSkB38vxENQIHCisJHKkZm1Uk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=660LH2+GxfU/Tt425A6dqO9O0qLu2gGwDombZrfKpU8=;
        b=L/ogUFU+HqWDlWbfAyl6Px6kGCuRdTKRFGXedgaxM1FUqb3bCVS5q7wbmpw8l7ZsGz
         3igGvO6k5PTmCUJmMl90eDRkokEwadNQotauvrxiR1fjZbgIXiISqMn+LaLRxb8jmQ1Y
         fFXdqraSdX3uFhDrbO2fpvLjI6Gj353QaA3fqP78zHzRjpwx1HO37nKfh3CuzVjCNQVq
         aZ6XxKuJ2KTFCxUBpBzLNzUUUwhuaQsZBmnZW0BR6yLrrP1Usa4jzH/BCyHWrJBhHsUX
         oYDn94SzJnO0EB53DgF4tJfG0Wc8yjPrKzlRWjuETHb37PUV7GDgVnfx0tJo/3v4iJKy
         vTAQ==
X-Gm-Message-State: AOAM530fT+K6rJsJJ2cUoPsfwsaO6oQboRC22B8LaHZtwIlRUpq3WtQk
        MzDjh/ouiED2+larMfs4vxKYLewb+yWTvK8o
X-Google-Smtp-Source: ABdhPJwngkFVQ8d1MVIL3UwE+hcihlsMNP1G1TPQBcNfD3hBE/THjNI5em9tQIlnYZa70mwMxqVO0Q==
X-Received: by 2002:a17:907:7ea8:b0:6df:d4a4:8156 with SMTP id qb40-20020a1709077ea800b006dfd4a48156mr4884534ejc.226.1649182315955;
        Tue, 05 Apr 2022 11:11:55 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com. [209.85.221.50])
        by smtp.gmail.com with ESMTPSA id d4-20020a056402000400b00412d60fee38sm6852238edu.11.2022.04.05.11.11.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Apr 2022 11:11:54 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id z1so8272285wrg.4
        for <devicetree@vger.kernel.org>; Tue, 05 Apr 2022 11:11:53 -0700 (PDT)
X-Received: by 2002:adf:9123:0:b0:205:f439:cbdf with SMTP id
 j32-20020adf9123000000b00205f439cbdfmr3560336wrj.513.1649182313067; Tue, 05
 Apr 2022 11:11:53 -0700 (PDT)
MIME-Version: 1.0
References: <1648656179-10347-1-git-send-email-quic_sbillaka@quicinc.com>
 <1648656179-10347-2-git-send-email-quic_sbillaka@quicinc.com>
 <CAD=FV=X+QvjwoT2zGP82KW4kD0oMUY6ZgCizSikNX_Uj8dNDqA@mail.gmail.com>
 <392b933f-760c-3c81-1040-c514045df3da@linaro.org> <CAD=FV=W4PYK-t607yjRbfjDjjEZX0KdgHDRukw_vSH8E8EDH6w@mail.gmail.com>
 <CAA8EJppt9XONbgtKfmHmN+==QNqiVJeb8GKJFdZm=yyY-tgmHQ@mail.gmail.com>
 <CAD=FV=U5-sTDLYdkeJWLAOG-0wgxR49VxtwUyUO7z2PuibLGsg@mail.gmail.com>
 <CAA8EJppgfYgQjG8A4LsR-1wmBj3Ku3eO8cKfAYhxjWXL7e3eHg@mail.gmail.com>
 <CAD=FV=V=a1CnT8fqTJR40WoS3BaDQ3xZ=HnHVHqZh=MEmVUZBA@mail.gmail.com> <3e5fa57f-d636-879a-b98f-77323d07c156@linaro.org>
In-Reply-To: <3e5fa57f-d636-879a-b98f-77323d07c156@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 5 Apr 2022 11:11:40 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Uibu-kZyix7K4_WVc-+C8xpzTqU4WFy7O=6sukMZrX5g@mail.gmail.com>
Message-ID: <CAD=FV=Uibu-kZyix7K4_WVc-+C8xpzTqU4WFy7O=6sukMZrX5g@mail.gmail.com>
Subject: Re: [PATCH v6 1/8] drm/msm/dp: Add eDP support via aux_bus
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Rob Clark <robdclark@gmail.com>,
        Sean Paul <seanpaul@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Apr 5, 2022 at 10:36 AM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On 05/04/2022 20:02, Doug Anderson wrote:
> > Hi,
> >
> > On Tue, Apr 5, 2022 at 5:54 AM Dmitry Baryshkov
> > <dmitry.baryshkov@linaro.org> wrote:
> >>> 3. For DP and eDP HPD means something a little different. Essentially
> >>> there are two concepts: a) is a display physically connected and b) is
> >>> the display powered up and ready. For DP, the two are really tied
> >>> together. From the kernel's point of view you never "power down" a DP
> >>> display and you can't detect that it's physically connected until it's
> >>> ready. Said another way, on you tie "is a display there" to the HPD
> >>> line and the moment a display is there it's ready for you to do AUX
> >>> transfers. For eDP, in the lowest power state of a display it _won't_
> >>> assert its "HPD" signal. However, it's still physically present. For
> >>> eDP you simply have to _assume_ it's present without any actual proof
> >>> since you can't get proof until you power it up. Thus for eDP, you
> >>> report that the display is there as soon as we're asked. We can't
> >>> _talk_ to the display yet, though. So in get_modes() we need to be
> >>> able to power the display on enough to talk over the AUX channel to
> >>> it. As part of this, we wait for the signal named "HPD" which really
> >>> means "panel finished powering on" in this context.
> >>>
> >>> NOTE: for aux transfer, we don't have the _display_ pipe and clocks
> >>> running. We only have enough stuff running to do the AUX transfer.
> >>> We're not clocking out pixels. We haven't fully powered on the
> >>> display. The AUX transfer is designed to be something that can be done
> >>> early _before_ you turn on the display.
> >>>
> >>>
> >>> OK, so basically that was a longwinded way of saying: yes, we could
> >>> avoid the AUX transfer in probe, but we can't wait all the way to
> >>> enable. We have to be able to transfer in get_modes(). If you think
> >>> that's helpful I think it'd be a pretty easy patch to write even if it
> >>> would look a tad bit awkward IMO. Let me know if you want me to post
> >>> it up.
> >>
> >> I think it would be a good idea. At least it will allow us to judge,
> >> which is the more correct way.
> >
> > I'm still happy to prototype this, but the more I think about it the
> > more it feels like a workaround for the Qualcomm driver. The eDP panel
> > driver is actually given a pointer to the AUX bus at probe time. It's
> > really weird to say that we can't do a transfer on it yet... As you
> > said, this is a little sideband bus. It should be able to be used
> > without all the full blown infra of the rest of the driver.
>
> Yes, I have that feeling too. However I also have a feeling that just
> powering up the PHY before the bus probe is ... a hack. There are no
> obvious stopgaps for the driver not to power it down later.

This is why I think we need to move to Runtime PM to manage this. Basically:

1. When an AUX transfer happens, you grab a PM runtime reference that
_that_ powers up the PHY.

2. At the end of the AUX transfer function, you do a "put_autosuspend".

Then it becomes not a hack, right?


> A cleaner design might be to split all hotplug event handling from the
> dp_display, provide a lightweight state machine for the eDP and select
> which state machine to use depending on the hardware connector type. The
> dp_display_bind/unbind would probably also be duplicated and receive
> correct code flows for calling dp_parser_get_next_bridge, etc.
> Basically that means that depending on the device data we'd use either
> dp_display_comp_ops or (new) edp_comp_ops.
>
> WDYT?

I don't think I know the structure of the MSM DP code to make a
definitive answer here. I think I'd have to see a patch. However I'd
agree in general terms that we need some different flows for the two.
;-) We definitely want to limit the differences but some of them will
be unavoidable...


-Doug
