Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EC244BA556
	for <lists+devicetree@lfdr.de>; Thu, 17 Feb 2022 17:05:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239129AbiBQQFa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Feb 2022 11:05:30 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:36204 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231863AbiBQQF3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Feb 2022 11:05:29 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81C8929C123;
        Thu, 17 Feb 2022 08:05:15 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1F26D60A57;
        Thu, 17 Feb 2022 16:05:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 819B3C340EC;
        Thu, 17 Feb 2022 16:05:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1645113914;
        bh=yp2JQQXfSK5ZExa14gRUlnqou0FVYVOfRdER3CmgX9Q=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ns8uX2PrAj2p4PlfiTl9IoegTE/0y7G/yYzXOfWtb3M4yBCby0PNYXK2zGlQvHYyP
         2UC2+sdgEpf0QWhETWD1YG2/sOOSr3Td1JyPaczOM0Q+TxMDtb7mgFK79l1zoDPsZP
         /XPDAsZnW8TsZAfEaUvb7ng9RIwv3QtZFyDzNB95uFdHYd0Pa0nUipyiNuSgIKRydg
         46nNPicu1rdcyLucpmMdDHHdjrB0+qAeuJgw2pNxch2nAgPyDLjeouWdU+VEA9x4Fb
         Q/6nz7skQYghecPuI6x4MQVv6Xq3NlUTOJ75ozZ1FWvE85zDI6yxoGjJzbH3SxI2kw
         zyCJi5+p91Qzg==
Received: by mail-ed1-f53.google.com with SMTP id x5so10462525edd.11;
        Thu, 17 Feb 2022 08:05:14 -0800 (PST)
X-Gm-Message-State: AOAM530XMDZILJt87KExELx7GWFSlqNhfF+r8RwoOeMkAYpEP904h8UV
        NQN1GgZRmrVpRzyJBszHDyX25vFZiX8ReOvBCA==
X-Google-Smtp-Source: ABdhPJxAruZ4mzGIjRF6mwFYAqTPZbusn4ubnEhgqxtatfkBUmJtollKwt61Jxj1rAbGOj74tnobGovwfTFg9t3RvOE=
X-Received: by 2002:a05:6402:268c:b0:411:e086:b7d1 with SMTP id
 w12-20020a056402268c00b00411e086b7d1mr3297428edd.111.1645113912857; Thu, 17
 Feb 2022 08:05:12 -0800 (PST)
MIME-Version: 1.0
References: <79d1914ff04b44c3005072a990d14291c9ce6fce.1645103404.git.robin.murphy@arm.com>
In-Reply-To: <79d1914ff04b44c3005072a990d14291c9ce6fce.1645103404.git.robin.murphy@arm.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 17 Feb 2022 10:05:01 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJh26LGyBH34y+68Jq0+NZEm86UfD4-u548YNz=AVYeug@mail.gmail.com>
Message-ID: <CAL_JsqJh26LGyBH34y+68Jq0+NZEm86UfD4-u548YNz=AVYeug@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: reserved-memory: Add restricted-dma-pool constraints
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Mailing List <devicetree-spec@vger.kernel.org>,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-7.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 17, 2022 at 7:10 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> The "restricted-dma-pool" definition prohibits combination with either
> of the "no-map" and "reusable" properties, but this is only stated in
> the description text. Add those constraints to the schema so we can
> properly validate them.
>
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  .../bindings/reserved-memory/shared-dma-pool.yaml   | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml b/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
> index a4bf757d6881..01385581f663 100644
> --- a/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
> +++ b/Documentation/devicetree/bindings/reserved-memory/shared-dma-pool.yaml
> @@ -56,6 +56,19 @@ properties:
>        If this property is present, then Linux will use the region for
>        the default pool of the consistent DMA allocator.
>
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: restricted-dma-pool
> +then:
> +  not:
> +    anyOf:
> +      - required:
> +          - no-map
> +      - required:
> +          - reusable

I think it is a bit clearer to disallow properties like this:

then:
  properties:
    no-map: false
    reusable: false


> +
>  unevaluatedProperties: false
>
>  examples:
> --
> 2.28.0.dirty
>
