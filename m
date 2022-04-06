Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A577C4F6768
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:39:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239194AbiDFRkw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:40:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239467AbiDFRkq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:40:46 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8950EF7AF
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 09:31:05 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id d29so4026355wra.10
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 09:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-description:content-disposition:in-reply-to;
        bh=qaoX3BjDFO/GNif1Q+vixm8BqZ3Y/mPSstxwcqbf+5M=;
        b=nzD4KPaDH2mgfvo+qK8CjNMSL2p1TvJqIFu4vK92ISRWzJ3cm4PX5UsaYwqqGRDQwZ
         1e1gjQLwrvhSRMT8QltmVssl9iPVUls34C2vABSMwE8XVSd3SiRdipGiDkMA7JiIzQ2N
         39foFjiTmMZsPIT9FRPrWW7m+NKuVGKN6ESZJ19dAV/UBh3HK0qFmm8TNAEzLgA+VhzE
         BhvG2wQslbHaqK7PeGLRFnmvf3rlRdbDCWLT1aOb0XTzOpadAPWzPyaDcD8+Wsa0tQkK
         WBqTKT3VZIA80/I13fKAw6dAbfLf3uyJxXU3kk2NMsc1olkgbA9edGb9txNea8q/nwws
         fB5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-description:content-disposition:in-reply-to;
        bh=qaoX3BjDFO/GNif1Q+vixm8BqZ3Y/mPSstxwcqbf+5M=;
        b=B4rcNKWcZVuSVexGa4kmoxQRcmTUh/HorwTZHxG7qd/jmQJTHeKSujz2xrhGCl+lMv
         sC6zG6ysI92guetPLXV2GIDwfj6juY1xKw22SlhGlMUWnEOpcdovGxgKj73nEyYGe4JX
         OLfc0a0UnftX11GYupY9HGKzBtBHm0av1M6TJIqxXzal/oZb4iZXCrMyOeKcMKrZXWyI
         myCuGI6D9NjxdVLyHw9qQIQT4twBnXTVaqo46C1ZUcQg07WHwobUI57+B3qDcm4dayGI
         zTHXvPznXudyCvsG4q8YXlyfEAPxaDdMH1oEmrQj4Sgn9D0xfzlWg78gC8BLNh7cMFMt
         62ow==
X-Gm-Message-State: AOAM533vMeEMj/KASTX2r9QCz3NKVvgJZzSlXBFm+/nyJagXsK3mNHBm
        xHTxwvjLRjdHCjtDVrkOvJdDDw==
X-Google-Smtp-Source: ABdhPJxIplzr6FuJ/+l8FoWo/Mx+c3Rm9vItr1Sjh/CkS39HFoS7t5tFYfCVDkCFzGH6wfLaKdukEw==
X-Received: by 2002:a05:6000:144d:b0:205:8905:4cc1 with SMTP id v13-20020a056000144d00b0020589054cc1mr7435082wrx.508.1649262664158;
        Wed, 06 Apr 2022 09:31:04 -0700 (PDT)
Received: from google.com (216.131.76.34.bc.googleusercontent.com. [34.76.131.216])
        by smtp.gmail.com with ESMTPSA id e12-20020a5d6d0c000000b001a65e479d20sm18214727wrq.83.2022.04.06.09.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 09:31:03 -0700 (PDT)
Date:   Wed, 6 Apr 2022 16:31:02 +0000
From:   Sebastian Ene <sebastianene@google.com>
To:     Guenter Roeck <linux@roeck-us.net>
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org,
        will@kernel.org, qperret@google.com, maz@kernel.org
Subject: Re: [PATCH 2/2] watchdog: Add a mechanism to detect stalls on guest
 vCPUs
Message-ID: <Yk3ARqLLPssVIM2/@google.com>
References: <20220405141954.1489782-1-sebastianene@google.com>
 <20220405141954.1489782-3-sebastianene@google.com>
 <20220405211551.GB2121947@roeck-us.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Description: evicetree@vger.kernel.org,
Content-Disposition: inline
In-Reply-To: <20220405211551.GB2121947@roeck-us.net>
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

On Tue, Apr 05, 2022 at 02:15:51PM -0700, Guenter Roeck wrote:
> Sebastian,
> 

Hello Guenter,

> On Tue, Apr 05, 2022 at 02:19:55PM +0000, Sebastian Ene wrote:
> > This patch adds support for a virtual watchdog which relies on the
> > per-cpu hrtimers to pet at regular intervals.
> > 
> 
> The watchdog subsystem is not intended to detect soft and hard lockups.
> It is intended to detect userspace issues. A watchdog driver requires
> a userspace compinent which needs to ping the watchdog on a regular basis
> to prevent timeouts (and watchdog drivers are supposed to use the
> watchdog kernel API).
> 

Thanks for getting back ! I wanted to create a mechanism to detect
stalls on vCPUs and I am not sure if the current watchdog subsystem has a way
to create per-CPU binded watchdogs (in the same way as Power PC has
kernel/watchdog.c). 
The per-CPU watchdog is needed to account for time that the guest is not
running(either scheduled out or waiting for an event) to prevent spurious
reset events caused by the watchdog.

> What you have here is a CPU stall detection mechanism, similar to the
> existing soft/hard lockup detection mechanism. This code does not
> belong into the watchdog subsystem; it is similar to the existing
> hard/softlockup detection code (kernel/watchdog.c) and should reside
> at the same location.
>

I agree that this doesn't belong to the watchdog subsytem but the current
stall detection mechanism calls through MMIO into a virtual device
'qemu,virt-watchdog'. Calling a device from (kernel/watchdog.c) isn't
something that we should avoid ?

> Having said that, I could imagine a watchdog driver to be used in VMs,
> but that would be similar to existing watchdog drivers. The easiest way
> to get there would probably be to just instantiate one of the watchdog
> devices already supported by qemu.
>

I am looking forward for your response,

> Guenter

Cheers,
Sebastian
