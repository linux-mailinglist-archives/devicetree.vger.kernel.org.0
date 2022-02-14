Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 85CD44B560F
	for <lists+devicetree@lfdr.de>; Mon, 14 Feb 2022 17:23:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237713AbiBNQXM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Feb 2022 11:23:12 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:34980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233335AbiBNQXL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Feb 2022 11:23:11 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 96F995FF0B
        for <devicetree@vger.kernel.org>; Mon, 14 Feb 2022 08:23:03 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5B30413D5;
        Mon, 14 Feb 2022 08:23:03 -0800 (PST)
Received: from [10.57.37.216] (unknown [10.57.37.216])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60E753F70D;
        Mon, 14 Feb 2022 08:23:02 -0800 (PST)
Message-ID: <5ca70986-d6a5-7c3e-b876-40e970805775@arm.com>
Date:   Mon, 14 Feb 2022 16:23:01 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/9] dt-bindings: Add arm,mali-valhall compatible
Content-Language: en-GB
To:     alyssa.rosenzweig@collabora.com, dri-devel@lists.freedesktop.org
Cc:     robh@kernel.org, tomeu.vizoso@collabora.com, airlied@linux.ie,
        daniel@ffwll.ch, devicetree@vger.kernel.org
References: <20220211202728.6146-1-alyssa.rosenzweig@collabora.com>
 <20220211202728.6146-2-alyssa.rosenzweig@collabora.com>
From:   Steven Price <steven.price@arm.com>
In-Reply-To: <20220211202728.6146-2-alyssa.rosenzweig@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/02/2022 20:27, alyssa.rosenzweig@collabora.com wrote:
> From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> 
> From the kernel's perspective, pre-CSF Valhall is more or less
> compatible with Bifrost, although they differ to userspace. Add a
> compatible for Valhall to the existing Bifrost bindings documentation.
> 
> Signed-off-by: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 63a08f3f321d..48aeabd2ed68 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -23,6 +23,7 @@ properties:
>            - rockchip,px30-mali
>            - rockchip,rk3568-mali
>        - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> +      - const: arm,mali-valhall # Mali Valhall GPU model/revision is fully discoverable

It might be worth spelling out here that this is *pre-CSF* Valhall. I'm
pretty sure we're going to need different bindings for CSF GPUs.

Steve

>  
>    reg:
>      maxItems: 1

