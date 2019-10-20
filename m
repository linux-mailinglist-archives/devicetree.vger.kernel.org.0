Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2FFA2DDF24
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2019 17:27:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726571AbfJTP1H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Oct 2019 11:27:07 -0400
Received: from mail-pf1-f195.google.com ([209.85.210.195]:36210 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726470AbfJTP1G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Oct 2019 11:27:06 -0400
Received: by mail-pf1-f195.google.com with SMTP id y22so6742407pfr.3
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2019 08:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=w2Zv3HNUNvEUlGbiP8S0+092JhdRJqXxS9fnpsLG4iI=;
        b=PtgdLdUwnrWFnJOz5gJvi3BiIDxy+S7gPcoCoYksIkA//BpTzN2oX+JtNk4tMmwLUO
         Etw1tquOBI0VQLbzCiNVhQO26kJvstsHisiJcmxN72pmqSpW3xUBoa35WvnXi/2sSt+K
         mhRZoLUCMcudqk6frRppSkM+nRF+PLZT1Vm+GsVLD7tTko9BkEfrExihtC4YpEGRZVsa
         22HMfMyFZjuiZyEpy69wCHrg+V+2TbDcIMh9fsq5Ss9zIoIz6koxouav4j8gbDlEAJI9
         QCIw8cpY4lSNqHILW2D5IwUZ9MC5C/rXOXm6TtZhSLkXUKpEDM4U9dYNnfkngmga++RE
         rpRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=w2Zv3HNUNvEUlGbiP8S0+092JhdRJqXxS9fnpsLG4iI=;
        b=e0gO8qPFdQqCy12ttaHYabp2k2rOm+ANsByHuyXeSA/J7ql9X4aZBNivlu5RcS7O9k
         rYjrowQ2sQqqooaUlWNHYjAWJBoKU+eENmuRdtK2x7jFV9Fsm87TH3AOJcyYHT2uO3mI
         a6DAZSIjT0a6Llm6VRbPvzsUiFoXBnkvIhwuzcqWu8Ek45PYpn3g4TgPK6zehyqaKDy9
         asiY6BUZ+tZ5g/cqHHlhgsENkcZQQmYLJsi5YR4pNj/2NKOEhfjYCOTvVEaH4d3OdGNq
         734pz+kYTDgrTOsj9yGj09xWeesnh24ZDcpo1sFZPAPhrS8X00TuT1B4Trtg1/IPtQoR
         PSJQ==
X-Gm-Message-State: APjAAAXXukCIS0RxGU/EH2Q1TkesrDnHxsd1aPoTFXC9bO6h2KNjYeeo
        lmQdpzzi0VCK37uj7j5grGYq
X-Google-Smtp-Source: APXvYqzHj2mGchufEakers/95JHOcu48NokH6SL9q1fsY1Xo9ttGYQDtdbsumhCbdlHImScX/HTZWA==
X-Received: by 2002:a17:90a:2522:: with SMTP id j31mr23189515pje.123.1571585225946;
        Sun, 20 Oct 2019 08:27:05 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:619e:9471:81c6:faf1:b3a2:6750])
        by smtp.gmail.com with ESMTPSA id h4sm13651404pfg.159.2019.10.20.08.27.00
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 20 Oct 2019 08:27:05 -0700 (PDT)
Date:   Sun, 20 Oct 2019 20:56:58 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     mturquette@baylibre.com, robh+dt@kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com
Subject: Re: [PATCH v5 3/8] clk: Add clk_hw_unregister_composite helper
 function definition
Message-ID: <20191020152658.GC12864@Mani-XPS-13-9360>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
 <20190916161447.32715-4-manivannan.sadhasivam@linaro.org>
 <20190917204042.D69A52054F@mail.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190917204042.D69A52054F@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 17, 2019 at 01:40:42PM -0700, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-09-16 09:14:42)
> > This function has been delcared but not defined anywhere. Hence, this
> > commit adds definition for it.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> 
> Can you add a fixes tag?
> 
> Fixes: 49cb392d3639 ("clk: composite: Add hw based registration APIs")
> 

sure.

Thanks,
Mani

