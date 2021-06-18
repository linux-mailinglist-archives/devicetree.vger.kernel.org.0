Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 315593AC3EE
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 08:32:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231631AbhFRGes (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 02:34:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231282AbhFRGes (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 02:34:48 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B71DC061574
        for <devicetree@vger.kernel.org>; Thu, 17 Jun 2021 23:32:38 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id x24so14692460lfr.10
        for <devicetree@vger.kernel.org>; Thu, 17 Jun 2021 23:32:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FcqiM6OKoI9kz5wi4xxOdBHKAWW28rWhb54WENTCYlg=;
        b=as0jcEU2Kw4vkeFE9aQYOArqSa433Qcii85hTVwoWOm1lj5H2Q/pzP+059YsRJhLdC
         eTERXFkcC+sRTzDUKybkwsVujdqr+hY3rO8f4j0L2lPXNbNldXWJ0Xa2hkgr+/X/6xF7
         DmxiDcEMOvsQdahRV0GMXc8McRfczsfsUqGbc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FcqiM6OKoI9kz5wi4xxOdBHKAWW28rWhb54WENTCYlg=;
        b=VmhdSVtGisiOM19qQADWjzUx7WzimPw4ohCOfxJq9Pz7kbrwYv6II7ShlU0n2YXsMY
         u9ksWrMGWw+hRBteih6wywD06zX4bncGByK5aCjYC+VbgyMBYxtK/nmVifrn6SDXlT3F
         SruJm6+9nWPyrsX+X2CXgttIT2Fw2P48gI/ZISVf7U6ahYnScVMydVGfVVyKd4uoNj7i
         wpbs6FtR6DP+F67BjoAUQ0g+YqSdjwikOQXWyTQSXVouvvh1TZ/I55OZBLdF62xfvH62
         STbR7Y0Vd3DuzL/Xt0CLca4gR4+QQEgrJjoe+BE0/S9smkGvTMSuih78PfWBBrMtkCS2
         B41w==
X-Gm-Message-State: AOAM532GumPogsPpv/osO+AQV7ojSYbM+WGE/YwzWuJkqDdVdprLFc4b
        SY6NrbORo2oshxXJgL/1kbmCtIVz9k6pcCC9sqmtBQ==
X-Google-Smtp-Source: ABdhPJz9n25XQXeae5FgmLVYRSWumiYzvEvvgvJUqRLfLsqolm6mHnftZfZe24scZrNt+nSJwTtlDhigDROdPGjiHR4=
X-Received: by 2002:a19:f809:: with SMTP id a9mr1983941lff.342.1623997956967;
 Thu, 17 Jun 2021 23:32:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210524122053.17155-1-chun-jie.chen@mediatek.com>
 <20210524122053.17155-2-chun-jie.chen@mediatek.com> <20210602171201.GA3566462@robh.at.kernel.org>
 <66e017401ab93aa02c5d2bbf11be9589b36649ac.camel@mediatek.com>
 <1f59ed31-4a0e-9719-bf84-1fe4cdd6c57d@gmail.com> <162334689784.9598.2709970788186333494@swboyd.mtv.corp.google.com>
 <de082c64-ace3-30b5-7404-1f4b607a83e1@gmail.com> <c8e8535cef67adeaefcfe943bbd8287806921e03.camel@mediatek.com>
In-Reply-To: <c8e8535cef67adeaefcfe943bbd8287806921e03.camel@mediatek.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 18 Jun 2021 14:32:25 +0800
Message-ID: <CAGXv+5HcV6jbyDdZGzRX-2NHMztSONBKxmLxLQX6k+aQrwJ1ww@mail.gmail.com>
Subject: Re: [PATCH v9 01/22] dt-bindings: ARM: Mediatek: Add new document
 bindings of imp i2c wrapper controller
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Chun-Jie Chen <chun-jie.chen@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Weiyi Lu <weiyi.lu@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 16, 2021 at 2:34 AM Chun-Jie Chen
<chun-jie.chen@mediatek.com> wrote:
>
> On Fri, 2021-06-11 at 11:56 +0200, Matthias Brugger wrote:
> >
> > On 10/06/2021 19:41, Stephen Boyd wrote:
> > > Quoting Matthias Brugger (2021-06-08 07:45:49)
> > > >
> > > >
> > > > On 07/06/2021 07:20, Chun-Jie Chen wrote:
> > > > > On Wed, 2021-06-02 at 12:12 -0500, Rob Herring wrote:
> > > > > > > +
> > > > > > > +description:
> > > > > > > +  The Mediatek imp i2c wrapper controller provides
> > > > > > > functional
> > > > > > > configurations and clocks to the system.
> > > > > > > +
> > > > > > > +properties:
> > > > > > > +  compatible:
> > > > > > > +    items:
> > > > > > > +      - enum:
> > > > > > > +          - mediatek,mt8192-imp_iic_wrap_c
> > > > > > > +          - mediatek,mt8192-imp_iic_wrap_e
> > > > > > > +          - mediatek,mt8192-imp_iic_wrap_s
> > > > > > > +          - mediatek,mt8192-imp_iic_wrap_ws
> > > > > > > +          - mediatek,mt8192-imp_iic_wrap_w
> > > > > > > +          - mediatek,mt8192-imp_iic_wrap_n
> > > > > >
> > > > > > Looks to me like these are all the same h/w, but just have
> > > > > > differing
> > > > > > sets of clocks. That's not really a reason to have different
> > > > > > compatibles.
> > > > > >
> > > > > > If you need to know what clocks are present, you can walk the
> > > > > > DT for
> > > > > > all 'clocks' properties matching this clock controller
> > > > > > instance. Or
> > > > > > use
> > > > > > 'clock-indices' to define which ones are present.
> > >
> > > Is the idea to use clock-indices and then list all the clock ids in
> > > there and match them up at driver probe time to register the clocks
> > > provided by the IO region? Feels like we'll do a lot of parsing at
> > > each
> > > boot to match up structures and register clks with the clk
> > > framework.
> > >
> > > If it's like other SoCs then the clk id maps to a hard macro for a
> > > type
> > > of clk, and those hard macros have been glued together with other
> > > clks
> > > and then partitioned into different IO regions to make up a clock
> > > controller. Or maybe in this case, those clk hard macros have been
> > > scattered into each IP block like SPI, i2c, uart, etc. so that the
> > > clock
> > > controller doesn't really exist and merely the gates and rate
> > > control
> > > (mux/divider) for the clk that's clocking some particular IP block
> > > all
> > > live inside the IP wrapper. If it's this case then I hope there are
> > > a
> > > bunch of PLLs that are fixed rate so that the i2c clk doesn't have
> > > to go
> > > outside the wrapper to change frequency (of which there should be
> > > two
> > > "standard" frequencies anyway).
> > >
> > > > > >
> > > > > > Rob
> > > > >
> > > > > Some module is divided to sub-modules which are designed in
> > > > > different
> > > > > h/w blocks for different usage, and if we want to use the same
> > > > > compatible to present these h/w blocks, we need to move the
> > > > > clock data
> > > > > provided by these h/w blocks to dts, but we usually use
> > > > > different
> > > > > compatible to get the h/w blocks data in
> > > > > Mediatek's clock driver, so do you suggest to register clock
> > > > > provided
> > > > > by different h/w blocks using same compatible?
> > > > >
> > > >
> > > > The mapping of them is as following:
> > > > imp_iic_wrap_c:  11007000
> > > > imp_iic_wrap_e:  11cb1000
> > > > imp_iic_wrap_s:  11d03000
> > > > imp_iic_wrap_ws: 11d23000
> > > > imp_iic_wrap_w:  11e01000
> > > > imp_iic_wrap_n:  11f02000
> > > >
> > >
> > > Sure. What is their purpose though? Are they simply a bunch of
> > > different
> > > i2c clks?
> > >
> >
> > That would be need to be answered by MediaTek as I don't have access
> > to any
> > documentation.
> >
> > Regards,
> > Matthias
>
> We describe which clock controllers are exist in dts and
> get the clock data provided by clock controller in driver data
> by matching device compatible.
>
> The clock data contains several clocks which includes the clock index,
> parent clock source and the details of reg control inside the IP block
> of clock controller.
>
> In MT8192 platform, some IP block is divide to several sub-blocks and
> each sub-block provides clock control by itself.

Some more information:

Based on what I read in the datasheets, I'm guessing that MediaTek groups
the I2C controllers into several groups and places them in different parts
of the die. The suffix of imp_iic_wrap_XXX is likely pointing to the
placement of the group. And the imp_iic_wrap_XXX is what the name suggests
a wrapper around the group of I2C controllers. The wrapper contains clock
and reset controls, as well as other things that I can't make out.


ChenYu
