Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CDBB5E62ED
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 14:55:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231801AbiIVMy6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 08:54:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231484AbiIVMyk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 08:54:40 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8844EBBC5
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 05:54:10 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id c7so10841717ljm.12
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 05:54:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=6iOm3ykiEYCxC1y7MhUHMQ31n65A3mybmY95lFp43lM=;
        b=YMrrxM62da8qNRcPcsPM1f6j5pHpWSlnMRt/k9ArblV9TlykNySfRNF69BfT/CUnNS
         d1IgmIX8cBoGeK/KzeQKLk9snEUd//Z8IiuFzwStqnPErEbT6CVnJFSzxdZtZfr7a1wo
         ePKqfoJuLDVgA/ZdKIRApfAyd03xKvat/TKZDIeRdF9Lw65leabKONVnWVXEjKvleQ/I
         nzsPkPsQA427uSydpgtnwZz9JVyC3GUlHDuPIOTWvjvM+7EN7Ag3dwrNpDgwfVWonYqA
         GuhLJBaNq9DLDxKviqF9tAZ++Ad5NGIcGstVRhyOjY97y4VMRB7Mu0RBqSTLNiwVGcLX
         Nj/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=6iOm3ykiEYCxC1y7MhUHMQ31n65A3mybmY95lFp43lM=;
        b=HkndlF+xNrbOavop8bRA+PjvSXRg2Dx53yCHR8lYbjisHVNc9s9Vqkh0p6eFUEoLqB
         HKuZQhuaz1jXc5tr4jAi2xq2DUVQFYQrEaVb3gZ1MTGb2wFREE4FI5CLLYsASvnj6hDV
         QqNt6/WT8zePwwknl/fBuz3qPy4PQPTBAdZIs268aN0tu8MWRxxguI1NutDNiLIL0Dtg
         9SmQa3UDLWYaJURtKJVZZIAS5KBr/Z6xRLU034MxYyzWA+9RyfcJCLfHhABp5QS8dso0
         bTvlQ1moID+tDDGdRIlC0HT/RiQetLbpXihRD1ztWmHztB4YwGlTd9nZDMbbVJCrT3h4
         1PhQ==
X-Gm-Message-State: ACrzQf3euZhTcERlW/24xi+RuC5t6FmtcdnvVJr70XewITDTO8XiXtM5
        FC+Ks/wTjW7et5cFyUoiRkkXlg==
X-Google-Smtp-Source: AMsMyM6o08fe7EJUEoL9IZbLm9HzdOug3LCgJEjROkmEOsMLYtujzse2VqJjxZ68Gea+MQekuYjXKQ==
X-Received: by 2002:a2e:8496:0:b0:26b:f230:a55d with SMTP id b22-20020a2e8496000000b0026bf230a55dmr985734ljh.466.1663851248171;
        Thu, 22 Sep 2022 05:54:08 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u17-20020a05651220d100b0049ad2619becsm929038lfr.131.2022.09.22.05.54.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:54:07 -0700 (PDT)
Message-ID: <3c0c6932-89fe-5962-d1c3-57ab6ef577df@linaro.org>
Date:   Thu, 22 Sep 2022 14:54:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH] dt-bindings: iommu: arm,smmu-v3: Relax order of interrupt
 names
Content-Language: en-US
To:     Jean-Philippe Brucker <jean-philippe@linaro.org>, will@kernel.org,
        robin.murphy@arm.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220916133145.1910549-1-jean-philippe@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220916133145.1910549-1-jean-philippe@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2022 15:31, Jean-Philippe Brucker wrote:
> The QEMU devicetree uses a different order for SMMUv3 interrupt names,
> and there isn't a good reason for enforcing a specific order. Since all
> interrupt lines are optional, operating systems should not expect a
> fixed interrupt array layout; they should instead match each interrupt
> to its name individually. Besides, as a result of commit e4783856a2e8
> ("dt-bindings: iommu: arm,smmu-v3: make PRI IRQ optional"), "cmdq-sync"
> and "priq" are already permutable. Relax the interrupt-names array
> entirely by allowing any permutation, incidentally making the schema
> more readable.
> 
> Note that dt-validate won't allow duplicate names here so we don't need
> to specify maxItems or add additional checks, it's quite neat.

Nice explanation, much appriecated!

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

