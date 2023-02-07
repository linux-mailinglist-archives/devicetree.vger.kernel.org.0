Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 608F968E2B5
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 22:16:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229509AbjBGVQ0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 16:16:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229896AbjBGVQZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 16:16:25 -0500
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com [209.85.167.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D56D938667
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 13:16:22 -0800 (PST)
Received: by mail-oi1-f177.google.com with SMTP id bd6so4825562oib.6
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 13:16:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ioxj3ZTtyZyoRXID9W54q51E/7+JLsaD1JUQ4RjMd/U=;
        b=23S30LOztZ+AOgBprG/G1k8/sKnB/tiWVM+4WLdc07WugXAjEpGn8NBdE/Vm6DkKhw
         04v8idMmz9JTd/CemHVhMarIfds7K5qSFPzSPAuccGaWTs0/cxRpy1VprmoYLx033/Ol
         guT9mk8xMNbMhDlcwrKOToFRTDgozLH/1vEiaFmLH49jvZM5PBcv6liKnl63uPdfRM4E
         YxaHIndiDcP9UxU/6vSKsLgjVDGyg54Tn5ASmtk9slPSIs3GmmVlOVKVu/zRrkGGUH2+
         3/BQj2+F23P+M3mJ5r+hY6Zg2/NxWGWxkVCZk75B+S157iiuqIFLxv9ZN4F5b9kalljT
         xYww==
X-Gm-Message-State: AO0yUKVO3fdRexQPQ+3wYC7WdJp/85/u7UAnTAFutEKCW0tNEK8w7h+3
        1Wc2xSZhh5VVH+G38EYYOw==
X-Google-Smtp-Source: AK7set/LXJZ14Lnt/7wSTjfoNuOWNVvBD7iTVO2U5b0BQCZrCvX39bOZL6VMHpnGCzvpZ12XEM91UQ==
X-Received: by 2002:aca:1316:0:b0:378:528:d83b with SMTP id e22-20020aca1316000000b003780528d83bmr2044736oii.55.1675804582113;
        Tue, 07 Feb 2023 13:16:22 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id bk30-20020a0568081a1e00b0037880fdb1f6sm6120330oib.24.2023.02.07.13.16.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Feb 2023 13:16:21 -0800 (PST)
Received: (nullmailer pid 4167457 invoked by uid 1000);
        Tue, 07 Feb 2023 21:16:21 -0000
Date:   Tue, 7 Feb 2023 15:16:21 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH RFC 1/2] ASoC: dt-bindings: renesas,rsnd.yaml: tidyup
 reg/reg-name
Message-ID: <20230207211621.GA4158591-robh@kernel.org>
References: <87r0v2uvm7.wl-kuninori.morimoto.gx@renesas.com>
 <87pmamuvlh.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87pmamuvlh.wl-kuninori.morimoto.gx@renesas.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 07, 2023 at 01:12:42AM +0000, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> Current reg/reg-name is using "maxItems", but the convention is to
> use "minItems".

Yes, but that's not really true in if/then schemas. If that's your 
reason, then the changes are wrong.

> And the core DT schemas already have a constraint that
> requires reg-names to have the same number of elements as reg.

Actually, no it doesn't.

> 
> This patch switch to use "minItems" on reg, and remove it from
> reg-names.
> 
> Link: https://lore.kernel.org/r/46974ae7-5f7f-8fc1-4ea8-fe77b58f5bfb@linaro.org
> Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> index d106de00c6b2..223f4859780f 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,rsnd.yaml
> @@ -298,9 +298,8 @@ allOf:
>      then:
>        properties:
>          reg:
> -          maxItems: 3
> +          minItems: 3

This was probably correct before if the base 'reg' entry says more than 
3 entries are allowed and in this case 3 is most you can have.

>          reg-names:
> -          maxItems: 3
>            items:
>              enum:
>                - scu
> @@ -309,9 +308,8 @@ allOf:
>      else:
>        properties:
>          reg:
> -          maxItems: 5
> +          minItems: 5

This might be correct...

>          reg-names:
> -          maxItems: 5
>            items:
>              enum:
>                - scu
> -- 
> 2.25.1
> 
