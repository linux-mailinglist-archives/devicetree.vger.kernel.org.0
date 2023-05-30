Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1987B7160AC
	for <lists+devicetree@lfdr.de>; Tue, 30 May 2023 14:56:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230519AbjE3M4J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 08:56:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232279AbjE3M4F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 08:56:05 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39E75193
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:55:37 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-96f53c06babso786457266b.3
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 05:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685451332; x=1688043332;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=OBcNGihsby3nj+yLS8cmdJG0F3BB5BsBxPISYSYV4c0=;
        b=lPr1OMa5NUIpF1Wv20V5s4ZKVlkRgHPZIKGs+UUXRHKPz9lS7zMkeb6QBUDMdv4G41
         20b36LIrRrm3v44Uvl75Z7B8XBgRZvSo6EcX4ItBnJRugxjpUY3UuPQ9dAacAJSARc10
         xEtsMgNG/ZNnPnZ2YqetP5eykma6xwWlW2lVkXp6kQwGcvgDOXAdffG7eOsrNvqZvGog
         hwrz+evn/VKm5iaFog3E5uQXw/rR81pQnQIpOU5KVGqkoz/oeqWejdV2ZVm+Eo7X8fmE
         Cg4wV9/mNsmLaQjPivtE9GtiQwpGFCJmj8qKButQYJ0MthAq57zZZ8yCYkYfHxvEel4g
         k2uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685451332; x=1688043332;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OBcNGihsby3nj+yLS8cmdJG0F3BB5BsBxPISYSYV4c0=;
        b=WRMTBkP4iqt9vbzgqIhILOlNq3EtA2MNSb5DsEhz66SfWWXOFJVotx8f8GBQjpQNtL
         zL2g2mhBwScwnK7M2Oqk+ewIjPDseuAZvmGt9U9/5WwMEeQicP3Fgx30tgzT8MTDnW8C
         4uhLrhQn34WFvQ5AGU3zNENBgwtULMzsIGja/yAUfMPjYauAf+niTVumWSQloUhCygmG
         v+RGPW50oOlgjtyqzD7PJM+xTsbdV+i8qV4+1QqOb0Js0hc32OuBV5b+sRAk2/vqrWPx
         2QQ+JivlpyBFXMsJLfcIzsUHf6UxRj17Ixs+/SNzcCELAfMl/8tiIijewhBh/6YPd9Pd
         rtLg==
X-Gm-Message-State: AC+VfDzRUNxcJ627THDcL8jAqZNVt6KRIAye4rxgLWCTovSF4YQA4J9i
        KmxyTrHRtMwqqkxGY+BKFCLFoA==
X-Google-Smtp-Source: ACHHUZ4IMgAZuXXdvozMz2uholz0ow06YVqNtFGTrdlJYmkd7L3nbEjn05xSWKVVBeKy+YB9FWdlaQ==
X-Received: by 2002:a17:906:58d3:b0:96f:e7cf:5004 with SMTP id e19-20020a17090658d300b0096fe7cf5004mr2564087ejs.73.1685451331674;
        Tue, 30 May 2023 05:55:31 -0700 (PDT)
Received: from krzk-bin ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id dv22-20020a170906b81600b0096f78953b77sm7363868ejb.147.2023.05.30.05.55.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 05:55:31 -0700 (PDT)
Date:   Tue, 30 May 2023 14:55:27 +0200
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Jisheng Zhang <jszhang@kernel.org>
Cc:     linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-riscv@lists.infradead.org, Icenowy Zheng <uwu@icenowy.me>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Guo Ren <guoren@kernel.org>, Yangtao Li <frank.li@vivo.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marc Zyngier <maz@kernel.org>, Wei Fu <wefu@redhat.com>
Subject: Re: [PATCH v2 4/9] dt-binding: riscv: add T-HEAD CPU reset
Message-ID: <20230530125527.njppujzixnv3bbjd@krzk-bin>
References: <20230518184541.2627-1-jszhang@kernel.org>
 <20230518184541.2627-5-jszhang@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230518184541.2627-5-jszhang@kernel.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 May 2023 02:45:36 +0800, Jisheng Zhang wrote:
> The secondary CPUs in T-HEAD SMP capable platforms need some special
> handling. The first one is to write the warm reset entry to entry
> register. The second one is write a SoC specific control value to
> a SoC specific control reg. The last one is to clone some CSRs for
> secondary CPUs to ensure these CSRs' values are the same as the
> main boot CPU. This DT node is mainly used by opensbi firmware.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  .../bindings/riscv/thead,cpu-reset.yaml       | 69 +++++++++++++++++++
>  1 file changed, 69 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/thead,cpu-reset.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/riscv/thead,cpu-reset.example.dts:18.35-25.11: Warning (unit_address_vs_reg): /example-0/cpurst@ffff019050: node has a unit name, but no reg or ranges property
/builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/riscv/thead,cpu-reset.example.dtb: cpurst@ffff019050: control-reg:0: [255, 4278276100] is too long
	From schema: /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/riscv/thead,cpu-reset.yaml

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1783487

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.
