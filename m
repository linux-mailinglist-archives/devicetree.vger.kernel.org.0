Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 76AB94D474B
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 13:52:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233423AbiCJMwp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 07:52:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231586AbiCJMwo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 07:52:44 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83A48149942
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 04:51:43 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id CA3673F321
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 12:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646916700;
        bh=TQz+s86WSRF8JD18DoYGMl9h0Gp5VNc55zA58BrovNE=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=G4ucPY7QpAuGwqq+gML/vjnxTR7TcEGAMuQ4qNS+ikutduRIR072eZPgGNsyC0yXA
         vcyPkDoeop1eWlFvcPXmcJ1mxTN374fbJPmr4DOxutPFJYzLLB6D8xnSfqQcXD/L5P
         sOOIyv/WogTrmFRLcgBdYNajADatSaej/OVCdg9IThIiBOkCO9q95D+Xge0cBXuP+f
         l4p9ATbHbwsEVM+j2X72iOkzE5sj98Fw5WB7B6i1gMF9yB1h3DFdJgF7q5uQcFSi2D
         T3bVp4OMlH6aW2AxU2w5D+sUn9f6jCE+Tb8tutCEvSWj4IVdZvny+XTkWNs94EYHsy
         Xy8nILi3yYrkQ==
Received: by mail-ej1-f72.google.com with SMTP id hq34-20020a1709073f2200b006d677c94909so3065749ejc.8
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 04:51:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TQz+s86WSRF8JD18DoYGMl9h0Gp5VNc55zA58BrovNE=;
        b=WrSAeuyLG2QYM0dzWcbe9LIwMu97LpOF30n1nB0Gg1RbdXLzgSWM1fxjLGW6Y2lymu
         KM0xMysTpj6cBLSWevzju7+d9YmgGhiUQjf6HTaRQ9MvhaQyaKUpiznG5fOpzFCND3Ei
         r2xAjlLmOKPvWA/cTeEeABeQU33R6Qw9befBaf99SVV8QOpgLm+z56IwyoEtP3b1dM8d
         YU83b9P+35j60nsP+CkhfHdAj5teIjcjOpQtsL7t1l2e1sIMjIJcLuuiduu9NBtvrS7i
         2BrCe4qenp4oni7HDJKBFMxjryynE2cUMTI38600yVfjAwgMMN1M0Ghnt22AzlkWWVwV
         9OLA==
X-Gm-Message-State: AOAM531CKQeQB4IkV6HZrNyoB68Vv/rQ56jgki6HfolABlZ2QS/nnrwT
        mRcfEzDTPM0t06VTZ4BIv1mUQtoJd3O+yzfVDarz/Me5x+aJ4A26vU/L8aMbv1GB9WQe/qj5IeE
        RPRurBDXb+9j9IoP9E87GZQc6LLBCfeQluq2qiho=
X-Received: by 2002:a05:6402:cb:b0:410:8094:872b with SMTP id i11-20020a05640200cb00b004108094872bmr4293525edu.378.1646916700509;
        Thu, 10 Mar 2022 04:51:40 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyGbKpPr7brplhUtze/R2VoXUIp2jvGlg5y1FoUnr4MNZLvDWAUUfEoDuoqQwNR5nCBqQnqgg==
X-Received: by 2002:a05:6402:cb:b0:410:8094:872b with SMTP id i11-20020a05640200cb00b004108094872bmr4293511edu.378.1646916700360;
        Thu, 10 Mar 2022 04:51:40 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id zb5-20020a17090687c500b006ce2a98f715sm1718595ejb.117.2022.03.10.04.51.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 04:51:39 -0800 (PST)
Message-ID: <d683043f-dfcf-8254-4457-c56359e4c0de@canonical.com>
Date:   Thu, 10 Mar 2022 13:51:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/6] dt-bindings: iio: adc: ti,ads1015: Add missing
 ADS1115 compatible string
Content-Language: en-US
To:     Marek Vasut <marex@denx.de>, linux-iio@vger.kernel.org
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
References: <20220310003402.490478-1-marex@denx.de>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220310003402.490478-1-marex@denx.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2022 01:33, Marek Vasut wrote:
> Add missing ti,ads1115 compatible string. This compatible string is
> supported by the Linux kernel driver and the ads1015 is a 12bit ADC
> while ads1115 is 16bit ADC. Add the missing compatible string.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> Cc: Jonathan Cameron <Jonathan.Cameron@huawei.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/iio/adc/ti,ads1015.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
