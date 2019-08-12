Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 28F0189723
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2019 08:25:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725923AbfHLGZZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Aug 2019 02:25:25 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:35839 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725887AbfHLGZZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Aug 2019 02:25:25 -0400
Received: by mail-wm1-f66.google.com with SMTP id l2so10712799wmg.0
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2019 23:25:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=zNM9CQE2nH0MfN9gL6cFS6VhCkj3/pdwb+Kpr2qK1RY=;
        b=GGlLH6m3vmzSx9ZoEWu0rHrchVy7wHSg+SV38pq8jUYMU/pkHeuEpS6EQmgBNTwvib
         Gof6YA2GgVzg9BshC6HK2fLyAgheCJeEr6FdgFECcU+W+IaaM/XgB+UlIxbVb6IYAFed
         VWl+SevhfrbOtGzpTWO+VgzafItAxRFEPEAgbw9MfhmAiQEGnmf4zmS1jayadb/g95tQ
         HZ8NJZF/SLNYYFsax3aIZY4OeeJS48ZlVPMMHPpNnSQhOPz1Awqm+qXSgV1j4DofDZOf
         tqO3l2MI3oOeJ8qCzr/Fpe5GrMu3NGU7kXllNluhwJDQbF2T9gv8QmpRKM9dKW1Tb2NR
         tWbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=zNM9CQE2nH0MfN9gL6cFS6VhCkj3/pdwb+Kpr2qK1RY=;
        b=Hxc4yUqqQ8+lfnqvIpX1jbGvfkdt8ysFBIyJScqjqPEZS5vi32bk4WaA7M2Z5g2R8X
         LL59jvhJcvFNmgf/gTgmjI8ywWoz+IwG+z4Tm5XiJe9Ml/4qrhApKSQ9GsfpEH+sYaF2
         2LfVrCOnXciR5r4ZlDRqdZphN65fq0rn/xkQtn1fstMw97ygVAob7JlBjP12xKoSussL
         9Snzn1hddtp7JVDNKsPufby7gLwrWDi8X5YKnq9ey55egjTzRvJJWMWUE3a6QFmaH0mR
         x2cbD3hQQAbXp5lSZztuKk8N4KDY8F/KJtcqhWNOYfGa919knQzAii9P4g0G9SAJ57P3
         2AZg==
X-Gm-Message-State: APjAAAW+nNulWfL2O/EyCtc90L7zzImmavoGkUKk4GpmNIGsmlnkTx5P
        a+bbq6w6QMy+be44ZqIUsplrJw==
X-Google-Smtp-Source: APXvYqwrfxaGz5ztqxyzMHpAK9TC89kgQXpG97kTymw+X1Gwrp0Vy+khA9CnCoXcKDnPh/EO+FO50w==
X-Received: by 2002:a1c:4803:: with SMTP id v3mr25906217wma.49.1565591122813;
        Sun, 11 Aug 2019 23:25:22 -0700 (PDT)
Received: from dell ([2.27.35.255])
        by smtp.gmail.com with ESMTPSA id b186sm19879747wmb.3.2019.08.11.23.25.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 11 Aug 2019 23:25:22 -0700 (PDT)
Date:   Mon, 12 Aug 2019 07:25:20 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Jonathan =?iso-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mfd: rn5t618: Document optional property
 system-power-controller
Message-ID: <20190812062520.GB4594@dell>
References: <20190129135917.29521-1-j.neuschaefer@gmx.net>
 <20190201092411.GG783@dell>
 <20190808183924.GB1966@latitude>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190808183924.GB1966@latitude>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 08 Aug 2019, Jonathan Neuschäfer wrote:

> On Fri, Feb 01, 2019 at 09:24:11AM +0000, Lee Jones wrote:
> > On Tue, 29 Jan 2019, Jonathan Neuschäfer wrote:
> > 
> > > The RN5T618 family of PMICs can be used as system management
> > > controllers, in which case they handle poweroff and restart. Document
> > > this capability by referring to the corresponding generic DT binding.
> > > 
> > > Signed-off-by: Jonathan Neuschäfer <j.neuschaefer@gmx.net>
> > > ---
> > >  Documentation/devicetree/bindings/mfd/rn5t618.txt | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > 
> > Applied, thanks.
> 
> Hi,
> 
> apparently this patch got lost somehow (I can't find it in mainline or
> -next). Should I resend it?

Yes, it appears that it did.

I've applied it again.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
