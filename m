Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 187F53890ED
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 16:31:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354087AbhESOcx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 10:32:53 -0400
Received: from mx2.suse.de ([195.135.220.15]:50406 "EHLO mx2.suse.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1354034AbhESOcc (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 May 2021 10:32:32 -0400
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
        by mx2.suse.de (Postfix) with ESMTP id 0D7AEB0B3;
        Wed, 19 May 2021 14:31:12 +0000 (UTC)
Subject: Re: [PATCH 3/4] arm64: dts: realtek: rtd16xx: normalize the node name
 of the UART devices
To:     Zhen Lei <thunder.leizhen@huawei.com>
References: <20210519141914.8044-1-thunder.leizhen@huawei.com>
 <20210519141914.8044-4-thunder.leizhen@huawei.com>
Cc:     Manivannan Sadhasivam <mani@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-realtek-soc <linux-realtek-soc@lists.infradead.org>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>
From:   =?UTF-8?Q?Andreas_F=c3=a4rber?= <afaerber@suse.de>
Organization: SUSE Software Solutions Germany GmbH
Message-ID: <8e79d8d9-c2c7-32f3-e2be-e5d288cebf0a@suse.de>
Date:   Wed, 19 May 2021 16:31:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <20210519141914.8044-4-thunder.leizhen@huawei.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 19.05.21 16:19, Zhen Lei wrote:
> Change the node name of the UART devices to match
> "^serial(@[0-9a-f,]+)*$".
> 
> Signed-off-by: Zhen Lei <thunder.leizhen@huawei.com>
> ---
>  arch/arm64/boot/dts/realtek/rtd16xx.dtsi | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
> index afba5f04c8ec..bf4d9e917925 100644
> --- a/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
> +++ b/arch/arm64/boot/dts/realtek/rtd16xx.dtsi
> @@ -195,7 +195,7 @@
>  };
>  
>  &iso {
> -	uart0: serial0@800 {
> +	uart0: serial@800 {
[snip]

Ouch, shame on me for not catching this in review...

Reviewed-by: Andreas Färber <afaerber@suse.de>

Are you expecting this to go through the four maintainer trees or
centrally somehow?

Thanks,
Andreas

-- 
SUSE Software Solutions Germany GmbH
Maxfeldstr. 5, 90409 Nürnberg, Germany
GF: Felix Imendörffer
HRB 36809 (AG Nürnberg)
