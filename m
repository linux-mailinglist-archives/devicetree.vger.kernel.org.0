Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08F93587905
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 10:31:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232747AbiHBIbT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 04:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35716 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235113AbiHBIbS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 04:31:18 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9327C21E0B
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 01:31:16 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id x39so11336199lfu.7
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 01:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=tm9i8Ca6FK9a6ZQOggffT5qJ+C77bjSS2WfM7QIVfdo=;
        b=azwS2h42mZGSBdjobuObfSo6ZuoD+/OU2OJXRzbv56w7gw3DK/mcr1sh9zHBQ6/3sQ
         IQOViz6XnPT8rQncPNNsfZ7ABbLAfoUKFcw6AYqyp9LEAW5Ozl1Ro+oS6WeLeliYSy7j
         jEb9YQkRB30ea0zSHArFfDaCyqsXtukDdlsM/TEI+8n/9wAWu7DtFtrfLCceK10NaJBm
         JTT68ZX8fYNsVoGzcnvoj01eH8XUl7Os2xYm69pCAUVEvY2bF4baFMwYrdlrMifFXFT7
         3Xj7bREip5bIbu14t8VLK58VwmV73XJN3sbkxj4teEBKUCNieos6ThW0Lbo6LayvhKzH
         LOqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=tm9i8Ca6FK9a6ZQOggffT5qJ+C77bjSS2WfM7QIVfdo=;
        b=MrfQfhiJeEGlqgEGxaofVcVLw3/34WxSwTj15MEhl+0h9CqHBhnTEAWVuRNyLi6Otw
         tiSGRlqmIrSyoqUWoWcfl94mzBWoMjv/IzuvFigllRJ67EnEVRq/F4tLifSfuRlNY/Py
         +mObXYPpzxVqBes/x1hv2ImqcDZn6OpXBSy+bsrKsxxBJR42ih1ENaqk94sJcIz5W8lR
         JsC6iKYl0PrfK/rqyVLPHDvWSH++rjAYGLXMXvZjJaJ7jv9ygXoiMmquqUQSi9DyYKiI
         uKLbfWEWGwwydQ7NRyN6n84DD7QVlxPzJctFEO6lLaEwd1He9u0xt3NCJE/kJr1d7f11
         K3SQ==
X-Gm-Message-State: ACgBeo1b7LZQAsGHYWLXC3g5G9/ZxfPXeHlSHoBxxzwfuu77DjM4Tzvb
        FPWhTDC2epsvZ8clmxR30E1efA==
X-Google-Smtp-Source: AA6agR77riBL0TF26fwrGfG3qjaYYiLA8HeiMgBQ2jo3Fv1EKYOG23WEFPgxus1COrP2aVEqaBV3KA==
X-Received: by 2002:a05:6512:1095:b0:48b:6f2:6f3a with SMTP id j21-20020a056512109500b0048b06f26f3amr1401771lfg.646.1659429074920;
        Tue, 02 Aug 2022 01:31:14 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id v4-20020a056512348400b0048b08f0c4ddsm222421lfr.253.2022.08.02.01.31.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 01:31:14 -0700 (PDT)
Message-ID: <6388dd1e-ef17-dd64-36da-4e6cc69358ba@linaro.org>
Date:   Tue, 2 Aug 2022 11:31:13 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 11/11] gunyah: Add tty console driver for RM Console
 Serivces
Content-Language: en-GB
To:     Elliot Berman <quic_eberman@quicinc.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Murali Nalajala <quic_mnalajal@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Srivatsa Vaddagiri <quic_svaddagi@quicinc.com>,
        Carl van Schaik <quic_cvanscha@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Will Deacon <will@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220801211240.597859-1-quic_eberman@quicinc.com>
 <20220801211240.597859-12-quic_eberman@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220801211240.597859-12-quic_eberman@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/08/2022 00:12, Elliot Berman wrote:
> Gunyah provides a console for each VM using the VM console resource
> manager APIs. This driver allows console data from other
> VMs to be accessed via a TTY device and exports a console device to dump
> Linux's own logs to our console.

Is such 'console' an unidirectional stream of chars or bidirection one? 
IOW, can I have getty on such console?

> 
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
>   Documentation/virt/gunyah/index.rst   |   7 +
>   drivers/virt/gunyah/Kconfig           |  10 +
>   drivers/virt/gunyah/Makefile          |   3 +
>   drivers/virt/gunyah/rsc_mgr_console.c | 405 ++++++++++++++++++++++++++
>   4 files changed, 425 insertions(+)
>   create mode 100644 drivers/virt/gunyah/rsc_mgr_console.c
>

-- 
With best wishes
Dmitry
