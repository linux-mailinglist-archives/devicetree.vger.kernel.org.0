Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EB246020E3
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 04:08:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231220AbiJRCIt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Oct 2022 22:08:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231267AbiJRCIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Oct 2022 22:08:34 -0400
Received: from mail-qk1-x72a.google.com (mail-qk1-x72a.google.com [IPv6:2607:f8b0:4864:20::72a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C2167B79B
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 19:08:20 -0700 (PDT)
Received: by mail-qk1-x72a.google.com with SMTP id d13so7869944qko.5
        for <devicetree@vger.kernel.org>; Mon, 17 Oct 2022 19:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BZ0/NnZ4eRh7FEd+hu9myA28IkggkeFAlGJ/8G5KLbA=;
        b=iBSfeHwX0cYihSQlFme+7TQ7NDTPCJQr+D0RDlMLYZarBR2XREvSzjH+Oj5xOotmWs
         fQPj7yGzNxt9f7UkvY+bls5CkPQ2wsSrncHeIqj9JSgtqDwNpSd5+34JAn7EJDPrCY1t
         lr22DRsBN4L2/4ZeDNyOX60idfpSPtXSNLQKLrCNhKb4//9GkynBF9OUBOmViy+qhniW
         ZRHjtEaLcgxe+XY7yv76NmUbdCIdzid854IeY9xbFilD5QbSyjD49UIenO1yfZnJBz41
         AHFdwO3rNVfa5K5CB+knhzTdyOCOvCXy3E5kyVuOZmBqrwsgROVuGDkqVhBTCJxMEQuF
         qQ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BZ0/NnZ4eRh7FEd+hu9myA28IkggkeFAlGJ/8G5KLbA=;
        b=Da7fOfnjmVHwF+BmRWAfGMfgkXdIuOt2MIJ7+5MJfwCNRZpjaBqQ/XVQDX7Uj/kKdX
         B+nZeoaXTU7opPqS5a+kWv5DO9lxBKVwEmnqZVyWmVYvmBneUMXtgcx20rsMAeySWM9M
         y5X7JkbjFd89+Hf+ky5zPrJSodEfzP50S8gGuz5k0DQdHF/rlHEeh8xcmAckHBiVJ5hE
         bmSsh7hHz0k9Po05VbFFCx7OE9skiWkGUQ2VfRVQjyDAMXbZS1mSy2iLQZ1hbhkFThD/
         9/xErCKX288a4VFmElDoru1EJOLICR+Bj5L513ZCe7f4RyuixcFgokKTb7S8PIrogEBj
         ek8A==
X-Gm-Message-State: ACrzQf0jrlCwfcOiEaUJNgMviPhHthplI9MEfq4RldBX8mYEdxuwa9kN
        YMJl5/6wSYIr/IRySWFwb9q3/w==
X-Google-Smtp-Source: AMsMyM4ufgjSTFobBJ3ukrxW4y+rVVxuE+aEL6G4TrT3959jzeLWgCAjO+Hl/uFfpyNgoiz0EdYgTg==
X-Received: by 2002:a37:6905:0:b0:6ec:a669:2802 with SMTP id e5-20020a376905000000b006eca6692802mr388324qkc.740.1666058863638;
        Mon, 17 Oct 2022 19:07:43 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id bs6-20020a05620a470600b006eee3a09ff3sm1300491qkb.69.2022.10.17.19.07.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Oct 2022 19:07:43 -0700 (PDT)
Message-ID: <fb57676e-749e-985c-9ada-596323227f87@linaro.org>
Date:   Mon, 17 Oct 2022 22:07:38 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 1/2] dt-bindings: qcom: smp2p: Add WPSS node names to
 pattern property
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Manikanta Pubbisetty <quic_mpubbise@quicinc.com>,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20221017125346.3691-1-quic_mpubbise@quicinc.com>
 <20221017125346.3691-2-quic_mpubbise@quicinc.com>
 <b6f62f0b-1280-0ac1-e00d-7bd5618571dc@linaro.org>
In-Reply-To: <b6f62f0b-1280-0ac1-e00d-7bd5618571dc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17/10/2022 22:06, Krzysztof Kozlowski wrote:
> On 17/10/2022 08:53, Manikanta Pubbisetty wrote:
>> WLAN firmware uses SMP2P protocol in order to talk to the application
>> processor (AP) in certain cases like WoW (Wake on Wireless). WLAN
>> firmware runs on the WPSS Q6 processor (Wireless Processor SubSystem).
>> Therefore it is required to have sub nodes pertaining to the WPSS Q6
>> processor and the application processor in the SMP2P node.
>>
>> Add WPSS Q6 (Wireless Processor SubSystem) node names to the pattern
>> property required for WPSS Q6 processor to communicate to the
>> application processor and vice versa over SMP2P protocol.
>>
>> Signed-off-by: Manikanta Pubbisetty <quic_mpubbise@quicinc.com>
> 
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Ah and I almost forgot: thank you for detailed explanation in the commit
msg. Much appreciated!

Best regards,
Krzysztof

