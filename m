Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07144442609
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 04:29:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231613AbhKBDbp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 23:31:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34166 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbhKBDbo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 23:31:44 -0400
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F617C061714
        for <devicetree@vger.kernel.org>; Mon,  1 Nov 2021 20:29:10 -0700 (PDT)
Received: by mail-qt1-x836.google.com with SMTP id h14so16981617qtb.3
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 20:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LbZDx6RLiMrCpFDLIQL6rmuGnSugSGQ3Nvv9b+v8Ry4=;
        b=cPps30E1mKIRTCIRPCKk1MzXMjmCw+8/NnxEtqligTCGSQAdqEdZk5va84NsYgNItL
         RyVJ/ITqL9aA8wskWFq1pKuGXXXmuCF1qfHJ5jkSgimf+arTork/++r+6K75lFjds+WN
         DI32nXAnGIekBEv6cQ2OKUF7NwjJTuFvvwZ9s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LbZDx6RLiMrCpFDLIQL6rmuGnSugSGQ3Nvv9b+v8Ry4=;
        b=JgdCU0AiyZoq4FXdpDxdBwSJu+ysy00mmSBN1GyutwHbLFTMnqyEAn4rsObmxhypWe
         Smb91xQDgjkmIScpPJEGvMTA29L40zpa8jU/P2/ldLCCEd9nusK4ZHkLxFhwNcvbBJOy
         4GY9NO7tduCR0aOqU30dIy3XSQOyHj3MYr4QJagh5vXs1B0k9JV9j/U+52RJiXSG3Oc/
         5rWMiAV1flLc9wugUneKgGWswR+0ur0fiIJfqxVOwryIVGhirCIJx9OhEiw4csdAb8Bk
         2mKkLMnLzXctxcQsWpCFbXZ50dsF1XKL8fONdaH+ULybUguWFT2Q0AkPFcijOxOcLzHA
         n0iw==
X-Gm-Message-State: AOAM533FXsR62jOYKc99udrxG8ZbSOFK8TtOIAl01iV6/qrOxDj79wOc
        I6A4QttREDBtyc2vyBPpm7MdQKK4j3r9UdPAjqw=
X-Google-Smtp-Source: ABdhPJz/yhS9s3prGdIS4/h5cMOgyU9mocT/KpsW4wd3ZxMd0KgkaRpGR1li6TnoBvwaNd+ckUHx8iZKpGqxkLyskjg=
X-Received: by 2002:ac8:5cd5:: with SMTP id s21mr10724169qta.392.1635823749370;
 Mon, 01 Nov 2021 20:29:09 -0700 (PDT)
MIME-Version: 1.0
References: <20211101233751.49222-1-jae.hyun.yoo@intel.com>
 <20211101233751.49222-5-jae.hyun.yoo@intel.com> <HK0PR06MB3779F8E273396ED805EE5D81918B9@HK0PR06MB3779.apcprd06.prod.outlook.com>
In-Reply-To: <HK0PR06MB3779F8E273396ED805EE5D81918B9@HK0PR06MB3779.apcprd06.prod.outlook.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Tue, 2 Nov 2021 03:28:57 +0000
Message-ID: <CACPK8XesLdb+Cbi3ZYrOahRHbXQi3L=cQXax=RV2=PrjiPQBew@mail.gmail.com>
Subject: Re: [PATCH -next 4/4] ipmi: kcs_bmc_aspeed: add clock control logic
To:     ChiaWei Wang <chiawei_wang@aspeedtech.com>
Cc:     "jae.hyun.yoo@intel.com" <jae.hyun.yoo@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Corey Minyard <minyard@acm.org>,
        Andrew Jeffery <andrew@aj.id.au>,
        Cedric Le Goater <clg@kaod.org>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
        "openipmi-developer@lists.sourceforge.net" 
        <openipmi-developer@lists.sourceforge.net>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Jenmin Yuan <jenmin_yuan@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 2 Nov 2021 at 03:16, ChiaWei Wang <chiawei_wang@aspeedtech.com> wrote:
>
> Hi Jae,
>
> > From: linux-arm-kernel <linux-arm-kernel-bounces@lists.infradead.org> On
> >
> > From: Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>
> >
> > If LPC KCS driver is registered ahead of lpc-ctrl module, LPC KCS block will be
> > enabled without heart beating of LCLK until lpc-ctrl enables the LCLK. This
> > issue causes improper handling on host interrupts when the host sends
> > interrupts in that time frame.
> > Then kernel eventually forcibly disables the interrupt with dumping stack and
> > printing a 'nobody cared this irq' message out.
> >
> > To prevent this issue, all LPC sub drivers should enable LCLK individually so this
> > patch adds clock control logic into the LPC KCS driver.
>
> Have all LPC sub drivers could result in entire LPC block down if any of them disables the clock (e.g. driver unload).
> The LPC devices such as SIO can be used before kernel booting, even without any BMC firmware.
> Thereby, we recommend to make LCLK critical or guarded by protected clock instead of having all LPC sub drivers hold the LCLK control.
>
> The previous discussion for your reference:
> https://lkml.org/lkml/2020/9/28/153

Please read the entire thread. The conclusion:

https://lore.kernel.org/all/CACPK8XdBmkhZ8mcSFmDAFV8k7Qj7ajBL8TVKfK8c+5aneUMHZw@mail.gmail.com/

That is, for the devices that have a driver loaded can enable the
clock. When they are unloaded, they will reduce the reference count
until the last driver is unloaded. eg:

https://elixir.bootlin.com/linux/latest/source/drivers/clk/clk.c#L945

There was another fork to the thread, where we suggested that a
protected clocks binding could be added:

https://lore.kernel.org/all/160269577311.884498.8429245140509326318@swboyd.mtv.corp.google.com/

If you wish to use this mechanism for eg. SIO clocks, then I encourage
Aspeed to submit a patch to do that.

Cheers,

Joel
