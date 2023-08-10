Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 878E5778417
	for <lists+devicetree@lfdr.de>; Fri, 11 Aug 2023 01:24:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbjHJXYN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 19:24:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230004AbjHJXYN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 19:24:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 767F2273E
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 16:24:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 09C8063BEC
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 23:24:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA2B0C433C7;
        Thu, 10 Aug 2023 23:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1691709851;
        bh=Jdw+MMKr5wFpUl7qsp9JifnRW9MwXOG7O4nrW0pwqOg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=IC+NJY8JJ8UZ4DJNj5AUCxV5/253sQJxZXCIUuKWhBs4WKut2x1zIoQELKDO73U9k
         qL0JDXcu+8xpJjnACyVmTI/467r3MqGTLtJC9ZX1Khvbjsluz+1KqS7MH/PP/XB8Ge
         ASBaF0i1FemIfYJC0UsgOP193hwRVi2+Z5th8BAknLJpDUg9AIgT87rD7fi2ZaQTo+
         +bTkLXvG/N/Kjn+HEVGUbMpgR57uVQ2VnHbb18zlFppqGc+dMU+55KT0f+KWnogIiw
         EicN+Ch80OJAAo34Wwlb+TDQEw5NEwVJQHHeTfkRPodsgMXA+AqypXrJu53Rho/dAf
         1UGiI1LQoH/zg==
Received: (nullmailer pid 1554607 invoked by uid 1000);
        Thu, 10 Aug 2023 23:24:09 -0000
Date:   Thu, 10 Aug 2023 17:24:09 -0600
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: display: newvision,nv3051d: Add
 Anbernic 351V Support
Message-ID: <20230810232409.GA1548096-robh@kernel.org>
References: <20230809153941.1172-1-macroalpha82@gmail.com>
 <20230809153941.1172-2-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230809153941.1172-2-macroalpha82@gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 09, 2023 at 10:39:40AM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the Anbernic RG351V panel, which appears to be identical to
> the panel used in their 353 series except for in inclusion of an
> additional DSI format flag.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/newvision,nv3051d.yaml       | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> index 116c1b6030a2..576f3640cb33 100644
> --- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> @@ -7,9 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: NewVision NV3051D based LCD panel
>  
>  description: |
> -  The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
> -  this driver only supports the 640x480 panels found in the Anbernic RG353
> -  based devices.
> +  The NewVision NV3051D is a driver chip used to drive DSI panels.
>  
>  maintainers:
>    - Chris Morgan <macromorgan@hotmail.com>
> @@ -19,11 +17,15 @@ allOf:
>  
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - anbernic,rg353p-panel
> -          - anbernic,rg353v-panel
> -      - const: newvision,nv3051d
> +    oneOf:
> +      - items:
> +          - enum:
> +              - anbernic,rg353p-panel
> +              - anbernic,rg353v-panel
> +          - const: newvision,nv3051d
> +
> +      - items:
> +          - const: anbernic,rg351v-panel

I don't understand. Is this panel not based on newvision,nv3051d? If 
not, then it probably should be a different binding. Lot's of panel 
bindings have similar properties.

Rob
