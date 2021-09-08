Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A3B6403E27
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 19:10:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235364AbhIHRLe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Sep 2021 13:11:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235624AbhIHRLd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Sep 2021 13:11:33 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C34B7C0613C1
        for <devicetree@vger.kernel.org>; Wed,  8 Sep 2021 10:10:25 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id i8-20020a056830402800b0051afc3e373aso3881532ots.5
        for <devicetree@vger.kernel.org>; Wed, 08 Sep 2021 10:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6LGhLlyGfDieC90krK66I/Mdf34zEcB4tJ81qPREmoM=;
        b=c80CLUoDExwws380FL+IbjjQl1U/Fmd7uo4QCdYXq8THT//hiA5ubYgIx3oVA8uv17
         1UbavbcuMaE3fhu9iiLkOVDoHTYqlw6AllaFRb+gLvdKshd/L3D91qvCLdgj7sjHVZdS
         /cEyQTBgIulkYolYrZ6wcrK/U9PFPHKR3kmta6XzWFopeO5dYQK+vVgQoPjrctKskzlR
         AlI256UVnHU04mZMt4e2Hb/opWWWN7OVfI58PYzxJV8khac9vtAm9PJMt4Kvo6owlhag
         2ekYSEYUZRz2iOL/YR/BXfFXlL568R/Knw/nXb3aRGoEZWojF/3wwR0lJWmxfcdoRke0
         gwzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6LGhLlyGfDieC90krK66I/Mdf34zEcB4tJ81qPREmoM=;
        b=WOcc99Mx/niDpHWmor/wHir3pAc6mIeOPhNaBL2qQe3AooXidtyMPQYAF/55zTgyRJ
         BZQxCZGgvvzDWsaWt/67Wmh9syAMRamwXQHNUcRWFkq3rBT8z4zUc84pw6Rx2TONJDCT
         SGCdF7Ks1z7RW7sIYMzqzRCPRAXnU57PMLNtxsazVCPPXddXz9ukjiCF7fg+FY02AGsE
         P/I4YIXieQxC+XzCSetznhqmngC3KUi+UE/beyRGKCZXU+RXX2dkcBtHEHrYegeMynG4
         1byGNAmixds1i2zvCDGiK+rD5hu++aeAsOSu/V4yh6IXjoKNHM+bOWpuG6Jx4eNqHiFV
         9h5A==
X-Gm-Message-State: AOAM531CQKBi2BOs3b72LrOBbCr4+hArbCcuQWm4odAJqsZYLLR3Flbk
        pvKh1LLcMV4mdAUIJaEmdanDPA==
X-Google-Smtp-Source: ABdhPJx4UnBs7ICh/RDtbZT+vcUobyCQZkVlqESgpps4CBsDWRckLDEI0l1Y/YgUWM/au1q0GH4B4A==
X-Received: by 2002:a05:6830:3114:: with SMTP id b20mr4149958ots.17.1631121025099;
        Wed, 08 Sep 2021 10:10:25 -0700 (PDT)
Received: from ripper (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id z78sm551229ooa.29.2021.09.08.10.10.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Sep 2021 10:10:24 -0700 (PDT)
Date:   Wed, 8 Sep 2021 10:11:23 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     skakit@codeaurora.org
Cc:     Stephen Boyd <swboyd@chromium.org>, Andy Gross <agross@kernel.org>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        mka@chromium.org, kgunda@codeaurora.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/3] leds: Add pm8350c support to Qualcomm LPG driver
Message-ID: <YTjuu9VVsvnELtLx@ripper>
References: <1630924867-4663-1-git-send-email-skakit@codeaurora.org>
 <1630924867-4663-3-git-send-email-skakit@codeaurora.org>
 <CAE-0n52Jb9nw9rbbQJrKNDQ_O2iCahDr8WLGkWORcNks9ptH-g@mail.gmail.com>
 <f35822d036988a1a6b6e4dcaa46373e7@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f35822d036988a1a6b6e4dcaa46373e7@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 08 Sep 02:17 PDT 2021, skakit@codeaurora.org wrote:

> On 2021-09-08 01:50, Stephen Boyd wrote:
> > Quoting satya priya (2021-09-06 03:41:06)
> > > Add pm8350c compatible and lpg_data to the driver.
> > > 
> > > Signed-off-by: satya priya <skakit@codeaurora.org>
> > > ---
> > >  drivers/leds/rgb/leds-qcom-lpg.c | 10 ++++++++++
> > >  1 file changed, 10 insertions(+)
> > > 
> > > diff --git a/drivers/leds/rgb/leds-qcom-lpg.c
> > > b/drivers/leds/rgb/leds-qcom-lpg.c
> > > index 327e81a..6ee80d6 100644
> > > --- a/drivers/leds/rgb/leds-qcom-lpg.c
> > > +++ b/drivers/leds/rgb/leds-qcom-lpg.c
> > > @@ -1275,9 +1275,19 @@ static const struct lpg_data pm8150l_lpg_data
> > > = {
> > >         },
> > >  };
> > > 
> > > +static const struct lpg_data pm8350c_pwm_data = {
> > > +       .pwm_9bit_mask = BIT(2),
> > > +
> > > +       .num_channels = 1,
> > > +       .channels = (struct lpg_channel_data[]) {
> > 
> > Can this be const struct lpg_channel_data? I think that will move it to
> > rodata which is only a good thing.
> > 
> 
> I agree.
> @Bjorn, can we make it const struct?
> 

I like it and have updated the driver patches accordingly.


Seems like I still have a couple of more comments from Uwe left to
resolve on v9 of the driver, I'll fix those up and post the driver
again.

Thanks,
Bjorn

> > > +               { .base = 0xeb00 },
> > > +       },
> > > +};
> > > +
> > >  static const struct of_device_id lpg_of_table[] = {
> > >         { .compatible = "qcom,pm8150b-lpg", .data =
> > > &pm8150b_lpg_data },
> > >         { .compatible = "qcom,pm8150l-lpg", .data =
> > > &pm8150l_lpg_data },
> > > +       { .compatible = "qcom,pm8350c-pwm", .data =
> > > &pm8350c_pwm_data },
> > >         { .compatible = "qcom,pm8916-pwm", .data = &pm8916_pwm_data },
> > >         { .compatible = "qcom,pm8941-lpg", .data = &pm8941_lpg_data },
> > >         { .compatible = "qcom,pm8994-lpg", .data = &pm8994_lpg_data },
