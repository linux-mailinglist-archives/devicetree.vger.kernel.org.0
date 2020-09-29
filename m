Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AE7A527D92B
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 22:45:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728820AbgI2Upp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 16:45:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726643AbgI2Upo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 16:45:44 -0400
Received: from mail-ed1-x542.google.com (mail-ed1-x542.google.com [IPv6:2a00:1450:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC67EC061755
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 13:45:42 -0700 (PDT)
Received: by mail-ed1-x542.google.com with SMTP id a12so8023521eds.13
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 13:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=IPuDiMukoFFx9vd/qNwUu+f2dM4kRAs66+/ExMLA9jo=;
        b=SUxVchMv3pZ1zIx198KqTdqi5Fm/bGW+HYIZZ7Box5azQSWUxOtBXCp1KvVGfoDrYe
         Febq6wajtsdA2zP4eIwvqOnDRItFKbWyV78WXE5QSXrWC7hy+TGaQFe9BZTGIHABljC1
         3/4lZznikDCd2+OgwuNfdwlQnFmy3hCG98hOeqnPuKCQ+Qrst8yKhCdSzJUIr8QPedfG
         Vq8841rrM/CoxDpF7602tamydW/JQRqXwxV+kuCFQED0D5SnIwKDjTIujPuQi6gplQuC
         rGYqS2LWCM5FX3T+vFktEWtKPpma+U11YItCeovDGLS5hSX67wJiXE4lpKzuhAyZ2qXU
         ukBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=IPuDiMukoFFx9vd/qNwUu+f2dM4kRAs66+/ExMLA9jo=;
        b=Zq2Wq1ROV+linEiDgSyX/10L4vUcA/iutKH901EcSWQ4i0vHR+a5poOP2xSy4cWsOz
         zTdYzzqQYLTjQKQxwD1vH35Hd7G8/JYcfuo+wSJ8sbUT9vDcQA0sFJ8yQgPiq4XfUuFZ
         ccGt2ilTOeGa6AifR0nqtDrpXJJGIGLH44dmo/MGvINuv0EKq1+L/NxtaeGZn4cPxR1Q
         2qPIenyN9xqv1kx3sGJU2Eq6xGvBEHCcp5VOkZWy42b11TOLxVr2ejhr3COPfG9kx1Ub
         uTCOMzNIsS60JzYW1tJTLF+wK5tT2ReTCS8/ZkqnAZPzaUaPLe3nCelzbqWhYoAVxRXk
         k2dQ==
X-Gm-Message-State: AOAM532FIoIkj+OVkRBzSsG4QHr//WvB2YI36spW9r8ZlCmCW1JgUhzO
        g0FzoFKZduP2FXZGch1N07Q=
X-Google-Smtp-Source: ABdhPJw2H4MDNvakfyRohA/O4Fe61x5VdBNcFUeeGaiSkq4gE1LklGF+H9f2wuMfCsBohdCQnAfqTg==
X-Received: by 2002:a50:fa91:: with SMTP id w17mr2960763edr.256.1601412341579;
        Tue, 29 Sep 2020 13:45:41 -0700 (PDT)
Received: from BV030612LT (oi48z9.static.otenet.gr. [79.129.51.141])
        by smtp.gmail.com with ESMTPSA id r9sm5681680ejc.102.2020.09.29.13.45.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 13:45:40 -0700 (PDT)
Date:   Tue, 29 Sep 2020 23:45:33 +0300
From:   Cristian Ciocaltea <cristian.ciocaltea@gmail.com>
To:     Lee Jones <lee.jones@linaro.org>
Cc:     kernel test robot <lkp@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, kbuild-all@lists.01.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/6] mfd: Add MFD driver for ATC260x PMICs
Message-ID: <20200929204533.GA35053@BV030612LT>
References: <7705c965d82a21571f93f38aeabbd3bcb3d23bac.1598043782.git.cristian.ciocaltea@gmail.com>
 <202008221153.JTuVUmjB%lkp@intel.com>
 <20200929094857.GF6148@dell>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200929094857.GF6148@dell>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lee,

On Tue, Sep 29, 2020 at 10:48:57AM +0100, Lee Jones wrote:
> On Sat, 22 Aug 2020, kernel test robot wrote:
> 
> > Hi Cristian,
> > 
> > Thank you for the patch! Yet something to improve:
> > 
> > [auto build test ERROR on lee-mfd/for-mfd-next]
> > [also build test ERROR on regulator/for-next v5.9-rc1 next-20200821]
> > [cannot apply to input/next power-supply/for-next]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Cristian-Ciocaltea/Add-initial-support-for-ATC260x-PMICs/20200822-062126
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
> > config: sh-allmodconfig (attached as .config)
> > compiler: sh4-linux-gcc (GCC) 9.3.0
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=sh 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All errors (new ones prefixed by >>, old ones prefixed by <<):
> > 
> > WARNING: modpost: missing MODULE_LICENSE() in drivers/mfd/atc260x-core.o
> > >> FATAL: modpost: drivers/mfd/atc260x-i2c: sizeof(struct i2c_device_id)=24 is not a modulo of the size of section __mod_i2c__<identifier>_device_table=588.
> > >> Fix definition of struct i2c_device_id in mod_devicetable.h
> > 
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> Is this something you plan to fix?

Yes, I was just waiting to get some initial feedback for the drivers
code before submitting a new revision. Except for the MFD core, I think
this is almost completed.

> -- 
> Lee Jones [李琼斯]
> Senior Technical Lead - Developer Services
> Linaro.org │ Open source software for Arm SoCs
> Follow Linaro: Facebook | Twitter | Blog

Kind regards,
Cristi
