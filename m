Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1ED50681E7F
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 23:57:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229605AbjA3W52 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 17:57:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229489AbjA3W51 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 17:57:27 -0500
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CAFBD144AB
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 14:57:26 -0800 (PST)
Received: by mail-oi1-f180.google.com with SMTP id bx13so5627439oib.13
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 14:57:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kJ7g14V8k5qybxxkHSK9zkEaFegVOgO75+5UvvmJX6c=;
        b=hb7SyMstazPZL3Io7B9HjbiVTW8aMW4pcgmGQoQwzxsGDH7wNORN74OAxqUM8C713L
         +4gekdIBlnhxkYIac/PB8S1JgJt/bes/9vq7Ddq5dxrsZF7Q+F29VawYj3IYBoi/qKNg
         OIMO3dIeq0YZSlQkgnHfpwn/m0IwakZjMBRRVVpbwppQ9qQ7YMmPi8LgFJNSKRf556eA
         FIYDMQipzP1/QQFyWggbi2JUhQu2ge0CCxASUBXfvFjNMQbEuf7CbNPEqGvl0inpILiB
         JGeLucAYhHhOkS1AtD5RSDAo347NCEPr3F/mXru9QQ/Sh3AE0McP2+cqt2UT3kr1x0lT
         dl2A==
X-Gm-Message-State: AO0yUKUcBSGTL5Qmyg9iFIs4ODU5T5aWbxPnE/VuT7zW8x+tqa8lLJPF
        gbQUeLXF/ZZA7A41qtxebw==
X-Google-Smtp-Source: AK7set9cVNwIOuCSm7CYJEAFeX6i6670zCuQXg6lhroLXrXh9V0bAqVwdAAJEh/LEW4Y+P+TRBLMxg==
X-Received: by 2002:a05:6808:31a:b0:377:eec1:b3a3 with SMTP id i26-20020a056808031a00b00377eec1b3a3mr4073538oie.0.1675119446057;
        Mon, 30 Jan 2023 14:57:26 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id w25-20020a9d6759000000b0068bd20cf07dsm1788385otm.48.2023.01.30.14.57.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Jan 2023 14:57:25 -0800 (PST)
Received: (nullmailer pid 3679858 invoked by uid 1000);
        Mon, 30 Jan 2023 22:57:24 -0000
Date:   Mon, 30 Jan 2023 16:57:24 -0600
From:   Rob Herring <robh@kernel.org>
To:     Andrew Jones <ajones@ventanamicro.com>
Cc:     'Albert Ou ' <aou@eecs.berkeley.edu>,
        'Conor Dooley ' <conor.dooley@microchip.com>,
        devicetree@vger.kernel.org, 'Jisheng Zhang ' <jszhang@kernel.org>,
        'Palmer Dabbelt ' <palmer@dabbelt.com>,
        kvm-riscv@lists.infradead.org,
        'Paul Walmsley ' <paul.walmsley@sifive.com>,
        'Atish Patra ' <atishp@rivosinc.com>,
        linux-riscv@lists.infradead.org,
        'Heiko Stuebner ' <heiko@sntech.de>,
        'Anup Patel ' <apatel@ventanamicro.com>,
        'Krzysztof Kozlowski ' <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH v3 2/6] dt-bindings: riscv: Document cboz-block-size
Message-ID: <167511944449.3679792.10367514567878106718.robh@kernel.org>
References: <20230130120128.1349464-1-ajones@ventanamicro.com>
 <20230130120128.1349464-3-ajones@ventanamicro.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230130120128.1349464-3-ajones@ventanamicro.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Mon, 30 Jan 2023 13:01:24 +0100, Andrew Jones wrote:
> The Zicboz operation (cbo.zero) operates on a block-size defined
> for the cpu-core. While we already have the riscv,cbom-block-size
> property, it only provides the block size for Zicbom operations.
> Even though it's likely Zicboz and Zicbom will use the same size,
> that's not specified. Create another property specifically for
> Zicboz.
> 
> Cc: Rob Herring <robh@kernel.org>
> Signed-off-by: Andrew Jones <ajones@ventanamicro.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
