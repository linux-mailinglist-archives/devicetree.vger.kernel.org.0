Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46796645E3C
	for <lists+devicetree@lfdr.de>; Wed,  7 Dec 2022 17:00:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbiLGQA3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Dec 2022 11:00:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229632AbiLGQA2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Dec 2022 11:00:28 -0500
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AB22391F8
        for <devicetree@vger.kernel.org>; Wed,  7 Dec 2022 08:00:24 -0800 (PST)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id ED549853BD;
        Wed,  7 Dec 2022 17:00:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1670428823;
        bh=Z21cM52YcXrAtsJ+aQP4YAfl+/MWRbmPNtG7atmw1q8=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=JskgzH0tBxJ0GDkXKf6+LkOIdJkohgSd3TLR3LnixCihIgbjMeyWtlJ1fxES6jGbk
         jDOnthOx1xNywRud8EmQiS7jyAaAE5KBoFMF2ByHkfVBsNLIm6QfWiQrG/MbrfMI47
         T8/tchObvodqYuW5grfCd9jwDxriInD5E+zQqGe94qDS/lGstwb1i+2svb/r7Tif/h
         Sb3Hh0hGs1CCTW3fyPpdU/NFNwC2WsOSPO4xEEnr20VwcwUdaAdQAuHJGvxkXCBYWI
         8yQ5MhiN3jhGENWWx5cGvSK66oYAfSbUx9Yg1+3Ad9yC3QLU0InaRcYHumREhEVRS/
         zenjX/SYaoPwA==
Message-ID: <00789ae3-7fd7-e662-6348-8a31a72ee589@denx.de>
Date:   Wed, 7 Dec 2022 17:00:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 2/2] dt-bindings: lcdif: Add optional power-domain
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
References: <20221207151400.1572582-1-alexander.stein@ew.tq-group.com>
 <20221207151400.1572582-2-alexander.stein@ew.tq-group.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20221207151400.1572582-2-alexander.stein@ew.tq-group.com>
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

On 12/7/22 16:14, Alexander Stein wrote:
> i.MX8MP requires a power-domain for this peripheral to use. Add it as
> an optional property.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
>   Documentation/devicetree/bindings/display/fsl,lcdif.yaml | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> index 793e8eccf8b8b..9d9fb5ad587c2 100644
> --- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> +++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
> @@ -52,6 +52,9 @@ properties:
>     interrupts:
>       maxItems: 1
>   
> +  power-domains:
> +    maxItems: 1
> +
>     port:
>       $ref: /schemas/graph.yaml#/properties/port
>       description: The LCDIF output port

Should this be required on mx8mp then ?
