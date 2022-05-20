Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7E6A52F4BD
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 23:06:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243149AbiETVGK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 17:06:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353572AbiETVGH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 17:06:07 -0400
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24E6D57158
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 14:06:05 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id en5so12264421edb.1
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 14:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KMT8P8zbRfIHS8dDyJlM5Ic+rmYHYWgIa37DnbflAwE=;
        b=OmDFcvlzW70+WKeNegTYuDop8HPEyPvaHb2R4UR+jYAORC80RbpoYFWn8oCQE2tMGF
         vEtq78hodjiIWMwDJXJ0S5GZ7bWf4EY1GEx+VPBjrrs8uN+fxVsbI5lcMg33Mtr3OdaS
         W196e1Lj6N0eOtybtKFZoydcm1332KktdJdxs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KMT8P8zbRfIHS8dDyJlM5Ic+rmYHYWgIa37DnbflAwE=;
        b=djV/LkFV47q8nacoJgiWGgpACWmz3Gp9RFJyD6Y0b+XUv23PIRnXg1W6g6nX7ZQiv7
         t6YnUu3RZhP3GXU1THIEkqJ2W41IvLTi0KNq2Rm9IBk50XTBpoxP84Mi6dNavrK3ttkU
         FS8WfqzssGl+cJ4yP+q0HwgJtuNgP32PEexPYAcdYGlb9H6CaO+V0hgu71sHLIC+4k5n
         KdqH2j6bvNZyWp7gf3Pyr8jZgkWzSyA8UFNWMT/U6irNoYMi4NtviTG+6+NlSp0ddjoS
         pI5nxaSUWneNxRdRCYnJmjaK1BNlI5zANjTtoWm5JyB97yOj1vGybZUnH+osgkXebqBG
         safg==
X-Gm-Message-State: AOAM530fYDn0r8rVtMuxsZJQXy1jrH7vxXOsHSsHP8en4D58LnK9V6VF
        Iuslogl6ZFFzibXR6FYfwuiYb3LjAjkr4437lRI=
X-Google-Smtp-Source: ABdhPJz5Y7JEZvC1B9iThK6tj4yK4+GdJEEebCAM6Ux4ZXa4K2ffpusg7a5ggHHQdv+iqetTBZmRFQ==
X-Received: by 2002:a05:6402:2547:b0:428:1dd3:2751 with SMTP id l7-20020a056402254700b004281dd32751mr12648721edb.87.1653080763582;
        Fri, 20 May 2022 14:06:03 -0700 (PDT)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com. [209.85.128.48])
        by smtp.gmail.com with ESMTPSA id gx5-20020a1709068a4500b006f3ef214de6sm3496703ejc.76.2022.05.20.14.05.59
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 14:06:01 -0700 (PDT)
Received: by mail-wm1-f48.google.com with SMTP id ay35so3544906wmb.5
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 14:05:59 -0700 (PDT)
X-Received: by 2002:a05:600c:3482:b0:397:caa:9e68 with SMTP id
 a2-20020a05600c348200b003970caa9e68mr10274850wmq.118.1653080759084; Fri, 20
 May 2022 14:05:59 -0700 (PDT)
MIME-Version: 1.0
References: <20220520161004.1141554-1-judyhsiao@chromium.org>
 <20220520161004.1141554-2-judyhsiao@chromium.org> <CAE-0n53e0bq_MbfgZYdxatP8CpGVMKkBKOnSDOV+MvbBFB6wOA@mail.gmail.com>
 <CAD=FV=VX_dr+hrNEGyC7GxcYcbMeL-uMaVLEJ5EgKnb76HVoDA@mail.gmail.com> <CAE-0n53x6KJPz_Jc7terJB2AtLAHFo4kKZ98kAbUi8xckeCs_A@mail.gmail.com>
In-Reply-To: <CAE-0n53x6KJPz_Jc7terJB2AtLAHFo4kKZ98kAbUi8xckeCs_A@mail.gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 20 May 2022 14:05:44 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wr=tUb_Z2sgsJFE8oMykkmcKd+XUxmCohbgxOsvmVGoA@mail.gmail.com>
Message-ID: <CAD=FV=Wr=tUb_Z2sgsJFE8oMykkmcKd+XUxmCohbgxOsvmVGoA@mail.gmail.com>
Subject: Re: [v2 1/3] arm64: dts: qcom: sc7280: herobrine: Add pinconf
 settings for mi2s1
To:     Stephen Boyd <swboyd@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Judy Hsiao <judyhsiao@chromium.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, May 20, 2022 at 2:01 PM Stephen Boyd <swboyd@chromium.org> wrote:
>
> Quoting Doug Anderson (2022-05-20 13:39:21)
> > On Fri, May 20, 2022 at 1:38 PM Stephen Boyd <swboyd@chromium.org> wrote:
> > >
> > > Quoting Judy Hsiao (2022-05-20 09:10:02)
> > > > +};
> > > > +
> > > > +&mi2s1_sclk {
> > > > +       drive-strength = <6>;
> > > > +       bias-disable;
> > >
> > > Is there an external pull on this line? If so please add that details as
> > > a comment like we do for other external pulls.
> >
> > Actually, I think they are output lines, which is why they have a
> > drive-strength. I think for output lines we don't usually comment
> > about why we're disabling the pulls, only for input lines?
>
> Ok makes sense. Even for an open drain signal it would be an "input" so
> that rule still applies?

I think open drain is mostly used for bidirectional signals, like i2c
lines. In that case then you're right, you can have a drive-strength
and a pull. ...I thought i2s was not bidirectoinal and not open-drain,
but I certainly could be wrong.

-Doug
