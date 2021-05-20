Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5009389C2D
	for <lists+devicetree@lfdr.de>; Thu, 20 May 2021 05:54:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230312AbhETD4H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 23:56:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230253AbhETD4H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 May 2021 23:56:07 -0400
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3BBEC061574
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 20:54:45 -0700 (PDT)
Received: by mail-pg1-x52a.google.com with SMTP id q15so10892070pgg.12
        for <devicetree@vger.kernel.org>; Wed, 19 May 2021 20:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=KZRGLyGlYpZs7oxsD7Yo4EaDAarVQQHn0bIE9uF59k0=;
        b=Ly58M6479wTJyMHgE/6HMIPI0JxrknZ0fzRgcXjYd901K5hE5hOsQRHLlQDZKU2mm/
         Go6sZo1IAf0ujxCsdN7quwS0hKJcPynecIsUnIG9UHdWaAEqd7S9LhgXOOIJOFCpDNOi
         0fJAZPSVjh3v6/0ATh/cK5GKKy+YkQn6wIqAxY1wmZTjYh1aC7pUvANmGFfo+92t8f/A
         21yTv7cGt5Yog3FxYrZA2bGzdGfTKfRAwD9ji1hia+uUf/f7emVMNm6LBNaSPoyoSr1u
         ahRt8jPCFsy+PPmXWrujwPuoiEDEezqOODAReKr09YjdeFutZXjQwR8uCfJhA/cA9m7w
         u1Jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=KZRGLyGlYpZs7oxsD7Yo4EaDAarVQQHn0bIE9uF59k0=;
        b=q97l5pRDZN7eCIV+BaS7viQuEpEDu9QOAzxCXDUcwyOQk6RH3YT2TJX2CnbRXnwqjW
         SkHU9H2d9seQnlK3knw0BnNmy66h4qRwX0n/IxDqDICr8LmTDuo3XLtnU47GXdMssYoy
         6tqS8S0ajLecc6qSkA35HXcmJyiqZ70vIfISZSOZqLMrS0j3Un6feuPL9mfgX4Fyi7DC
         g8HNNXQjJMhYCDQXB3z9e+xumUjuiw+5draIIN5X0FckThMeNSV0Patvoc9Ao2QSnm+m
         Hfu0jico9Xdv5mnLW6hLhE0OvBi9rFiVa+VafSAQYK86iOQgxAeUQOhQC1OTn3krRc5N
         j7VA==
X-Gm-Message-State: AOAM531K2JQPvKAKQJGY+5/hsLR0RptZEd/2Rhpp5HuAGjsuy3LRyziQ
        s8lj/eAU3bH/xminf8VLoUyfSg==
X-Google-Smtp-Source: ABdhPJztS1QqD1LiTXn/SocQZq9tDzxtlj38Ux6iQAOUyHioscpcGVHK6n78sJUY0NNB19zVqkoY1Q==
X-Received: by 2002:a63:2444:: with SMTP id k65mr2447534pgk.1.1621482885418;
        Wed, 19 May 2021 20:54:45 -0700 (PDT)
Received: from localhost ([136.185.154.93])
        by smtp.gmail.com with ESMTPSA id b15sm672895pfi.100.2021.05.19.20.54.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 May 2021 20:54:44 -0700 (PDT)
Date:   Thu, 20 May 2021 09:24:42 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Hector Yuan <hector.yuan@mediatek.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: Re: [PATCH v4] dt-bindings: dvfs: Add support for generic
 performance domains
Message-ID: <20210520035442.qvpsonhifozzrspo@vireshk-i7>
References: <20210517155458.1016707-1-sudeep.holla@arm.com>
 <CAL_JsqK6B40D8dRu8KoOsx6eSzRXx6KsSEu5mjDokPEAy+p4oA@mail.gmail.com>
 <20210519112308.umxriuv75onuwvmc@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210519112308.umxriuv75onuwvmc@bogus>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19-05-21, 12:23, Sudeep Holla wrote:
> I noticed I haven't cc-ed linux-pm list, do you need me to post there or
> are you happy to pick it up from here when Hector's mediatek cpufreq drivers
> using this are ready to be merged ?

Applied. Thanks.

-- 
viresh
