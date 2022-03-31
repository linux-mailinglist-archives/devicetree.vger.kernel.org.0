Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC6544EE4BA
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 01:25:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239069AbiCaXZj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Mar 2022 19:25:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243158AbiCaXZc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Mar 2022 19:25:32 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CDF505749A
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:23:40 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id r13so2398780ejd.5
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:23:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LLB/4ErH2KmNX4icsPtz8gcVd91Ba8xsooM5WCEu/To=;
        b=nO2IsBJyBf/P3KA7s8QuuGM6xFZSrWZovU/MfhkXj0KUNNuFJ3JGAq+Rs/3rX52qsY
         7P5N2AMJME5FGhl9OxAp3JLusS1z1TEB+mUKXGDbBLppxe902V/8Zo5Zc7k50FYB1oxq
         GxXAOnEIWO1JRgUrPmufk1e5oNiZETTlMRBzM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LLB/4ErH2KmNX4icsPtz8gcVd91Ba8xsooM5WCEu/To=;
        b=HPITvrepKRw4J7SK72FYME96dLyh++LqN7Kf6jXcGVA1HycO41rNXxfxrEkgeSaWNn
         lsJSK5HVQ6WIyEPONuqPp9jgQtSdVm26cDStF4fVSyEiHdNzDOxgHJVK74j/kaVa1sRI
         AqGjWuu5XRaVeGxNOagseKyNv++0FHEFWHQBKo/5DWR6QxFVoOV5Sdsq9HKfGd+L+5BU
         Rw75CofvuXhRjUk5UwwOHtGJDiLQoQDN4Oto82cWLZeVLxbJHFuKoMqZrxFZimvrsAJg
         ZvTerg4MTyApfFauwPEQiRIuYZRKuoTw42Xas1VMaAIpJTpI4cZgOxZKsO+GLsineslA
         aj+g==
X-Gm-Message-State: AOAM532diIBOP5vlVeVtskGxlDrErAcAxjfTNo0xUBvIX3Aj5w2nXzCs
        xDUXYz/cEak6BlcoIULIvddSFpnW0qs+DBgR
X-Google-Smtp-Source: ABdhPJwklODFDinaIHCdmnOJ0RuoUeF/IVw8a1U1uVJzoZGq74JsvlWoW8lMOU9DF4p1F+cg4aGcgQ==
X-Received: by 2002:a17:906:9f28:b0:6df:f811:5286 with SMTP id fy40-20020a1709069f2800b006dff8115286mr6582585ejc.745.1648769019176;
        Thu, 31 Mar 2022 16:23:39 -0700 (PDT)
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com. [209.85.128.45])
        by smtp.gmail.com with ESMTPSA id o2-20020a50d802000000b00410d7f0c52csm391195edj.8.2022.03.31.16.23.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Mar 2022 16:23:37 -0700 (PDT)
Received: by mail-wm1-f45.google.com with SMTP id p189so689811wmp.3
        for <devicetree@vger.kernel.org>; Thu, 31 Mar 2022 16:23:36 -0700 (PDT)
X-Received: by 2002:a1c:7518:0:b0:37c:7eb:f255 with SMTP id
 o24-20020a1c7518000000b0037c07ebf255mr6394707wmc.29.1648769016448; Thu, 31
 Mar 2022 16:23:36 -0700 (PDT)
MIME-Version: 1.0
References: <1648656179-10347-1-git-send-email-quic_sbillaka@quicinc.com> <1648656179-10347-7-git-send-email-quic_sbillaka@quicinc.com>
In-Reply-To: <1648656179-10347-7-git-send-email-quic_sbillaka@quicinc.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 31 Mar 2022 16:23:23 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UX9Mg71EKvgNp_wNG5q7_ugBgVPbcFWFX5XBG+cQCi8Q@mail.gmail.com>
Message-ID: <CAD=FV=UX9Mg71EKvgNp_wNG5q7_ugBgVPbcFWFX5XBG+cQCi8Q@mail.gmail.com>
Subject: Re: [PATCH v6 6/8] drm/msm/dp: remove unnecessary delay during boot
To:     Sankeerth Billakanti <quic_sbillaka@quicinc.com>
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
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        quic_aravindh@quicinc.com
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

On Wed, Mar 30, 2022 at 9:04 AM Sankeerth Billakanti
<quic_sbillaka@quicinc.com> wrote:
>
> Remove the unnecessary delay in executing the EV_HPD_INIT_SETUP event.

Tell me more and put it in the commit message! Why did it used to be
necessary and why is it no longer necessary? Inquiring minds want to
know.

-Doug
