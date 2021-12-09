Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6863F46E1AD
	for <lists+devicetree@lfdr.de>; Thu,  9 Dec 2021 05:48:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229453AbhLIEwF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Dec 2021 23:52:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229379AbhLIEwF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Dec 2021 23:52:05 -0500
Received: from mail.marcansoft.com (marcansoft.com [IPv6:2a01:298:fe:f::2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52B74C061746
        for <devicetree@vger.kernel.org>; Wed,  8 Dec 2021 20:48:32 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        (Authenticated sender: marcan@marcan.st)
        by mail.marcansoft.com (Postfix) with ESMTPSA id 15D613FA67;
        Thu,  9 Dec 2021 04:48:28 +0000 (UTC)
Subject: Re: [PATCH 1/3] dt-bindings: power: apple,pmgr-pwrstate: Add
 apple,min-ps prop
To:     Sven Peter <sven@svenpeter.dev>, Rob Herring <robh+dt@kernel.org>
Cc:     Mark Kettenis <kettenis@openbsd.org>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20211209044501.67028-1-marcan@marcan.st>
 <20211209044501.67028-2-marcan@marcan.st>
From:   Hector Martin <marcan@marcan.st>
Message-ID: <8489dc5c-db61-df40-d5e8-dbe9795c1384@marcan.st>
Date:   Thu, 9 Dec 2021 13:48:26 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211209044501.67028-2-marcan@marcan.st>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: es-ES
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/12/2021 13.44, Hector Martin wrote:
> A few devices (DCP/DCPEXT) need to have the minimum power state for
> auto-PM configured. Add a property that allows the DT to specify this
> value.

Argh, just realized right after sending this that there is a mismatch 
between the commit description and the actual prop name (same with the 
third patch).

If everything else is good I'll be happy to fix the commit description 
before merging it.

> Signed-off-by: Hector Martin <marcan@marcan.st>
> ---
>   .../devicetree/bindings/power/apple,pmgr-pwrstate.yaml    | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml b/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
> index 5056d08b8261..19a194980142 100644
> --- a/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
> +++ b/Documentation/devicetree/bindings/power/apple,pmgr-pwrstate.yaml
> @@ -61,6 +61,14 @@ properties:
>         Forces this power domain to always be powered up.
>       type: boolean
>   
> +  apple,min-state:
> +    description:
> +      Specifies the minimum power state for auto-PM.
> +      0 = power gated, 4 = clock gated, 15 = on.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 15
> +
>   required:
>     - compatible
>     - reg
> 


-- 
Hector Martin (marcan@marcan.st)
Public Key: https://mrcn.st/pub
