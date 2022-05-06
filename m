Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 202A951CF93
	for <lists+devicetree@lfdr.de>; Fri,  6 May 2022 05:32:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348251AbiEFDgN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 23:36:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1388618AbiEFDgJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 23:36:09 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2BBBD65
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 20:32:27 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id c11so6187640plg.13
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 20:32:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=asq1GsK2iP60zPURDoJiaqZrj1b/oRYrh2NIL66ASXY=;
        b=A5R+QgbkQY/b9pt/zpN4FQSLdc75DJtMIayyn5WIe1M8RAn5/H92sELF5NQSRbYwaP
         h0KnGXdji5cdjXEl9Yeo1eDyfPEoc99H3bfSd+F2l1ihlR0cRc7LocmA+Y34+hwQK+jD
         HS3mTrHBIyHs+ZjqKGJOW5PhD31HK0S5UWooJflZSS6AFdyPyOJBx6bB9btEWOO6itiy
         /vB8Ko49CwAQdUxK2/kXLOTaBNOg0l6Y2hRBXFaKs/NKtibrZF3z/ExqnnKwe4jXlAXX
         QAhuM9HqDlFQUeQX+3+N0zz9U6TNDtN5J8MmqWLNa7xUSBLFpBitD68Kx81P7nKR445K
         ETQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=asq1GsK2iP60zPURDoJiaqZrj1b/oRYrh2NIL66ASXY=;
        b=YCsbmVi6h2WnoarES5EkPw456d4ARbRBxCK068XxIdIZkw7Mwe3hnywlUl+mejJfou
         yxGWyouwOBfgQzQ4ec8JMZXrFvl9/RxYXfd2ad6lgjZlVCJZ3exk82XrqwMm7e8qmy/v
         5RNaj+Sn1l/PzbTfWnL0lvA42/quAHHKCe5kH2+f+s0S5fehr1jifZP0m6k8sZVTXwh0
         dIjBuRM9O1pOVPYBUUgWDDiQ7OYvwmw2JUJbpVGchmu7PWZQYHTf5zEswtvbZQu71UES
         1+8GXpFN3fx3+bJc8s4seiOLgcl2AzPYNyzsBdTiDyUq7x7p4Mj4ny0+JLvU+CuBrN95
         QVxg==
X-Gm-Message-State: AOAM5330MoE9yTeVtdJFlTg2oWxDuBpNWvBuouEuidQi41j2o/zZpt41
        Hr9bVqtFqjDkC5py5SbVgSb3og==
X-Google-Smtp-Source: ABdhPJzUQR4zLt0S+U3opN35Ejwzugn4AwM70j+cIKNxj/BkVwRUQvHT3NOFZ9B0ZDH+yZ1YttAyDw==
X-Received: by 2002:a17:903:110c:b0:14d:8859:5c8 with SMTP id n12-20020a170903110c00b0014d885905c8mr1578557plh.156.1651807947447;
        Thu, 05 May 2022 20:32:27 -0700 (PDT)
Received: from localhost ([122.162.234.2])
        by smtp.gmail.com with ESMTPSA id s17-20020a170902c65100b0015e8d4eb2a3sm383395pls.237.2022.05.05.20.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 20:32:26 -0700 (PDT)
Date:   Fri, 6 May 2022 09:02:23 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Chen-Yu Tsai <wenst@chromium.org>,
        Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Cc:     Rex-BC Chen <rex-bc.chen@mediatek.com>, rafael@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, matthias.bgg@gmail.com,
        jia-wei.chang@mediatek.com, roger.lu@mediatek.com,
        hsinyi@google.com, khilman@baylibre.com,
        angelogioacchino.delregno@collabora.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        "Andrew-sh . Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [PATCH v6 05/10] cpufreq: mediatek: Add opp notification support
Message-ID: <20220506033223.6ixlse3psixfeec7@vireshk-i7>
References: <20220505115226.20130-1-rex-bc.chen@mediatek.com>
 <20220505115226.20130-6-rex-bc.chen@mediatek.com>
 <89dc58a34ea080ca50a94187e24cabc22aba3304.camel@mediatek.com>
 <CAGXv+5EOdXFjwbtZWY4_KBdp6BaQdp389JqUS18ifAgdcQiAtQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAGXv+5EOdXFjwbtZWY4_KBdp6BaQdp389JqUS18ifAgdcQiAtQ@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Konstantin

On 06-05-22, 11:22, Chen-Yu Tsai wrote:
> On Fri, May 6, 2022 at 9:56 AM Rex-BC Chen <rex-bc.chen@mediatek.com> wrote:
> >
> > On Thu, 2022-05-05 at 19:52 +0800, Rex-BC Chen wrote:
> > > From this opp notifier, cpufreq should listen to opp notification and
> > > do
> >
> > Hello Viresh,
> >
> > There is still ">" in this patch...
> > I think the root cause could be the "From" word in the beginning of
> > this message.
> > I will not use "From" in next version..
> 
> Could this be a bug in lore?
> 
> I'm not seeing this extra ">" in either the email in my inbox, viewed
> raw, nor the patch downloaded from patchwork [1].
> 
> 
> ChenYu
> 
> [1] https://patchwork.kernel.org/project/linux-mediatek/patch/20220505115226.20130-6-rex-bc.chen@mediatek.com/mbox/

Interesting.

Konstantin, we are witnessing an additional ">" symbol in the first
line of the commit log for this particular patch for some reason.

https://lore.kernel.org/lkml/20220505115226.20130-6-rex-bc.chen@mediatek.com/raw

Any idea ?

-- 
viresh
