Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99C6F50EB24
	for <lists+devicetree@lfdr.de>; Mon, 25 Apr 2022 23:12:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242666AbiDYVPY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Apr 2022 17:15:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235425AbiDYVPX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Apr 2022 17:15:23 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1039880206
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 14:12:18 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id k12so4077496lfr.9
        for <devicetree@vger.kernel.org>; Mon, 25 Apr 2022 14:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=n48UC8FYBgza6LVhcnu3WqzBBzGR0TUqYOXWNSGJNhA=;
        b=NH4maRhQqGMoN/cZAlAaVgXCc/h1NJVTKr8F0GqK2f8ubsZMl5exb0+1Pt4QRMKgg0
         AYUnTGmzTKIb3XBcHuUVxyDZACSd0xMzNm2eH5moaKl8WolVTJO/Y/dyEo2jDXCPr9a+
         y/6FIg3Nyp8fupRVie1iD6axXOMvzsZzzZLyhJMfWKDA4Q7A5msr07uvlTkaMP90b5yp
         JegglGvQ5rDlYD519GW/1BkBSsJJRIx12rxtN/ySXsP47PQ97e56NX9M+jJd4+r2fLFF
         tVYHv0gQHpwX4pOLAj+krJiRGHPiarefgMG3xVWcRrBwIDkgeQKeCoNucZ1CwuAt6FJ5
         v3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=n48UC8FYBgza6LVhcnu3WqzBBzGR0TUqYOXWNSGJNhA=;
        b=OKF2lV3HkIiH0y2VZMLnW5Tv7TWCpTDU7R6F4k81J8iOB7W3SKXio3VqqCA6ZqmrL7
         LfjIip8daVYMC+SCSGNYR1gghARKnCy/1ORRid8c7nIxRD2HpiaqXso/J+j8ElYnlwav
         XiS4Dy+88IjtPAEIjVNqrAtKK6kA9AZhkkY0BGbj+GorzHdfHDCO2tG9TqpkI5WDMLTf
         ct+xcY3r3EsDqvB2J4UUNpOukVlB+Pz7PhMR6klJ0OhG6lz18qX2+W3m0/d0KQSWwoGV
         VX5+Q/XtGcgX2+uhHhpZJ5I42nKCbF9YAMmklHOvbO2bm/QLSr+0EukMkJclfum7a3wN
         jKlA==
X-Gm-Message-State: AOAM530OTNhnwYaTx+lyy9CdtH9SnKjTnkL5cH4aG8IlnzzHV/j2btHl
        ruODI2q/KxtCbchUzcc4mWQ9XQ==
X-Google-Smtp-Source: ABdhPJwzna+WG3O2iW9VkiovidbQKqbuLtVxXaL1TUSZEFmS83MEMFZt8wBnv/+oE2d5HSXwHkMtqQ==
X-Received: by 2002:a19:674c:0:b0:448:3f49:e6d5 with SMTP id e12-20020a19674c000000b004483f49e6d5mr14477854lfj.518.1650921136308;
        Mon, 25 Apr 2022 14:12:16 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id b11-20020a19670b000000b0044a385058acsm1522365lfc.187.2022.04.25.14.12.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Apr 2022 14:12:15 -0700 (PDT)
Message-ID: <664de9f0-a9a1-9b5e-9612-06a051c85434@linaro.org>
Date:   Tue, 26 Apr 2022 00:12:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v9 1/4] drm/msm/dp: Add eDP support via aux_bus
Content-Language: en-GB
To:     Stephen Boyd <swboyd@chromium.org>,
        Sankeerth Billakanti <quic_sbillaka@quicinc.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     "robdclark@gmail.com" <robdclark@gmail.com>,
        "seanpaul@chromium.org" <seanpaul@chromium.org>,
        quic_kalyant <quic_kalyant@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        "dianders@chromium.org" <dianders@chromium.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
        "sean@poorly.run" <sean@poorly.run>,
        "airlied@linux.ie" <airlied@linux.ie>,
        "daniel@ffwll.ch" <daniel@ffwll.ch>,
        quic_vproddut <quic_vproddut@quicinc.com>,
        Aravind Venkateswaran <quic_aravindh@quicinc.com>,
        "steev@kali.org" <steev@kali.org>
References: <1650618666-15342-1-git-send-email-quic_sbillaka@quicinc.com>
 <1650618666-15342-2-git-send-email-quic_sbillaka@quicinc.com>
 <CAE-0n51VBDmOOworjpuB1nqVD-7055yqvn2Er5H13qgFC5R2AQ@mail.gmail.com>
 <MW4PR02MB7186108BA0131C8BFC46A219E1F89@MW4PR02MB7186.namprd02.prod.outlook.com>
 <CAE-0n51oUFkYuZ5qd2CbnaUGo2xcAjU+F0M+Kptk8b=7curH0Q@mail.gmail.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <CAE-0n51oUFkYuZ5qd2CbnaUGo2xcAjU+F0M+Kptk8b=7curH0Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/04/2022 23:26, Stephen Boyd wrote:
> Quoting Sankeerth Billakanti (QUIC) (2022-04-25 02:39:43)
>> Hi Stephen,
>>
>>> Quoting Sankeerth Billakanti (2022-04-22 02:11:03)
>>>> diff --git a/drivers/gpu/drm/msm/dp/dp_display.c
>>>> b/drivers/gpu/drm/msm/dp/dp_display.c
>>>> index d7a19d6..055681a 100644
>>>> --- a/drivers/gpu/drm/msm/dp/dp_display.c
>>>> +++ b/drivers/gpu/drm/msm/dp/dp_display.c
>>>
>>> Some nitpicks
>>>
>>> Reviewed-by: Stephen Boyd <swboyd@chromium.org>
>>>
>>>> @@ -1508,7 +1509,8 @@ void msm_dp_irq_postinstall(struct msm_dp
>>>> *dp_display)
>>>>
>>>>          dp_hpd_event_setup(dp);
>>>>
>>>> -       dp_add_event(dp, EV_HPD_INIT_SETUP, 0, 100);
>>>> +       if (!dp_display->is_edp)
>>>> +               dp_add_event(dp, EV_HPD_INIT_SETUP, 0, 100);
>>>
>>> Did it turn out that in fact DP isn't ready still to setup even after delaying the
>>> irq?
>>>
>>
>> The host_init, config_hpd, phy_init and enable_irq are happening in modeset_init already for eDP.
>> So, I am not scheduling the EV_HPD_INIT_SETUP event for eDP. I am not modifying the delay for DP.
> 
> Cool. That didn't answer my question though. Why does DP still need the
> delay? I thought recent changes made it unnecessary.

I'd say that if it is not necessary, it should be changed in the 
separate commit. The question is valid nevertheless.


-- 
With best wishes
Dmitry
