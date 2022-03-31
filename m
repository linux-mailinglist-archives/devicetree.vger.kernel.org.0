Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C77B4EE4CD
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 01:32:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243052AbiCaXd5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 19:33:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238019AbiCaXd4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 19:33:56 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E14BE24F28F
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:32:07 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id g24so1766683lja.7
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:32:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UvSSaxHQfu4KzKOKApPWWxQRgS6ya5jprTe140uOq38=;
        b=kRhrubUDhwfjRpRcH2joioz8ltkxfJNbJymSnvaltF2wfQaBrE1Vt07IDBgRkdEHXE
         oyt/cLr6MOTdSRSYEb/qZXgAbgWmYV8v91sSnENZIrXOCOvtBY6eMgGQehbIw9f54vHH
         Liv7tiuP7y9hjW7LHsjGWLQo+Eqrwsqz2awtg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UvSSaxHQfu4KzKOKApPWWxQRgS6ya5jprTe140uOq38=;
        b=ikUdMXa4R06AXbjudFIscJ+dXsvOUFyCrO8ms6mVDCbfVvhhwHCc+eX+IX7ty1qUY9
         bZb5idMsJroukVdk/YwIJmYtQAY+UY78+veEkFoitr3B6xSWFdfBRAIBiOlQTOAzssmy
         NE5tnJRRKWSSR38p4yGjF7Mu/THxpEB/aVPSsHE1X1PRnIqxGMj/YH+qxFj9YPXIc0F6
         WyNTDDa3mD+qM/T9MwZvghSqGIRq5DdxIIJ5O/BwIrvYVReWV1WwQt0gv8aRxIGVL7tt
         G0OehHj5Azr380tz2UsMs8YeH4rhzaR8moeJM8UUw2xTHY/fVzPYykpkDqfrveBuZPhd
         WFfw==
X-Gm-Message-State: AOAM531w4A/KCpVwfLSEatNe9ab1bAwVNOBWZYMrqhcT16zzlQS8U17o
        F2v2jDBluD7DCuV/HQ4jCx6Rv4iNfimpg84EzoE=
X-Google-Smtp-Source: ABdhPJzJVZDmeCr6iVGazGV+u5sD6do809DVsL6AhzHaHjjfBu7kBwdBqkADDdsxGscKZdc0d9OMqg==
X-Received: by 2002:a2e:b17b:0:b0:24a:e901:42be with SMTP id a27-20020a2eb17b000000b0024ae90142bemr7781258ljm.98.1648769525852;
        Thu, 31 Mar 2022 16:32:05 -0700 (PDT)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com. [209.85.167.49])
        by smtp.gmail.com with ESMTPSA id m5-20020a0565120a8500b0044a2963700fsm71113lfu.70.2022.03.31.16.32.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Mar 2022 16:32:05 -0700 (PDT)
Received: by mail-lf1-f49.google.com with SMTP id bu29so1970496lfb.0
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:32:05 -0700 (PDT)
X-Received: by 2002:a5d:5551:0:b0:203:f916:e319 with SMTP id
 g17-20020a5d5551000000b00203f916e319mr5707669wrw.422.1648769060253; Thu, 31
 Mar 2022 16:24:20 -0700 (PDT)
MIME-Version: 1.0
References: <1648656179-10347-1-git-send-email-quic_sbillaka@quicinc.com>
 <1648656179-10347-9-git-send-email-quic_sbillaka@quicinc.com>
 <CAA8EJprvE31ex3fCQHZ-=x+EWHK4UZ0qqHRh+rH4dk5TPhmVyw@mail.gmail.com> <MW4PR02MB71867220A90FCFED295830D0E1E19@MW4PR02MB7186.namprd02.prod.outlook.com>
In-Reply-To: <MW4PR02MB71867220A90FCFED295830D0E1E19@MW4PR02MB7186.namprd02.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 31 Mar 2022 16:24:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VK0D_GzYBv+u+o6-ks-UAsw97__0mWsSn9OycX72LJFg@mail.gmail.com>
Message-ID: <CAD=FV=VK0D_GzYBv+u+o6-ks-UAsw97__0mWsSn9OycX72LJFg@mail.gmail.com>
Subject: Re: [PATCH v6 8/8] drm/msm/dp: Handle eDP mode_valid differently from dp
To:     "Sankeerth Billakanti (QUIC)" <quic_sbillaka@quicinc.com>
Cc:     "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "robdclark@gmail.com" <robdclark@gmail.com>,
        "seanpaul@chromium.org" <seanpaul@chromium.org>,
        "swboyd@chromium.org" <swboyd@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>,
        "Kuogee Hsieh (QUIC)" <quic_khsieh@quicinc.com>,
        "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
        "sean@poorly.run" <sean@poorly.run>,
        "airlied@linux.ie" <airlied@linux.ie>,
        "daniel@ffwll.ch" <daniel@ffwll.ch>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Mar 30, 2022 at 11:02 PM Sankeerth Billakanti (QUIC)
<quic_sbillaka@quicinc.com> wrote:
>
> Hi Dmitry,
>
> > On Wed, 30 Mar 2022 at 19:04, Sankeerth Billakanti
> > <quic_sbillaka@quicinc.com> wrote:
> > >
> > > The panel-edp driver modes needs to be validated differently from DP
> > > because the link capabilities are not available for EDP by that time.
> > >
> > > Signed-off-by: Sankeerth Billakanti <quic_sbillaka@quicinc.com>
> >
> > This should not be necessary after
> > https://patchwork.freedesktop.org/patch/479261/?series=101682&rev=1.
> > Could you please check?
> >
>
> The check for DP_MAX_PIXEL_CLK_KHZ is not necessary anymore but we need
> to return early for eDP because unlike DP, eDP context will not have the information
> about the number of lanes and link clock.
>
> So, I will modify the patch to return after the DP_MAX_PIXEL_CLK_KHZ check if is_eDP is set.

I haven't walked through all the relevant code but something you said
above sounds strange. You say that for eDP we don't have info about
the number of lanes? We _should_.

It's certainly possible to have a panel that supports _either_ 1 or 2
lanes but then only physically connect 1 lane to it. ...or you could
have a panel that supports 2 or 4 lanes and you only connect 1 lane.
See, for instance, ti_sn_bridge_parse_lanes. There we assume 4 lanes
but if a "data-lanes" property is present then we can use that to know
that fewer lanes are physically connected.

It's also possible to connect more lanes to a panel than it supports.
You could connect 2 lanes to it but then it only supports 1. This case
needs to be handled as well...


-Doug
