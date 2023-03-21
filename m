Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A8A376C3A6B
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 20:28:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229675AbjCUT2g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 15:28:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229656AbjCUT2f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 15:28:35 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 295B340E2
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 12:28:33 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id g18so16680388ljl.3
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 12:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679426911;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XMKqy4dV1q10fp6DO4XaOGaJtKBDSRJAK3wcc/YHOt4=;
        b=VcNh1MuOGf6GzhKM7QfKzbToetlv9rlIadEcEn247ELWWnafByhA6qLphRLfGfzvh6
         Pc++l38277wu1ciqQYN33c3EI7egpihoR4leJs6feRvA+Gic/+08xQgDPD08Tfe4AnXM
         L1DJaaitXI1vL/lwqnqW+ZZvtv+Inv6KVP/gfdC1wC+onS51XM8DEFIjoM/sPjm18/fI
         7gQgWCVu/YECEr+0HVpHxJD7VrttSI3mVltMWxy0tDHaSX5SEwIA7vK/0UwrG1RLSF8Z
         2OkrQTadKY/99fodN6uux4dp4VHzTzzpn34SwubQPDHz+GqYZMvyjSMzIcXjd6p4CKBp
         gwJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679426911;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XMKqy4dV1q10fp6DO4XaOGaJtKBDSRJAK3wcc/YHOt4=;
        b=4JB3dTzsIS3XtiwLV+o6R0Gwt75pNIDBswonaZrUqtggCHMcE3Cs1ARFS1ZTUEEzF7
         oMBc78XAQAnN+qoaEYPMpS042OOwZji/JZBxfwxx0sEW/mbmDaRyLmbznQxxLe6hoae4
         cq1DG6W0j8HyZDz1/uz+aip1QpADvaOt2nTjFhvJUvKB4D/RulOMJcIKIFE7ymk96rLi
         Ho5N5A+mzX1YyHuUyXya+y//1h/xuWNwhpZ8UcfTABzZQTX1FCsaaS53/9eHYRECq1EK
         GS7K3oVocn9id6WBaHoDnxwsKlfiDJFgwcKWYqmOQtl5fikgWpqGYIcjBvh4WsQv2ib7
         d+vw==
X-Gm-Message-State: AO0yUKWhdXiCBhca/nfuAC8xtmSg2NEuXP89llBY3Kj7/Iiv1Itoz177
        xBnVs8KauLBTn/b9k5hf2cDy5A==
X-Google-Smtp-Source: AK7set94rggocG8EKaz5IJE/IfppPbxDwCm+rRQhShPGCb+/1i2T9oRpYFMAwryl4pgB0h+pxh5RNg==
X-Received: by 2002:a2e:a0ca:0:b0:298:a7c3:c26a with SMTP id f10-20020a2ea0ca000000b00298a7c3c26amr1465850ljm.25.1679426911422;
        Tue, 21 Mar 2023 12:28:31 -0700 (PDT)
Received: from [192.168.1.101] (abym238.neoplus.adsl.tpnet.pl. [83.9.32.238])
        by smtp.gmail.com with ESMTPSA id u9-20020a2e8449000000b00293534d9760sm2378737ljh.127.2023.03.21.12.28.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 12:28:31 -0700 (PDT)
Message-ID: <3d00adbb-a19e-3c0e-c25e-fb6accbf2c7a@linaro.org>
Date:   Tue, 21 Mar 2023 20:28:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/1] dt-bindings: dma: Add support for SM6115 and
 QCS2290 SoCs
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        dmaengine@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        andersson@kernel.org, bhupesh.linux@gmail.com, vkoul@kernel.org,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        vladimir.zapolskiy@linaro.org
References: <20230321184811.3325725-1-bhupesh.sharma@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230321184811.3325725-1-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21.03.2023 19:48, Bhupesh Sharma wrote:
> Add new compatible for BAM DMA engine version v1.7.4 which is
> found on Qualcomm SM6115 and QCS2290 SoCs.
All compatibles upstream are QCM2290-themed, let's keep it consistent.

[...]

> +      - items:
> +          - enum:
> +              # SDM845, SM6115, SM8150, SM8250 and QRB2290
The robotics SoC is QRB2210, but this should be QCM.

Konrad
> +              - qcom,bam-v1.7.4
> +          - const: qcom,bam-v1.7.0
>  
>    clocks:
>      maxItems: 1
