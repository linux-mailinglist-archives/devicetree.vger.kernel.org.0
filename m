Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 569DB462F69
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 10:17:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240062AbhK3JUd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 04:20:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235740AbhK3JUd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 04:20:33 -0500
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFEAAC061574
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 01:17:14 -0800 (PST)
Received: by mail-pl1-x636.google.com with SMTP id v19so14409253plo.7
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 01:17:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cdX6A1B5FYXvrq6GJV0YBVlp97dMwQwcIHjH9Wf1ufU=;
        b=ZjuLRQOMAT7WsXjIjUpfKyDjKfSriisHOWn84BNPoX//4OzbATCiitw4h23o/3akvC
         pmZDPIgox6mnmpVTBFUiOaj3hO9BMEEoTt1SMOJEh8SiyBFdMWHly3ve6bTncPd1JVV8
         N1aDnDQyGSC1fUmVBFv1QuzNWA98hr7JEiXlgSb77xYMqlj55Is0sG2ILuV1GXLOid7t
         O86PduJcXjVSxsckkXakUKJkVwsIImC1lOzy/uyyQGcmJ8KmFCk2D6w0xax6k93pGdHg
         8CEHvc4hQvkiAsZnnBFuH1bx65QFd+xbTPmBfuOOb2OTgAVHeCZroJ8RZYPBxlAaHWrN
         l3GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cdX6A1B5FYXvrq6GJV0YBVlp97dMwQwcIHjH9Wf1ufU=;
        b=jMuus6X7sD4r5blnnL4ylTeFAXghMf/mUjtJ/s59J2NhxAzfGuo8gBVqSQObRZEd/p
         DBSXXOoElHAqYrmQVRFb8L1GxF1IKGqNXaEm3ORW41Yy/1d+4Fh4wqMLq11Yntght2pk
         KmNRZJ8nOaJZOUg6MlRfjeFfEgwGKAhKNZ4ShMkn8qJitrGmC2L6OM0pOcOV4zudmzu+
         uTR2M7cIJnw7Vik7O2HBaup2JMQmd0fzFJ4IGgC9kei2OGhgHd3G+5F+hcftX9ByNLKv
         mmWGIvIvk4TpklvDM4rCYaG+lT1jWGqrzer6moUMzqosTWZv0cMoSISZwxDF26aAFWGW
         1uWA==
X-Gm-Message-State: AOAM531I7ZHdAbQxcEQs+0SDOSrUSJflabWiWrCCVahB75aGC8htHxPM
        Z0L8FXmjVLvKQDhN+Y1WCk9qPw==
X-Google-Smtp-Source: ABdhPJxZ0d6DI+rwXpa12JxqlibfO3+bSPMnVrI6gQ8Em74++9wmd81F3t9IE+xmM/N8gMAWPqfiLQ==
X-Received: by 2002:a17:903:1d2:b0:142:24f1:1213 with SMTP id e18-20020a17090301d200b0014224f11213mr67001494plh.81.1638263834413;
        Tue, 30 Nov 2021 01:17:14 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id j7sm1854952pjf.41.2021.11.30.01.17.12
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 30 Nov 2021 01:17:14 -0800 (PST)
Date:   Tue, 30 Nov 2021 17:17:08 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Marc Zyngier <maz@kernel.org>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Maulik Shah <quic_mkshah@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] irqchip: Add Qualcomm MPM controller driver
Message-ID: <20211130091708.GH10105@dragon>
References: <20211126093529.31661-1-shawn.guo@linaro.org>
 <20211126093529.31661-3-shawn.guo@linaro.org>
 <87czmmbu8k.wl-maz@kernel.org>
 <20211129133308.GB10105@dragon>
 <87pmqjm1c8.wl-maz@kernel.org>
 <20211130023151.GD10105@dragon>
 <87lf16m3ua.wl-maz@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87lf16m3ua.wl-maz@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 30, 2021 at 08:42:53AM +0000, Marc Zyngier wrote:
> On Tue, 30 Nov 2021 02:31:52 +0000,
> Shawn Guo <shawn.guo@linaro.org> wrote:
> > 
> > + Maulik
> > 
> > On Mon, Nov 29, 2021 at 03:24:39PM +0000, Marc Zyngier wrote:
> > [...]
> > > > > > @@ -430,6 +430,14 @@ config QCOM_PDC
> > > > > >  	  Power Domain Controller driver to manage and configure wakeup
> > > > > >  	  IRQs for Qualcomm Technologies Inc (QTI) mobile chips.
> > > > > >  
> > > > > > +config QCOM_MPM
> > > > > > +	bool "QCOM MPM"
> > > > > 
> > > > > Can't be built as a module?
> > > > 
> > > > The driver is implemented as a builtin_platform_driver().
> > > 
> > > This, on its own, shouldn't preclude the driver from being built as a
> > > module. However, the config option only allows it to be built in. Why?
> > 
> > I just tried to build it as a module, and it seems that "irq_to_desc" is
> > only available for built-in build.
> 
> Yet another thing that you should not be using. The irqdomain code
> gives you everything you need without having to resort to the
> internals of the core IRQ infrastructure.

I see.  I should use irq_get_irq_data() rather than &desc->irq_data.

> 
> > > Furthermore, why would you look up anywhere other than the wake-up
> > > domain? My impression was that only these interrupts would require
> > > being re-triggered.
> > 
> > Both domains have MPM pins that could wake up system.
> 
> Then why do you need two domains?

This is basically the same situation as qcom-pdc, and I have some
description about that in the commit log:

- For given SoC, a fixed number of MPM pins are supported, e.g. 96 pins
  on QCM2290.  Each of these MPM pins can be either a MPM_GIC pin or
  a MPM_GPIO pin. The mapping between MPM_GIC pin and GIC interrupt
  is defined by SoC, as well as the mapping between MPM_GPIO pin and
  GPIO number.  The former mapping can be found as the SoC data in this
  MPM driver, while the latter can be found as the msm_gpio_wakeirq_map[]
  in TLMM driver.

- Two irq domains are created for a single irq_chip to handle MPM_GIC
  and MPM_GPIO pins respectively, i.e. MPM_GIC domain and MPM_GPIO domain.
  The former is a child domain of GIC irq domain, while the latter is
  a parent domain of TLMM/GPIO irq domain.

Shawn
