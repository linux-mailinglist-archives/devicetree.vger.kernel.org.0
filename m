Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E26B02DE8F7
	for <lists+devicetree@lfdr.de>; Fri, 18 Dec 2020 19:37:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725957AbgLRSgi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Dec 2020 13:36:38 -0500
Received: from mail.kernel.org ([198.145.29.99]:56254 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728397AbgLRSgh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 18 Dec 2020 13:36:37 -0500
X-Gm-Message-State: AOAM531wRJ9tKtdubrmuvaNTz9ONJRlOzVI/l3vfpo/T64Z1JILKghcN
        pRmzAFx7sIus4OY/hqXQJgN29rcxfvBfyM3onw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1608316556;
        bh=q4+PJ050HZN1V0i+XmZmmwJSTmoGUL4+8qu2JX2NqyQ=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=GLdQEhr77WBIhWeVmSdEzTUniXq+TXmhsS5hlI/DOtOWN8sNfpOyDks1/k/umODeO
         bMoGLaXcBkfTim89Re01ikJdfKb5YZkHMmdYcfqRm9LsVttBhHrR+4aDrEeOaOFcd3
         hl2YyC7p0rMKtE+TNUVqbEu/Y5cdjrTOrK8FkvJQSXpdQL0XlryWuWUyTYx20PJeia
         gWo3v2szei7PSDbNObDbg3H11gCHmPfw/9y2az/b9Z9aqqy1tYzNWqHhwwLbDO5KYL
         megp4ZGCbI6hSyQ3XqsVol+eM+K1IIbQ56LPX2SCzKOtNWsPFNP4GYs7ucy+6nDiND
         dy5QtF5Laf9jw==
X-Google-Smtp-Source: ABdhPJxTx4RT12OgMAF/FqrkQiTVefQYzeVA1CgrP4EgtWC2+kQNKW3aGx+8zDPvIZTz7CXF8W8+Soa2ai/BKLDfa/k=
X-Received: by 2002:a50:f404:: with SMTP id r4mr5770822edm.62.1608316554964;
 Fri, 18 Dec 2020 10:35:54 -0800 (PST)
MIME-Version: 1.0
References: <20201202090522.251607-1-m.tretter@pengutronix.de>
 <6029fb9a-bacb-1db0-294f-096323374535@xilinx.com> <20201203084804.GA21858@pengutronix.de>
 <20201209183455.GA708305@robh.at.kernel.org> <3af6de09-9e3c-fee1-390a-dc13db0f20ba@xilinx.com>
In-Reply-To: <3af6de09-9e3c-fee1-390a-dc13db0f20ba@xilinx.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 18 Dec 2020 12:35:43 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJ5DpMBWBAygC=UQqmwEOU8f_otSJbp-d8nkZGiYYGWCA@mail.gmail.com>
Message-ID: <CAL_JsqJ5DpMBWBAygC=UQqmwEOU8f_otSJbp-d8nkZGiYYGWCA@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: xlnx,vcu-settings: fix dt_binding_check warnings
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     Michael Tretter <m.tretter@pengutronix.de>,
        devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 9, 2020 at 12:59 PM Michal Simek <michal.simek@xilinx.com> wrote:
>
> Hi Rob,
>
> On 09. 12. 20 19:34, Rob Herring wrote:
> > On Thu, Dec 03, 2020 at 09:48:04AM +0100, Michael Tretter wrote:
> >> On Thu, 03 Dec 2020 08:49:01 +0100, Michal Simek wrote:
> >>> On 02. 12. 20 10:05, Michael Tretter wrote:
> >>>> When running make dt_binding_check, the xlnx,vcu-settings binding
> >>>> triggers the following two warnings:
> >>>>
> >>>>    'additionalProperties' is a required property
> >>>>
> >>>>    example-0: vcu@a0041000:reg:0: [0, 2684620800, 0, 4096] is too long
> >>>>
> >>>> Fix the binding and make the checker happy.
> >>>>
> >>>> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> >>>> ---
> >>>>
> >>>> Hi,
> >>>>
> >>>> The xlnx,vcu-settings binding was reviewed [0] before the bot started to
> >>>> run automated tests on the device tree bindings, but now produces some
> >>>> warnings. The original patch that introduces the binding is still in
> >>>> Michal's tree and I am not entirely sure how to handle it, but here is a
> >>>> patch.
> >>>>
> >>>> Michael
> >>>>
> >>>> [0] https://lore.kernel.org/linux-arm-kernel/20200429213659.GA9051@bogus/
> >>>> ---
> >>>>  .../bindings/soc/xilinx/xlnx,vcu-settings.yaml    | 15 ++++++++++++---
> >>>>  1 file changed, 12 insertions(+), 3 deletions(-)
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> >>>> index 378d0ced43c8..cb245f400287 100644
> >>>> --- a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> >>>> +++ b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> >>>> @@ -26,9 +26,18 @@ required:
> >>>>    - compatible
> >>>>    - reg
> >>>>
> >>>> +additionalProperties: false
> >>>> +
> >>>>  examples:
> >>>>    - |
> >>>> -    xlnx_vcu: vcu@a0041000 {
> >>>> -          compatible = "xlnx,vcu-settings", "syscon";
> >>>> -          reg = <0x0 0xa0041000 0x0 0x1000>;
> >>>> +    fpga {
> >>>> +        #address-cells = <2>;
> >>>> +        #size-cells = <2>;
> >>>> +
> >>>> +        xlnx_vcu: vcu@a0041000 {
> >>>> +            compatible = "xlnx,vcu-settings", "syscon";
> >>>> +            reg = <0x0 0xa0041000 0x0 0x1000>;
> >>>> +        };
> >>>
> >>> IIRC we had been discussing this recently and Rob wanted to have just
> >>> 1/1 mapping here.
> >>>
> >>> Take a look at 0db958b689ca9.
> >>
> >> Thanks for the pointer.
> >>
> >> Rob: Is there some kind of rule, when to use a 1/1 mapping and when to add a
> >> bus with more cells? I still see several examples that add a bus with 2 cells.
> >> I assume that they more or less legacy, but I didn't find any discussion going
> >> beyond the commit description of 0db958b689ca9, which "just" fixes the
> >> warnings.
> >>
> >> I will send a v2, but I'd like to understand the rationale for having the 1/1
> >> mapping first.
> >
> > Simplifies the example is all.
> >
> > This one is fine as-is.
> >
> > Reviewed-by: Rob Herring <robh@kernel.org>
>
> I remember that we have been fixing that 2:2 mapping to 1:1 in past.
>
> And simplification in this case would be
> - reg = <0x0 0xa0041000 0x0 0x1000>;
> + reg = <0xa0041000 0x1000>;
>
> That's why I would like to know what we should be asking people to do.
> Or is it fine because it is the part of fpga node?

1:1 is my preference, but I'm not going to enforce either way.

Rob
