Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C8DC624C1B
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 21:44:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbiKJUov (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 15:44:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229461AbiKJUot (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 15:44:49 -0500
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A308E5F90
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 12:44:48 -0800 (PST)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-13bd2aea61bso3524156fac.0
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 12:44:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hsW1HDNshVttkwkuGzHmpzw/XnbOwGpgVSFS5MIeojQ=;
        b=n2Wt2ScHiA0xxbUhQvDZrTrOlK2SImtoSvw435vBxs0X2WCBUKY3IHMVRMawjkTcio
         VOuN2wCvWB8tqghZpTcJ3XDuZVRD0hZKKxBmWpYZSe3Zk0Uj5CpAS5f7KGi9n3ZqwSBe
         N5kjOFUNDTZ57Evb9SjlT8UmG4E4R15g8CiF4ezBfXgmt8kWx6OgDCF0AIbiLcfqRg4n
         EGhT7U4tD001HKwFl0iVgIUgDOVktDxuC+lRRr98XmoMwweGa4yoF9qaBDqktcw3ryGi
         01XDw3vIpFucXv5ZO6GD10Oz2mzLoPkknYV9ZNUad3HiOfzXHQ2CxvkCtUTZ7deI92Lc
         lk2w==
X-Gm-Message-State: ACrzQf0EEse6COBbmRG0Laxspzh66suc0YfnpfcngC8SCnRkHaqy77JN
        P11oTG1UKr892tiYPZvvBEbqtH8gOA==
X-Google-Smtp-Source: AMsMyM5TGywRwwE/SqXxLN37u/ecN915xrp2f621fb20QUaBuUJvazW4/0mHQr1PJsZ7Y96ZiZrCyQ==
X-Received: by 2002:a05:6870:970b:b0:13a:eee0:b499 with SMTP id n11-20020a056870970b00b0013aeee0b499mr2178583oaq.83.1668113087944;
        Thu, 10 Nov 2022 12:44:47 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id f11-20020a05680814cb00b003509cc4ad4esm169517oiw.39.2022.11.10.12.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Nov 2022 12:44:47 -0800 (PST)
Received: (nullmailer pid 954460 invoked by uid 1000);
        Thu, 10 Nov 2022 20:44:49 -0000
Date:   Thu, 10 Nov 2022 14:44:49 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCHv2 1/1] dt-bindings: power: rockchip: Increase pm_qos
 number
Message-ID: <20221110204449.GA948154-robh@kernel.org>
References: <20221107180231.73663-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221107180231.73663-1-sebastian.reichel@collabora.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 07, 2022 at 07:02:31PM +0100, Sebastian Reichel wrote:
> On RK3588 some power domains require multiple qos blocks to be
> saved. The maximum required number for RK3588 is 8 (for VDPU).
> 
> Acked-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> Changes since PATCHv1:
>  * https://lore.kernel.org/all/20221021171405.86509-1-sebastian.reichel@collabora.com/
>  * add minItems: 1
>  * add Ack from Heiko
> ---
>  .../devicetree/bindings/power/rockchip,power-controller.yaml   | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> index 0d5e999a58f1..dc877416e1fd 100644
> --- a/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> +++ b/Documentation/devicetree/bindings/power/rockchip,power-controller.yaml
> @@ -134,7 +134,8 @@ $defs:
>        pm_qos:
>          $ref: /schemas/types.yaml#/definitions/phandle-array

phandle-array is really a matrix of N entries of phandle+args. This 
should have worked as-is as N is not set here. Maybe somewhere else? Or 
could be a tooling bug. If you do want to define 1-8 entries of phandles 
with no args, that would be:

minItems: 1
maxItems: 8
items:
  maxItems: 1


>          items:
> -          maxItems: 1
> +          minItems: 1
> +          maxItems: 8
>          description: |
>            A number of phandles to qos blocks which need to be saved and restored
>            while power domain switches state.
> -- 
> 2.35.1
> 
> 
