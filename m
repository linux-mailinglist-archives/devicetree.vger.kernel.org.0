Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD59939CD63
	for <lists+devicetree@lfdr.de>; Sun,  6 Jun 2021 07:08:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbhFFFKN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Jun 2021 01:10:13 -0400
Received: from mail-oi1-f171.google.com ([209.85.167.171]:42499 "EHLO
        mail-oi1-f171.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229465AbhFFFKM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Jun 2021 01:10:12 -0400
Received: by mail-oi1-f171.google.com with SMTP id v142so14042791oie.9
        for <devicetree@vger.kernel.org>; Sat, 05 Jun 2021 22:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=yS6q0T3N9afYQN5HdfWE5z7pv3ReU18X80dOdXsawn0=;
        b=F2tuo+vePIjuZq6maCAptHCP9qgP3Apo2dhGkToFBYsgQdS2L6KJYf4SOxlHZjH2q3
         EZ3tuCclRrjKH1U+Q8NXEqvjUwcKpxhUOhlP4Ocs5B8IwJwNKBJnPWswJTXxLPh2Rns0
         ahKPWlSSOGkau6mcxd86A91vqGNXDSRwgWCuhlS7UZJLhpeuwJt8OyLa8GREd4p3Efrg
         scPUoR8t+/KNb/DMHoL1gVHTkMrQlVzE+KhkPPvMmQa7W70sa3W2fFiCXGiJ30oT9SYm
         9pnWP5wM1ur9GWhqelEhR4TcHMr6Gz2FUnMjHk6Yyq9E6FptvVK1nmQIi70zdgjQCu2q
         qc8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=yS6q0T3N9afYQN5HdfWE5z7pv3ReU18X80dOdXsawn0=;
        b=ILfGBGag1qB7j0j4pthqhG9CvmvcyTOu593V7EQ2ZCDjQTSGdKW2GsfmXCcZKdIn8d
         3jUbw+1BLjm4QSca8cZQo3JYls8Gr2X27AbBWdZ+WOq94IlNlLRDbwauucoz/mHIUrMp
         A+U3bWrYUtiNmB6El2f9AMTNroNHp4zObIGeresHeVSsFzVtJ7GlZV6ziyXuo3uYXlTT
         adIn0K823cNxYNkfXsKOfTsATJrGlRUm+eCStpJ7u4u6RElYoXt8QkFQ52WKyw6FZl4g
         EzcCZI15GkxUOJno624Eaxx+9OifEFJDzjK5p/ZP9XNmNzNl3V5+XllHc4i1NERCr783
         6i2A==
X-Gm-Message-State: AOAM530KnvyjItgyYJCg7JbORvGZY0rKIWkSqjDV4jqLAfQ0wOPG/YGB
        Hk9KWbUYJeERFoN/KOmgjrClhQ==
X-Google-Smtp-Source: ABdhPJxq+wFGA2yHIm0XUjuXzAIZpsyd09ngggNZe3/Va1Pg+/uWCcOXkmOOvCcKNZfj57WIIzO/AA==
X-Received: by 2002:a54:4e82:: with SMTP id c2mr15961103oiy.137.1622956031734;
        Sat, 05 Jun 2021 22:07:11 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 123sm555226ooe.24.2021.06.05.22.07.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 22:07:11 -0700 (PDT)
Date:   Sun, 6 Jun 2021 00:07:09 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     khsieh@codeaurora.org
Cc:     robdclark@gmail.com, sean@poorly.run, swboyd@chromium.org,
        vkoul@kernel.org, agross@kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, abhinavk@codeaurora.org,
        aravindh@codeaurora.org, freedreno@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64/dts/qcom/sc7180: Add Display Port dt node
Message-ID: <YLxX/YtegtbLmkri@builder.lan>
References: <1622736555-15775-1-git-send-email-khsieh@codeaurora.org>
 <YLkI/6ItCz+SbbuJ@yoga>
 <ac326ec8689c0babb08b2311e19d52cc@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ac326ec8689c0babb08b2311e19d52cc@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 03 Jun 16:56 CDT 2021, khsieh@codeaurora.org wrote:

> On 2021-06-03 09:53, Bjorn Andersson wrote:
> > On Thu 03 Jun 11:09 CDT 2021, Kuogee Hsieh wrote:
[..]
> > > diff --git a/arch/arm64/boot/dts/qcom/sc7180-trogdor.dtsi
[..]
> > > +				power-domains = <&rpmhpd SC7180_CX>;
> > 
> > Just curious, but isn't the DP block in the MDSS_GDCS? Or do we need to
> > mention CX here in order for the opp framework to apply required-opps
> > of CX?
> 
> yes,

If you want me, or other maintainers, to spend any time reviewing or
applying your patches going forward then you need to actually bother
replying properly to the questions asked.

Thanks,
Bjorn
