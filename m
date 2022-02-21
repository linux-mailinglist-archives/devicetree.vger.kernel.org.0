Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 025734BE3AC
	for <lists+devicetree@lfdr.de>; Mon, 21 Feb 2022 18:57:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358114AbiBUMkY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Feb 2022 07:40:24 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:33138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358086AbiBUMkX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Feb 2022 07:40:23 -0500
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C2261928B
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 04:40:00 -0800 (PST)
Received: by mail-wm1-x32b.google.com with SMTP id q198-20020a1ca7cf000000b0037bb52545c6so13456140wme.1
        for <devicetree@vger.kernel.org>; Mon, 21 Feb 2022 04:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=R/f51CIZR0643bv1aqteYa+9eUKhtWxP5/qjv85KXj8=;
        b=bameRcwi6JoaD2M3I7RYimjEysOpTD99zApAfcKTy8lF1obgbQ6PoH6zMBRJ2an/ra
         XhZzLk3+P+LvmUJZSRGo4u8NywtRdT60Ep/BJndTU9XZN0l/x97cjTIiC6uUhPa5CI+u
         2yGfP0g/fZlGpKCNHecWTXhTofhlVHrxTrfUcXfIPQXu6FzNUZvuCnIubkD51i96XpnI
         YhGDkFnBSIt8SZ6nEEVsX44HT5XlTjrJVeA5v9cK/0vDZiU66acvNjNqWq/oXo3STiGl
         rYWGVpV0RfbMjPmDFPQQkEEq89/Q7TdhtztPWUmgT2lujlH966adrVVYnJYctL7JNq+P
         3cWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=R/f51CIZR0643bv1aqteYa+9eUKhtWxP5/qjv85KXj8=;
        b=3mhRjKfSK4vL/tvYKg9w09XPfCshCqn5Yx5n6gb35Cd7m2A3oILMUynRGED5jvq1ze
         RT1XGwXmT4s3+p+eppQqop94lvHCwZSi6cHkQLJJmeXu8ws1O7no+383Y6Tv3X4IlsqQ
         USCB8GMagHHEzi1I5rAWQgnSzbm4/SaejPu0G5xRnWs9Wi8XfjoK9on07Z5WucXefu3v
         3JVAnbDj/UBrM1zmDWyCmU2XgAI2A6ka7YSoBuoSrd5hB+qtW7VZrgu7CBnCxQxM04m7
         kaIWEnu7i4II7yJq/E2Fp4cCwr+wFoaUY4P6/gqogSyzrYjK+pWjlfABL2HQnj7lef4r
         zvRQ==
X-Gm-Message-State: AOAM530+PdU9eeNGsRKDmQfLqMEwwMHtx4PXAnWNuhhTdE00gxMIZ1dh
        eCf4AZmpZcbPCK86w0wup94BKA==
X-Google-Smtp-Source: ABdhPJxkJi1EPLjYr7iSmElxNRVJGzj1OLsfkUvsS+BfolnnyJhH3DB/wikuEdQKXWXlhbT3n4hdJg==
X-Received: by 2002:a05:600c:1e0e:b0:37c:6c82:72a6 with SMTP id ay14-20020a05600c1e0e00b0037c6c8272a6mr21033143wmb.35.1645447198661;
        Mon, 21 Feb 2022 04:39:58 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id h11sm32207945wrr.64.2022.02.21.04.39.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Feb 2022 04:39:58 -0800 (PST)
Date:   Mon, 21 Feb 2022 12:39:56 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Roger Quadros <rogerq@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: update Roger Quadros email
Message-ID: <YhOIHARSdIliVWjW@google.com>
References: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
 <2e33c00b-8460-3d85-92aa-2c3257725c2c@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <2e33c00b-8460-3d85-92aa-2c3257725c2c@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 21 Feb 2022, Roger Quadros wrote:

> On 21/02/2022 12:07, Krzysztof Kozlowski wrote:
> > Emails to Roger Quadros TI account bounce with:
> >   550 Invalid recipient <rogerq@ti.com> (#5.1.1)
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> 
> Thanks so much!
> 
> Signed-off-by: Roger Quadros <rogerq@kernel.org>

I assume you mean Acked-by (if you are the maintainer) or Reviewed-by?

> > ---
> > 
> > Roger,
> > You should also add a mailmap entry for your inactive emails.
> 
> OK. I will send out a patch for this. Thanks for the hint. :)
> 
> > ---
> >  .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 +-
> >  Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml         | 2 +-
> >  Documentation/devicetree/bindings/usb/ti,j721e-usb.yaml         | 2 +-
> >  Documentation/devicetree/bindings/usb/ti,keystone-dwc3.yaml     | 2 +-
> >  4 files changed, 4 insertions(+), 4 deletions(-)

What's the merge-plan for this Krzysztof?

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
