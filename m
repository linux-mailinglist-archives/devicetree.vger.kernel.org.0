Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1DB85139D9
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 18:29:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350048AbiD1QdK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 12:33:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349411AbiD1QdJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 12:33:09 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C15F0ADD62
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 09:29:54 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id z5-20020a17090a468500b001d2bc2743c4so4893538pjf.0
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 09:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=CJmhCZrPiMZavdtPtKt7xyW0gxGaYnzd2PM8IzF7MPg=;
        b=X3HOsh0tZ+eIfltRMrj9e9yV1GkIordsNCmL08mhL3XR4tDS9U4su2Unea9wjKYi/Y
         BQOzUD1l7qKivIM7Dr81NYl5HTdG7pEOZJLR75jjB/iLVwQU1Edhr+GpDcOCK71E0/uq
         eqa5bMvVaseHbsWBKg3lSd7oLe//wkHjNbu3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=CJmhCZrPiMZavdtPtKt7xyW0gxGaYnzd2PM8IzF7MPg=;
        b=IQs7Y/w31O6c/opfJvO2mMmCOuqYYJ7zHLzE0eJa1q1tDhrJU4YezXPZw68pSMfT7y
         z7LMZMcj3LKlGLOtqpVDjzPPZewL0KmjN7b4YcxmQHKCjIFcWV2zT1lEVMcilh/tdVWm
         2A61oej+N/kQLForFiRMr/uZ9ND8kxhrBpxGeUzp8euRqhzzUd72soWVFPeUcHDQv4G6
         yWJVsaBAvTjhbBULh7H7ydIJAi+zlXx3wcQpzvoXDg9mefB8Vu0trUHhrxGkgJ/l6ZbK
         a0W9uatfE+IX/IRCBw2ZslsKjvUGN9GZ48HpgBNeoOf4fqTYu8VzEiMaBZ2a/NIl+MCZ
         3Dzg==
X-Gm-Message-State: AOAM530g3M5xQOjOSRm2lh2FKO3IXmMUWnPNw9g1rJ9ZK6GrPkcIIu7r
        uxwOjHvv3aDTl08FZFo4QMCaro6Pb9iuxw==
X-Google-Smtp-Source: ABdhPJwngjzLNM1RYjk6ZGoF5WQowA+1yjqvnIx2iJZajpuIzkDmj5PjmxpfmftbRbpe1+CWrrnwag==
X-Received: by 2002:a17:902:cf05:b0:156:9d:ca01 with SMTP id i5-20020a170902cf0500b00156009dca01mr33856986plg.111.1651163394343;
        Thu, 28 Apr 2022 09:29:54 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:7a56:fc44:2682:8a2e])
        by smtp.gmail.com with UTF8SMTPSA id o1-20020a629a01000000b0050d92e7d0c8sm293905pfe.180.2022.04.28.09.29.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 09:29:53 -0700 (PDT)
Date:   Thu, 28 Apr 2022 09:29:52 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Doug Anderson <dianders@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>
Subject: Re: [PATCH v22 2/2] arm64: dts: qcom: sc7280-herobrine: Add nodes
 for onboard USB hub
Message-ID: <YmrBAEYOt5/gXCdp@google.com>
References: <20220426170306.v22.1.I7a1a6448d50bdd38e6082204a9818c59cc7a9bfd@changeid>
 <20220426170306.v22.2.I18481b296484eec47bdc292a31fa46fa8c655ca9@changeid>
 <CAD=FV=UWPG6cZ_dcuXSKuO8ZA34J5TE1OJDxs7B3qn34V6n+eg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAD=FV=UWPG6cZ_dcuXSKuO8ZA34J5TE1OJDxs7B3qn34V6n+eg@mail.gmail.com>
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Apr 27, 2022 at 02:06:00PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Tue, Apr 26, 2022 at 5:03 PM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > Add nodes for the onboard USB hub on herobrine devices. Remove the
> > 'always-on' property from the hub regulator, since the regulator
> > is now managed by the onboard_usb_hub driver.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> > ---
> >
> > Changes in v22:
> > - patch added to the series
> >
> >  .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 21 ++++++++++++++++++-
> >  1 file changed, 20 insertions(+), 1 deletion(-)
> 
> Just like on patch #1, I presume it will be moderately annoying if
> this lands in the Qualcomm branch before the driver lands in mainline?
> I guess very few people have herobrine hardware, so maybe not that big
> of a deal...

For herobrine it's probably not a big deal, hardware isn't publicly
available and those who have run it with a CrOS based kernel most of
the time. But yeah, it would be somewhat annoying if USB is broken
when you test something with an upstream kernel.

> In any case, I'm happy with:
> 
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Thanks!
