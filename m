Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 351F07588AE
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 00:45:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjGRWpz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 18:45:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbjGRWpy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 18:45:54 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5B5B1996
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 15:45:32 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 73EB7612C4
        for <devicetree@vger.kernel.org>; Tue, 18 Jul 2023 22:45:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CD71C433C8;
        Tue, 18 Jul 2023 22:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689720331;
        bh=ruosYXZkKTrZp2cWuiYxq83O59J2tgLjlXD9M52ZgqA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Xc2NyxgxiMLhp21BKeAJ7Ev+t1afxQlR1N00CL5SUEBn6+cIMH4lIyWDjx9W927QY
         jyh6fyn74TRYyn7kcBrmMEQa0UuXBB+WOjGL80YRdcsjhF/5pZkcNFRm+SUShQaTI/
         iCwPWpEkGPVNgiAgPHVIP8KVso83CFdbC21nGW/GCq4t37v3gJ8t7WPAoHEVdoiD8m
         dtfOsVQfi2pylX0u7A0be7F/7TGUryIZwb4SqFTGLSyKFw6ypaejMxPbxLvKyHrut+
         +QS73sLFoeonGmn7PDrDBGSiA8RjzybHXmYC1GIS5hoc0Nzn7ddFrUUpx8+6gEg8zk
         Bh2QEQhPgByfA==
Received: (nullmailer pid 2149485 invoked by uid 1000);
        Tue, 18 Jul 2023 22:45:30 -0000
Date:   Tue, 18 Jul 2023 16:45:30 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     krzysztof.kozlowskii+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: reset: altr,modrst-offset is not required
 for arm64 SoCFPGA
Message-ID: <20230718224530.GA2147915-robh@kernel.org>
References: <20230718204217.651081-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230718204217.651081-1-dinguyen@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 18, 2023 at 03:42:17PM -0500, Dinh Nguyen wrote:
> The property "altr,modrst-offset" is only applicable to arm32 SoCFPGA
> platforms, thus it not required for all platforms.
> 
> While at it, update my email address.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
>  .../devicetree/bindings/reset/altr,rst-mgr.yaml   | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml b/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
> index 4379cec6b35a..7796408d2545 100644
> --- a/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
> +++ b/Documentation/devicetree/bindings/reset/altr,rst-mgr.yaml
> @@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
>  title: Altera SOCFPGA Reset Manager
>  
>  maintainers:
> -  - Dinh Nguyen <dinguyen@altera.com>
> +  - Dinh Nguyen <dinguyen@kernel.org>
>  
>  properties:
>    compatible:
> @@ -32,9 +32,20 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - altr,modrst-offset
>    - '#reset-cells'
>  
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: altr,stratix10-rst-mgr
> +then:
> +  properties:
> +    altr,modrst-offset: false
> +else:
> +  properties:
> +    altr,modrst-offset: true

You don't need the else clause. "altr,modrst-offset" is already allowed 
by default.

Rob
