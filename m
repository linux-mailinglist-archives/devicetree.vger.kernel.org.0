Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67627645E3A
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 16:59:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229680AbiLGP74 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 10:59:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbiLGP7z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 10:59:55 -0500
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FA84391F8
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 07:59:53 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id AC014853BD;
        Wed,  7 Dec 2022 16:59:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670428791;
        bh=ms2mwtT7aRwGzjGYHlW5n2LBfPTpWBYZ4lzdTnO5gKc=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=TgBgPeATS8TMOzxM9kZs2BM94lq8bTkD2vYBADV+Rpnubl9kBfusFI2i/U4Owhyd5
         GNI1qd50fQFgrZM1rKcLuk7dkhAhLw2BsgKBXOZwRgB/W3GLGIbR5++pK3q3wT1sWZ
         djdhaICoh6RSLkA/eqyo5su3lb/MfYrkiqGVNhbcPYUv9W/ZAWc+tYOTBp2GKy7DyA
         e72swAKR0ArZvaKI4VTtHtMGSFDp0bRuZ+ZdmkzFNi+hDOJOHhKXJmRghDcskJIYaZ
         iTXuj7Y+Ib1XQYvSGrwMKOfCvWVe77HRf/ulbAXpSu2hXBCjdua/Np36ySdgH46oLv
         ujRnyXzWRLTXg==
Message-ID: <e5d8f530-9814-48eb-76b3-e4712300466d@denx.de>
Date:   Wed, 7 Dec 2022 16:59:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/2] dt-bindings: lcdif: Fix clock constraints for imx8mp
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/7/22 16:13, Alexander Stein wrote:
> i.MX8MP uses 3 clocks, so soften the restrictions for clocks & clock-names.
> 
> Fixes: f5419cb0743f ("dt-bindings: lcdif: Add compatible for i.MX8MP")
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>   Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 876015a44a1e6..793e8eccf8b8b 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -70,7 +70,9 @@ allOf:
>         properties:
>           compatible:
>             contains:
> -            const: fsl,imx6sx-lcdif
> +            enum:
> +              - fsl,imx6sx-lcdif
> +              - fsl,imx8mp-lcdif
>       then:
>         properties:
>           clocks:

Reviewed-by: Marek Vasut <marex@denx.de>

btw you might want to update the clock-names and clock proerty order in 
imx8mp.dtsi to match the clock-names order in these bindings.
