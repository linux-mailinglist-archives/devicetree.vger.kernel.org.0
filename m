Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 97FED6B974C
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 15:10:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231740AbjCNOKa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 10:10:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230457AbjCNOK2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 10:10:28 -0400
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAB6564A9E
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 07:10:22 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id a13so2302062ilr.9
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 07:10:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678803022;
        h=date:subject:message-id:references:in-reply-to:cc:to:from
         :mime-version:content-transfer-encoding:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=J4IxKJvNCPem37WE9sb2G8fFH28w36QHntMu/poKH9M=;
        b=X3OTQySzugX9KTj/YDzx3wXD25+rxWSJZ8rez+azdwzDmgOHByOF2tsrqLC3+1Pzz5
         1czH/wwIu6Lt+EfN/YcBzCkGMBsqT9P+csFFCZ4rb/hvL7e9eDqu8YIsgU8wjQF05Fka
         UcwKxjAK9eAogKEegQtOndI5Bhsb0287+Adw8myIAO+GF4aWm+g37W/D73QFPGj2xqiH
         GtHpnbBeKPzCVAaJhn4NxmoU0em60M+XJo+HQgMupiy9Q2k7aFOiC1l16uDY1MRKATLR
         VzPn4O1fyITRlKgV0gWCSGLw3Q0/Y/zIiQKV3PbxyiJPqG42TRkslE5ycabbwEpUZ7xU
         RHzw==
X-Gm-Message-State: AO0yUKUKO2fPaeoaUahykkeewZl3bAJosLQt7+BDL81x/U6lyxJOj2eU
        wwtUh86Vrbha13vFCoW1bI8c+PbYAw==
X-Google-Smtp-Source: AK7set9SlKS7zd+F8Ye1ypiH0I9v8SwPT4BniplC0Bu9O2AeYdH9GSz3fWEu32E5sqUq2M08p+zWKg==
X-Received: by 2002:a05:6e02:128b:b0:310:c1b3:9906 with SMTP id y11-20020a056e02128b00b00310c1b39906mr2137148ilq.25.1678803022142;
        Tue, 14 Mar 2023 07:10:22 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.249])
        by smtp.gmail.com with ESMTPSA id s27-20020a02cc9b000000b0040610ade715sm207855jap.83.2023.03.14.07.10.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 07:10:20 -0700 (PDT)
Received: (nullmailer pid 83768 invoked by uid 1000);
        Tue, 14 Mar 2023 14:10:19 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
MIME-Version: 1.0
From:   Rob Herring <robh@kernel.org>
To:     Jan Jasper de Kroon <jajadekroon@gmail.com>
Cc:     devicetree@vger.kernel.org
In-Reply-To: <20230311134655.486973-1-jajadekroon@gmail.com>
References: <20230311134655.486973-1-jajadekroon@gmail.com>
Message-Id: <167880254118.25298.6305780643962543224.robh@kernel.org>
Subject: Re: [PATCH] feat: Add 'hold-in-reset-in-suspend' property to
 goodix touchscreen binding
Date:   Tue, 14 Mar 2023 09:10:19 -0500
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat, 11 Mar 2023 14:46:55 +0100, Jan Jasper de Kroon wrote:
> This patch adds a new property, 'hold-in-reset-in-suspend', to the Goodix touchscreen
> device tree binding. When set to true, the touchscreen controller will be held in
> reset mode during system suspend, reducing power consumption. The property is optional
> and defaults to false if not present.
> 
> I am submitting this patch to the Device Tree mailing list to add a new property to
> the Goodix touchscreen device tree binding. This patch supplements a related patch
> sent to the linux-input mailing list, which updates the Goodix touchscreen driver to
> use this new property.
> The linux-input patch can be found at:
> https://lore.kernel.org/all/20230311131534.484700-1-jajadekroon@gmail.com/
> 
> Signed-off-by: Jan Jasper de Kroon <jajadekroon@gmail.com>
> ---
>  .../devicetree/bindings/input/touchscreen/goodix.yaml    | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/input/touchscreen/goodix.example.dts:31.41-42 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:419: Documentation/devicetree/bindings/input/touchscreen/goodix.example.dtb] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1512: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20230311134655.486973-1-jajadekroon@gmail.com

The base for the series is generally the latest rc1. A different dependency
should be noted in *this* patch.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit after running the above command yourself. Note
that DT_SCHEMA_FILES can be set to your schema file to speed up checking
your schema. However, it must be unset to test all examples with your schema.

