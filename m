Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EA4BC4CBA01
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 10:19:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231496AbiCCJUD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 04:20:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230239AbiCCJUD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 04:20:03 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA0E116AA42
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 01:19:17 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id u10so5136709wra.9
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 01:19:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=49xGlm/DxY0ahn3U3JBRs5yGk2SDIewapjDdO3Gg/+Y=;
        b=AtZQQ1Ms/KXgba3kaO2jKK5cWXRU+SayBn87UkdQm/v6JrrJHsm+HUgcKYTTh9mDO9
         Je1ZPwVLyX3gCAVefkixlLx89TDEBiUANtsejO9isoIJ8FrMKL+9IjeLQiQI5kl8uF8X
         8rahIRSfaopWs/AzhDsZE6UH3r/iLC0SqEJ4KuPqt8f8jAoFKZkUV8PcYMfCBWmkYCtj
         EzYzduLGL3UiIk6Mrj+IaRSR8IZbF/Pj4sH0g1sRJUxg+FOwdhwtmhhY4N5kw+U3QGFp
         10Phsq8eudKDVeDbnViBTADjyExuDHRv9KOorGWWJWh1YqyfmmLFJK+Absefpq1W8kxp
         XNVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=49xGlm/DxY0ahn3U3JBRs5yGk2SDIewapjDdO3Gg/+Y=;
        b=VNCvcJV5oYutIq/Icv61MSktaznUqpcuje3Bv6GLr4eoXpP6QdLSkZQJlxkLIqKRzY
         vY1A44NlRruXX26bsdeS0yC+EPfxM8OHiTTBI7OnPcnavaGhOn+/LXDTJfNe9tzs4iwc
         nEyOV1g77++iuxIjs5ZppDZsMpiEX0dvd7iF2BUuSnbi+tASbcFNOrBRs39q1B6W3SKg
         pY1aTbRXhrBgfnRnMckCre9v2u1ihSV8EvOP/ZOvkFQGXQ71ExACaaCVOJTgvaK38v6e
         rTf+94HShzBJPomx2mM1YQIgLWuTVLWyxGSFcD3xUEopODzNRDcKotziyxeAvxZxaNHE
         h0/A==
X-Gm-Message-State: AOAM533oR3CkRoih0eEzFBymT2G5B45DQpieZPgqehwXjbC615heIeW5
        JRKHfDmhtOXERk4Yx6oVKiUDPy2IcY9Qqw==
X-Google-Smtp-Source: ABdhPJxuhqXmLr+4swlzFDpUazpx85y15v3ttKVl4YU+8C6hPlbir/P24pU8bQbhDBUzVN3002Aetw==
X-Received: by 2002:a05:6000:3c8:b0:1ef:64e8:9235 with SMTP id b8-20020a05600003c800b001ef64e89235mr22508518wrg.498.1646299156414;
        Thu, 03 Mar 2022 01:19:16 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id g17-20020adff411000000b001f03426827csm1426404wro.71.2022.03.03.01.19.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 01:19:15 -0800 (PST)
Date:   Thu, 3 Mar 2022 09:19:14 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Robert Marko <robert.marko@sartura.hr>, linus.walleij@linaro.org,
        brgl@bgdev.pl, p.zabel@pengutronix.de, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        skhan@linuxfoundation.org, luka.perkov@sartura.hr
Subject: Re: [PATCH v10 5/6] dt-bindings: mfd: Add Delta TN48M CPLD drivers
 bindings
Message-ID: <YiCIEsMVcK1WEecR@google.com>
References: <20220131133049.77780-1-robert.marko@sartura.hr>
 <20220131133049.77780-6-robert.marko@sartura.hr>
 <Yh8vJNc4D6rA68au@google.com>
 <Yh/kFzNuvbwA2qeE@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Yh/kFzNuvbwA2qeE@robh.at.kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 02 Mar 2022, Rob Herring wrote:

> On Wed, Mar 02, 2022 at 08:47:32AM +0000, Lee Jones wrote:
> > On Mon, 31 Jan 2022, Robert Marko wrote:
> > 
> > > Add binding documents for the Delta TN48M CPLD drivers.
> > > 
> > > Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> > 
> > This is missing a DT review.
> 
> How about this one[1]?
> 
> Rob
> 
> [1] https://lore.kernel.org/all/20210719225906.GA2769608@robh.at.kernel.org/

Looks like the ball is in your court Robert.

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
