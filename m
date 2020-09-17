Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8166A26D47D
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 09:20:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726142AbgIQHUL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 03:20:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726169AbgIQHUJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 03:20:09 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B41CC061788
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 00:20:09 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id fa1so804051pjb.0
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 00:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=benyossef-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=QRIyLtZ6o3VP5j0NQg3mA1t52Fj+F7jjIZuCaV434Cg=;
        b=ULn0yfGOq/R//vSsUP4iOnvhuzYmEaeUgbMAPc2961ZS5jeg+KZ0CGfJ9FkLMr75Yl
         r/fiKIxYciaNrl6NgROpW03mh8PUGU+iftEI2XmXgA0EPw8nztV1v4E6iBhTQ/zL6WyO
         uSRMsgebDkv3+dYNXkepEV+ipn+APPOlJR+bQwpz+SFdVjWps5rtXx0VfKy6t5GwyENy
         RVVlCdjn2gVNJk4wFQGiCtcLlvZ7gCPX24QQmMY6Y2BSHi9phKfs+KxAruKxN5/bARft
         DvyvZfB96TMiNSpYidAnFF5j0CqyIfQsi97BOscSRWER7ranrl3oOZRK2YXR0L6gU8Jf
         lApQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=QRIyLtZ6o3VP5j0NQg3mA1t52Fj+F7jjIZuCaV434Cg=;
        b=KLtIQwIcLGpXJMj8KwH++8kxZDTzyiLyIvM32lrFJ8zOhCoclxHKXGmTv5f0MOZmf7
         bXJ4IQ+Sd7I/dUrg7VHg7idavPTqC6vSgrRb8Amv1Td5MSJBoHHwF7VCx5uUglU/dOA8
         uAsbdSZhGO+clkZmyCBtxNCW35h+Cx9+ceWrtPDDaDclXAoPaxFjxCoopvXxRRO5o+Ir
         UwHMLA7/NS5lTJ6Xux0nf3JcKDGAmwCZ00MhQcQmlhc//uzQ6an+0kLIKTJVz4n0boR9
         QmCUVm0UWV4zGVeKjA0vgcNwvKqStM6NnwO7pKnrgN39MHFAMFl5YgFQEneOqSqSnESp
         EOIA==
X-Gm-Message-State: AOAM533JZlI4dW8/6+tBw+Bp3CkES86y5ct3XBut8ZLttp+X2RZ/81Gb
        bcf/rRUD9fuoI1ejSg0nmzMHqHZ2EckMYJnx8Z1uMw==
X-Google-Smtp-Source: ABdhPJzOyWW3yRxn3eGe452S9xxe1YK/oe3JKSV7avMo9gsRfJp6nhxOCqaAUnA3yQKoVxT8oCicRR+HfjguhpS4Ll0=
X-Received: by 2002:a17:90a:e609:: with SMTP id j9mr6843624pjy.129.1600327208818;
 Thu, 17 Sep 2020 00:20:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200916071950.1493-3-gilad@benyossef.com> <202009162154.fxQ0Z6wT%lkp@intel.com>
In-Reply-To: <202009162154.fxQ0Z6wT%lkp@intel.com>
From:   Gilad Ben-Yossef <gilad@benyossef.com>
Date:   Thu, 17 Sep 2020 10:19:59 +0300
Message-ID: <CAOtvUMdv9QNVdaU7N6wJVq27Asyrckuu9bf15fO=+oZUh5iKOg@mail.gmail.com>
Subject: Re: [PATCH 2/2] crypto: ccree - add custom cache params from DT file
To:     kernel test robot <lkp@intel.com>
Cc:     Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>, kbuild-all@lists.01.org,
        clang-built-linux@googlegroups.com, netdev@vger.kernel.org,
        Ofir Drang <ofir.drang@arm.com>,
        Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux kernel mailing list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

hmm...

On Wed, Sep 16, 2020 at 4:48 PM kernel test robot <lkp@intel.com> wrote:
>
> url:    https://github.com/0day-ci/linux/commits/Gilad-Ben-Yossef/add-opt=
ional-cache-params-from-DT/20200916-152151
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev=
-2.6.git master
> config: arm64-randconfig-r015-20200916 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e38=
42d60351f986d77dfe0a94f76e4fd895f188)
> reproduce (this is a W=3D1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross AR=
CH=3Darm64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/crypto/ccree/cc_driver.c:120:18: warning: result of comparison=
 of constant 18446744073709551615 with expression of type 'u32' (aka 'unsig=
ned int') is always false [-Wtautological-constant-out-of-range-compare]
>            cache_params |=3D FIELD_PREP(mask, val);
>                            ^~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:94:3: note: expanded from macro 'FIELD_PREP'
>                    __BF_FIELD_CHECK(_mask, 0ULL, _val, "FIELD_PREP: ");  =
  \
>                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/bitfield.h:52:28: note: expanded from macro '__BF_FIELD_=
CHECK'
>                    BUILD_BUG_ON_MSG((_mask) > (typeof(_reg))~0ull,       =
  \
>                    ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~
>    include/linux/build_bug.h:39:58: note: expanded from macro 'BUILD_BUG_=
ON_MSG'
>    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                        ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~
>    include/linux/compiler_types.h:319:22: note: expanded from macro 'comp=
iletime_assert'
>            _compiletime_assert(condition, msg, __compiletime_assert_, __C=
OUNTER__)
>            ~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~=
~~~~~~~~~
>    include/linux/compiler_types.h:307:23: note: expanded from macro '_com=
piletime_assert'
>            __compiletime_assert(condition, msg, prefix, suffix)
>            ~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    include/linux/compiler_types.h:299:9: note: expanded from macro '__com=
piletime_assert'
>                    if (!(condition))                                     =
  \
>                          ^~~~~~~~~

I am unable to understand this warning. It looks like it is
complaining about a FIELD_GET sanity check that is always false, which
makes sense since we're using a constant.

Anyone can enlighten me if I've missed something?

Thanks,
Gilad



--=20
Gilad Ben-Yossef
Chief Coffee Drinker

values of =CE=B2 will give rise to dom!
