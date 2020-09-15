Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3AC5826AA8B
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 19:27:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727728AbgIOR1b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 13:27:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727883AbgIOR1G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 13:27:06 -0400
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2018AC06121C
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 10:24:46 -0700 (PDT)
Received: by mail-pf1-x432.google.com with SMTP id v196so2363081pfc.1
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 10:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=Y1pACzzdEBRjHi4rSdwVdVaD3WaiuT67R2deRiZ6OMY=;
        b=UDSiHR+LAP+ogYXhBbajpDwo3AARYaSAAgnUE+8DCeEG3/tj1TtKrcUCeH3dGJ2P/f
         gBsXNgt3HBm+BnT+GSAsh0qVMWocPQCnyuhgrCVbESLn7fpGP5upx1nascFeJO/+snp8
         ErYaOljNvSq0Vk2IyJ3U9sqTxiaECnG5Oudk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Y1pACzzdEBRjHi4rSdwVdVaD3WaiuT67R2deRiZ6OMY=;
        b=awoI/eyhtJsBnvNTArQkBMqR+dvpb760pPcSfI8zsgudcPxYs6XZPLDnJlcMYh8yty
         mXNIogWssowlJi5t/UkSihMPr6+OkEbxICnathDMKXx0eE+ElkG6gkjx3DI9CmGtANk2
         PYnr9GqLSu68A9hZefkvH8JeVgSovAZZ9QWOUdSKoOc8Lw/v2vSKiB6UoQjjhENaxjxx
         A8cqVLId9UQntgcIYhKGqYOQqZk9CALqQv3CUDrawmXA1K1wZ3pLcGPHdAN6O66GPmWI
         4pCWvFcuy2ceXeMlN7xmNsBHyMnq4SSxqKK/DcBOlVmzYrDls5hs7ynemRmD8ajpsvAt
         9sOQ==
X-Gm-Message-State: AOAM530p3VeIrlERtk9Z9DiAbfmCmFh/zYbjmYaaiZ3GHvjUyf73AOSf
        M7F11LESQj7jPaI8mgJq+ey+ag==
X-Google-Smtp-Source: ABdhPJxzIIZ3OEGJAXBsqEGT7Z5/CBoh2wSey9gTIyODiuKq2azSlSxgY08qj5qNugi92JuP7g4Glw==
X-Received: by 2002:a62:6845:0:b029:13e:dcd:75bd with SMTP id d66-20020a6268450000b029013e0dcd75bdmr18840660pfc.12.1600190685583;
        Tue, 15 Sep 2020 10:24:45 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id f6sm14254540pfq.82.2020.09.15.10.24.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 10:24:45 -0700 (PDT)
Date:   Tue, 15 Sep 2020 10:24:44 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <rnayak@codeaurora.org>,
        Lukasz Luba <lukasz.luba@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-pm@vger.kernel.org,
        Amit Daniel Kachhap <amit.kachhap@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Javi Merino <javi.merino@kernel.org>
Subject: Re: is 'dynamic-power-coefficient' expected to be based on 'real'
 power measurements?
Message-ID: <20200915172444.GA2771744@google.com>
References: <248bb01e-1746-c84c-78c4-3cf7d2541a70@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <248bb01e-1746-c84c-78c4-3cf7d2541a70@codeaurora.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+Thermal folks

Hi Rajendra,

On Tue, Sep 15, 2020 at 11:14:00AM +0530, Rajendra Nayak wrote:
> Hi Rob,
> 
> There has been some discussions on another thread [1] around the DPC (dynamic-power-coefficient) values
> for CPU's being relative vs absolute (based on real power) and should they be used to derive 'real' power
> at various OPPs in order to calculate things like 'sustainable-power' for thermal zones.
> I believe relative values work perfectly fine for scheduling decisions, but with others using this for
> calculating power values in mW, is there a need to document the property as something that *has* to be
> based on real power measurements?

Relative values may work for scheduling decisions, but not for thermal
management with the power allocator, at least not when CPU cooling devices
are combined with others that specify their power consumption in absolute
values. Such a configuration should be supported IMO.

Thanks

Matthias
