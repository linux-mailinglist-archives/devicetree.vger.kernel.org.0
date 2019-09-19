Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D6F9DB7D3F
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2019 16:51:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390562AbfISOva (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Sep 2019 10:51:30 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:44779 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390425AbfISOv3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Sep 2019 10:51:29 -0400
Received: by mail-ed1-f68.google.com with SMTP id r16so3430065edq.11
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2019 07:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=vg2zcBttUsMDTXTj6Y52ujR6gzQ0UC888oEHXYicUhU=;
        b=BB6nymCjrYWzk/ezn8V9Bq8KAzOheOe4V00zoaJQI/atMda4h54Mjta1Uc/U1nU5Sv
         P6uItwg2j6i5JS/3XBWemgPA5lOFQlGF4omk6PSeLFhTPsuwvLfEdAN8F1cZA7Fy9KDZ
         A2YZuhQ4yXE1EiOkGERPUkqchDSHIsSEoDo5/WkhC0zhcUY4OtX81qD1iqULmAkagnwK
         dTz/N78siErEbNh/2BPf/7174+TI8olQ+ElxPCIRoWyvP3GV6e2NqI+7g2CK6e0Opqha
         WHvMmg1qNdrM9FHLjYqcHpKnPlaJMQWxp/xK1G6+AJFDSKtYA5YRCKwktG72ZCxkar5v
         W6ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=vg2zcBttUsMDTXTj6Y52ujR6gzQ0UC888oEHXYicUhU=;
        b=lV1KwhP0cyX6Vge39h6TowmebsbWzaWUPjBLbj1VkpQU9aE31ofkq8oVvAJxjZFka2
         UWxQP7rMwsl3B1bQ/s2HW9uQaG4jlravD93+tDyBjH9bkEC4naLWkpT7/WG0PQX+4Z3x
         RMsXPgdcBso2sOOlZuTx4IkbSxOcCzV1Q6tNyK+4Og6Foyos1PVMJ4qPjYAbAdd2Tywl
         VTTXZkwRoMc7FXQuFBPeH7ZYIjJbblOpDOOHdXLoyu1spnA4Y+tAWDQ/+X15KqDOa/jG
         J9nNtLdT9wlokfanYvmiN4s64M1mB3q4Dcl4H/ZMf7SU5XlmwFh9Ba7KxLiCWq5/FvYC
         sl6w==
X-Gm-Message-State: APjAAAU0f+8H89bMtlc0awIT0YM2LdF+U7VpwRMyPPh86mmpsrfS27FA
        ShiaJsU5ov530V82/TmiRtBB4Q==
X-Google-Smtp-Source: APXvYqyCvmJGG8xROMmxyF0PjR7AUd5prnHdYr7FnNrvlnFxqdqu5Pi0sRzdrKGCbsxBEQrr2IcUKA==
X-Received: by 2002:a17:906:31c3:: with SMTP id f3mr15028805ejf.296.1568904685177;
        Thu, 19 Sep 2019 07:51:25 -0700 (PDT)
Received: from lophozonia ([85.195.192.192])
        by smtp.gmail.com with ESMTPSA id f6sm1666003edr.12.2019.09.19.07.51.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2019 07:51:24 -0700 (PDT)
Date:   Thu, 19 Sep 2019 16:51:22 +0200
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     Auger Eric <eric.auger@redhat.com>
Cc:     will@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org,
        jacob.jun.pan@linux.intel.com, joro@8bytes.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
        robh+dt@kernel.org, robin.murphy@arm.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/8] iommu/arm-smmu-v3: Support platform SSID
Message-ID: <20190919145122.GA1013538@lophozonia>
References: <20190610184714.6786-1-jean-philippe.brucker@arm.com>
 <20190610184714.6786-4-jean-philippe.brucker@arm.com>
 <63d4a71a-8e3f-f663-34bc-6647971b7e4b@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <63d4a71a-8e3f-f663-34bc-6647971b7e4b@redhat.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Eric,

Sorry for the delay. I'll see if I can resend this for v5.5, although I
can't do much testing at the moment.

On Mon, Jul 08, 2019 at 09:58:22AM +0200, Auger Eric wrote:
> Hi Jean,
> 
> On 6/10/19 8:47 PM, Jean-Philippe Brucker wrote:
> > For platform devices that support SubstreamID (SSID), firmware provides
> > the number of supported SSID bits. Restrict it to what the SMMU supports
> > and cache it into master->ssid_bits.
> The commit message may give the impression the master's ssid_bits field
> only is used for platform devices.

Ok maybe I should add that this field will be used for PCI PASID as
well.

> > @@ -2097,6 +2098,16 @@ static int arm_smmu_add_device(struct device *dev)
> >  		}
> >  	}
> >  
> > +	master->ssid_bits = min(smmu->ssid_bits, fwspec->num_pasid_bits);
> In case the device is a PCI device, what is the value taken by
> fwspec->num_pasid_bits?

It would be zero, as firmware only specifies a value for platform
devices. For a PCI device, patch 8/8 fills master->ssid_bits from the
PCIe PASID capability.

> > +	/*
> > +	 * If the SMMU doesn't support 2-stage CD, limit the linear
> > +	 * tables to a reasonable number of contexts, let's say
> > +	 * 64kB / sizeof(ctx_desc) = 1024 = 2^10
> ctx_desc is 26B so 11bits would be OK

This refers to the size of the hardware context descriptor, not struct
arm_smmu_ctx_desc. Next version moves this to a define and makes it
clearer.

Thanks,
Jean

