Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8A576762A3
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 11:50:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726001AbfGZJu3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 05:50:29 -0400
Received: from foss.arm.com ([217.140.110.172]:40500 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725842AbfGZJu3 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 26 Jul 2019 05:50:29 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ACF58344;
        Fri, 26 Jul 2019 02:50:28 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D5903F71A;
        Fri, 26 Jul 2019 02:50:27 -0700 (PDT)
Date:   Fri, 26 Jul 2019 10:50:25 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Kevin Brodsky <kevin.brodsky@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Pawel Moll <pawel.moll@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Brian Starkey <brian.starkey@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v2] arm64: dts: fast models: Remove clcd's
 max-memory-bandwidth
Message-ID: <20190726095025.GB11177@e107155-lin>
References: <20190725171215.71801-1-kevin.brodsky@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190725171215.71801-1-kevin.brodsky@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 25, 2019 at 06:12:14PM +0100, Kevin Brodsky wrote:
> It is unclear why max-memory-bandwidth should be set for CLCD on the
> fast model. Removing that property allows allocating and using 32bpp
> buffers, which may be desirable on certain platforms such as
> Android.
> 
> Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
> Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>
> ---
> 
> Changes in v2:
> - Remove the attribute completely instead of increasing its value. It is
>   optional and there is no clear reason why it should be set at all.
> 
>  arch/arm64/boot/dts/arm/fvp-base-revc.dts        | 8 --------
>  arch/arm64/boot/dts/arm/rtsm_ve-motherboard.dtsi | 2 --

I was about to ask about the above file in v1, and then saw v2.
I will take this for v5.4. Thanks

--
Regards,
Sudeep
