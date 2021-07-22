Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B31713D221E
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 12:32:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230410AbhGVJvn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jul 2021 05:51:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47768 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230367AbhGVJvm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jul 2021 05:51:42 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43BB5C061757
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 03:32:17 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id d1so3967653plg.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jul 2021 03:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nQ1eEZRSLoztR9oGZiRIl6wZybSjsReiwmSu0q04ypY=;
        b=Tzy7i8uBqDU5WkjECLstHTLuMa2ll1zWDSUtwXWnN97OOuCMXw+wdLllSBaRx9D84I
         Adzlr7jk7Iynjp7Xn00A/jm6WyHNCkPJvEg16R3ciXOQX6IF3BRgs2ni0zTdH+PzdZu2
         +W0Hrrb8qZeDnRcMAworXLZhjLfxSpWmhyBEmxAK7/f5XsQv5EF7fSjEsBvMU3MX/9qq
         wjVLPyiszIUBf/bu8s1blJHgIzi66lCZCsPBS3gI7DIaFjv4JYXTADz2y0/4lzO1/VAd
         1W7q2Ruc5bI7k5VtykqM04f6qsLu+8lIE6MrJ66LSqBSzP/HNYEZkFK+r0TIrVBqslr5
         +alg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nQ1eEZRSLoztR9oGZiRIl6wZybSjsReiwmSu0q04ypY=;
        b=RUrp+bdyE8rmjae41MfZzulwXY0zHnIb+3S2uDii6M09FpzDMqE2cOe34E/kPjoTio
         SWI0zt/RBV5nhBGb17zlztJxdWCxiB9iO4XLqvBTwha7udLXRCGPLgqQ56t6Uwkgdvl2
         GB/qMnz0MB1VqQsfrlVFm/f0Xbr3bPIikw08lAGqzTbAlcI+EGgh3hIcb9LbHw1yMh4F
         fGZLhVBTuok9FahtxlLG+2EFfeZbPaDW5ruEejmWAj36RzPu+03nERON2CHRkUTz9XAA
         4lhjTh44Heh6hYX0508zg1RikmWMv+hl1CoHNrHoTsXuS25SRp8lwgtGVAbDvc86yjrn
         9ayA==
X-Gm-Message-State: AOAM5314RtFOCnSFPCkl+C1GbZG4vWcKKmjq+8E+DWpmEPUP82bQ+Vuo
        apOQ/Do9ZUvPemYZ3NnuA2DRGg==
X-Google-Smtp-Source: ABdhPJyUM0Nh/ZZU8PlUBD7bVExz4En72F/n5jCdD9fyns8C1FqeX/qL28P0ibWHtUrOdOvk8BwMIQ==
X-Received: by 2002:a65:63c1:: with SMTP id n1mr40288329pgv.398.1626949936590;
        Thu, 22 Jul 2021 03:32:16 -0700 (PDT)
Received: from localhost ([106.201.108.2])
        by smtp.gmail.com with ESMTPSA id r128sm1625271pfc.155.2021.07.22.03.32.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jul 2021 03:32:16 -0700 (PDT)
Date:   Thu, 22 Jul 2021 16:02:14 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Arnd Bergmann <arnd@kernel.org>
Cc:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        "open list:DRM DRIVER FOR QEMU'S CIRRUS DEVICE" 
        <virtualization@lists.linux-foundation.org>
Subject: Re: [PATCH V2 1/5] dt-bindings: virtio: Add binding for virtio
 devices
Message-ID: <20210722103214.vwdsaj6577pi4bdz@vireshk-i7>
References: <cover.1626947324.git.viresh.kumar@linaro.org>
 <fced2f2b9dcf3f32f16866d7d104f46171316396.1626947324.git.viresh.kumar@linaro.org>
 <CAK8P3a1jqtu1BJmnfFLEgNXsPCfiTzd0sxwJBxdgNySmETBQSg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAK8P3a1jqtu1BJmnfFLEgNXsPCfiTzd0sxwJBxdgNySmETBQSg@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22-07-21, 12:28, Arnd Bergmann wrote:
> On Thu, Jul 22, 2021 at 11:57 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > Allow virtio device sub-nodes to be added to the virtio mmio or pci
> > nodes. The compatible property for virtio device must be of format
> > "virtio,<DID>", where DID is virtio device ID in hexadecimal format.
> >
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> Looks good to me overall. One question would be for the exact format of
> the 'compatible' string. After seeing this version, I would slightly prefer
> "virtio,device22" over "virtio,22". I think in the previous version
> we had mentioned both, but not actually decided on which one to use.

Right, so there were few doubts I had.
- Should I use "device" as well or not.
- Should I use hex value or decimal.

I went with what's already done with USB/PCI, and so dropped device
and used hex values.

I don't have any strong opinions about using or dropping "device", I
am fine with whatever You/Rob suggest.

-- 
viresh
