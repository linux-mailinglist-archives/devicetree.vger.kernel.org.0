Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB14C56BB70
	for <lists+devicetree@lfdr.de>; Fri,  8 Jul 2022 16:04:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238356AbiGHOBv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jul 2022 10:01:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237944AbiGHOBu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jul 2022 10:01:50 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C733717586
        for <devicetree@vger.kernel.org>; Fri,  8 Jul 2022 07:01:49 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id d13-20020a05600c34cd00b003a2dc1cf0b4so705530wmq.4
        for <devicetree@vger.kernel.org>; Fri, 08 Jul 2022 07:01:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=sQeYOB1ojPLloG2yUNPgzIcTyy1DnXOTtgypeXwq+gY=;
        b=IZzeUSCueAHAz6a15+CqVSw+a5LNSOnfHLCejApOWnmeWNfoomRfySA9+XUsYrjVn4
         A85BgVGBsqfODidj7unlzA55BA5sl0QRsOwqQlpQ4Qfd9cIK98RrcP2mm/gYuxkk2ivs
         +bc/4s1T8KYhc5hOM18d00Xns+1SAc6gnN0SWYON1ekZ77xIjsJwt5hlhWVWTFkZYPQJ
         vW0/fwNElPPn2gmQbjRw9V76qlMxtx02Q3YNI9CHM1ng/a890yxUfA8HMyg9YswATI6v
         kIaitNr12Y8n1Q0L8LLyB0dD3fub35zp2CFFTYBUeQy/T3itUSzzu47+JHkQ2gIDaVOH
         m3MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=sQeYOB1ojPLloG2yUNPgzIcTyy1DnXOTtgypeXwq+gY=;
        b=uOC1UarmiZDmjw/m+oWJtvDIU4K335/Y87EZ98uYRZzWkz6QyCaqacRHNaXPkGOikm
         DpDk9XnKCKUx/LUAcG4zrwqJy25NCQrVPc42BylJVTwjEAPZKrHlQ3yIXQVVjmlRW+zZ
         cDv00051nR5+t1wfedtPQZFW6j2ytgC0H2ZrjOgLVRlE9dHAVj0c5Dski2gl5OWT+YkR
         wCH2OSgUT+gT/RNW93XqBHI19EQRAdqwywP8jnexoV+fXNbor1S5hoseWYtNnbphD00E
         9JxI04ORbuFB3OilepdAJrfpK8MJ3jPMPaHEzXvjPBRlgTIPd3LEFCBvlQN1eo4SbhCc
         /m6w==
X-Gm-Message-State: AJIora8jSaECwqfVX75S3a+V25rbfwS7ExP7Pe1s4gYYxOO9EeVQsTk/
        p+UTOGlm5ppKwHADNLeTCaNLuQ==
X-Google-Smtp-Source: AGRyM1tVT2Lp3bxp/fPMlGxWzal1VMrwHpSWDBq35jltBIxUVl0tmy7YX6v0aUz2rlHqFFI+3mUhfQ==
X-Received: by 2002:a05:600c:58d:b0:3a0:4547:43a6 with SMTP id o13-20020a05600c058d00b003a0454743a6mr4039844wmd.146.1657288908247;
        Fri, 08 Jul 2022 07:01:48 -0700 (PDT)
Received: from google.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id n20-20020a05600c4f9400b0039c5ab7167dsm2146210wmq.48.2022.07.08.07.01.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Jul 2022 07:01:47 -0700 (PDT)
Date:   Fri, 8 Jul 2022 14:01:46 +0000
From:   Sebastian Ene <sebastianene@google.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Dragan Cvetic <dragan.cvetic@xilinx.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        maz@kernel.org, will@kernel.org, vdonnefort@google.com,
        Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v11 2/2] misc: Add a mechanism to detect stalls on guest
 vCPUs
Message-ID: <Ysg4ynnMN+izdXkN@google.com>
References: <20220708112344.1965947-1-sebastianene@google.com>
 <20220708112344.1965947-3-sebastianene@google.com>
 <Ysg1axKEaLgG+uQa@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Ysg1axKEaLgG+uQa@kroah.com>
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 08, 2022 at 03:47:23PM +0200, Greg Kroah-Hartman wrote:
> On Fri, Jul 08, 2022 at 11:23:45AM +0000, Sebastian Ene wrote:
> > This driver creates per-cpu hrtimers which are required to do the
> > periodic 'pet' operation. On a conventional watchdog-core driver, the
> > userspace is responsible for delivering the 'pet' events by writing to
> > the particular /dev/watchdogN node. In this case we require a strong
> > thread affinity to be able to account for lost time on a per vCPU.
> > 
> > This part of the driver is the 'frontend' which is reponsible for
> > delivering the periodic 'pet' events, configuring the virtual peripheral
> > and listening for cpu hotplug events. The other part of the driver is
> > an emulated MMIO device which is part of the KVM virtual machine
> > monitor and this part accounts for lost time by looking at the
> > /proc/{}/task/{}/stat entries.
> > 
> > Reviewed-by: Will Deacon <will@kernel.org>
> > Signed-off-by: Sebastian Ene <sebastianene@google.com>
> > ---
> >  drivers/misc/Kconfig               |  14 ++
> >  drivers/misc/Makefile              |   1 +
> >  drivers/misc/vcpu_stall_detector.c | 223 +++++++++++++++++++++++++++++
> >  3 files changed, 238 insertions(+)
> >  create mode 100644 drivers/misc/vcpu_stall_detector.c
> > 
> > diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> > index 41d2bb0ae23a..d5b7610459f7 100644
> > --- a/drivers/misc/Kconfig
> > +++ b/drivers/misc/Kconfig
> > @@ -483,6 +483,20 @@ config OPEN_DICE
> >  
> >  	  If unsure, say N.
> >  
> > +config VCPU_STALL_DETECTOR
> > +	tristate "Guest vCPU stall detector"
> > +	select LOCKUP_DETECTOR

Hi Greh,

> 
> This should be a "depends on", not a select, right?  This got enabled on
> my build when I didn't want it to, and trying to track down why it was
> enabled would be a pain for people.

Thanks for noticing it ! I think we can completely remove this
because it was needed in (v9) for the `watchdog_cpumask` and currently
we are not using it anymore.

> 
> thanks,
> 
> greg k-h

Thanks,
Seb
