Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BA2F62D31D6
	for <lists+devicetree@lfdr.de>; Tue,  8 Dec 2020 19:13:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730953AbgLHSNK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Dec 2020 13:13:10 -0500
Received: from mga02.intel.com ([134.134.136.20]:27995 "EHLO mga02.intel.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730495AbgLHSNK (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 8 Dec 2020 13:13:10 -0500
IronPort-SDR: xdE8xuk9x4B79DJHW8VXOuDHi04ebZkd7eq0CsDykPa3IvRDu/ckHY5e2ikTKBJfZ0hjC1oW1c
 2iDhO5skBB5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9829"; a="160993317"
X-IronPort-AV: E=Sophos;i="5.78,403,1599548400"; 
   d="scan'208";a="160993317"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2020 10:11:24 -0800
IronPort-SDR: /N7eHvVhIB2XWVuiGk32sRuWgu7ap1B1nX/UPdJmXK3+HP2qq1+d8fROUnqO50TNO0V//cEWH2
 TL1oABWSQZqg==
X-IronPort-AV: E=Sophos;i="5.78,403,1599548400"; 
   d="scan'208";a="370477310"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2020 10:11:22 -0800
Received: from andy by smile with local (Exim 4.94)
        (envelope-from <andriy.shevchenko@linux.intel.com>)
        id 1kmhTM-00Cso6-6l; Tue, 08 Dec 2020 20:12:24 +0200
Date:   Tue, 8 Dec 2020 20:12:24 +0200
From:   Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To:     Rob Herring <robh@kernel.org>
Cc:     vijayakannan.ayyathurai@intel.com, daniel.lezcano@linaro.org,
        tglx@linutronix.de, devicetree@vger.kernel.org,
        mgross@linux.intel.com, wan.ahmad.zainie.wan.mohamad@intel.com,
        lakshmi.bai.raja.subramanian@intel.com
Subject: Re: [PATCH v1 1/2] dt-bindings: timer: Add bindings for Intel Keem
 Bay SoC timer
Message-ID: <20201208181224.GM4077@smile.fi.intel.com>
References: <cover.1606377035.git.vijayakannan.ayyathurai@intel.com>
 <2938028520edbd0140805a22bdacd0b30c45b2df.1606377035.git.vijayakannan.ayyathurai@intel.com>
 <20201208161247.GA2620425@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201208161247.GA2620425@robh.at.kernel.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 08, 2020 at 10:12:47AM -0600, Rob Herring wrote:
> On Thu, Nov 26, 2020 at 06:34:08PM +0800, vijayakannan.ayyathurai@intel.com wrote:
> > From: Vijayakannan Ayyathurai <vijayakannan.ayyathurai@intel.com>
> > 
> > Add Device Tree bindings for the Timer IP, which used as clocksource and
> > clockevent in the Intel Keem Bay SoC.

...

> > +examples:
> > +  - |
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #define KEEM_BAY_A53_TIM
> > +
> > +    timer@20330010 {
> > +        compatible = "intel,keembay-timer";
> > +        reg = <0x20330010 0xc>,
> > +              <0x20331000 0xc>;
> > +        interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
> > +        clocks = <&scmi_clk KEEM_BAY_A53_TIM>;
> > +    };
> > +
> > +    counter@203300e8 {
> > +        compatible = "intel,keembay-counter";
> > +        reg = <0x203300e8 0xc>,
> > +              <0x20331000 0xc>;
> 
> You have overlapping reg regions here. Don't do that. Define the DT 
> in terms of the h/w, not how you want to split things for Linux.
> 
> It looks like a single h/w block providing multiple functions.

Actually a good catch.

Perhaps it needs to have a parent device that provides three resources (one
common and one per each of two functions) and in the driver it should consume
them accordingly. Though I'm not an expert in DT, does it sound correct from
your perspective?

> > +        clocks = <&scmi_clk KEEM_BAY_A53_TIM>;
> > +    };

-- 
With Best Regards,
Andy Shevchenko


