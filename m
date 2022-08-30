Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA71B5A6C65
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 20:41:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231424AbiH3SlL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 14:41:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231446AbiH3SlG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 14:41:06 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49C4A4A818
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:41:04 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id p7so5614620lfu.3
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 11:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=whr6DsPc0YpQivNDZQFyeGw5fN+mBCcZ18Z6UAvm9sg=;
        b=Rpd6Ew4iEx/DBhQPDIm7iU/aVsRKanTgd/uFQ49Dmw2HgayJ0KXQO0dfniF+F3KYFj
         2tDZl2Z7hOlhvxBIhqE36WG9PP/dp0UH3KzzpUZhOT2W9OhpBTbztuB3yTznz39rZiIm
         yiyEv3pKSa8OT4TwF9QjZf7tW+CiPL7ZYFf4eGuAt95EWd00w6AwgWOK00Oy4c+3qUtt
         qeg8eg1fYJF+oEMV+7N8oEo3ovJiMFvvC30N8TgN/XYOMHALQCdnooaqPDd4CvbtjSoi
         a/T/Do+jAlghN6jlNVj4nDGMpCHCnc7F8VHdIODKnv0MdFx1yihi94QmpPbMl+TvgNgW
         EUbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=whr6DsPc0YpQivNDZQFyeGw5fN+mBCcZ18Z6UAvm9sg=;
        b=05KNFlSqaXDVkPixOrh/9QIxxRGiAtNZa3QLb0CZNJPEszT1UTdurp4nlA6V+tOpSC
         UrYwQx30G9nP/9COW0mgh2B/LgcIQEXLAZJTazlcIMw2vnFt7DG9G7f6h3JMoI58uk+N
         uo/+GYCFbbk955k7XZNir0LbzS04gJpU/xzW158550Q2F2m8OEFmQbR39BoSqGLzX8Fq
         KGrzcXzlFjaJrxmxq6vJCM8309zyBsS400v6fstZzBJpGKVhEdCYmuOK6Ri7EbOrRLGo
         QkxrlbwCLkUaSH2Vhh0ceHsscHDutYbh4n92t8Q9IgQCZbPkAwzEi+gV9h0sX9cpo8KQ
         kXeA==
X-Gm-Message-State: ACgBeo03w9A2KcBzwtrpfMkeTLf56OWLUm4B4bkdCdgbIxdHykhs85w1
        iP0aLYO3MXRP1EN2wiOyfEeNJTI5seycKGPi
X-Google-Smtp-Source: AA6agR7uzUMU5pJwXm8j90akKK+hS5iuQ/1f7T9YtWDas3OtBJVsQazsaOBVXkgtA+NzkUBx8xlVDQ==
X-Received: by 2002:a05:6512:260f:b0:492:8e9f:c647 with SMTP id bt15-20020a056512260f00b004928e9fc647mr7650980lfb.443.1661884862629;
        Tue, 30 Aug 2022 11:41:02 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id a28-20020a2eb55c000000b0025e2c5a12b6sm999660ljn.129.2022.08.30.11.41.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 11:41:02 -0700 (PDT)
Message-ID: <69960d7f-321f-f8b6-66d3-456bbf697858@linaro.org>
Date:   Tue, 30 Aug 2022 21:41:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 10/11] dt-bindings: PCI: qcom-ep: Add support for
 SM8450 SoC
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        lpieralisi@kernel.org, robh@kernel.org, andersson@kernel.org
Cc:     kw@linux.com, bhelgaas@google.com, linux-pci@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org
References: <20220830165817.183571-1-manivannan.sadhasivam@linaro.org>
 <20220830165817.183571-11-manivannan.sadhasivam@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220830165817.183571-11-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2022 19:58, Manivannan Sadhasivam wrote:
>    clock-names:
> -    maxItems: 7
> +    minItems: 7
> +    maxItems: 8
>  
>    qcom,perst-regs:
>      description: Reference to a syscon representing TCSR followed by the two
> @@ -125,6 +129,36 @@ allOf:
>              - const: sleep
>              - const: ref
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sm8450-pcie-ep
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 8

Same as in previous patch - maxItems is not needed now.

Best regards,
Krzysztof
