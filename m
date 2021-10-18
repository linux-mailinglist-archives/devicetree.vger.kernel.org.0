Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 451CA4329B0
	for <lists+devicetree@lfdr.de>; Tue, 19 Oct 2021 00:18:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229790AbhJRWU3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 18:20:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbhJRWU1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 18:20:27 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8005CC06161C
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 15:18:15 -0700 (PDT)
Received: from [IPv6:::1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 4164182051;
        Tue, 19 Oct 2021 00:18:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1634595492;
        bh=LH381WKcEJ4kjqt3z8TuPnPNDPdMSZcU4VwPzz5eqP0=;
        h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
        b=bI8yTzyT5yJn/KRnImQyT+lt6Qhd6/+V8B/GYizs9jVf7XY3/6ndYBULJWbj4MEbE
         z8QP2w0aYBcmUkpkN3euf9ZbO7WaZ/9cRL53MGEyNg5n5NsDOqx4J72ppxcDR/lgGq
         g6Vwaq3MlwomfEsTxrgwLVipowTOvVULFWYGimyNYsQGKnLe77b1kfab2ls5EINSfJ
         oqWRCPTIL/CXDBNYpGKtE2E73MCft1Hg7DYalIXGo/I9oTJmhJXQH4KQ6W+DRAe9jo
         alJOqZ6ImLkmVRLBMH+HXea0YxCBEdZZWCxs2L7cZ3+ZKMMbJon6nR0npTtuQUPbAx
         u0fFVvMZGhV1Q==
Subject: Re: [PATCH v5 1/2] dt-bindings: display: bridge: lvds-codec: Document
 pixel data sampling edge select
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc:     dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
References: <20211017001204.299940-1-marex@denx.de>
 <YW24EbfbtJdMMDRV@pendragon.ideasonboard.com>
 <c34f8a7e-eec6-9373-0c52-f6546ad689a8@denx.de>
 <YW3Rw0hZmB6plu+V@pendragon.ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
Message-ID: <4f235f45-5c03-eaeb-69ac-3d801a1dd58c@denx.de>
Date:   Tue, 19 Oct 2021 00:18:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <YW3Rw0hZmB6plu+V@pendragon.ideasonboard.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.2 at phobos.denx.de
X-Virus-Status: Clean
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/18/21 9:57 PM, Laurent Pinchart wrote:

Hi,

>>>> diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
>>>> index 1faae3e323a4..708de84ac138 100644
>>>> --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
>>>> +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
>>>> @@ -79,6 +79,14 @@ properties:
>>>>          - port@0
>>>>          - port@1
>>>>    
>>>> +  pclk-sample:
>>>> +    description:
>>>> +      Data sampling on rising or falling edge.
>>>> +    enum:
>>>> +      - 0  # Falling edge
>>>> +      - 1  # Rising edge
>>>> +    default: 0
>>>> +
>>>
>>> Shouldn't this be moved to the endpoint, the same way data-mapping is
>>> defined as an endpoint property ?
>>
>> The strapping is a chip property, not port property, so no.
> 
> For this particular chip that's true. I'm still not convinced overall.
> For some cases it could be a per-port property

Can you be more specific about "some cases" ?

> , and moving it there for
> lvds-codec too could allow implementing helpers to parse DT properties,
> without much drawback for this particular use case as far as I can see.
> It's hard to predict the future with certainty of course, so I won't
> insist.

The DT bindings and the OS drivers are separate thing, we really 
shouldn't start bending DT bindings so that they would fit nicely with a 
specific OS driver model.
