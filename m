Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61B9A6524E0
	for <lists+devicetree@lfdr.de>; Tue, 20 Dec 2022 17:47:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233289AbiLTQrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Dec 2022 11:47:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230058AbiLTQrR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Dec 2022 11:47:17 -0500
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5289FB850
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 08:47:16 -0800 (PST)
Received: by mail-il1-x129.google.com with SMTP id j28so6565786ila.9
        for <devicetree@vger.kernel.org>; Tue, 20 Dec 2022 08:47:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MzKjhIOcV3ufxuDLmopx8r1raKV1Jl95YCQiSdWpZbc=;
        b=OTPop1jK2DAWeLs3Pd/DzxNTqn00Xlk3u4FE/DwX8cY4wgtF7LIIzrZV4RUQ4hsW7J
         hQQeTBILxQ1ijAQ0n4d8rR+U3zoQZksVgYHUQ8hhcgNjxqJY9GOBvjBionSfbbauh+AD
         jGqDLWZDzs+A8gSVUX7x7HYWzGLZrqzg04Zyk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MzKjhIOcV3ufxuDLmopx8r1raKV1Jl95YCQiSdWpZbc=;
        b=mz5WmCvlDh3gb2xwDT2x5sN0TEUMpP36OiHMnYtToaAA/sVyAy5srPxHNwlCwKi1gi
         48GSqrNZsGlHsZxhoD9EUq6L+GRYt5dV3TGe5LtsIfV6ErUPI9N0DSKsd5OsJbjrR4OA
         +mLrgbklWfAM+JJr4KpdkqI2rgVkOn2P0vZ/1lJ7vW5VTGSu4YW+uzAQEHemtrrzSsfP
         jNYZavzDwUq4AtaIIbgLPzfVAUVMx+f6fZ7kcYQmtAT4jxA+/82BRmuRehfIWVAC4vB0
         e1iY3/AXdhV4NjktpQ07lAt2vWhc0HfymJqaDosQLxCFzQY4A9L/u3k2BDcgGqdoCTX7
         h2cg==
X-Gm-Message-State: AFqh2krYv0qyRv0FUojq5G98SBAcOKmjbXStgGbwH+wBaazrtdjOa9ys
        84ietgonGzldLq8Obh2jYx0T9Q==
X-Google-Smtp-Source: AMrXdXvtN5W3eKvKcnNOXrDUF8o1I27kBKic4/yYC/bgq1LUrNnlcztwZrwFEr6NwuC7Mwg6qyBSjQ==
X-Received: by 2002:a05:6e02:de7:b0:308:29b7:4484 with SMTP id m7-20020a056e020de700b0030829b74484mr9726349ilj.23.1671554835712;
        Tue, 20 Dec 2022 08:47:15 -0800 (PST)
Received: from localhost (30.23.70.34.bc.googleusercontent.com. [34.70.23.30])
        by smtp.gmail.com with UTF8SMTPSA id y18-20020a027312000000b0039d71c4659dsm253124jab.20.2022.12.20.08.47.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Dec 2022 08:47:15 -0800 (PST)
Date:   Tue, 20 Dec 2022 16:47:14 +0000
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <quic_rjendra@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, konrad.dybcio@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dianders@chromium.org
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: qcom: Document the sc7280 CRD
 Pro boards
Message-ID: <Y6HnElz32///ctIB@google.com>
References: <20221216112918.1243-1-quic_rjendra@quicinc.com>
 <Y5x+WEwTtpoV0gaR@google.com>
 <fd23e295-fea0-1b0a-752c-3cce26b57346@quicinc.com>
 <Y6HHCrl0q5BhrHOY@google.com>
 <e269300d-539e-9eb8-8b3c-d309f3abca1b@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <e269300d-539e-9eb8-8b3c-d309f3abca1b@quicinc.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Dec 20, 2022 at 09:50:06PM +0530, Rajendra Nayak wrote:
> 
> 
> On 12/20/2022 8:00 PM, Matthias Kaehlcke wrote:
> > On Tue, Dec 20, 2022 at 10:30:32AM +0530, Rajendra Nayak wrote:
> > > 
> > > On 12/16/2022 7:49 PM, Matthias Kaehlcke wrote:
> > > > On Fri, Dec 16, 2022 at 04:59:17PM +0530, Rajendra Nayak wrote:
> > > > > Add compatibles for the Pro SKU of the sc7280 CRD boards
> > > > > which come with a Pro variant of the qcard.
> > > > > The Pro qcard variant has smps9 from pm8350c ganged up with
> > > > > smps7 and smps8.
> > > > > 
> > > > > Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> > > > > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > > > Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
> > > > > ---
> > > > > v4 changes:
> > > > > Added the zoglin-sku1536 compatible along with hoglin-sku1536.
> > > > > Zoglin is same as the Hoglin variant, with the SPI Flash reduced
> > > > > from 64MB to 8MB
> > > > > 
> > > > >    Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
> > > > >    1 file changed, 6 insertions(+)
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> > > > > index 1b5ac6b02bc5..07771d4c91bd 100644
> > > > > --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> > > > > +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> > > > > @@ -558,6 +558,12 @@ properties:
> > > > >              - const: google,hoglin
> > > > >              - const: qcom,sc7280
> > > > > +      - description: Qualcomm Technologies, Inc. sc7280 CRD Pro platform (newest rev)
> > > > > +        items:
> > > > > +          - const: google,zoglin-sku1536
> > > > > +          - const: google,hoglin-sku1536
> > > > 
> > > > Is there actually such a thing as a 'hoglin-sku1536', i.e. the Pro qcard
> > > > with 64MB of SPI flash, or do they all have 8MB of flash?
> > > 
> > > The SPI flash is on the CRD mother-board and not on the qcards, so if you replace
> > > the qcards on the CRDs with 64MB flash you would need the hoglin-sku1536 to
> > > boot on those.
> > 
> > With such a configuration how does the bootloader know it should pass the kernel
> > the device tree for 'hoglin-sku1536' (pro) and not the non-pro variant? IIUC the
> > device tree is selected based on pin strappings on the mother-board, not the
> > qcard.
> 
> The device tree is selected based on the pin strappings _and_ additional logic
> to dynamically identify modem/non-modem(wifi) as well as pro/non-pro SKUs which
> was added in the bootloaders.

Thanks for the clarification!
