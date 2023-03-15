Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0297C6BA970
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 08:37:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231365AbjCOHhh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 03:37:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231374AbjCOHhV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 03:37:21 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 332526C1A6
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:34:51 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id cn21so41638841edb.0
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 00:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678865670;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YN6r/G4j178xAjD35LALol+t2Sqvd6w3ZE7XijssN4g=;
        b=ZV9MRWcMuD5W3H+dCtdHJKEvYW0JBVWKD/o0dp+I/pdHGzIAnaQb0FKDlLGCa02veg
         e3bqHSwI1ScFeCycrdJQB/RndpFerXOlMviUhpRWYIxD7ANT0jDS85KK87kNjONicTYq
         /pBZgAhACkm4hGdIqGT9OvBMaoOXVbKYNhlRST4+ARFc8moWToWVKXxx7PK5L+zdBqpg
         IJuoYwlW54zwBaaIUM1//XE/SIn01FXNlHTWQ+h21VIO8yl9NaC5AiAV3+TG+V5U7ibd
         NWrhpDpP2+pzWej4MWgWSXpd+R4c42X+ws91oQBAgKzoG5RNhMpj94H6PL6uLestB6Yd
         5dUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678865670;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YN6r/G4j178xAjD35LALol+t2Sqvd6w3ZE7XijssN4g=;
        b=GTaNTvL6wbTWzG+IsMFUIXWgBxTwjWWrA9eOnFQT3n/XA+GszgFE0BdZxYimuKhbvU
         lMLS7m3h6bF5Uei4fQSPJCIDmqIHX00xeHfIA6O34WkskDa6v9WLbWwbhs78wWedD8uq
         tHThVOUYBiowAumAKrtwuLncsTDjzs8augFemrfwKJCtmHxBJuf7i9LkjpBiLaXzT/i7
         eNEDCQcemXIqz5IR3BXoMPmhRD2chOL/uR7CGsNTxenYQIasx1L3cWoNNX/Vtc5Uro6G
         6eh4/iO7LyMFMWBPBy4cTDBwzaaXwrVBnm4u27NUo4iTU/WfT15YioHRz7F79XblmpHD
         1dcA==
X-Gm-Message-State: AO0yUKUbEpM1uTT+NoZOOl1RvBVITvgkZYvsgIWt75+kfU6Dv4gCRepG
        /95whc05x6gV0GCvXgozSnJQpw==
X-Google-Smtp-Source: AK7set98BUNTb9ud39ZhAsKm9MP2kP5HH64Ghd6xz6wWcQ+TbJD9CROcMbK6qmdzMzUlMWZgD0/s8g==
X-Received: by 2002:a17:906:1781:b0:92b:f019:d5eb with SMTP id t1-20020a170906178100b0092bf019d5ebmr4736336eje.44.1678865670361;
        Wed, 15 Mar 2023 00:34:30 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id ro16-20020a170907881000b0092f38a6d082sm213748ejc.209.2023.03.15.00.34.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 00:34:29 -0700 (PDT)
Message-ID: <86a63e92-445f-ef67-119e-ab605db6bae2@linaro.org>
Date:   Wed, 15 Mar 2023 08:34:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 4/5] soc: qcom: Add LLCC support for multi channel DDR
Content-Language: en-US
To:     Komal Bajaj <quic_kbajaj@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Rishabh Bhatnagar <rishabhb@codeaurora.org>,
        Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20230313124040.9463-1-quic_kbajaj@quicinc.com>
 <20230313124040.9463-5-quic_kbajaj@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230313124040.9463-5-quic_kbajaj@quicinc.com>
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

On 13/03/2023 13:40, Komal Bajaj wrote:
> Add LLCC support for multi channel DDR configurations
> based off of a feature register.
> 
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
>  drivers/soc/qcom/llcc-qcom.c       | 56 ++++++++++++++++++++++++++++--

kernel robot still reports some issues here. You might be missing some
dependency or symbol export.

Best regards,
Krzysztof

