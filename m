Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 692724F81F0
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 16:39:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344137AbiDGOll (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 10:41:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344148AbiDGOll (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 10:41:41 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B4B51B2161
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 07:39:02 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id p26-20020a05600c1d9a00b0038ccbff1951so4432014wms.1
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 07:39:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+HrqUl2stcAnQOvkV/cLC8sh1bdsuE9uaYRM3SC8TAI=;
        b=QC/NBWbz8s242GqiqGVCxZjqkf65n2BOMSMdySwx5OMCnmpmfgmy2Gl0mqkViPk58A
         B0hFl228YREAAGFp1bTWTBF48v9/vcamAwhlivD7F9RoAWhkxTVUUszkElVwniFp+KSW
         153YOYtKLxloRx116E1JbzBPjjKXbUaIisB8A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+HrqUl2stcAnQOvkV/cLC8sh1bdsuE9uaYRM3SC8TAI=;
        b=ErpvOAFHEjQg70D0hEOfF8PVpaJmaH3Uh8GzajF/DjD+gzuoo+c+CYDMcEraqjtOfp
         Yhjp1zli2GLA+hO6pkDFqjR6DS7+MWGPnhN4HbkYgkOdx68LEG1m4PkJYyBOKO21JXyv
         vejVLtp3J0KcokqbPcHAM1bz1wMBGMbATiMhQctJjrnfWshGJVwhCZ+8ZkbwU3uFRu1l
         quwzF60DKlUQ21yWfXwaS7OAtrGj3AKqKOHHtyZfS1Krhz/WI79pM1PjXvtPEpEXa0mL
         795xlKJzFpmDEl23I6ek9t/XhIGKkxvT+TxbO/W+KRH4fA4UfW8F0mrJs5fiVr6mncxY
         C/cg==
X-Gm-Message-State: AOAM533x2o0yEFeQUxziQRYQbVBq8jf0uovVTBFiXb3i+VMrSYb+1ogQ
        YUzy7SlnaNCR/NhxfFPo4iB1mw==
X-Google-Smtp-Source: ABdhPJxSm1o4AJPWmwSiOwXUcoOrfrDDoE6QavOVO+5QTW+urJsTAfmBJCV6RwoUxCRXXNUmmjXF1A==
X-Received: by 2002:a1c:f605:0:b0:37b:b5de:89a0 with SMTP id w5-20020a1cf605000000b0037bb5de89a0mr12345916wmc.88.1649342337820;
        Thu, 07 Apr 2022 07:38:57 -0700 (PDT)
Received: from google.com ([37.228.205.1])
        by smtp.gmail.com with ESMTPSA id bg8-20020a05600c3c8800b0038e4c5967besm7983010wmb.3.2022.04.07.07.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 07:38:57 -0700 (PDT)
Date:   Thu, 7 Apr 2022 14:38:55 +0000
From:   Fabio Baltieri <fabiobaltieri@chromium.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>, Lee Jones <lee.jones@linaro.org>,
        chrome-platform@lists.linux.dev, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/4] dt-bindings: update google,cros-ec-pwm
 documentation
Message-ID: <Yk73f9yyxy5LBC+V@google.com>
References: <20220331125818.3776912-1-fabiobaltieri@chromium.org>
 <20220331125818.3776912-4-fabiobaltieri@chromium.org>
 <Yk20uTE/Vdm2c6jI@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yk20uTE/Vdm2c6jI@robh.at.kernel.org>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,T_SCC_BODY_TEXT_LINE,
        T_SPF_HELO_TEMPERROR,T_SPF_TEMPERROR autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Wed, Apr 06, 2022 at 10:41:45AM -0500, Rob Herring wrote:
> On Thu, Mar 31, 2022 at 12:58:17PM +0000, Fabio Baltieri wrote:
> > Update google,cros-ec-pwm node documentation to mention the
> > google,use_pwm_type property.
> > 
> > Signed-off-by: Fabio Baltieri <fabiobaltieri@chromium.org>
> > ---
> >  .../devicetree/bindings/pwm/google,cros-ec-pwm.yaml         | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
> > index 4cfbffd8414a..9c895c990ed8 100644
> > --- a/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
> > +++ b/Documentation/devicetree/bindings/pwm/google,cros-ec-pwm.yaml
> > @@ -19,6 +19,12 @@ description: |
> >  properties:
> >    compatible:
> >      const: google,cros-ec-pwm
> > +
> > +  google,use-pwm-type:
> > +    description:
> > +      Use PWM types (CROS_EC_PWM_DT_<...>) instead of generic channels.
> > +    type: boolean
> 
> Either do a new compatible string if the cell interpretation is mutually 
> exclusive (channel number vs. type) or split the number space for the 
> 1st cell between type and channel number. IOW, set a bit (31?) to 
> signify the number is a type, not a channel.

Split the number space was my first (tentative) implementation as well,
but it turns out that the PWM subsystem really wants channels to be
zero-based[1], so I don't think flags or bitmasks are really an option.

New compatible sounds good though, I'll rework a v3 with that change.

Thanks!
Fabio

[1] https://elixir.bootlin.com/linux/v5.17/source/drivers/pwm/core.c#L423

-- 
Fabio Baltieri
