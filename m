Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D3554B1527
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 19:22:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244068AbiBJSVy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 13:21:54 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:52844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245644AbiBJSVy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 13:21:54 -0500
Received: from mail-qt1-x829.google.com (mail-qt1-x829.google.com [IPv6:2607:f8b0:4864:20::829])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB345218E
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 10:21:54 -0800 (PST)
Received: by mail-qt1-x829.google.com with SMTP id r14so6231735qtt.5
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 10:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/ofn3bSq3MDpUX5izntvFUqZlJnwicKzFuuWVWBilV0=;
        b=Ea7ZdrFyBcNGjLoOwtve/xy9vJDkVSxMF8DRJcrT98tobQpxS1uLgh4H1lGH7m/zT1
         e5+rEGeVzuYx2Hlqc7HA1x7/U38vdj+obJLGGFdDSM53jITOpB5muXbexEptprxUXxHu
         OmR9eJWwJA0eOYvc9fMmwwNeJpUn1HQVJrNMCrP4A11YR/tPrz8X4hC81Amu5m6xTmSR
         3X9vbLCCOmrPU5nEv1uY2PG1I5qIOrAFZKgDo2NdnDdOnMqR0TUjQZpThKQ1Ymy+pYxm
         h200qgeY2yFbi9YbsIRaJtQZCnzXzagG/MtmuWHhBkP0V9t7a4sRbYipYLcM8Lms4uZ8
         34tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/ofn3bSq3MDpUX5izntvFUqZlJnwicKzFuuWVWBilV0=;
        b=SbKUZG+20LZBSKI2/xieTpD2FHIS6wx8fbU2x2qAbxlDBRTRjWb2SsYq2sOaBqODhR
         tP31UMFQvvk3c9mXjom39UXeL2rKgOqlGmQmhMY3Y7oinvJcolDPXCQ7gNQvfvQ00f8w
         cjTKhUUdFVAOKCjbSksg/nB9Bm8KTDUEhk2cM81U0Vg9lA7+ojfTaCqqrV34b6KlcO8u
         Z0ysYRfQ9F6WPKxf0xioe1lzr5P5mjBfu68YLXLmE4ifc+/QVBo9zT/ghen0ItqSYnJt
         E5coq5P0S+FB4xBu6a0XhIZNYP8n4trwq2WVb4jf0rYZbSt2NLGoVJEs0vQ5gwhMgxG4
         YQfg==
X-Gm-Message-State: AOAM530R3iP7fgLtaYv/+LbAg5kTImpNzfKOpyF0BKKbHgpAt9lE9OVC
        FRDQ60pnFwrJ/kqAo+w7NBQVHhLRTVlk35mZdNPvAQ==
X-Google-Smtp-Source: ABdhPJwS3ZI0Mi6QVMlCGaXnDzINY3t30Jhr2IGg4NzhgWLTU6SjTyrdiWUa4++A/1XUdiBOO2y/eHAEf9Vcyi65jd4=
X-Received: by 2002:ac8:7fca:: with SMTP id b10mr5813303qtk.62.1644517313884;
 Thu, 10 Feb 2022 10:21:53 -0800 (PST)
MIME-Version: 1.0
References: <Yf1zhojUSxlMNZgV@sirena.org.uk> <Yf14LADJ26G9ByZu@ripper>
 <Yf1/X1rXm4QbyoFN@sirena.org.uk> <846cdc17-891d-2ee4-fc89-7cf6fbdebc1d@linaro.org>
 <YgEvN0lXXu4lDCN5@sirena.org.uk> <682b7ffe-e162-bcf7-3c07-36b3a39c25ab@linaro.org>
 <YgJoX+Ajgt4dweQJ@sirena.org.uk> <CAA8EJppEjFqPUBXtdkTsx2U2CjsrjNsXEmrx_DkAS9a9jmB9cg@mail.gmail.com>
 <YgUy9KMXocSqnv7b@sirena.org.uk> <CAA8EJpqN_T7eAOdLhK-P_0HCuChpE9JhPBg9HVJ=N1kKMbgDjA@mail.gmail.com>
 <YgVNJHTQufLu1sM5@sirena.org.uk>
In-Reply-To: <YgVNJHTQufLu1sM5@sirena.org.uk>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Thu, 10 Feb 2022 21:21:42 +0300
Message-ID: <CAA8EJprrhame0zG4=4cFF7PBS0c9synjStLBingk58y7EJfV6w@mail.gmail.com>
Subject: Re: [PATCH 2/9] dt-bindings: i2c: qcom-cci: add description of a
 vbus-supply property
To:     Mark Brown <broonie@kernel.org>
Cc:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Wolfram Sang <wsa@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linus.walleij@linaro.org, Loic Poulain <loic.poulain@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, linux-i2c@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
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

On Thu, 10 Feb 2022 at 20:36, Mark Brown <broonie@kernel.org> wrote:
>
> On Thu, Feb 10, 2022 at 08:32:09PM +0300, Dmitry Baryshkov wrote:
> > On Thu, 10 Feb 2022 at 18:45, Mark Brown <broonie@kernel.org> wrote:
>
> > > I would hope it's a temporary thing given the namespace collision
> > > issues...
>
> > Which collision? CCI doesn't have a separate vbus power input (and
> > probably never will).
>
> That "probably" there is doing some work, and if you're doing something
> at the I2C core level (as it seems should be done) it needs to cope with
> all possible controllers and devices.
>
> > > Do these controllers actually have a supply called vbus?
>
> > No. It's a separate entity, a regulator-controller pull-up for the bus.
> > So far we'd like to hear better suggestions. Using regulator-always-on
> > doesn't sound like a good idea, it will increase unnecessary power
> > drain.
>
> Please see my suggestions elsewhere in the thread.

Please excuse me. I missed the e-mail suggesting to move support for
that into the core level.
I'd second a request to handle the adapter->bus_regulator in the core code.
Would you be ok with the 'external-sda-scl-supply' property? Would you
demand that it's completely handled by the core layer (including DT
parsing) or should we let a driver parse the DT property?


-- 
With best wishes
Dmitry
