Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E4F45414C7C
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 16:54:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236288AbhIVO4S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 10:56:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35622 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236199AbhIVO4R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 10:56:17 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89F95C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 07:54:47 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id w1so3062312ilv.1
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 07:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aGsfFQms67z3DWxhubYarnuQaxcgC0ufqpReCHjs4NQ=;
        b=f3cCT6Ps7OWQR4FksT7+sX2KnBzte6EDv1u0bacbishSaTg4G7PmjictF5dnda5XBx
         qbLRZHkDb1N/rg6aVEa/pKo5vGEvCxu4ZOq1R/vDB7bkUzklxzbjXfExzWYvegBZTue0
         1C9MWVM+ExwkfFSyBu7TjLi3B6vUlebH7hv2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aGsfFQms67z3DWxhubYarnuQaxcgC0ufqpReCHjs4NQ=;
        b=izoE8AziQjfWglMzGfFPpBuhoc0LX5rbtYZSlrZLb+G0YtJ82sJB2ZM0BSdqc2cCMd
         dyPWVi6tl9mL5xcWFPvlCd3ghWOdPaz8lABI4QFOiZX1QWm8WRselmZuaQ/9j133k6EQ
         +oYz/CvWZOCxcBhEW4EIRyxP27y3Em5exMpltX3b2Z+k4o2/jX6bHetqq8ujsMcHNLYW
         2yokXLy6NsADInQSpR80Uuzzr2E1lfojp/Uy4muK6crOwdNuMHIY6siN5wOornu11zME
         FSSUVQiHksFrYjF+JOy9Xx3PR4mPWSi7Ehy9axpBgEx1j5adT2H7W0vBBI4MsMZhbl9x
         Icyg==
X-Gm-Message-State: AOAM530HR4mAdsJnhYjjWj4+vBKut8FSoOqwoiKLIAqiSbHtes7LmFQZ
        vG21yd53ECQwpboJAXjadGT++4dBV8BH9g==
X-Google-Smtp-Source: ABdhPJyxUeZdfgH91Sio2UiBpCTQ1hYkjdZPNBWglxoLWPAlRE6WwV/96NPKZj+WKw8nHkoVGD6lTg==
X-Received: by 2002:a92:6605:: with SMTP id a5mr50245ilc.17.1632322486517;
        Wed, 22 Sep 2021 07:54:46 -0700 (PDT)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com. [209.85.166.174])
        by smtp.gmail.com with ESMTPSA id y6sm1072950ilv.71.2021.09.22.07.54.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 07:54:45 -0700 (PDT)
Received: by mail-il1-f174.google.com with SMTP id d11so3004921ilc.8
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 07:54:44 -0700 (PDT)
X-Received: by 2002:a92:da0c:: with SMTP id z12mr75412ilm.120.1632322484455;
 Wed, 22 Sep 2021 07:54:44 -0700 (PDT)
MIME-Version: 1.0
References: <21d14dd0bfa945ee617ed4b86b4495ee@codeaurora.org>
In-Reply-To: <21d14dd0bfa945ee617ed4b86b4495ee@codeaurora.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 22 Sep 2021 07:54:32 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X=PUeahdf_bbTyCAZSeZ-ahRwZVvH-Oh=3wQmRxbt2CQ@mail.gmail.com>
Message-ID: <CAD=FV=X=PUeahdf_bbTyCAZSeZ-ahRwZVvH-Oh=3wQmRxbt2CQ@mail.gmail.com>
Subject: Re: [PATCH V9 4/8] arm64: dts: sc7280: Add QUPv3 wrapper_0 nodes
To:     Rajesh Patil <rajpat@codeaurora.org>
Cc:     Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        msavaliy@qti.qualcomm.com, satya priya <skakit@codeaurora.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Roja Rani Yarubandi <rojay@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Sep 22, 2021 at 5:31 AM <rajpat@codeaurora.org> wrote:
>
> >> +                       spi0: spi@980000 {
> >> +                               compatible = "qcom,geni-spi";
> >> +                               reg = <0 0x00980000 0 0x4000>;
> >> +                               clocks = <&gcc
> >> GCC_QUPV3_WRAP0_S0_CLK>;
> >> +                               clock-names = "se";
> >> +                               pinctrl-names = "default";
> >> +                               pinctrl-0 = <&qup_spi0_data_clk>,
> >> <&qup_spi0_cs>, <&qup_spi0_cs_gpio>;
> >
> > This should only have qup_spi0_data_clk and qup_spi0_cs, not
> > qup_spi0_cs_gpio. Both qup controlled and gpio controlled options are
> > provided in case a board wants to use the qup version of chipselect,
> > but
> > having them both used by default leads to conflicts and confusion. This
> > same comment applies to all spi pinctrl properties in this file. Please
> > keep the cs_gpio variants though so that boards can use them if they
> > want. They will be unused, but that's OK.
>
> Okay. Shall we remove only "<&qup_spiN_cs_gpio>" in each SPI node?

Right. So for this one:

pinctrl-0 = <&qup_spi0_data_clk>, <&qup_spi0_cs>;

-Doug
