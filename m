Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0EC12B2AB3
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2019 10:57:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727555AbfINI5J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Sep 2019 04:57:09 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:54197 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727560AbfINI5J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 Sep 2019 04:57:09 -0400
Received: by mail-wm1-f65.google.com with SMTP id q18so4982943wmq.3
        for <devicetree@vger.kernel.org>; Sat, 14 Sep 2019 01:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=eJsWEJyTRtf2vqfF2X5AOBnMwt2USoWTNUjFFuEyZUw=;
        b=XPxQ8YXgVOkoLJGvJyshzbX6Gr7k0SWEuE2AOO0WUY3igPI3VDwHMDYVhDZDyOkvvz
         AWkvLm5pWMdyPWKEwVVuAuQCxmLe8Cs5ingLs4U90aLbnYRpsmWZZOTrhFxRIbd8VhBa
         UBcXaJ9/O2jpyDLbfwLoQ2FkPmXz4AvClqL6nPsZ/L6uUDSr7ZzMACgNb5BYr83aR623
         pwzKOJaivlT/0lMIlzH6jkWA6c+6pivJm1DzhTAKz8WOps9ZwAbo6TK+ueQg7oad5Nmy
         omc9kA8PdRl/hsmCPbBwlDr2VKR/US80VwOxSGN9TyP4jZcYJ1UfhrlAMv4dCAXflx+t
         S/WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=eJsWEJyTRtf2vqfF2X5AOBnMwt2USoWTNUjFFuEyZUw=;
        b=LGjxKg4UezArvr02gwBUSQmc3+eaqucnB5ttxYZJEViyDyhVd2RhzDVxVpxKNYuQEK
         G3vjaFnUgNYbJG6LuyAgjZQ/SdNj/0rxp/RLIontQ8l8PWKflqdG+6DYVRX9bcc/ymbu
         dqohJhVe52btHAkzre2MxZVzlsjcF1Jdt16mUKAPCPlljGHJUdBwOPJhZH+HQlbaL5r2
         U89IeuDE2L9onze3XrYKNk658kk5W2maO+ltAG5IXImw/8lh7/bm5OIgV+Aqy8i+QJzA
         UFKXPYXWxMZn99kDdwqDi3OqunP9LOrzhDyu8BLVaSDkyhZCNturf3NiPTi2n2eB3LK2
         r7Rg==
X-Gm-Message-State: APjAAAW3JC8Vj+8qLZL0LsTryancR1SizhJ9Y1/L3sM4If1Em+llu0tr
        2xR53AG2hTI4RQWUHVrHtEvqZA==
X-Google-Smtp-Source: APXvYqyq/j1bo7mwNFziT4N2r3SB4cdB+Cf9RYXef8r5bYLWMtU4/rYQIuZpDjfuU2wU2e7lFXrAig==
X-Received: by 2002:a1c:730b:: with SMTP id d11mr6250627wmb.2.1568451426610;
        Sat, 14 Sep 2019 01:57:06 -0700 (PDT)
Received: from dell ([2.27.167.122])
        by smtp.gmail.com with ESMTPSA id f186sm9501312wmg.21.2019.09.14.01.57.05
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Sep 2019 01:57:05 -0700 (PDT)
Date:   Sat, 14 Sep 2019 09:57:03 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Wolfram Sang <wsa@the-dreams.de>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>, Rob Clark <robdclark@gmail.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andy Gross <agross@kernel.org>, alokc@codeaurora.org,
        Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>, vkoul@kernel.org,
        linux-i2c@vger.kernel.org,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Subject: Re: [RESEND v3 1/1] i2c: qcom-geni: Disable DMA processing on the
 Lenovo Yoga C630
Message-ID: <20190914085703.GU26880@dell>
References: <20190906061448.GJ26880@dell>
 <20190906065018.GA1019@kunai>
 <20190906075600.GL26880@dell>
 <20190906102355.GA3146@kunai>
 <20190906105445.GO26880@dell>
 <20190906183139.GB19123@kunai>
 <CAF6AEGsHOaR1dRf8xGH5sRa38=S+Y3NvNiAJ9DpMkddWoLBw8g@mail.gmail.com>
 <20190913142821.GD1022@kunai>
 <20190913161345.GB8466@tuxbook-pro>
 <20190913161748.GF1022@kunai>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190913161748.GF1022@kunai>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Sep 2019, Wolfram Sang wrote:

> 
> > It seems linux-next is now pulling from the soc.git, rather than
> > arm-soc.git, but Arnd is still pushing patches to arm-soc.git.
> 
> Can you ask them to fix this?

Linux next is on vacation for month.

The last tag was next-20190904.

> > Arnd says that the patch will be in v5.4 and I merged Arnd's tree and
> > gave it a spin here and this patch makes it boot. So please merge this
> > patch for v5.4 as well.
> 
> No worries, this is clearly a bugfix. So it will easily go in with the
> same release as the DTS file.

Thanks.  The DTS commit will go in for v5.4.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
