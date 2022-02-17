Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E818F4B95E2
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 03:29:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231590AbiBQC3R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 21:29:17 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:53632 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231591AbiBQC3Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 21:29:16 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 008D829E96A
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 18:29:01 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id a11-20020a17090a740b00b001b8b506c42fso8180954pjg.0
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 18:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kUsrl8epLlmjlG8q6yYYqardM1YS21a8liGhoAKKr30=;
        b=Aeot2pk2uSzp6e8cOf9yD6zX/HkQ77vHr1AqJ8mm2uQ7XCesxIGnZmg7F43qZ5gcL/
         gCzvwKABHXksPQqZZHLwOopW4Qxmgk28F4zSfxXoOBTyU9n8obbX1LOXwJHucquU9kTf
         CGaPP/svmLVbMFuxGlt58cS3CxQ8T9jdNk0ZjcOud8VFZVgdnP1ZAf8/QcsakSNAafcF
         9OFkovsgDYqRhCcqM3C/c9UlywC0/zzI6g+xvjhYP+WV/s6JhTX677YZUGtjUBwLR1pi
         vrcmFmsZq1LFOLuHjgn1PnjdcT1xUFCfQaYztq98/2R1kI0orpkhu9/8/lRfeI+j+jqT
         CeQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kUsrl8epLlmjlG8q6yYYqardM1YS21a8liGhoAKKr30=;
        b=Vf3d/EfeYQyGDfdI9zcB1pXsvRMfjRnr/uS6vnHSI6F+hqi+NS83sfGVial123RLEu
         Fk3mlVlavf3Z1h3CFgRaBheUAEnQbLdenXJ2RYyCkzBpQWpUl4CW8iYRPtugvG4AotA2
         PYM4S4Ttb9qBLKbR6thZP753XWD4D1lc1CCmrpS4C1n+9spMsALWrLdbTsVllwLIFHYE
         Z5qCgEFmushxOvjC0b+u/JA2eaLWS5tOnTtqSFsX33pSsbOHRf6c/+qgYa3KbCJ92YLM
         gXdSVEIJIP7m/AuLRBfVsjIsCLh5n5LELHzl42QTLYmwmKR0xP8ORPMtyYcnHr+9bodq
         Txvg==
X-Gm-Message-State: AOAM532QVYCmPoxDCPzcquMyjIIfz5cOQ0pYPjTTOmAh7ipQxMxz81Dz
        euycupNypzkpThtUPi2SDboyVtDe2uDnUA==
X-Google-Smtp-Source: ABdhPJx8l/LrL92FGypZrTLkXD1CE66Bv9TCVg8SGHG3SKuA42gK/ttd/Y/tzphB/eZCELksQmICmg==
X-Received: by 2002:a17:902:b78b:b0:14f:69f:d6e1 with SMTP id e11-20020a170902b78b00b0014f069fd6e1mr851133pls.85.1645064941356;
        Wed, 16 Feb 2022 18:29:01 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id v187sm16289066pfv.101.2022.02.16.18.28.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 16 Feb 2022 18:29:00 -0800 (PST)
Date:   Thu, 17 Feb 2022 10:28:53 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Marc Zyngier <maz@kernel.org>
Cc:     Thomas Gleixner <tglx@linutronix.de>,
        Maulik Shah <quic_mkshah@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 1/3] cpuidle: psci: Call cpu_cluster_pm_enter() on the
 last CPU
Message-ID: <20220217022851.GB31965@dragon>
References: <20220216132830.32490-1-shawn.guo@linaro.org>
 <20220216132830.32490-2-shawn.guo@linaro.org>
 <b690d382d989bd99eaf870e79f63cfb9@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b690d382d989bd99eaf870e79f63cfb9@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 16, 2022 at 02:39:26PM +0000, Marc Zyngier wrote:
> On 2022-02-16 13:28, Shawn Guo wrote:
> > Make a call to cpu_cluster_pm_enter() on the last CPU going to low power
> > state (and cpu_cluster_pm_exit() on the firt CPU coming back), so that
> > platforms can be notified to set up hardware for getting into the
> > cluster
> > low power state.
> > 
> > Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
> > ---
> >  drivers/cpuidle/cpuidle-psci.c | 13 +++++++++++++
> >  1 file changed, 13 insertions(+)
> > 
> > diff --git a/drivers/cpuidle/cpuidle-psci.c
> > b/drivers/cpuidle/cpuidle-psci.c
> > index b51b5df08450..c748c1a7d7b1 100644
> > --- a/drivers/cpuidle/cpuidle-psci.c
> > +++ b/drivers/cpuidle/cpuidle-psci.c
> > @@ -37,6 +37,7 @@ struct psci_cpuidle_data {
> >  static DEFINE_PER_CPU_READ_MOSTLY(struct psci_cpuidle_data,
> > psci_cpuidle_data);
> >  static DEFINE_PER_CPU(u32, domain_state);
> >  static bool psci_cpuidle_use_cpuhp;
> > +static atomic_t cpus_in_idle;
> > 
> >  void psci_set_domain_state(u32 state)
> >  {
> > @@ -67,6 +68,14 @@ static int __psci_enter_domain_idle_state(struct
> > cpuidle_device *dev,
> >  	if (ret)
> >  		return -1;
> > 
> > +	if (atomic_inc_return(&cpus_in_idle) == num_online_cpus()) {
> > +		ret = cpu_cluster_pm_enter();
> > +		if (ret) {
> > +			ret = -1;
> > +			goto dec_atomic;
> > +		}
> > +	}
> > +
> >  	/* Do runtime PM to manage a hierarchical CPU toplogy. */
> >  	rcu_irq_enter_irqson();
> >  	if (s2idle)
> > @@ -88,6 +97,10 @@ static int __psci_enter_domain_idle_state(struct
> > cpuidle_device *dev,
> >  		pm_runtime_get_sync(pd_dev);
> >  	rcu_irq_exit_irqson();
> > 
> > +	if (atomic_read(&cpus_in_idle) == num_online_cpus())
> > +		cpu_cluster_pm_exit();
> > +dec_atomic:
> > +	atomic_dec(&cpus_in_idle);
> >  	cpu_pm_exit();
> > 
> >  	/* Clear the domain state to start fresh when back from idle. */
> 
> Is it just me, or does anyone else find it a bit odd that a cpuidle driver
> calls back into the core cpuidle code to generate new events?

It's not uncommon that a platform driver calls some helper functions
provided by core.

> Also, why is this PSCI specific? I would assume that the core cpuidle code
> should be responsible for these transitions, not a random cpuidle driver.

The CPU PM helpers cpu_pm_enter() and cpu_cluster_pm_enter() are provided
by kernel/cpu_pm.c rather than cpuidle core.  This PSCI cpuidle driver
already uses cpu_pm_enter(), and my patch is making a call to
cpu_cluster_pm_enter().

Shawn
