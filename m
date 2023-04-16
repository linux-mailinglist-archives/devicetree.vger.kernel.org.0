Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54E6A6E3764
	for <lists+devicetree@lfdr.de>; Sun, 16 Apr 2023 12:22:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230404AbjDPKWz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Apr 2023 06:22:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230204AbjDPKWD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Apr 2023 06:22:03 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7599749F8
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 03:19:21 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id q23so47334230ejz.3
        for <devicetree@vger.kernel.org>; Sun, 16 Apr 2023 03:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681640357; x=1684232357;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JQ2pSbWS+VnJQa+rka9MRnpcuYtmOv6aRPbfjmRczfo=;
        b=CHgLPHJr3sdJV5BUyzdFwSkUgyZixULskPWaSH2Hn9KzlENG3/SlIOd9rPjsK1RerT
         itBE8Uwcpdo3b8x7BM8vdCKIADKOOi1aOHJ1TqXjOCtKmyfPJ+knH+CPr1P4eoDQfW73
         iYcwAa8c3MgtJAXDlW9GlBp+Y33jia14jaBYANBRn3k9FhtOBNbjJ8Te4voHCAOh2Z8u
         kEPPbqFIgBdAFC9uQn4PEw8wT0P9VQke1ryhMEmaT1f9SP5NnFeZ8gbVo6eE5X0jsvDB
         v+EdBbr+/p5OLefORpS3BBxWjAuIFyQUFLgc2k2VFjIP/22gcq8NxpyAdr4nPULmDR4z
         rO2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681640357; x=1684232357;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JQ2pSbWS+VnJQa+rka9MRnpcuYtmOv6aRPbfjmRczfo=;
        b=aoPh+F0BgWriidH+XLiNGwwLW3ovUmb05XltbTXj5/4VksUK8/2RfZjmBt8m0IK1e4
         JZYSTt2NAMJtLyM2Vm1ClZ0ZrwvX8BPWKFeLMGzg2HqadgVJoXknP8c0h7oSJs6YWeL8
         MhwX21cFu3xZu1Q9XacH1u+jhwY3ZG/AsmVoUJmKxT6djb7L6VOaeiclQmG/KYxDsw7/
         B5cHbT1IrpjP8fFaUfSTEoim17nR/ane5P1KyTd8crQeLawt2TXiYlCFhm36/+aqhfIR
         81+K1fNnERAtfNfTSne23xTUCM71f+JoAS89pSSqRKWj25mOvfFHR6e1umV+HCkyH+kY
         XH2A==
X-Gm-Message-State: AAQBX9dqzHoc3olO91bIZ6yDgrbxxgkKSW9c2Nb+FsfB1tVCuYXy0MBd
        2YAA8TEeWxGc1uNhUO6m0qolSw==
X-Google-Smtp-Source: AKy350ZJ3oonRhplCGqgST+8seRhbMoZGcq/ItBJs9vGaQcqM0VK6aBZd2ELjWPgX3Z9uNPSET+PWw==
X-Received: by 2002:a17:907:2c42:b0:94f:2948:b15e with SMTP id hf2-20020a1709072c4200b0094f2948b15emr2730962ejc.5.1681640356716;
        Sun, 16 Apr 2023 03:19:16 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:29dd:ded4:3ccc:83db? ([2a02:810d:15c0:828:29dd:ded4:3ccc:83db])
        by smtp.gmail.com with ESMTPSA id xi11-20020a170906dacb00b0094f62181917sm394859ejb.138.2023.04.16.03.19.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Apr 2023 03:19:16 -0700 (PDT)
Message-ID: <1613da77-d77e-94c6-802a-b2d856c5b40f@linaro.org>
Date:   Sun, 16 Apr 2023 12:19:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH V2 1/2] dt-bindings: watchdog: qcom-wdt: add
 qcom,apss-wdt-ipq5332 compatible
Content-Language: en-US
To:     Kathiravan T <quic_kathirav@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        wim@linux-watchdog.org, linux@roeck-us.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230320104530.30411-1-quic_kathirav@quicinc.com>
 <20230320104530.30411-2-quic_kathirav@quicinc.com>
 <0569ed09-2241-d981-4e0c-209caa7483ab@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0569ed09-2241-d981-4e0c-209caa7483ab@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2023 06:39, Kathiravan T wrote:
> 
> On 3/20/2023 4:15 PM, Kathiravan T wrote:
>> Add a compatible for the IPQ5332 platform's APSS watchdog.
> 
> Guenter,
> 
> 
> Without this patch, I see dtbs_check failure in linux-next.
> 
> 
> I see you reviewed the V1 of this patch, can you pick up this patch? I don't see it in https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git/log/?h=watchdog-next
> I'm not sure if I am looking at the right tree, Please correct me if I am wrong.

Are you sure that patch still applies?

Best regards,
Krzysztof

