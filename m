Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C5C54EB6E5
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 01:39:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231628AbiC2XlK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Mar 2022 19:41:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234637AbiC2XlJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 19:41:09 -0400
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD41D4889B
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 16:39:25 -0700 (PDT)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-ddfa38f1c1so20427119fac.11
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 16:39:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=2sZWnYCaS8WSf7FAfXX4SE6+KxRPy7kZcbXfzCyqJvo=;
        b=zxXZjyPJ4kJb12a9eliu22Ir/kKnc1oYwwQ0DsrLIyWkm6eol0lwtqgHaf0L7dlNXc
         vfDQZ6qzxdAlaSDIytwtur9f8FE4uNSXip/skXOfTIRPx6vvOsX86iNip7BHPEPCgCUL
         bCgTwBsPwFs+czhonCn/wonyLoauyHuwaXKOKHhTV1Oz7wQfg2KRqHeG86UStG/xam5U
         +RVRZmRiSMxnziZRX/RArR3rF4593q8e3WdJmVCZwNwTnosNwCD0CdCgi1KH2Ao2YnXL
         cQgc6sW1ovYOvSKi0Nm+cUFoJzjlGTyJNCTwJ9/oXWW3gNuym/6rs/gVqSpeMrB6LNFt
         IeqA==
X-Gm-Message-State: AOAM532s5ocrsTN6/KRqk1qLwpq2SN28Pv5aa1nI+KokfdLB7lL/luk6
        yp5DLSUn1XeQpdDxhU+Z/o1HAze1qw==
X-Google-Smtp-Source: ABdhPJxWruNxesVpnxCLakmyk1SX2MnSmKvCNLjKO5pDHMdKOO/tpTPDCAqW5lI+YpZjIY20oebZmQ==
X-Received: by 2002:a05:6870:4617:b0:de:7c85:37e6 with SMTP id z23-20020a056870461700b000de7c8537e6mr900664oao.169.1648597165045;
        Tue, 29 Mar 2022 16:39:25 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id s26-20020a4ac81a000000b00322a2b5d943sm9161991ooq.37.2022.03.29.16.39.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Mar 2022 16:39:24 -0700 (PDT)
Received: (nullmailer pid 1575585 invoked by uid 1000);
        Tue, 29 Mar 2022 23:39:23 -0000
From:   Rob Herring <robh@kernel.org>
To:     Rui Miguel Silva <rui.silva@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20220329213519.801033-2-rui.silva@linaro.org>
References: <20220329213519.801033-1-rui.silva@linaro.org> <20220329213519.801033-2-rui.silva@linaro.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: net: smsc,lan91c111 convert to schema
Date:   Tue, 29 Mar 2022 18:39:23 -0500
Message-Id: <1648597163.584597.1575584.nullmailer@robh.at.kernel.org>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 29 Mar 2022 22:35:17 +0100, Rui Miguel Silva wrote:
> Convert the smsc lan91c9x and lan91c1xx controller device tree
> bindings documentation to json-schema.
> 
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  .../bindings/net/smsc,lan91c111.yaml          | 59 +++++++++++++++++++
>  1 file changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Error: Documentation/devicetree/bindings/net/smsc,lan91c111.example.dts:27.29-30 syntax error
FATAL ERROR: Unable to parse input tree
make[1]: *** [scripts/Makefile.lib:378: Documentation/devicetree/bindings/net/smsc,lan91c111.example.dt.yaml] Error 1
make[1]: *** Waiting for unfinished jobs....
make: *** [Makefile:1398: dt_binding_check] Error 2

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1610868

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.

