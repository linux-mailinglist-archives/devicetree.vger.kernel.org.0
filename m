Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1843C4FC3DE
	for <lists+devicetree@lfdr.de>; Mon, 11 Apr 2022 20:09:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349080AbiDKSLj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Apr 2022 14:11:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349079AbiDKSLd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Apr 2022 14:11:33 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DED3B59
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 11:09:17 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id o5-20020a17090ad20500b001ca8a1dc47aso77395pju.1
        for <devicetree@vger.kernel.org>; Mon, 11 Apr 2022 11:09:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=zNUERBDcPB2O2rB/hm+cxzZzogWX5mDVNkGC3aPcqtg=;
        b=ubK9eztOVEQwI6eXRPT1fItHhUdVMxBXWzSUYBncNVK3t9delHoEHg7VoYaVwLaaVD
         un4JEPhW5Fn90OTG+Us9Joe4FtPGhkQiUOQalp1TJ1VtQQB2y9KBhPqGU14dIY3S4+yF
         KYpGjzWgKAbGF4b5U2zrmU5qlo5RXOMrnCbGhKaEDV5kSexl9xwjLhXXIuOIOAezsG6k
         gBezEULtZgrK8ceqzUFLorW5mglkqbuqwoQyZY+zKNTP2dmDhed1iXF+pvnTRR0YZfIx
         I9JV4Rx/Sp6j4LMc9erJDssMh0NGgG/J8WhNP3ilvZUOePb0pvbbp2QiiimUNj8KWlew
         mx8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=zNUERBDcPB2O2rB/hm+cxzZzogWX5mDVNkGC3aPcqtg=;
        b=MFXDFWg3zYOhySsgdhPH/FubZ3CSP3rPH4C/ngWA1IDbz1dGJXidAYgs98qY+QmnWU
         tB7hQrPAAwIMaagxad8SnjyydL1mOt5OHmlFDBe5WxVX/XdJ1ML2cU0XlOzobNrnD7AP
         fVXoXv6f07+21/LnfWZSyXIr9v7kJ79lNKb39K8SS1tD0gDRJiPJafVfPAtzhrUZscyr
         FAYLMEswjgTQxmxTLwX2Gc2iWLsAlzkir0fjj6TsClu3nuXO8WdAZL/zi/Xm1hc+nWjo
         UHKKR4tsDbKUyH5YYAGOaWriheoHaMBcfOpMQEQHXhij2T5DXsVeBTaPl2WucAK28Sof
         6CDA==
X-Gm-Message-State: AOAM5330fRdNMI5MJWS3AHetMob1e7t9tNrytkcFIy6bC+7TfkDgzf/D
        Pvx4iPa+/p025XgjjilHLFGZOw==
X-Google-Smtp-Source: ABdhPJzaA6/MgmKAb8SuJ5HGfoAPrl2QB/lzXvt5Kk3MNfq9B8523d7j9MNmGKNEJUy0txgS1hN7ng==
X-Received: by 2002:a17:90a:7147:b0:1bd:24ac:13bd with SMTP id g7-20020a17090a714700b001bd24ac13bdmr486003pjs.70.1649700556996;
        Mon, 11 Apr 2022 11:09:16 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id c4-20020a056a00248400b004faad8c81bcsm36999513pfv.127.2022.04.11.11.09.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Apr 2022 11:09:16 -0700 (PDT)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org
Cc:     matthias.bgg@gmail.com, jia-wei.chang@mediatek.com,
        roger.lu@mediatek.com, hsinyi@google.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [PATCH V2 07/15] cpufreq: mediatek: Add opp notification for
 SVS support
In-Reply-To: <3b7bf25a3da6c8f780c87784c1f796bf1e464238.camel@mediatek.com>
References: <20220408045908.21671-1-rex-bc.chen@mediatek.com>
 <20220408045908.21671-8-rex-bc.chen@mediatek.com>
 <7hsfqn5nft.fsf@baylibre.com>
 <3b7bf25a3da6c8f780c87784c1f796bf1e464238.camel@mediatek.com>
Date:   Mon, 11 Apr 2022 11:09:15 -0700
Message-ID: <7hzgkr4hmc.fsf@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rex,

Rex-BC Chen <rex-bc.chen@mediatek.com> writes:

> On Fri, 2022-04-08 at 13:29 -0700, Kevin Hilman wrote:
>> Rex-BC Chen <rex-bc.chen@mediatek.com> writes:
>> 
>> > From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
>> > 
>> > The Smart Voltage Scaling (SVS) is a hardware which calculates
>> > suitable
>> > SVS bank voltages to OPP voltage table.
>> > 
>> > When the SVS is enabled, cpufreq should listen to opp notification
>> > and do
>> > proper actions when receiving events of disable and voltage
>> > adjustment.
>> 
>> So listenting for OPP notifications should be done only when SVS is
>> enabled...
>> 
>
> Thanks for your review.
> Yes, the OPP notification is only called from MediaTek SVS.
>
>> [...]
>> 
>> >  static int mtk_cpu_dvfs_info_init(struct mtk_cpu_dvfs_info *info,
>> > int cpu)
>> >  {
>> >  	struct device *cpu_dev;
>> > @@ -392,6 +455,17 @@ static int mtk_cpu_dvfs_info_init(struct
>> > mtk_cpu_dvfs_info *info, int cpu)
>> >  	info->intermediate_voltage = dev_pm_opp_get_voltage(opp);
>> >  	dev_pm_opp_put(opp);
>> >  
>> > +	info->opp_cpu = cpu;
>> > +	info->opp_nb.notifier_call = mtk_cpufreq_opp_notifier;
>> > +	ret = dev_pm_opp_register_notifier(cpu_dev, &info->opp_nb);
>> 
>> ...but here youlisten to OPP notifications unconditionally.  Seems
>> there
>> should be a check whether SVS is enabled before deciding to register.
>> 
>> Kevin
>>
> Do you think it's ok that we wrap it with the SVS Kconfig define?
> like
> #ifdef CONFIG_MTK_SVS
> mtk_cpufreq_opp_notifier()
> ...
> dev_pm_opp_register_notifier()
> #endif

Generally, we don't like to see #ifdefs in C files[1].

But more importantly, compile-time check is not enough, because SVS
feature could be compiled into kernel, but not actually enabled for an
SoC (e.g. DT node not enabled, etc.) so checking this at compile time is
not enough.

Ideally, the SVSdriver should provide a function that allows others to
check if it's enabled.  That function needs to know not only if it's
compile in, but if it's enabled/running.  If SVS is not compiled in,
then that function just returns false.

Kevin

[1] https://www.kernel.org/doc/html/latest/process/4.Coding.html?highlight=ifdef#ifdef-and-preprocessor-use-in-general
