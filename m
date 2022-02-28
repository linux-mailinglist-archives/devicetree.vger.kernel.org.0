Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 335BF4C6FCB
	for <lists+devicetree@lfdr.de>; Mon, 28 Feb 2022 15:44:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237281AbiB1OpZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Feb 2022 09:45:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56570 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231949AbiB1OpY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Feb 2022 09:45:24 -0500
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D8ED7ED8D
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 06:44:45 -0800 (PST)
Received: by mail-ot1-x333.google.com with SMTP id w3-20020a056830060300b005ad10e3becaso9651058oti.3
        for <devicetree@vger.kernel.org>; Mon, 28 Feb 2022 06:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OL1oYRALM1tU0+ck2GbF2CLS3TSRjG8HptZtWVZs1vg=;
        b=qUiMNtZTCv5HCAIbbv5dCslfJj7CzJUzCym9vd2xSvDIK2mPdGfCHD1VWW7OtU2iZO
         7H6qSBQZiK127V1YY/cud6IpFVtd0WwPOw6C8paop1IIydLVUCCvq5WbA5B3fx9RXP5K
         1pYsDesBNlgbHF/Pw5Kmge9F/DChRYHQ+4A0mDTLGdHDx0C2UiF95nn2RIZjlvQSIvnv
         kUHJlfcsEasPtCsFVIRz2BZKNeCo+8+RsLyag5G/RJ7C5CumX1qoZ6F8kZevJvFOS7Kg
         HKHj0q+jvQ5QvifGZzrM0jKvMIh0qn6IFbv5uz2FlbmpbBi/bekw9gt5m4AT3ZI38d5+
         KykQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OL1oYRALM1tU0+ck2GbF2CLS3TSRjG8HptZtWVZs1vg=;
        b=0wGo6biC5jpaAI/u84a7bhJ0GwKcJsUJ5IPnXYyZR326iIaDpsxWzIFBoZ4Xs2VZL8
         DBgah2xO2vuD5FUO9UcEQ49OBAMMQjpEpWrdao6JA5qzrs+BAS7RzPtc90hoRC/LA6ja
         TnxUyJMxeqziJcYTzFvdGShgpdyvntIwMs5e/3GdPFdd1mQB7gHEDYDhMTVqqOY9TVoF
         zwfW2xiR/GAblI1mNg+K643SOhE6QjzDRQvPJYcEuTAbjAOFiPYyVIWRjCZUfe3594Ps
         rFhiWwyirCSIY1pCjcpJWVmdCo83zqKv/Qxxkm9muAMigr/LnIs2B5UKEcXXVQvBGojz
         PcoA==
X-Gm-Message-State: AOAM532dtsOO7qRdBKQ5j6y6ZhYrmU5TWH8CX6JSADo38TvQWvgrYYER
        jHEnoL6azKiVnXJEKq+9ZWKnlvuA1KbJr4imqQtSlj/sgbBYHw==
X-Google-Smtp-Source: ABdhPJwIxxGDlahWJ4MmXDsiIS/mYt9bXQiZeWXnDp2ulHdmvAk7LFambAI2X+SdjS9LhxVJh1gzw8xOxhBRfQzM9bg=
X-Received: by 2002:a05:6830:55d:b0:5ac:ebf8:6d95 with SMTP id
 l29-20020a056830055d00b005acebf86d95mr9453248otb.162.1646059484269; Mon, 28
 Feb 2022 06:44:44 -0800 (PST)
MIME-Version: 1.0
References: <20220120082803.15535-1-bhupesh.sharma@linaro.org> <202201220442.bMRI74m1-lkp@intel.com>
In-Reply-To: <202201220442.bMRI74m1-lkp@intel.com>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Mon, 28 Feb 2022 20:14:33 +0530
Message-ID: <CAH=2Ntx1jcWQFKCjyEqipEzK-8C6AGb5gULjhBeMotmUpHSnyg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sm8150: Add ufs power-domain entries
To:     kernel test robot <lkp@intel.com>
Cc:     linux-arm-msm@vger.kernel.org, llvm@lists.linux.dev,
        kbuild-all@lists.01.org, bhupesh.linux@gmail.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Sat, 22 Jan 2022 at 02:13, kernel test robot <lkp@intel.com> wrote:
>
> Hi Bhupesh,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on robh/for-next]
> [also build test ERROR on v5.16 next-20220121]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Bhupesh-Sharma/arm64-dts-qcom-sm8150-Add-ufs-power-domain-entries/20220120-162925
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git for-next
> config: arm64-randconfig-r011-20220120 (https://download.01.org/0day-ci/archive/20220122/202201220442.bMRI74m1-lkp@intel.com/config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 7b3d30728816403d1fd73cc5082e9fb761262bce)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/e9cea3a4d3c4706f9cef18f55b07d3bc389a051a
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Bhupesh-Sharma/arm64-dts-qcom-sm8150-Add-ufs-power-domain-entries/20220120-162925
>         git checkout e9cea3a4d3c4706f9cef18f55b07d3bc389a051a
>         # save the config file to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 O=build_dir ARCH=arm64 SHELL=/bin/bash
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> Error: arch/arm64/boot/dts/qcom/sm8150.dtsi:1641.26-27 syntax error
>    FATAL ERROR: Unable to parse input tree

Ack.
Sending out the v2 shortly - which fixes this issue.

Regards,
Bhupesh
