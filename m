Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B21E94FF46B
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 12:08:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229792AbiDMKKW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 06:10:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229897AbiDMKKW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 06:10:22 -0400
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 25B0C574A8
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 03:08:01 -0700 (PDT)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E7FCF1424;
        Wed, 13 Apr 2022 03:08:00 -0700 (PDT)
Received: from [10.57.41.19] (unknown [10.57.41.19])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CADCA3F73B;
        Wed, 13 Apr 2022 03:07:59 -0700 (PDT)
Message-ID: <080aaef6-b181-0702-219b-35d064f0f675@arm.com>
Date:   Wed, 13 Apr 2022 11:07:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH] arm64: dts: juno: Fix SCMI power domain IDs for ETF and
 CS funnel
Content-Language: en-GB
To:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel@lists.infradead.org
Cc:     devicetree@vger.kernel.org, Liviu Dudau <liviu.dudau@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Mike Leach <Mike.Leach@arm.com>
References: <20220413093547.1699535-1-sudeep.holla@arm.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220413093547.1699535-1-sudeep.holla@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-8.2 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-04-13 10:35, Sudeep Holla wrote:
> The SCMI power domain ID for all the coresight components is 8 while
> the previous/older SCPI domain was 0. When adding SCMI variant, couple
> of instances retained SCPI domain ID by mistake.
> 
> Fix the same by using the correct SCMI power domain ID of 8.

Indeed, this is my copy-paste bug (annoyingly, from doing something 
inexplicable when I *did* have the correct thing as a starting point...)

Acked-by: Robin Murphy <robin.murphy@arm.com>

> Fixes: 96bb0954860a ("arm64: dts: juno: Add separate SCMI variants")
> Reported-by: Mike Leach <Mike.Leach@arm.com>
> Cc: Robin Murphy <robin.murphy@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>   arch/arm64/boot/dts/arm/juno-r1-scmi.dts | 4 ++--
>   arch/arm64/boot/dts/arm/juno-r2-scmi.dts | 4 ++--
>   2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/arm/juno-r1-scmi.dts b/arch/arm64/boot/dts/arm/juno-r1-scmi.dts
> index 190a0fba4ad6..fd1f0d26d751 100644
> --- a/arch/arm64/boot/dts/arm/juno-r1-scmi.dts
> +++ b/arch/arm64/boot/dts/arm/juno-r1-scmi.dts
> @@ -7,11 +7,11 @@ funnel@20130000 {
>   	};
>   
>   	etf@20140000 {
> -		power-domains = <&scmi_devpd 0>;
> +		power-domains = <&scmi_devpd 8>;
>   	};
>   
>   	funnel@20150000 {
> -		power-domains = <&scmi_devpd 0>;
> +		power-domains = <&scmi_devpd 8>;
>   	};
>   };
>   
> diff --git a/arch/arm64/boot/dts/arm/juno-r2-scmi.dts b/arch/arm64/boot/dts/arm/juno-r2-scmi.dts
> index dbf13770084f..35e6d4762c46 100644
> --- a/arch/arm64/boot/dts/arm/juno-r2-scmi.dts
> +++ b/arch/arm64/boot/dts/arm/juno-r2-scmi.dts
> @@ -7,11 +7,11 @@ funnel@20130000 {
>   	};
>   
>   	etf@20140000 {
> -		power-domains = <&scmi_devpd 0>;
> +		power-domains = <&scmi_devpd 8>;
>   	};
>   
>   	funnel@20150000 {
> -		power-domains = <&scmi_devpd 0>;
> +		power-domains = <&scmi_devpd 8>;
>   	};
>   };
>   
