Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4F3C719A22
	for <lists+devicetree@lfdr.de>; Fri, 10 May 2019 10:58:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727215AbfEJI6F (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 May 2019 04:58:05 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:43993 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727001AbfEJI6F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 May 2019 04:58:05 -0400
Received: by mail-pg1-f195.google.com with SMTP id t22so2690873pgi.10
        for <devicetree@vger.kernel.org>; Fri, 10 May 2019 01:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=BLA/WS5Qjqm8Gf8XgW/ZNYa77d8QFu73NkVZQ1zqGQY=;
        b=qyZk1xIarN+LL7Yw/uwGUVrC6gC8xepRpmVXnEL3zEakG2gzcEq5xoEPojXLkh4Fin
         E/XiWWXQMT+IQwQJVQ7PfG9NsMUm+X6U8RMEquYvekYCiP9rda5LcMkn6Q1KB/y1l/49
         9QWFOIP3gQwb+V6MHxC6Am1vORFJEHQgMk1CHFofZT7QYx6Dq7Is7zAi2xVfxgvhIj+F
         C2wi6/f6lQwOxjsnXHWAFbdPv4A4CeJZZENBvOoIag2fVVqbLBAPZhOqQGfYxZ9GyBvm
         dMHrNNaF+tqmExPaENBYLW6cLZPJwvTDP4PIGXb+AHbhaGI+wn48np2l3slUqEHySiue
         EGBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BLA/WS5Qjqm8Gf8XgW/ZNYa77d8QFu73NkVZQ1zqGQY=;
        b=RYgDYInT+gsKlAJhN6e5a7p4Yl8b68b3T8NfrDXbAJwMCo1sOkqnPZOhTA7JjksR6p
         qDeJR2a6UBCvhHQZq/XF1WWL6XEgxk5OR7Xm823n0nK7TyekPwKY0jARLYIwtAv87tw3
         +BNR/7NhY+VpLazLzvlXmsWOpl/tcZdKF3V3b/dFyxFWjONLQRVIPefy1bcHE+6BHUxx
         Sn1NN9kbeuuvJs/lQEYkhFIh9LJvbd9maIw/xb0HqvxuOAfX2/0CgtuvtdtkTIBuIY5S
         QXruYzP3xUEy+UjShqkNmKBKReNRDv/no4aYjy8uZWswOC95iGjWBs3XfB/oEctAmJms
         1S6Q==
X-Gm-Message-State: APjAAAVcFq7QrgYcChohTP89yXIGkUgl4nkoRnP7AZWtvHafOGZU0HcU
        lV9ljfaKwV3rlxVWUWyk3DQHeTjOSA==
X-Google-Smtp-Source: APXvYqymnzbuCQoW7yHb+6xnA9h1PRjyRHtHXDt179pRmz2DNbtx7QzL2dYN0vStjrCF2l28D9OMyQ==
X-Received: by 2002:aa7:8a53:: with SMTP id n19mr12107415pfa.11.1557478684213;
        Fri, 10 May 2019 01:58:04 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2405:204:73c1:9991:95b6:5055:2390:bf9b])
        by smtp.gmail.com with ESMTPSA id e16sm3032276pfj.77.2019.05.10.01.57.58
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 10 May 2019 01:58:03 -0700 (PDT)
Date:   Fri, 10 May 2019 14:27:56 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     p.zabel@pengutronix.de, robh+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com
Subject: Re: [PATCH v2 0/4] Add reset controller support for BM1880 SoC
Message-ID: <20190510085756.GA4974@Mani-XPS-13-9360>
References: <20190508165319.19822-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190508165319.19822-1-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 08, 2019 at 10:23:15PM +0530, Manivannan Sadhasivam wrote:
> Hello,
> 
> This patchset adds reset controller support for Bitmain BM1880 SoC.
> BM1880 SoC has two reset controllers each controlling reset lines of
> different peripherals. And the reset-simple driver has been reused here.
> 

Sorry, above information was wrong! Actually there is only one reset
controller in this SoC. The other one (clk_rst) is a set of registers used
for clock gating functionality (clarified by Bitmain Engineer), so I will
remove it in next version.

Thanks,
Mani

> This patchset has been tested on 96Boards Sophon Edge board.
> 
> Thanks,
> Mani
> 
> Changes in v2:
> 
> As per review from Philipp:
> 
> * Reused reset_simple_active_low struct instead of a new one for bm1880
> * Splitted the SPDX license change to a separate commit
> * Added Reviewed-by tags from Rob and Philipp
> 
> Manivannan Sadhasivam (4):
>   dt-bindings: reset: Add devicetree binding for BM1880 reset controller
>   arm64: dts: bitmain: Add reset controller support for BM1880 SoC
>   reset: Add reset controller support for BM1880 SoC
>   reset: Switch to SPDX license identifier for reset-simple
> 
>  .../bindings/reset/bitmain,bm1880-reset.txt   |  18 +++
>  arch/arm64/boot/dts/bitmain/bm1880.dtsi       |  17 +++
>  drivers/reset/Kconfig                         |   3 +-
>  drivers/reset/reset-simple.c                  |   8 +-
>  .../dt-bindings/reset/bitmain,bm1880-reset.h  | 106 ++++++++++++++++++
>  5 files changed, 146 insertions(+), 6 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/reset/bitmain,bm1880-reset.txt
>  create mode 100644 include/dt-bindings/reset/bitmain,bm1880-reset.h
> 
> -- 
> 2.17.1
> 
