Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 183764B6BDC
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 13:17:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237572AbiBOMRj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 07:17:39 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:56930 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233984AbiBOMRj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 07:17:39 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id C750A1074E1
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 04:17:29 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 913601480;
        Tue, 15 Feb 2022 04:17:29 -0800 (PST)
Received: from [10.57.70.89] (unknown [10.57.70.89])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9269D3F718;
        Tue, 15 Feb 2022 04:17:28 -0800 (PST)
Message-ID: <ecfe727c-e78f-1598-0366-f95d8ffd1007@arm.com>
Date:   Tue, 15 Feb 2022 12:17:28 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH 1/9] dt-bindings: Add arm,mali-valhall compatible
Content-Language: en-GB
To:     alyssa.rosenzweig@collabora.com, dri-devel@lists.freedesktop.org
Cc:     tomeu.vizoso@collabora.com, devicetree@vger.kernel.org,
        airlied@linux.ie, steven.price@arm.com
References: <20220211202728.6146-1-alyssa.rosenzweig@collabora.com>
 <20220211202728.6146-2-alyssa.rosenzweig@collabora.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220211202728.6146-2-alyssa.rosenzweig@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-02-11 20:27, alyssa.rosenzweig@collabora.com wrote:
> From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> 
>  From the kernel's perspective, pre-CSF Valhall is more or less
> compatible with Bifrost, although they differ to userspace. Add a
> compatible for Valhall to the existing Bifrost bindings documentation.
> 
> Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> Cc: devicetree@vger.kernel.org
> ---
>   Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 63a08f3f321d..48aeabd2ed68 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -23,6 +23,7 @@ properties:
>             - rockchip,px30-mali
>             - rockchip,rk3568-mali
>         - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> +      - const: arm,mali-valhall # Mali Valhall GPU model/revision is fully discoverable

This requires all existing Bifrost users to add the Valhall compatible 
as well - I don't think that's what you want. From what we tossed about 
on IRC the other week, I'd imagined something more in the shape of:

   compatible:
     oneOf:
       - items:
           - enum:
               - vendor,soc-mali
               - ...
           - const: arm,mali-bifrost
       - items:
           - enum:
               - vendor,soc-mali
               - ...
           - const: arm,mali-valhall
           - const: arm,mali-bifrost #or not, depending on 
forward-compatibility preferences

Cheers,
Robin.
