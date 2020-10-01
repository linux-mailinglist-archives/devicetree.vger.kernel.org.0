Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2659328088E
	for <lists+devicetree@lfdr.de>; Thu,  1 Oct 2020 22:40:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387398AbgJAUka (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Oct 2020 16:40:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730008AbgJAUka (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Oct 2020 16:40:30 -0400
Received: from mail-vk1-xa43.google.com (mail-vk1-xa43.google.com [IPv6:2607:f8b0:4864:20::a43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DC687C0613E2
        for <devicetree@vger.kernel.org>; Thu,  1 Oct 2020 13:40:29 -0700 (PDT)
Received: by mail-vk1-xa43.google.com with SMTP id e5so39476vkm.2
        for <devicetree@vger.kernel.org>; Thu, 01 Oct 2020 13:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CpqtefYRObu1FEKmxeMO9SEOBqtBM7OcMS8gCbom+4g=;
        b=NuSBvqifaloJ9Izw7NJIfbEVsg1AENReTiyPJpqc7CgU+rYJLsh7SsQhSQQY0DRaiE
         iP/X+xTTtJU9vw13M9iQt0cSV2eolmnDwf6GbmJvcUZwJjVl9z4D5w9VwINIZBAgW1hv
         kWY+FH9GyKNDnbpqe/r7USGJ2XJtaVyQXKVfE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CpqtefYRObu1FEKmxeMO9SEOBqtBM7OcMS8gCbom+4g=;
        b=Ry09JoOdX0jJ9BmcRpJMqZhb/Sj0QzENSFQSrmx5vW6zAKry7O2frRbhlqO1WLsWj0
         xWO+Dhn81Dfs+510bZQIdTcQHYC3obfvvrykA6XMLBURd7X7HdySGCUgHcwHNoPtam2R
         kRCOCwU2JK0YnDl4frCCowHzPUKhwCFnnCqTaBVxwIjPfqGvJP5FSeFD8uSLXjPKhamF
         P3j1d5qSGE5vPtZVKQ77KGtnVIFgVJcXLUnU6YfC6cb5bWiV5+Pmma4LheY/7EJKbHDA
         yP/FUS67xtp2ii9l4BCl/vXD/CYiORFN56C8gAkLxQqEdF5jwfKdWTo5XOmOF6vshRIa
         +ZLw==
X-Gm-Message-State: AOAM53245FAS6gYmDzoADcSTXTohHSkuvC6dYk/J/ma+YJqXeVCnHaij
        RtG3ikgDJ0DZBD1a46EV7m3xU+vy00ZF4w==
X-Google-Smtp-Source: ABdhPJyLuNsrcF26l4AEjtsXfNlFHKVPY/Nf11jrGS0+EWeuFjwtniwRX+Nv8xvE4OUw8Yp2maIqQw==
X-Received: by 2002:a1f:d986:: with SMTP id q128mr6684231vkg.7.1601584828519;
        Thu, 01 Oct 2020 13:40:28 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id p186sm932470vkf.35.2020.10.01.13.40.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Oct 2020 13:40:26 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id g11so31987vsp.13
        for <devicetree@vger.kernel.org>; Thu, 01 Oct 2020 13:40:26 -0700 (PDT)
X-Received: by 2002:a67:8bc2:: with SMTP id n185mr7285582vsd.49.1601584825983;
 Thu, 01 Oct 2020 13:40:25 -0700 (PDT)
MIME-Version: 1.0
References: <1598970026-7199-1-git-send-email-rnayak@codeaurora.org>
 <34ed34bd-90fd-0e84-6020-c487d612ad2f@codeaurora.org> <aec87de2-500d-763c-df01-c0daec56b1e2@linaro.org>
In-Reply-To: <aec87de2-500d-763c-df01-c0daec56b1e2@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 1 Oct 2020 13:40:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U=OCQpVL6VOVd4B6rW7HFC5S-wGauMAsOdvzwjLzKLuw@mail.gmail.com>
Message-ID: <CAD=FV=U=OCQpVL6VOVd4B6rW7HFC5S-wGauMAsOdvzwjLzKLuw@mail.gmail.com>
Subject: Re: [PATCH v6 0/5] DVFS support for Venus
To:     Stanimir Varbanov <stanimir.varbanov@linaro.org>
Cc:     Rajendra Nayak <rnayak@codeaurora.org>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Linux Media Mailing List <linux-media@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
        Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Sep 16, 2020 at 12:26 AM Stanimir Varbanov
<stanimir.varbanov@linaro.org> wrote:
>
> Hi,
>
> On 9/16/20 8:33 AM, Rajendra Nayak wrote:
> >
> > On 9/1/2020 7:50 PM, Rajendra Nayak wrote:
> >> Rob, can you pick PATCH 1 since its already reviewed by you.
> >> Stan, Patch 2 and 3 will need to be picked by you and they both have
> >> your ACKs
> >
> > Rob/Stan, any plans to get the patches merged for 5.10?
>
> 2/5 and 3/5 are queued up for v5.10 through media tree.

Normally I'd expect device tree bindings (patch #1) to go through the
same tree as the driver changes.  Does the media tree work
differently?  If you're expecting Rob Herring to land the device tree
binding change, is he aware?


-Doug
