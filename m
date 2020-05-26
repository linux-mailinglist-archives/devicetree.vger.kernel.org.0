Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD11A1D7211
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2020 09:41:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726489AbgERHlr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 May 2020 03:41:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726800AbgERHlr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 May 2020 03:41:47 -0400
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com [IPv6:2607:f8b0:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEFB7C05BD0B
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 00:41:45 -0700 (PDT)
Received: by mail-pf1-x441.google.com with SMTP id x13so4562010pfn.11
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 00:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vl/yNZjcMD1c/8w4IMtaECL/pvXnUWzfoZmc+ar026A=;
        b=TmBG6giWbwVIC9tUDSKwKQOc4eTIGJj/0THBrYvUXtbMCfasbOJRefuXD05s/PdWbG
         vcdMKoExWaqNYfmgWV50I9uKpVjT42WbvR4GsvbfEZTXY5nklrevHHtWcgls9BoAbaj3
         S2YXt5PljMFoycc63XMFNy1sYf4C4nNR1YYvllTLMQU8L5JMqUhApGllKocQU5ia74Ct
         fx5k+HIRPX5cvfeAQ0x2tnZhQF1Hyly1PCjR/CydVJMBKsKKWpMiIw9KaWzbNpXVzcAs
         0bVI27oGcFakKTl26QXyJKfFsBy0yK8FwdKsrf0g3e4Dji9QGEQ/KGIKK7D+hFlBnubC
         8aZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vl/yNZjcMD1c/8w4IMtaECL/pvXnUWzfoZmc+ar026A=;
        b=gfSOoL/kptYxaQZjumMLPzhpi00BEN8E8HYX8jBcSxPOzjTT9BpR9BSIw8pASZhkAA
         cCitWw9PKtCFCE37YO/sBGvkk5P5AoxcK1t6hF5GWWVb9G7Rszm8XJHpFvHQCsB4L2ud
         F06hfIRj38Zk1kEVQaf/XMhfWtylXtTrBuQRLXJsm51iatlGr0rfFwmuulh0YZeWyhEH
         DmDedt/Izi8C/4epTkOaDqLmq2PjVCIPSGaHp3tLTT9oaaVFsP+8k3oDNnoVbYF97sEd
         eKwzzo4H+TkIIYxnkQpoa4UdHc8eJT1ovOE1ow4FOu0jhYQkYAPPfLqVBioDCk1kUQ/Y
         PGKg==
X-Gm-Message-State: AOAM532Tg7K3PCaEP3yNvEWLJHVyzchPiSmGxl5IsD/qLQCc65xot3e7
        S660C/cidyB5TT/sDvMFmBFbQg==
X-Google-Smtp-Source: ABdhPJxzGzk9dwqPrwn0vS7w9SSlMvWCIUihqqEg7nXaXOZHfOXoO1dVlbeIPRntGnTxGam1CoQggA==
X-Received: by 2002:a63:de0c:: with SMTP id f12mr13551773pgg.172.1589787705397;
        Mon, 18 May 2020 00:41:45 -0700 (PDT)
Received: from localhost ([122.167.130.103])
        by smtp.gmail.com with ESMTPSA id p62sm7994891pfb.93.2020.05.18.00.41.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 00:41:44 -0700 (PDT)
Date:   Mon, 18 May 2020 13:11:42 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc:     "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
        Serge Semin <fancer.lancer@gmail.com>,
        Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Matthias Kaehlcke <mka@chromium.org>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        Paul Burton <paulburton@kernel.org>,
        Ralf Baechle <ralf@linux-mips.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>, linux-mips@vger.kernel.org,
        devicetree@vger.kernel.org, stable@vger.kernel.org,
        Frederic Weisbecker <frederic@kernel.org>,
        Ingo Molnar <mingo@kernel.org>, Yue Hu <huyue2@yulong.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 20/20] cpufreq: Return zero on success in boost sw
 setting
Message-ID: <20200518074142.c6kbofpdlxro2pjz@vireshk-i7>
References: <20200306124807.3596F80307C2@mail.baikalelectronics.ru>
 <20200506174238.15385-1-Sergey.Semin@baikalelectronics.ru>
 <20200506174238.15385-21-Sergey.Semin@baikalelectronics.ru>
 <c5109483-4c14-1a0c-efa9-51edf01c12de@intel.com>
 <20200516125203.et5gkv6ullkerjyd@mobilestation>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200516125203.et5gkv6ullkerjyd@mobilestation>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16-05-20, 15:52, Serge Semin wrote:
> On Fri, May 15, 2020 at 05:58:47PM +0200, Rafael J. Wysocki wrote:
> > > @@ -2554,7 +2554,7 @@ static int cpufreq_boost_set_sw(int state)
> > >   			break;
> > >   	}
> > > -	return ret;
> > > +	return ret < 0 ? ret : 0;
> > >   }
> > >   int cpufreq_boost_trigger_state(int state)
> > 
> > IMO it is better to update the caller of this function to handle the
> > positive value possibly returned by it correctly.
> 
> Could you elaborate why? Viresh seems to be ok with this solution.

And it is absolutely fine for Rafael to not agree with it :)

> As I see it the caller doesn't expect the positive value returned by the
> original freq_qos_update_request(). It just doesn't need to know whether the
> effective policy has been updated or not, it only needs to make sure the
> operations has been successful. Moreover the positive value is related only
> to the !last! active policy, which doesn't give the caller a full picture
> of the policy change anyway. So taking all of these into account I'd leave the
> fix as is.

Rafael: This function is called via a function pointer, which can call
this or a platform dependent routine (like in acpi-cpufreq.c), and it
would be reasonable IMO for the return of that callback to only look
for 0 or negative values, as is generally done in the kernel. And so
this solution looked okay to me as the positive return is coming from
the implementation detail here.

-- 
viresh
