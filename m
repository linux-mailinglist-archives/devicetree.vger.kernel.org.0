Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AE75396755
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 19:45:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233223AbhEaRqm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 13:46:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232591AbhEaRqY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 13:46:24 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23736C09C383
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 10:11:42 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id a21so2010604oiw.3
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 10:11:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=x2aDW9EZI5H5rRyb3O7lG0UEKmsbbDC0cZ5mlHu0sWA=;
        b=vlFD3psaHKdwHbxcxpah7p1ZiYQflx73XsKNMOXKrj8oQSsRaY5+6pGihIGwVNQ1F5
         S7D+rLEE2tlYzlTT9tTiil6GUx/MWJifE1nkzfXIY8g46ah2fHNMZrPdkNHl/Nl/rRV3
         uwzhNOd7b+86uNajrR+NBFAPJotTrgMxCIaDprF0OcL0lyLSfO6ceh/+78u992uHWEVJ
         ZV36cDu8AqHka9uZftP6rZezHcChphAuEV+3xmz6bCxr9qnd5cWk5oqVBjon1xdgxx/g
         TGOpyqP03TqKdk3prNUGwV+Dhq2qthzyy04nn5Xm3aeajCmHmNCnfEU+llUcjcyVmOrw
         35Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=x2aDW9EZI5H5rRyb3O7lG0UEKmsbbDC0cZ5mlHu0sWA=;
        b=Uzeye0QZIEohxIVUy37NgIeP/aGR2/3la/eedlwh6b35K6SaSNBQQofqD1lliyMoGX
         oGLhzCzR0+UBx60OzjQbKAeQ7C2w8Doo04z8OqiZWHBah7vW91yNfOP2VUWoPvO8LyfH
         AsN1RbeWBkfTFo1KhCXieQVUPWjZs8+Alc+XQAHSUcYQeoeEURMW2cyhdH8EIZFKxu/H
         yXweunz/QBUDjWjUsxKcH4snRTkrAS0+B+xFBRB5yYtp3Gijj1Q0rVi1B/FRXEnjNRXO
         ToYkD02bkL7Ta38hHoBtunQwY2S1k0dzkwzomiU/iP7yi6ZAC9U9ZTSr91J10JknE45X
         E9wg==
X-Gm-Message-State: AOAM531QIdcmAageDGZ3BAdrrr4w1uHxMoTpTv08y4YnTNd4V27nOzQn
        cJkMmXiXMTEKqDfSnVnWu3NzVg==
X-Google-Smtp-Source: ABdhPJydnirQBauTUayDNSbvt9C25z4tHxFOCcP1Z9XVlVhUkbK/KQEaaNHjaLfuKCI5Egi32LuVjA==
X-Received: by 2002:a54:450a:: with SMTP id l10mr15020983oil.135.1622481101436;
        Mon, 31 May 2021 10:11:41 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id m189sm2853465oif.45.2021.05.31.10.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 10:11:41 -0700 (PDT)
Date:   Mon, 31 May 2021 12:11:39 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Petr Vorel <petr.vorel@gmail.com>
Cc:     linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Ricardo Ribalda <ribalda@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Konrad Dybcio <konradybcio@gmail.com>,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: Re: [PATCH v4 1/1] arm64: dts: qcom: msm8994-angler: Fix
 gpio-reserved-ranges 85-88
Message-ID: <YLUYy8AwNnqMm/c3@builder.lan>
References: <20210415193913.1836153-1-petr.vorel@gmail.com>
 <YLUVARo3FoQ1LHTP@pevik>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YLUVARo3FoQ1LHTP@pevik>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 31 May 11:55 CDT 2021, Petr Vorel wrote:

> Hi,
> 
> ping please. Anything block this to get merged?
> 

Applied.

Thanks,
Bjorn

> Kind regards,
> Petr
> 
> > Reserve GPIO pins 85-88 as these aren't meant to be accessible from the
> > application CPUs (causes reboot). Yet another fix similar to
> > 9134586715e3, 5f8d3ab136d0, which is needed to allow angler to boot after
> > 3edfb7bd76bd ("gpiolib: Show correct direction from the beginning").
> 
> > Fixes: feeaf56ac78d ("arm64: dts: msm8994 SoC and Huawei Angler (Nexus 6P) support")
> 
> > Signed-off-by: Petr Vorel <petr.vorel@gmail.com>
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> > ---
> > Changes v3->v4:
> > * Fix patch title
> 
> > Sorry for so much noise with this simple patch.
> 
> > Kind regards,
> > Petr
> 
> >  arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts | 4 ++++
> >  1 file changed, 4 insertions(+)
> 
> > diff --git a/arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts b/arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts
> > index baa55643b40f..ffe1a9bd8f70 100644
> > --- a/arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts
> > +++ b/arch/arm64/boot/dts/qcom/msm8994-angler-rev-101.dts
> > @@ -32,3 +32,7 @@ serial@f991e000 {
> >  		};
> >  	};
> >  };
> > +
> > +&tlmm {
> > +	gpio-reserved-ranges = <85 4>;
> > +};
