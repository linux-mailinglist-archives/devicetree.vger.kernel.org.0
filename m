Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29B1827C1A0
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 11:49:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725710AbgI2JtC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 05:49:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725497AbgI2JtC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 05:49:02 -0400
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com [IPv6:2a00:1450:4864:20::341])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D01E3C061755
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 02:49:01 -0700 (PDT)
Received: by mail-wm1-x341.google.com with SMTP id q9so3967347wmj.2
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 02:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=qKgppTswcH/i8YOUnUUtArNbaIhsF8It8d6gIIhqsNg=;
        b=N+/CmWkdH8dzD3kQoo/cVLygV/YRevx4rKlEOjqIEZex5DaBMfEQjHL1n0KEB1DpHY
         +Ce260v2IRZMiADZDWWIB5FTgocbBLlzZuS8by/jyfuzr+ZuW7ecg91koB0BToLggsuA
         PQYrL2b67QSxYaHpeHfYpwldJ+hMZ9NjPQuDtZTZsHtURC1GyJctXeUjTucMXdZ7an0n
         o7rh+34+vGWTggh+MPUsZEdGotcNbUIcvhdxLhfjR9mS8GQCa7VqDxkiMNEy/utEwqie
         HbO1sfYNFKQokdARYNPNZo3dsI+33uqafYdueP9E655HDsOmBjZcReHWF/phdeQX+SHI
         1+IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=qKgppTswcH/i8YOUnUUtArNbaIhsF8It8d6gIIhqsNg=;
        b=rbVzoavvnbLXEgka4oIUEQu7uH+hvOCvOw9xnroLu/EndidGTC7AUkIoQLZTHZqp9C
         tF0IkoYCG+sjsHu14s4b9bQD2TWNYhf8KZF6+DyjPLOa/H+UbmyhnWaO+4maumR/nibS
         NOpLjf0t6XUmFLW0/xv0lMqV8lAT/ow/PftpAIIHk9WcZr3Or3roPnfx393aIuDv824v
         Tt35ym1li+6kYsWOdIAs8Xeh/DIJAKjwzJaI0AnMDGAKPQVK9ATe1yLJS0mI0ue6Fue1
         FrIrg/qPSO+QoeV2v1OgCcoYS1/nwwfzKpfcKNLQrjBpRzRjZpc6Vfscbxku7iNCrf98
         sOfw==
X-Gm-Message-State: AOAM531uJ+suMxssnq/OUaqTWim2evr83AKdvTRvd7RkL24WkVUdJKQR
        dFzkvCY7QNgBMEbW4Vf6OQz2Dg+ZCEEeXw==
X-Google-Smtp-Source: ABdhPJzCfG5rZ4v625cQ/u231U9hQ1X9lcEzE46+3GwQaEhfLhP/WyxHY6a6K/L60a+Stdr7M/CiZQ==
X-Received: by 2002:a1c:7714:: with SMTP id t20mr3576106wmi.186.1601372940496;
        Tue, 29 Sep 2020 02:49:00 -0700 (PDT)
Received: from dell ([91.110.221.236])
        by smtp.gmail.com with ESMTPSA id m23sm4552947wmi.19.2020.09.29.02.48.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 02:48:59 -0700 (PDT)
Date:   Tue, 29 Sep 2020 10:48:57 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     kernel test robot <lkp@intel.com>
Cc:     Cristian Ciocaltea <cristian.ciocaltea@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Sebastian Reichel <sre@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, kbuild-all@lists.01.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Andreas =?iso-8859-1?Q?F=E4rber?= <afaerber@suse.de>,
        linux-actions@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/6] mfd: Add MFD driver for ATC260x PMICs
Message-ID: <20200929094857.GF6148@dell>
References: <7705c965d82a21571f93f38aeabbd3bcb3d23bac.1598043782.git.cristian.ciocaltea@gmail.com>
 <202008221153.JTuVUmjB%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <202008221153.JTuVUmjB%lkp@intel.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 22 Aug 2020, kernel test robot wrote:

> Hi Cristian,
> 
> Thank you for the patch! Yet something to improve:
> 
> [auto build test ERROR on lee-mfd/for-mfd-next]
> [also build test ERROR on regulator/for-next v5.9-rc1 next-20200821]
> [cannot apply to input/next power-supply/for-next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Cristian-Ciocaltea/Add-initial-support-for-ATC260x-PMICs/20200822-062126
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
> config: sh-allmodconfig (attached as .config)
> compiler: sh4-linux-gcc (GCC) 9.3.0
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=gcc-9.3.0 make.cross ARCH=sh 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>, old ones prefixed by <<):
> 
> WARNING: modpost: missing MODULE_LICENSE() in drivers/mfd/atc260x-core.o
> >> FATAL: modpost: drivers/mfd/atc260x-i2c: sizeof(struct i2c_device_id)=24 is not a modulo of the size of section __mod_i2c__<identifier>_device_table=588.
> >> Fix definition of struct i2c_device_id in mod_devicetable.h
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Is this something you plan to fix?

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
