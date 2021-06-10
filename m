Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DC1BC3A2930
	for <lists+devicetree@lfdr.de>; Thu, 10 Jun 2021 12:17:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229966AbhFJKTR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Jun 2021 06:19:17 -0400
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124]:35339 "EHLO
        us-smtp-delivery-124.mimecast.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S230265AbhFJKTJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 10 Jun 2021 06:19:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1623320233;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=2SmBM62v3Il6KXY0QbpUItrrqJPXImttrBSOaiO/rBo=;
        b=TaH95TZ9pMa2/TD4w+kitgQSuTPHSen+a939VinjxJvgmwSem4OrPsuh+CHL1El8aD4S5f
        K7sySC/QQclcE222QWmOBrjlbc4HOYZuMqbWA/uPs+dm5ng6+8E0RREe+F3I0pL8LHYlxC
        4z6zobWxamVRUJR0uDM+fba1C0UQrd8=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-162-5HYSn6YmP0GCXF7Juz4ljg-1; Thu, 10 Jun 2021 06:17:12 -0400
X-MC-Unique: 5HYSn6YmP0GCXF7Juz4ljg-1
Received: by mail-ej1-f69.google.com with SMTP id z6-20020a17090665c6b02903700252d1ccso8797859ejn.10
        for <devicetree@vger.kernel.org>; Thu, 10 Jun 2021 03:17:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=2SmBM62v3Il6KXY0QbpUItrrqJPXImttrBSOaiO/rBo=;
        b=sGikXFFBuV1C5UAOq0urpnSeqigw45uipJhwSLDCQ0qcwEByh+yHsxnRLQFBPLVeyX
         FhNO0hvaUBjpNyvyAAWImppp6Oedu/dLqycdnqm2+95AnXga4DjBEmKHnrI6CNVD5YoI
         IpXWjyXZp65LOyVksIyIJDOKa46HG8w9iCugoFuYh8WZi+zsd2u6xXLdWmxHS1Qc8kk9
         8rdgErxLAXa75t5DDqgJHEE79JJwwfQJNm2mJCmRGWReFaMAsi59gbt9XUSqWZSXMTHM
         bWcQhcgzkitQpqOpecX+teLex87fhp7XN4QAk1qrvrHvvwQ5pUonuktAy07vxhDzvQ3N
         DnSA==
X-Gm-Message-State: AOAM5335QOkjamV/T0HUpv2Nwl8dkwEjvlHxd1/Y5uDJfWL210bIY1GB
        nIvpuYG8lJMCkFvrbr3V8RFyV1GXAsROtP9f8FYvpMA/TBhBhXofBNYL8xDY+wUHwi/ToVlAVZC
        Od2EBiK0K8dGx1uuX7OeTZA==
X-Received: by 2002:a17:906:71d2:: with SMTP id i18mr3884335ejk.373.1623320230965;
        Thu, 10 Jun 2021 03:17:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrQA+kKsgr6fr2KewqmA0iEMph7XjlRsSLu0gvadrf9O7FIZ9msAhDuu0jftNju1Qps/cDuw==
X-Received: by 2002:a17:906:71d2:: with SMTP id i18mr3884317ejk.373.1623320230819;
        Thu, 10 Jun 2021 03:17:10 -0700 (PDT)
Received: from x1.localdomain (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl. [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
        by smtp.gmail.com with ESMTPSA id bh3sm852904ejb.19.2021.06.10.03.17.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jun 2021 03:17:10 -0700 (PDT)
Subject: Re: [PATCH 0/6] iio: accel: bmc150: Add support for BMA253/BMA254
To:     Stephan Gerhold <stephan@gerhold.net>,
        Jonathan Cameron <jic23@kernel.org>
Cc:     Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Peter Meerwald <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, Bastien Nocera <hadess@hadess.net>,
        Laurentiu Palcu <laurentiu.palcu@intel.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20210610095300.3613-1-stephan@gerhold.net>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <40d1ab0a-420a-f650-1eec-1f228e9ecee6@redhat.com>
Date:   Thu, 10 Jun 2021 12:17:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210610095300.3613-1-stephan@gerhold.net>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 6/10/21 11:52 AM, Stephan Gerhold wrote:
> The Bosch BMA253 accelerometer is very similar to both BMA254 and BMA255.
> The current situation is very confusing: BMA254 is supported by the bma180
> driver, but BMA255 is supported by the bmc150-accel driver.
> 
> It turns out the bma180 and bmc150-accel drivers have quite some overlap,
> and BMA253/BMA254 would be a bit better supported in bmc150
> (which has support for the motion trigger/interrupt).
> 
> This series adds BMA253 support to bmc150-accel and also moves BMA254
> over to bmc150, removing some unnecessary code from the bma180 driver.
> 
> I asked Linus Walleij to test these patches on BMA254 a while ago
> and he suggested that I already add his Reviewed-by.
> 
> Stephan Gerhold (6):
>   iio: accel: bmc150: Drop misleading/duplicate chip identifiers
>   dt-bindings: iio: accel: bma255: Document bosch,bma253
>   iio: accel: bmc150: Add device IDs for BMA253
>   dt-bindings: iio: bma255: Allow multiple interrupts
>   dt-bindings: iio: accel: bma180/bma255: Move bma254 to bma255 schema
>   iio: accel: bma180/bmc150: Move BMA254 to bmc150-accel driver

Thanks, the entire series looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

for the series.

Regards,

Hans

> 
>  .../bindings/iio/accel/bosch,bma180.yaml      |  3 +-
>  .../bindings/iio/accel/bosch,bma255.yaml      |  9 +-
>  drivers/iio/accel/Kconfig                     |  6 +-
>  drivers/iio/accel/bma180.c                    | 91 +++----------------
>  drivers/iio/accel/bmc150-accel-core.c         | 36 ++------
>  drivers/iio/accel/bmc150-accel-i2c.c          | 34 ++++---
>  drivers/iio/accel/bmc150-accel-spi.c          | 31 ++++---
>  drivers/iio/accel/bmc150-accel.h              | 10 --
>  8 files changed, 67 insertions(+), 153 deletions(-)
> 

