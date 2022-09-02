Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC6B95AAD3B
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 13:13:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236040AbiIBLL7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 07:11:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33940 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236015AbiIBLLc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 07:11:32 -0400
Received: from mail-io1-xd2e.google.com (mail-io1-xd2e.google.com [IPv6:2607:f8b0:4864:20::d2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E9E6C9E8B
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 04:11:30 -0700 (PDT)
Received: by mail-io1-xd2e.google.com with SMTP id q81so1297521iod.9
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 04:11:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=0uxRZBOPLi+NS9/RxnDo7X4RCP5qkt6gVLnbm7RHdG0=;
        b=MDDK0E/FDsqrvMBSeQgKwGIHYGkmcNOk/JK2LfBWtKTnvz8UXigbZgJ8amIbXTgeZ0
         CJ58uJ3ILTmOU9dOiBID8MtuvQeceTweyTewSDUirG6oCXMlHs1hrKQYMH7eVLpSccXa
         nHqWLMPfhbDGIWv2gnaL4YKxq3V9NJkQYjTpQJJSGpzPb3EbkvG7hbP7rAPuHCqSECkC
         kI8o7dM3EolwUV/EKm2doVCxGCeq2fL2fyyb3G2jmjnRZwUY/1cMGSf83187L2r4fz+3
         yjUjQGsQIzwsbufaR/UV5lx5UNLm9Euadt2cY1Pp/uFFnoGXgxJWzLMnAZ06h81ayuXT
         P0Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=0uxRZBOPLi+NS9/RxnDo7X4RCP5qkt6gVLnbm7RHdG0=;
        b=1fogJVs2ZHCvrVcM2cP7YzsbnNdC3OSGCvCsUaRsBMsM8Fx0NWzAub8c9kj1CcF7kt
         oVUBEU3x6SDo7qagmds8pmw074dHDfFE31x33qOucqVayczsIDcx7WBEkA8AxUxxKfn4
         k6BEoZ8IjPMDejjmz0yXTa/xKVSGrWYI3zzkw+5zLEXiOn8TZ4QrzZs3BcvfeZJnCrd9
         2001hCVHVcLcwJEjJIHq98xD4pDd08tlRlujLPHzPbQh2JVnTlY2IOrQWmQPjn5rcJLM
         ZEwWociDQdhmWNEs6DWcI17ERHf0Sq/r4NPOs3vKbhoVM/PeCULNtoreolDZuzzonQLj
         3VxA==
X-Gm-Message-State: ACgBeo3F9IcYpWt09RqhXuL14UoAKlXkvyEBxK3rme+wdbarcmYQKOJv
        Xd6A6Vy6vdw06V/+8wtzv1yJ9A4qCppru+dHMm/JMA==
X-Google-Smtp-Source: AA6agR46FuiTckak+7eI/hkJWGysIYCuexaGhU1eFwLL1oMDPn4WchWwt+YhdAsfjM/PsTajny0RiajCzr8ncAGjJpw=
X-Received: by 2002:a6b:3f88:0:b0:689:c144:328a with SMTP id
 m130-20020a6b3f88000000b00689c144328amr16521320ioa.63.1662117089052; Fri, 02
 Sep 2022 04:11:29 -0700 (PDT)
MIME-Version: 1.0
References: <1659608930-4370-1-git-send-email-quic_kalyant@quicinc.com>
 <CAA8EJpoAN4CVMKNouh3pPtX-5rnBeL3_T60M5cNhirNEmNeEkQ@mail.gmail.com>
 <BN0PR02MB8142FFB573A4D05B0560A13996639@BN0PR02MB8142.namprd02.prod.outlook.com>
 <04d77534-e2b5-b860-a59e-e1a511ed35ae@linaro.org> <BN0PR02MB8142049D9867BFD4CBC9B285967A9@BN0PR02MB8142.namprd02.prod.outlook.com>
In-Reply-To: <BN0PR02MB8142049D9867BFD4CBC9B285967A9@BN0PR02MB8142.namprd02.prod.outlook.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 2 Sep 2022 14:11:17 +0300
Message-ID: <CAA8EJprs02M05BPDP6Pb6htLKkH2nVG7o5MKu_1+_A3zeOnNcA@mail.gmail.com>
Subject: Re: [v1] drm/msm/disp/dpu1: add support for hierarchical flush for
 dspp in sc7280
To:     Kalyan Thota <kalyant@qti.qualcomm.com>
Cc:     "Kalyan Thota (QUIC)" <quic_kalyant@quicinc.com>,
        "dianders@chromium.org" <dianders@chromium.org>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "robdclark@gmail.com" <robdclark@gmail.com>,
        "swboyd@chromium.org" <swboyd@chromium.org>,
        "Vinod Polimera (QUIC)" <quic_vpolimer@quicinc.com>,
        "Abhinav Kumar (QUIC)" <quic_abhinavk@quicinc.com>
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

On Fri, 2 Sept 2022 at 12:35, Kalyan Thota <kalyant@qti.qualcomm.com> wrote:
>
>
>
> >-----Original Message-----
> >From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >Sent: Friday, August 26, 2022 5:02 PM
> >To: Kalyan Thota <kalyant@qti.qualcomm.com>; Kalyan Thota (QUIC)
> ><quic_kalyant@quicinc.com>; dianders@chromium.org
> >Cc: dri-devel@lists.freedesktop.org; linux-arm-msm@vger.kernel.org;
> >freedreno@lists.freedesktop.org; devicetree@vger.kernel.org; linux-
> >kernel@vger.kernel.org; robdclark@gmail.com; swboyd@chromium.org; Vinod
> >Polimera (QUIC) <quic_vpolimer@quicinc.com>; Abhinav Kumar (QUIC)
> ><quic_abhinavk@quicinc.com>
> >Subject: Re: [v1] drm/msm/disp/dpu1: add support for hierarchical flush for dspp
> >in sc7280

Ugh. I'd kindly ask to fix your email client to behave like a normal one.

> >>>> @@ static void _setup_ctl_ops(struct dpu_hw_ctl_ops *ops,
> >>>>          ops->setup_blendstage = dpu_hw_ctl_setup_blendstage;
> >>>>          ops->get_bitmask_sspp = dpu_hw_ctl_get_bitmask_sspp;
> >>>>          ops->get_bitmask_mixer = dpu_hw_ctl_get_bitmask_mixer;
> >>>> -       ops->get_bitmask_dspp = dpu_hw_ctl_get_bitmask_dspp;
> >>>> +       if (cap & BIT(DPU_CTL_HIERARCHICAL_FLUSH)) {
> >>>> +               ops->get_bitmask_dspp =
> >>>> + dpu_hw_ctl_get_bitmask_dspp_v1;
> >>>
> >>> We have used _v1 for active CTLs. What is the relationship between
> >>> CTL_HIERARCHILCAL_FLUSH and active CTLs?
> >> Active CTL design replaces legacy CTL_MEM_SEL, CTL_OUT_SEL registers
> >> in grouping the resources such as WB, INTF, pingpong, DSC etc into the
> >> data path DSPP hierarchical flush will gives us a finer control on which post
> >processing blocks to be flushed as part of the composition ( like IGC, PCC, GC ..
> >etc ) These blocks are contained in DSPP package.
> >
> >So, I assume that hierarchical DSPP flush does not exist on non-active CTL SoCs.
> >Which supported SoCs do support the hierarchichal DSPP flush?
> >
> Dspp Sub-block flush is supported from the DPU 7-series, the only target in the catalogue is sc7280.

Ack, thanks.


-- 
With best wishes
Dmitry
