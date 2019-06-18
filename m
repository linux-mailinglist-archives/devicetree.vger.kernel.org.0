Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4110549BCB
	for <lists+devicetree@lfdr.de>; Tue, 18 Jun 2019 10:13:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728840AbfFRINa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jun 2019 04:13:30 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:34035 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726091AbfFRIN3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jun 2019 04:13:29 -0400
Received: by mail-wr1-f68.google.com with SMTP id k11so12880045wrl.1
        for <devicetree@vger.kernel.org>; Tue, 18 Jun 2019 01:13:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=06HNdPNgDbi2f1j2ONuEOl1EHxJYMZdY3r9dArsvaPQ=;
        b=osrgXa++2Q+19SyQ1z7d1ONbADxeD3tCbVl2v95iwqfC2jN8JrzlBbSbotWm1ib1eH
         k7pfiV8Atc1w84Uk1cJi29Cb/UH0z9GWMSdfcZVUWHhC1pWzLNZPt7jAEYRWVNgNRFJP
         NqTDPRy3PAzP5J5RLPVLnNb322kTOi6Lsx7CDeIoXEPdV3UjpG1pw2m4vzq6tihzWGKg
         9iJ7ltctXwXheg7nvUO2gp+tSjBbWlAAjX8rUnmWm8D+us+OU94WWgzoJc7Wpb2fspXj
         4OfKrLEbehWaBOkEwT7wILE7J8EufELTCIawMLqMicz4oyI0EF2xahSvlbEdMWsufMqb
         n9ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=06HNdPNgDbi2f1j2ONuEOl1EHxJYMZdY3r9dArsvaPQ=;
        b=tYAC5Em8zaSxEbNCg7GutOmiisG18TkOnPJieECnbqcatqwKA8RZB+QiZyKXtE4L7w
         b3or+getq0fLwS8+6/iruA4lzQcUury2xCKT8QWU1TuoeIfW4j3btpHEN+273X9pLJvb
         g/jXVkaLos7+RvoGHp4tseQ4cYGXfENlHFbU4AqwrsvFotUbu+kOgE8qqQoEuv9O//MT
         5PQIEuHX358jCL+La8vqpjcnxwymv7N4jXKeegYWKt70h/+ZJ8SQ5LYLmgBm4011KMVY
         eaND5e+uG+YagDgcDIVF8djfIDRPl5KTrgvDDuk/gIWnILlKMVrNjx0QYu7ziNeCgAJp
         d3oA==
X-Gm-Message-State: APjAAAUJDM86i2mOIA6Z+4rP0xrpjK09YJ2BaXeQYp54fK9/DM7EJ93L
        PVKEA4mYJNjdbmyeCKeg+W9m6Q==
X-Google-Smtp-Source: APXvYqzwXi+RbIPkFmf4CacE1T+w7xAM0/5ckvB5TE8zDrHsOAfEV+IgJ4W1J07pX0Aa83hlfmc9WQ==
X-Received: by 2002:adf:f6cb:: with SMTP id y11mr3195081wrp.245.1560845606659;
        Tue, 18 Jun 2019 01:13:26 -0700 (PDT)
Received: from dell ([2.27.35.243])
        by smtp.gmail.com with ESMTPSA id v204sm1871127wma.20.2019.06.18.01.13.25
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 18 Jun 2019 01:13:26 -0700 (PDT)
Date:   Tue, 18 Jun 2019 09:13:24 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Mark Brown <broonie@kernel.org>
Cc:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        lgirdwood@gmail.com, robh+dt@kernel.org, afaerber@suse.de,
        linux-actions@lists.infradead.org, linux-kernel@vger.kernel.org,
        thomas.liau@actions-semi.com, devicetree@vger.kernel.org,
        linus.walleij@linaro.org
Subject: Re: [PATCH 3/4] regulator: Add regulator driver for ATC260x PMICs
Message-ID: <20190618081324.GK16364@dell>
References: <20190617155011.15376-1-manivannan.sadhasivam@linaro.org>
 <20190617155011.15376-4-manivannan.sadhasivam@linaro.org>
 <20190617163015.GD5316@sirena.org.uk>
 <20190617163413.GA16152@Mani-XPS-13-9360>
 <20190617170356.GG5316@sirena.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20190617170356.GG5316@sirena.org.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 17 Jun 2019, Mark Brown wrote:

> On Mon, Jun 17, 2019 at 10:04:13PM +0530, Manivannan Sadhasivam wrote:
> 
> > > > + * Copyright (C) 2019 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 
> > > You definitely didn't assign copyright to your employer?
> 
> > Yeah, that was intentional. This work is not part of Linaro working hours and
> > falls into my spare time works where I'm trying to complete the upstream support
> > for Actions Semi Owl series SoCs and target boards which I'm co-maintaining
> > (sort of)...
> 
> OK...  seems very weird to use your work address for developing on
> products closely associated with your employer in non-work time.

I use my Linaro address for everything.  So long as the work is of the
required standard, I cannot see anyone having reservations.

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
