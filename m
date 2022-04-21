Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3DF5350A538
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 18:24:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230494AbiDUQ1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 12:27:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229717AbiDUQKu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 12:10:50 -0400
Received: from mail-ej1-x644.google.com (mail-ej1-x644.google.com [IPv6:2a00:1450:4864:20::644])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84EAE4739D
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 09:08:00 -0700 (PDT)
Received: by mail-ej1-x644.google.com with SMTP id t11so10962522eju.13
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 09:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r/PzIKSjMeAOGbI6c4RWxm0pVUCyssgrVjMCd8c5Dag=;
        b=nSF4LY4d2BN1+JKzCgg54cIZdi/67BsPH/yDBzQffgGlo9dfl+XlmWXoZzWzMAXnIp
         qdZnwGxZTweXi0UkZvcPT3csTHegVQ7l9Yr8NqemyuxGmINZvpE6WVK/kWcyEnj1B29C
         R+2ri3hviOx0Pn502v6FXWj/8GgnrITxJ4CN8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r/PzIKSjMeAOGbI6c4RWxm0pVUCyssgrVjMCd8c5Dag=;
        b=otVWpygwb6vVmmPjA1AP4Fsp1pHJ/IcQDud+M30ukPmabKxSRYFGu/hOwurwCl/3Vr
         GseckTodMYDHKJhc4jMt61Rvp+7bDdZVMK5Lum5T21GBk/RTGCEo/0UOk5QoNWQk9cDW
         NxWMnp5VM9xuFU/DN4UkYXv4yrBejDXjaTL5W0ySQ+6Fiw5a77dVG+jcpiXEAKvgLZW4
         R7z9eqVYccfc8Tj3/wMsysrwMDJ4Tfd02bYLLQlQRGp6Sd6UlLvIms/eZljjLn2c325d
         V/OT4zV6Jn24vw6y+1NKImoirMr1GD3s3vhqFyGS/xSL2NJQX+EOCUcZeEjITrfz3wJe
         fCPw==
X-Gm-Message-State: AOAM533kn+cBEcYw1WsD0fyr+YK0k8qTzIxdb7Qt+Vac2iAoHTP/bx4D
        iTyMwmTlKVyZt8SrGO+9KMQKtQyNixGw2JAXL/I=
X-Google-Smtp-Source: ABdhPJyI/S2odQ8N4RRHm70nGD9dqlizL6mwnFdTdckzjKFgGOv/XLsdYOfM5fQBMAJl9WnEksJxuA==
X-Received: by 2002:a17:907:1b25:b0:6da:8206:fc56 with SMTP id mp37-20020a1709071b2500b006da8206fc56mr222636ejc.81.1650557279125;
        Thu, 21 Apr 2022 09:07:59 -0700 (PDT)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by smtp.gmail.com with ESMTPSA id j4-20020a170906278400b006e99f136c78sm7958606ejc.23.2022.04.21.09.07.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 09:07:58 -0700 (PDT)
Received: by mail-wr1-f49.google.com with SMTP id v12so569890wrv.10
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 09:07:58 -0700 (PDT)
X-Received: by 2002:adf:a29c:0:b0:20a:a246:a826 with SMTP id
 s28-20020adfa29c000000b0020aa246a826mr355251wra.422.1650557277978; Thu, 21
 Apr 2022 09:07:57 -0700 (PDT)
MIME-Version: 1.0
References: <1650551811-24319-1-git-send-email-quic_sbillaka@quicinc.com>
 <1650551811-24319-2-git-send-email-quic_sbillaka@quicinc.com>
 <CAD=FV=Ug-ZRiMrVyVH+OT1fMhyUnAixP2FfWKTQpLZXka0U_=g@mail.gmail.com> <MW4PR02MB718603608E45FB53A8D942C7E1F49@MW4PR02MB7186.namprd02.prod.outlook.com>
In-Reply-To: <MW4PR02MB718603608E45FB53A8D942C7E1F49@MW4PR02MB7186.namprd02.prod.outlook.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 21 Apr 2022 09:07:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UOALugpmgJK8dHxK=b_GO+c12d3xmGE3HiqJK+yznViA@mail.gmail.com>
Message-ID: <CAD=FV=UOALugpmgJK8dHxK=b_GO+c12d3xmGE3HiqJK+yznViA@mail.gmail.com>
Subject: Re: [PATCH v8 1/4] drm/msm/dp: Add eDP support via aux_bus
To:     "Sankeerth Billakanti (QUIC)" <quic_sbillaka@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
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
        "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        "Aravind Venkateswaran (QUIC)" <quic_aravindh@quicinc.com>,
        Steev Klimaszewski <steev@kali.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Apr 21, 2022 at 9:00 AM Sankeerth Billakanti (QUIC)
<quic_sbillaka@quicinc.com> wrote:
>
> >> +       }
> >> +
> >> +       /*
> >> +        * External bridges are mandatory for eDP interfaces: one has to
> >> +        * provide at least an eDP panel (which gets wrapped into panel-
> >bridge).
> >> +        *
> >> +        * For DisplayPort interfaces external bridges are optional, so
> >> +        * silently ignore an error if one is not present (-ENODEV).
> >> +        */
> >> +       rc = dp_parser_find_next_bridge(dp_priv->parser);
> >> +       if (rc && dp->is_edp) {
> >> +               DRM_ERROR("eDP: cannot find the next bridge, rc = %d\n", rc);
> >> +               goto edp_error;
> >> +       } else if (rc && rc != -ENODEV) {
> >> +               DRM_ERROR("DP: cannot find the next bridge, rc = %d\n", rc);
> >> +               goto error;
> >> +       }
> >
> >The above wouldn't be my favorite way of doing this. Instead, I would have
> >written:
> >
> >  if (rc) {
> >    DRM_ERROR("Cannot find the next bridge, rc = %d\n", rc);
> >    goto err;
> >  }
> >  ...
> >
> >err:
> >  if (dp->is_edp) {
> >    disable_irq(...);
> >    dp_display_host_phy_exit(...);
> >    dp_display_host_deinit(...);
> >  }
> >  return rc;
> >
>
> If rc is ENODEV for DP, then we need to return 0. Shall I add like below ?
>
> err:
>   if (dp->is_edp) {
>     disable_irq(...);
>     dp_display_host_phy_exit(...);
>     dp_display_host_deinit(...);
>   } else
>         If (rc == -ENODEV)
>             rc = 0;
>   return rc;

I wouldn't. Then you're essentially going to "err" for a case that you
don't consider an error. I would instead have just handled it right
away.

rc = dp_parser_find_next_bridge(dp_priv->parser);
if (!dp->is_edp && rc == -ENODEV)
  return 0;

This also is better IMO because it means you aren't assuming that
`dp_priv->parser->next_bridge` is "valid" (or at least NULL) after
dp_parser_find_next_bridge() returned an error.

-Doug
