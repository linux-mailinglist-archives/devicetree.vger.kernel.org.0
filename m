Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC94855A07C
	for <lists+devicetree@lfdr.de>; Fri, 24 Jun 2022 20:08:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231383AbiFXR1V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Jun 2022 13:27:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232006AbiFXR0y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Jun 2022 13:26:54 -0400
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F7CCDD6
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 10:26:50 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id z191so3374101iof.6
        for <devicetree@vger.kernel.org>; Fri, 24 Jun 2022 10:26:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=nz2qQEgaL087Hhf4qoKzeVlUqnLzg/kAouulSnIEDmM=;
        b=0r200RkCLQcluQHe+zrAEVsqvpGzN9btXtz3XymdB+L/FJ5t8ctfInEqhWPxCsZlWu
         x1t631VKMZOueBYumF836IHZqwXTP2TpKgsf7V/G69bhHFJ0fVBZbN8SrIiEjftPG/Fw
         M+jmNoeNqHOjYlaoNOAdhKIIiIwgQxkUNEU2M/FhIpbK+OEzSxA2sqkauZ+YJGod5pS3
         UhiS5TnhGRgAnj0pZrR6KHqwoteFcBxb7x444SV5ftpeM01oVHyUvAi8/SzTMNqlsjDJ
         Up+3MuBVVcufzDc9O6gOLuzXcT4ig4nbragG0nqGhYDimTrT6ffPG28RjgDUNWB5sRmY
         2abQ==
X-Gm-Message-State: AJIora8ucR83CHoRyMOtf2UBhmc7R/lguOOlHIbW1VSzLDVxS9tl3FRA
        BUxW2MdaXwvRZYQbFLxD6A==
X-Google-Smtp-Source: AGRyM1s8DeK7lzgekbYZjos/351Am8lOtX0eBpG6oBqhJM7yv+oxiGXrJ2AZn+FOBZZgPNGP9OZceA==
X-Received: by 2002:a05:6638:164b:b0:335:de33:26fa with SMTP id a11-20020a056638164b00b00335de3326famr150425jat.31.1656091609513;
        Fri, 24 Jun 2022 10:26:49 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id d126-20020a026284000000b003318c717b59sm1292545jac.39.2022.06.24.10.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Jun 2022 10:26:49 -0700 (PDT)
Received: (nullmailer pid 146344 invoked by uid 1000);
        Fri, 24 Jun 2022 17:26:34 -0000
From:   Rob Herring <robh@kernel.org>
To:     Daniel Mack <daniel@zonque.org>
Cc:     ryan.lee.analog@gmail.com, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, robh+dt@kernel.org, broonie@kernel.org
In-Reply-To: <20220624104712.1934484-3-daniel@zonque.org>
References: <20220624104712.1934484-1-daniel@zonque.org> <20220624104712.1934484-3-daniel@zonque.org>
Subject: Re: [PATCH 2/8] ASoC: dt-bindings: max98396: Add #sound-dai-cells
Date:   Fri, 24 Jun 2022 11:26:34 -0600
Message-Id: <1656091594.398007.146343.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Jun 2022 12:47:06 +0200, Daniel Mack wrote:
> Add this mandatory DT property to the yaml documentation.
> 
> Signed-off-by: Daniel Mack <daniel@zonque.org>
> ---
>  Documentation/devicetree/bindings/sound/adi,max98396.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/sound/adi,max98396.example.dts:32.33-34 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:383: Documentation/devicetree/bindings/sound/adi,max98396.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1404: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

