Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 299C536E3E
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 10:13:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726805AbfFFINw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 04:13:52 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:45007 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725782AbfFFINw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 04:13:52 -0400
Received: by mail-wr1-f68.google.com with SMTP id b17so277786wrq.11
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 01:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=UnQLiliA9hI58ulfyIL2yz7hhigga6zrAzxyol2dLNE=;
        b=z4hzjFCbFqwFKL09Hre/pqSOd1NHQo1UJPD/QW2XoBU76xxZ8Gu0H7eDrg80J8rxbX
         cTvior4wLNVKmgN81/I1SRGJn1ggF59jF79CYFN6ZcPhbyHoqGEglfvedTdHhvZAQqF2
         kttDD+8IwvsbmpHP+5hUxTOYp/r2K0V682hwgholcAoufCG+wrADMF3tru9LESqyp0xx
         9wpKgJM4f1X74lIl7uejXt0H/cf5by50ds5IHPt5tojJn+6IG9BejQLT9FQB2d7q6S/t
         N8/pVarA1+tJ7X7pWW1+ZdRYGEGmm7S3/48sdje+rbRBJijhUC/POaB/+OMPbPd7HqIg
         JAaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=UnQLiliA9hI58ulfyIL2yz7hhigga6zrAzxyol2dLNE=;
        b=MvDxZ/lmvfeCXDeV9QS/swakZ3CIOYmadYDMJpyN+H8fmfHVvHHr1VB/3vgT+GDhM2
         Zot5WwSDhx8Fy3eW52Fke1udJVPkrad1u/lO2aWHCCFaMNwMnDEHBkSwKgThGaNfT6of
         JxMcv7HJYrYyQzdlM4v+HKn+IZeKOtYW+CbZ253eTYnq2X1qA80CMQ7uiMHcWfB2U1Uo
         bu+F7n/ZhpMtpuwtXm3B0aB/uuR1ems06uOtc4zBJtVPK/GJW/id2jitw8V3GaPtDPig
         YPdpau+dyeTgkLquOZuGPDJJviViMY14pXARXSlrIl9oMkqrj49G23XBWxm7F0i4yxyC
         7mBQ==
X-Gm-Message-State: APjAAAVw6ay10/p1fghjS3y1RXv5DIQr5u9VsiWPf8DGJtUISV0TZPkO
        pVKvRPTbuymSr1I0xnrT/B8tzA==
X-Google-Smtp-Source: APXvYqwGcntH0CmW8TUnbK2LoTFyM+Ubibw+J5+wzkcPqiSEriQIeC1GyMpDNyAPD5L10m+wu5id0A==
X-Received: by 2002:a5d:6644:: with SMTP id f4mr11942866wrw.51.1559808830905;
        Thu, 06 Jun 2019 01:13:50 -0700 (PDT)
Received: from dell ([2.31.167.229])
        by smtp.gmail.com with ESMTPSA id r9sm1195097wrq.0.2019.06.06.01.13.49
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 06 Jun 2019 01:13:50 -0700 (PDT)
Date:   Thu, 6 Jun 2019 09:13:48 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Jeffrey Hugo <jeffrey.l.hugo@gmail.com>, robh+dt@kernel.org,
        mark.rutland@arm.com, agross@kernel.org, david.brown@linaro.org,
        dmitry.torokhov@gmail.com, jikos@kernel.org,
        benjamin.tissoires@redhat.com, hdegoede@redhat.com,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: Add Lenovo Miix 630
Message-ID: <20190606081348.GB4797@dell>
References: <20190423160543.9922-1-jeffrey.l.hugo@gmail.com>
 <20190423160616.10017-1-jeffrey.l.hugo@gmail.com>
 <20190606055034.GA4797@dell>
 <20190606072601.GT22737@tuxbook-pro>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190606072601.GT22737@tuxbook-pro>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 06 Jun 2019, Bjorn Andersson wrote:

> On Wed 05 Jun 22:50 PDT 2019, Lee Jones wrote:
> 
> > On Tue, 23 Apr 2019, Jeffrey Hugo wrote:
> > 
> > > This adds the initial DT for the Lenovo Miix 630 laptop.  Supported
> > > functionality includes USB (host), microSD-card, keyboard, and trackpad.
> > > 
> > > Signed-off-by: Jeffrey Hugo <jeffrey.l.hugo@gmail.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/Makefile             |   1 +
> > >  .../boot/dts/qcom/msm8998-clamshell.dtsi      | 278 ++++++++++++++++++
> > >  .../boot/dts/qcom/msm8998-lenovo-miix-630.dts |  30 ++
> > 
> > What's happening with this patch?
> > 
> 
> The thermal-zones are wrong, but I'm okay with an incremental patch for
> that...

I guess it would take you about 10 seconds to whip those out when
merging?

> > It's been on the list a while now.  I'm waiting for it to be accepted,
> > since there are patches I wish to submit which are based on it.
> > 
> > Who is responsible for merging these?
> 
> ...so I've just been waiting for a conclusion on the HID patch before I
> could pick this up.

Aren't they orthogonal? 

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
