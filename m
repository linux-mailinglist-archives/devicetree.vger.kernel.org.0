Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CEDF24E2F3A
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 18:40:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349861AbiCURlj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 13:41:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349829AbiCURlh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 13:41:37 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AD3565173
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 10:40:11 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id i65so6397982qkd.7
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 10:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6W2sIVaPd1wN+ZQSZ4o9j1nJ91W2fIHQV8YHK4mslGI=;
        b=othMTu8DE+iag13P8/3A86+7Cc/DHfdnjpWo/byQ5ZUfFCsKml6d/b3+j7enHM3E4T
         p+KQDmhtptyFrPuooWSYmYPJhZWIkHdGt+4vDWYH8iYYuao36WWrhVCMkScMLZUcTZup
         pbxMXwiUoDBFmduoGs8/S8k0tsoBfeYNIRC0GZYKyyNpLf6jW7ygE9Q4oqBC51xdfcFk
         7ttNl5wra931kZmVavvxQVP/9NCHWg77ijwCiHKLw+zmH2XDabD4PX37zubDr18d1FXu
         LkskplWtgjBIz3OnXb1aT9cH4qssg21daGzI4dNto8OQ0PN0SvwCPVBwRyAb6Xlo3qN2
         FbyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6W2sIVaPd1wN+ZQSZ4o9j1nJ91W2fIHQV8YHK4mslGI=;
        b=n+96pMN1fyWWBvOFMd/tvQlQdcwRZcoz6WJIWM6p0tPJXq/spOTYc/AiUk77Ze1m0G
         d+dQ6KTirtI9PR3B5j4kN09zP9L6H2kbYNhr4cA6OzUIUrTOPQSYNHC+Ba0GSK+6QStC
         KxluVxnuE4XDhq5IU4ETIuIjdHaB/03YlvOeTYeCfBzMH+xoO21Z34QI5enuI49wzqiw
         thnMzddXY7n0gX3ehnYS0wGPAaDjDYai+RtVomwSmoJJyiiKtUjrjPVxzcqAy5qEAED3
         6MPR/ZsK1CNwgyx8yjeGFgFzMPxDi5MpCAuu1k+8nYzAgRyBVeRXpI+Gyi5IhI5F1PfP
         pR6w==
X-Gm-Message-State: AOAM530e4cFFm1Gd4vzKnyAkwb07jTxomCBK2hGG5CiqDMTBJT/LZ7pJ
        GdDOZv9/92Iz73zEG+FQGX/ZMFBAOuffkBbFiA7NKg==
X-Google-Smtp-Source: ABdhPJzAfOtHcF9CqanODzAbHAfQeaYZMAZcZ9hv0xTWt4ZcE9sSN4BkC8am1z8h+EdgxGiCPhpJswcEmaek2cu2UjE=
X-Received: by 2002:a05:620a:2453:b0:67d:9539:495c with SMTP id
 h19-20020a05620a245300b0067d9539495cmr13674139qkn.30.1647884410564; Mon, 21
 Mar 2022 10:40:10 -0700 (PDT)
MIME-Version: 1.0
References: <1647269217-14064-1-git-send-email-quic_vpolimer@quicinc.com>
 <1647269217-14064-2-git-send-email-quic_vpolimer@quicinc.com>
 <CAE-0n51vfoOK_6B0yAvws32MtLQ1SvBPoQPHBFE14TLzZFUZaw@mail.gmail.com> <BN0PR02MB8173BBD2C02F5DFBEBE94E40E4169@BN0PR02MB8173.namprd02.prod.outlook.com>
In-Reply-To: <BN0PR02MB8173BBD2C02F5DFBEBE94E40E4169@BN0PR02MB8173.namprd02.prod.outlook.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 21 Mar 2022 20:39:59 +0300
Message-ID: <CAA8EJpribc722wN2jR5sQEkX6FiaE_SdBk8B5HPamCXZWhEd7A@mail.gmail.com>
Subject: Re: [PATCH v6 1/5] drm/msm/disp/dpu1: set mdp clk to the maximum
 frequency in opp table during probe
To:     Vinod Polimera <vpolimer@qti.qualcomm.com>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        quic_vpolimer <quic_vpolimer@quicinc.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robdclark@gmail.com" <robdclark@gmail.com>,
        "dianders@chromium.org" <dianders@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 21 Mar 2022 at 19:21, Vinod Polimera <vpolimer@qti.qualcomm.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Stephen Boyd <swboyd@chromium.org>
> > Sent: Friday, March 18, 2022 2:41 AM
> > To: quic_vpolimer <quic_vpolimer@quicinc.com>;
> > devicetree@vger.kernel.org; dri-devel@lists.freedesktop.org;
> > freedreno@lists.freedesktop.org; linux-arm-msm@vger.kernel.org
> > Cc: linux-kernel@vger.kernel.org; robdclark@gmail.com;
> > dmitry.baryshkov@linaro.org; dianders@chromium.org; quic_kalyant
> > <quic_kalyant@quicinc.com>
> > Subject: Re: [PATCH v6 1/5] drm/msm/disp/dpu1: set mdp clk to the
> > maximum frequency in opp table during probe
> >
> > WARNING: This email originated from outside of Qualcomm. Please be wary
> > of any links or attachments, and do not enable macros.
> >
> > Quoting Vinod Polimera (2022-03-14 07:46:53)
> > > use max clock during probe/bind sequence from the opp table.
> > > The clock will be scaled down when framework sends an update.
> >
> > Capitalize 'use'.
> >
> > Why is it important to use max frequency during probe/bind? Does not
> > setting the clk rate during probe mean that we'll never use the max
> > rate? Does it speed things up during probe?
>
> We need to vote mdp clock during probe/bind so that rails are not set at undetermined state as pointed out by Dmitry.
> Since we dont know what will be the rate set in boot loader, it would be ideal to vote at max frequency.
> There could be a firmware display programmed in bootloader and we want to transition it to kernel without underflowing.

This should be expressed in the commit message.


-- 
With best wishes
Dmitry
