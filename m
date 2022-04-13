Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 977594FF57F
	for <lists+devicetree@lfdr.de>; Wed, 13 Apr 2022 13:12:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232299AbiDMLOd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 07:14:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231514AbiDMLOa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 07:14:30 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CBDB25C43
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 04:12:09 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id t25so1912872edt.9
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 04:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=87vL2p0pvhqf2NKE/P/XI4XOW4lM/9Q/Rj1t8GWi1VY=;
        b=iFpZlw0WhnEeSG0qd6AJpduqRQb8ehjjOGBH4WdIkuLlwWGDjohiquXQQSBt41lFSY
         Yg0fDRfGeTDR/dto1BoIj5AqsY7K0ueRu+NHf/olgixW8sn2UnBaupRBeoOQi85Fewkn
         1/LqrbMry3XCcNtbDzB/+sUl6DoqTYVMb9CfJZzdXbgCsPn0YTc0tm+k1zPkz4IMCpla
         rvkAVRHxIs9hG9x3/2bACCq7gBxo23ebbMC+9Nmk7B7wENMIb6v8WxcDSSXxqtWGcY4U
         yY4ebadiEWq/qpdVuT7fmAvgLewUYoroAclevvF7Pk0POkmlW7ecGagj8ZAGvx7gvC8D
         bkAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=87vL2p0pvhqf2NKE/P/XI4XOW4lM/9Q/Rj1t8GWi1VY=;
        b=I3muH+lc3fbonE8muP0mSIQFkbOj3ug3QyLLPiVTc71Il4dTSvB5XSiELyyUYz1lFJ
         Hv1pnybkmmTP7LTgWDe6wGLImTL0CxEC4jDTh37bg2uDxyD4ifKhx8zvihRdJEvcTd2w
         a/twnRV/4Z+sUJpT6j1nx2X5NJ9vW2BOQ6qo/6QJXqgKxcg8RUm0wJ+SBRT3kuEfn/M2
         4ghD/FtHzHgkwMwo96PBOIIZFZ+ye15OOAVvBronegGvE8onqKbaeZXs7Q6lTCODv7oJ
         olbUUTW55E8GxBPKRd+0pOmO31q4uIjq22gH8vFqpMZvmFR/PH3PZL/dl97G98pIpM/f
         H9Nw==
X-Gm-Message-State: AOAM530HagLkq1qG3cK0oGRDmLXmqO3OOiu+RBnKR0SCVsdYItvg7+PQ
        p9o2lyDRIDyD+kN6B7uS5M9Iwg==
X-Google-Smtp-Source: ABdhPJxlPDfsOxnR5ZwL7ovWY0IIPZSF4YXgSIOlLo5C8SHy0yCkfqr6KodAmndXR6n0qaTHg3KxVA==
X-Received: by 2002:a05:6402:28a0:b0:41d:732c:d9ec with SMTP id eg32-20020a05640228a000b0041d732cd9ecmr19072001edb.197.1649848328196;
        Wed, 13 Apr 2022 04:12:08 -0700 (PDT)
Received: from [192.168.0.203] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id c3-20020a17090654c300b006e4e1a3e9d5sm13772854ejp.144.2022.04.13.04.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 04:12:07 -0700 (PDT)
Message-ID: <3622cf00-db47-2f95-f38a-426ad3690cba@linaro.org>
Date:   Wed, 13 Apr 2022 13:12:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v6 1/2] dt-binding: mmc: Add mmc yaml file for Sunplus
 SP7021
Content-Language: en-US
To:     Tony Huang <tonyhuang.sunplus@gmail.com>, ulf.hansson@linaro.org,
        robh+dt@kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        p.zabel@pengutronix.de
Cc:     wells.lu@sunplus.com, lh.Kuo@sunplus.com, tony.huang@sunplus.com
References: <cover.1649229258.git.tonyhuang.sunplus@gmail.com>
 <9628a68b922ae9f32c6cd7ea734c436440d21e6d.1649229258.git.tonyhuang.sunplus@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9628a68b922ae9f32c6cd7ea734c436440d21e6d.1649229258.git.tonyhuang.sunplus@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2022 10:29, Tony Huang wrote:
> Add MMC YAML file for Sunplus SP7021.
> 
> Signed-off-by: Tony Huang <tonyhuang.sunplus@gmail.com>
> ---
> Changes in v5:
>  - Addressed comments from Krzysztof.
>  
> Changes in v6:
>  - Addressed comments from Krzysztof.
>  - To substitute MMC for mmc. To substitute YMAL for ymal.
>  - Remove max-frequency.
>  - Fixed wrong file name.
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
