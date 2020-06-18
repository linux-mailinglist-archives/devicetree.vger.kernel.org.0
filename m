Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6BB481FF3A4
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2020 15:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728057AbgFRNs0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Jun 2020 09:48:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730294AbgFRNs0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Jun 2020 09:48:26 -0400
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com [IPv6:2607:f8b0:4864:20::944])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C640C0613EF
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2020 06:48:25 -0700 (PDT)
Received: by mail-ua1-x944.google.com with SMTP id b10so2019806uaf.0
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2020 06:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=CpHy4ZRqt4vTzluMmipLOM1I/DLh0EwjsdNnc3s1SIg=;
        b=eC+MKw65pcbP1d26NYOHLWaBWSwkLLCE9cI07VO97OTuchUg0GA+7RDfpJ5Xaq3CMQ
         gsyETWKCUKyjJj07ULiDGDCHYss4q+UDbrxJuOjt7NdthhPuciIGS1XpXNa3sBD8+9Ap
         WBCYcgAGtLBnyFlpYvkGY2eL7YuB2VsdAu0tc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=CpHy4ZRqt4vTzluMmipLOM1I/DLh0EwjsdNnc3s1SIg=;
        b=TvHJ0wRNhwiCEgwlnm2Fg3QtkpJLnO5D1as9147Ufdg8ZOiNsCPtgrf4qH5hX7sxkz
         T4dUxzT+CU+XIRy2DB2AtWSJjWh3CEkIGj5NJpCRDsxnUWKtXjfcR25lXBVXbTVbkXWF
         CZcWS4Ht/TBgWhwEbGBQ6vq7LLtHpspqnokDX7gjF6LI4XPBy+6FXDERmFdkL96SKi6o
         w4WxY1oWgmtLCJrxQm6XKU1uk45jZJS935pGtWxLcAKAuZdqnaYSQzKfufLgtt9KG5U5
         T6DJ8ojcb1LwbBpUJMbVVMIfbw9pSlDg9jtJa3bwyqErfMrKC6wv0vCZZWu/ySiCcu0r
         YovQ==
X-Gm-Message-State: AOAM531vDzsr5ugLqb6mH7og810F0E3Bd/5BfNunqneWjlKVY2I97S0W
        /2frpxW6LUcN+V4zY3GONaS2HGKJCGw=
X-Google-Smtp-Source: ABdhPJykFK1JdtwhJwP4eg2HtM868FLOArlfS8mUf5QvmB9+m+pb289uEJjUHkvo5HL0Z5wK1XR5wQ==
X-Received: by 2002:ab0:2414:: with SMTP id f20mr3011785uan.80.1592488103255;
        Thu, 18 Jun 2020 06:48:23 -0700 (PDT)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id v201sm338667vkv.2.2020.06.18.06.48.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Jun 2020 06:48:20 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id q69so1436269vkq.10
        for <devicetree@vger.kernel.org>; Thu, 18 Jun 2020 06:48:20 -0700 (PDT)
X-Received: by 2002:a1f:ee81:: with SMTP id m123mr3227978vkh.51.1592488099550;
 Thu, 18 Jun 2020 06:48:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200617145116.247432-1-dianders@chromium.org>
 <20200617074930.v3.2.I3b5c3bfaf5fb2d28d63f1b5ee92980900e3f8251@changeid>
 <254998b9-c45e-bd6b-bc9a-b5934c0fea8e@linaro.org> <CAD=FV=Vec5FVrDVkmUQTfa6bP+1d3yOtj_FsgVAFdHLLbZ8VDA@mail.gmail.com>
 <db6cc914-0520-5286-f852-473fc63bd6c7@linaro.org>
In-Reply-To: <db6cc914-0520-5286-f852-473fc63bd6c7@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 18 Jun 2020 06:48:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UZAtJY42jwSZy+Z+O3AdZqDxnjY1zzOswqQRDY91uPpA@mail.gmail.com>
Message-ID: <CAD=FV=UZAtJY42jwSZy+Z+O3AdZqDxnjY1zzOswqQRDY91uPpA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: nvmem: Add properties needed for
 blowing fuses
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Andy Gross <agross@kernel.org>, dhavalp@codeaurora.org,
        mturney@codeaurora.org, Rajendra Nayak <rnayak@codeaurora.org>,
        Ravi Kumar Bokka <rbokka@codeaurora.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        sparate@codeaurora.org, mkurumel@codeaurora.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 18, 2020 at 3:10 AM Srinivas Kandagatla
<srinivas.kandagatla@linaro.org> wrote:
>
> +Adding SBoyd.
>
> On 17/06/2020 18:22, Doug Anderson wrote:
> > Hi,
> >
> > On Wed, Jun 17, 2020 at 8:19 AM Srinivas Kandagatla
> > <srinivas.kandagatla@linaro.org> wrote:
> >>
> >>
> >>
> >> On 17/06/2020 15:51, Douglas Anderson wrote:
> >>> From: Ravi Kumar Bokka <rbokka@codeaurora.org>
> >>>
> >>> On some systems it's possible to actually blow the fuses in the qfprom
> >>> from the kernel.  Add properties to support that.
> >>>
> >>> NOTE: Whether this is possible depends on the BIOS settings and
> >>> whether the kernel has permissions here, so not all boards will be
> >>> able to blow fuses in the kernel.
> >>>
> >>> Signed-off-by: Ravi Kumar Bokka <rbokka@codeaurora.org>
> >>> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> >>> ---
> >>>
> >>> Changes in v3:
> >>> - Add an extra reg range (at 0x6000 offset for SoCs checked)
> >>> - Define two options for reg: 1 item or 4 items.
> >>> - No reg-names.
> >>> - Add "clocks" and "clock-names" to list of properties.
> >>> - Clock is now "sec", not "secclk".
> >>> - Add "vcc-supply" to list of properties.
> >>> - Fixed up example.
> >>>
> >>>    .../bindings/nvmem/qcom,qfprom.yaml           | 45 ++++++++++++++++++-
> >>>    1 file changed, 43 insertions(+), 2 deletions(-)
> >>>
> >>> diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> >>> index 5efa5e7c4d81..b195212c6193 100644
> >>> --- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> >>> +++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
> >>> @@ -17,8 +17,27 @@ properties:
> >>>        const: qcom,qfprom
> >>>
> >>>      reg:
> >>> -    items:
> >>> -      - description: The corrected region.
> >>> +    # If the QFPROM is read-only OS image then only the corrected region
> >>> +    # needs to be provided.  If the QFPROM is writable then all 4 regions
> >>> +    # must be provided.
> >>> +    oneOf:
> >>> +      - items:
> >>> +          - description: The corrected region.
> >>> +      - items:
> >>> +          - description: The corrected region.
> >>> +          - description: The raw region.
> >>> +          - description: The config region.
> >>> +          - description: The security control region.
> >>> +
> >>> +  # Clock must be provided if QFPROM is writable from the OS image.
> >>> +  clocks:
> >>> +    maxItems: 1
> >>
> >>
> >>> +  clock-names:
> >>> +    const: sec
> >>
> >> Do we need clock-names for just one clock here?
> >
> > I think technically you can get by without, but convention is that
> > clock-names are always provided for clocks.  It's talked about in the
> > same link I sent that talked about reg-names:
> >
> > https://lore.kernel.org/r/CAL_Jsq+MMunmVWqeW9v2RyzsMKP+=kMzeTHNMG4JDHM7Fy0HBg@mail.gmail.com/
> >
>
> TBH, This is total confusion!!!
>
> when to use "*-names" Device tree bindings is totally depended on Linux
> Subsystem interfaces!
>
> And what is the starting point to draw this line?

Definitely confusing and mostly because the dts stuff grew organically
for a while there.  It does feel like Rob is pretty clear on the
current state of things and the policy in the link I provided, though.


> > Specifically, Rob said:
> >
> >> That probably is because the clock binding has had clock-names from
> >> the start (it may have been the first one). That was probably partly
> >> due to the clock API also was mainly by name already if we want to
> >> admit Linux influence on bindings
> >
> > Basically the standard way for getting clocks in Linux is
> > clk_get(name).  With just one clock you can call clk_get(NULL) and I
> > believe that works, but when you add the 2nd clock then you have to
> > switch APIs to one of the less-commonly-used variants.
>
> In previous NON-DT life clk_get api name argument comes from the clk
> names that clk provider registered the clocks with.
>
> If I remember this correctly, the name that is refereed here for
> clk_get() is old clkdev api based on clk_lookups and is not the same as
> clk-names that we have in Device tree. Atleast in this case!
>
> clk-names has two objectives in DT:
> 1> To find the index of the clock in the clocks DT property.
>
> 2> If actual clk name is specified then if "1" fails then name could
> potentially fallback to use old clkdev based clk_lookups.
>
> In this specific case we have "sec" as clock-names which is totally used
> for indexing into clocks property and it can not be used for (2) as
> there is no clk named "sec" registered by any of the clk providers.
>
> So this does not justify the reasoning why "clock-names" should be used
> while "reg-names" should not be used!. Both of them are going to be
> finally used for indexing into there respective properties.

Right, you just have to accept the fact that logic doesn't come into
play here.  For clocks, always use "clk-names" but also always use a
consistent order (which is now more enforced by the schema checker).
For "reg" almost never use "reg-names".


> This also brings in greater confusion for both existing and while adding
> bindings with "*-names" for new interfaces.
>
> Rob, can you please provide some clarity and direction on when to
> use/not-use *-names properties!

If I had to guess Rob will say that we shouldn't add more places where
the convention is to have "-names".


I will put posting v4 of this patch on pause until this is resolved to
avoid fragmenting the discussion.


-Doug
