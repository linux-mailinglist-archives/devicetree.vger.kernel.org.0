Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8437E68FD5D
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 03:53:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232412AbjBICxn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Feb 2023 21:53:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232421AbjBICwq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Feb 2023 21:52:46 -0500
Received: from mail-io1-xd2f.google.com (mail-io1-xd2f.google.com [IPv6:2607:f8b0:4864:20::d2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EA13A5F1
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 18:50:30 -0800 (PST)
Received: by mail-io1-xd2f.google.com with SMTP id e204so200091iof.1
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 18:50:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=BYIk4P2p6gp1gkykneVTXGgTOGI8BQeMJrJn0G8vBFQ=;
        b=HtmNzDuqZVPNnKVKdiDx+Z3cYsXnlZoWJEZPqX81nlx4s12FG5mKWN7Iz8QgRroITS
         uI/SE/a6wLxuTbZ2XqIIRFA0hAyZXeC//DLKyZBwhoYviw0jixTfnpdaGsaTmcSOV3n6
         NcyRBoPWk0t+FdFXhhVMlviUuItG+Tvvb8OQg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BYIk4P2p6gp1gkykneVTXGgTOGI8BQeMJrJn0G8vBFQ=;
        b=CIixWtlf8cdeEDvw+W8FELHKgOTM8rf4S8Q/V6vxCQKwDlyVs4J41jR3wi4bWeXzhf
         ab49QApX8ADaXqQ9OZmaUhJvBO8bmLQwUnLM5E5ZJlTNjXMRPbAmhccbRaZSCRrpulxn
         14//9jmuCJf/gjN6bYcpFAxdcyo+44obIBGjsRFO1SRqHZUrgQNF9jaasgAoyauD6URV
         vkp8LYEF5RgbOo0x8zGUdJx4Su9kx+E65PUYOjTlKcFZDQ2hCUov2MXpyQIrkaRM7lIy
         STGofxk2LKltBBCrs6VMpO4nz8A/iSHE/A7vTbsrkvQFCMqpygmuALnJ3GP5MTXTv1hs
         IySA==
X-Gm-Message-State: AO0yUKVXU5NDy90GVLu5KKrPCyytKQM/ZX1MJtHmOj+PdsdHhzPDX6di
        Z2vIqkr4jl8PS7sRUm1cobpMldxU1g/5ib1bap13/ta/aszvUQgg
X-Google-Smtp-Source: AK7set+bvKsydzGygJFYL5iQOvjw3Jv58rqgkJyZjXTUoGYryQCk+flVM83OAnzthJ9iLUo6Kt6Ev143YXLr6ftrCik=
X-Received: by 2002:a02:cc37:0:b0:3a9:6b85:41ed with SMTP id
 o23-20020a02cc37000000b003a96b8541edmr6496673jap.57.1675911029590; Wed, 08
 Feb 2023 18:50:29 -0800 (PST)
MIME-Version: 1.0
References: <20230208103709.116896-1-angelogioacchino.delregno@collabora.com> <20230208103709.116896-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230208103709.116896-2-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Thu, 9 Feb 2023 10:50:18 +0800
Message-ID: <CAGXv+5Gm=Onu2RK+skLgN4Kzo9yP1n5Zb48oQNkQ019838QeEQ@mail.gmail.com>
Subject: Re: [PATCH 1/9] dt-bindings: gpu: mali-bifrost: Don't allow
 sram-supply by default
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     airlied@gmail.com, tomeu.vizoso@collabora.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, steven.price@arm.com,
        robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
        alyssa.rosenzweig@collabora.com, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 8, 2023 at 6:37 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> The sram-supply is MediaTek-specific, it is and will ever be used
> only for the mediatek,mt8183-mali compatible due to the addition of
> the mediatek-regulator-coupler driver: change the binding to add
> this supply when mediatek,mt8183-mali is present as a compatible
> instead of disabling it when not present.
>
> This is done in preparation for adding new bindings for other
> MediaTek SoCs, such as MT8192 and others.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 78964c140b46..69212f3b1328 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -57,8 +57,6 @@ properties:
>
>    mali-supply: true
>
> -  sram-supply: true
> -

Have you tried actually validating the device trees against this?
Based on my previous tests this gives out errors.

The reason is that each conditional is a separate sub-schema, and the
validator is run against each schema and sub-schema separately, instead
of collapsing matching schemas and sub-schemas together and validating
once. So we'll get a validation error on sram-supply not being a valid
property when validating current mt8183 against the base schema.

We have a similar issue with power-domain-names, for which I'll send
a patch to fix. See the following for the fix:

    http://git.kernel.org/wens/c/d1adb38ab2ad0442755607c2bcc726cc17cce2c7

and the following for what I did for MT8192 on top of the previous patch:

    http://git.kernel.org/wens/c/049bd164884398d7e5f72c710da6aaa9a95bc10a


Regards
ChenYu

>    operating-points-v2: true
>
>    power-domains:
> @@ -157,6 +155,7 @@ allOf:
>              - const: core0
>              - const: core1
>              - const: core2
> +        sram-supply: true
>
>        required:
>          - sram-supply
> @@ -166,7 +165,6 @@ allOf:
>        properties:
>          power-domains:
>            maxItems: 1
> -        sram-supply: false
>    - if:
>        properties:
>          compatible:
> --
> 2.39.1
>
