Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDCFA4BDDBD
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:45:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1359076AbiBUN2S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 08:28:18 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:38748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359071AbiBUN2R (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 08:28:17 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDEBB205D0
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 05:27:53 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id l123-20020a1c2581000000b0037b9d960079so13562354wml.0
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 05:27:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=/lGIfMGk1oVr2+u1/5qKv/kN5Orfd9go72p5+5s/Q1Q=;
        b=Nn23Z3VJQgFV/uNeTp2uTp/Mpb76j7vhPK0nI2byWaEp2tI1bKPWr4+pk5pbqkHpDg
         HQlS+z9Oiw8FNgfxvncdtmqlQgI3ccP4XXIQkpKj8UA8vDB9+GZC0ZzrJV+KiyO1+/py
         +ULXb/rd2IH+UeQaYsWm2UwcKP27BDuNuOxAxRM4Xf7ltHDyAQ/6BcQmKV32iHhA8oUk
         VIBmldm8FfoJaZ8b8ZFgcF4d3ayOh5glmC/vTW4YOJ80zTrfk3TNgVcbd1ezM/1B7fVs
         9Me1mk4gyQjTmr0FyoUORZSAYuWhiT677ZuFvsA3tRgh/9DcCce8MnLKGLzVS3FXZA1q
         SdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=/lGIfMGk1oVr2+u1/5qKv/kN5Orfd9go72p5+5s/Q1Q=;
        b=PG4XysOXWg1AY7ZlKAwJAt/HsfxS2kszcZg9zbIi1lG229EeDl6qthi0/ey1DApyx8
         QU4aRw817ODKxFiNTCSpTywFeGtxAykS8+1Wq7etVtxOSho6wXxX24yqcW81MDHv19Rt
         s7ORsyBVbbqu+UJoH28mf/3rtHslGbKqO1px0LF2vfwQkR7Qgzz0GgnWT4+tetHZJJt9
         SRyJib+hhefSyCOYRly1VNR2dor85dUzNdpqUvKlRUBwfZ2G+yJGIuDZz44bQ7SsPx+j
         FVoFIGhHVY077cYUYf1IJ8BEKJgh91qf5HgimU1zRcyaE0K4/02PGPPC4R+uC2+TaSk+
         v18A==
X-Gm-Message-State: AOAM531a8CjM/So+GYeK+t7PS9gBZbpWTbsPY4gYbWDr1G7IcF/H5lT3
        lQ/u8bb0oGLrO88kF97aZ7Borw==
X-Google-Smtp-Source: ABdhPJwF5QWnYt1zOPAojpFO1VDPsFZ4MZKwOYNkOiOQlcod81UDKpEXWWBm+3GFWGQFtL4+tnSMvQ==
X-Received: by 2002:a7b:c196:0:b0:37c:91e0:85f3 with SMTP id y22-20020a7bc196000000b0037c91e085f3mr21240303wmi.172.1645450072472;
        Mon, 21 Feb 2022 05:27:52 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id n15sm24583839wri.80.2022.02.21.05.27.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 05:27:52 -0800 (PST)
Date:   Mon, 21 Feb 2022 13:27:50 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Roger Quadros <rogerq@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: update Roger Quadros email
Message-ID: <YhOTVrrzYMMC7DKL@google.com>
References: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
 <2e33c00b-8460-3d85-92aa-2c3257725c2c@kernel.org>
 <YhOIHARSdIliVWjW@google.com>
 <7448b9b3-78f9-6f33-ae8d-d099bc64abe4@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7448b9b3-78f9-6f33-ae8d-d099bc64abe4@canonical.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 21 Feb 2022, Krzysztof Kozlowski wrote:

> On 21/02/2022 13:39, Lee Jones wrote:
> > On Mon, 21 Feb 2022, Roger Quadros wrote:
> > 
> >> On 21/02/2022 12:07, Krzysztof Kozlowski wrote:
> >>> Emails to Roger Quadros TI account bounce with:
> >>>   550 Invalid recipient <rogerq@ti.com> (#5.1.1)
> >>>
> >>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> >>
> >> Thanks so much!
> >>
> >> Signed-off-by: Roger Quadros <rogerq@kernel.org>
> > 
> > I assume you mean Acked-by (if you are the maintainer) or Reviewed-by?
> > 
> >>> ---
> >>>
> >>> Roger,
> >>> You should also add a mailmap entry for your inactive emails.
> >>
> >> OK. I will send out a patch for this. Thanks for the hint. :)
> >>
> >>> ---
> >>>  .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 +-
> >>>  Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml         | 2 +-
> >>>  Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml         | 2 +-
> >>>  Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml     | 2 +-
> >>>  4 files changed, 4 insertions(+), 4 deletions(-)
> > 
> > What's the merge-plan for this Krzysztof?
> 
> First-in-first-served? :) or Rob?
> It's a small change and I think non-controversial, so whoever could pick
> it up first, should do it.

I'm inclined to agree.

Acked-by: Lee Jones <lee.jones@linaro.org>

:)

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
