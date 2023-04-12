Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8AB66DFFD0
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 22:29:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230112AbjDLU3j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 16:29:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230096AbjDLU3h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 16:29:37 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECB5049C2
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 13:29:34 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id t20so16267608lfd.5
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 13:29:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681331373; x=1683923373;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5ED/UvmLzbVosqF9FReUOi9aq9t/zar/qnj+lyic3VI=;
        b=hBOS/x2jjocUh8EakVmB8By5891X9USEXs4w2Phv+VphXd6JZLzyJNXRzxKofA8lHQ
         66sA6SM1sixvfeilcymfYNnmKkkysqpDmkLUx6yVq+vyD7ebK84hWOBqfpNoHnMTViYI
         GpVhAgaGVYACOcY1ot/sPazb5U6JBsMyxHJ3VHXWNplIrnpnCNf2s9X/O7H5R7m+cc+K
         GCuwDjx+EKq7ObwSonysDlbv7zVPNUk2Ls1KzLPDmsQJjijEL7a77yyNemq/VQfajRVH
         Bty7PeyZq/JGDElcXaGTrbYNfavosEYCHC7UNhTAXSKZcvdKRl+BLFS4Q22uvtdbmIwc
         FlyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681331373; x=1683923373;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5ED/UvmLzbVosqF9FReUOi9aq9t/zar/qnj+lyic3VI=;
        b=DOzLcgmYI1YjTUF76vh9LTZLvutQYcTI9yPnczXBOQxnUyi34vM/GZ1BKhNar0UzQ9
         YhjoYX+YNfqI0X1pSyaVo/S029g22Uw1u52wZJuRRa8DgIBUPkqhnxrEJmhmgICzUuYz
         WnGhVclyLzVBEL72McINa8c6Ehr0wvl/EbEACx8IrGilRb1v1CsmlGzDi/zTM8SzF0/y
         FQQ8fIuSS2UoD54Sn5Y6BxitSTHSdjVh2g+6UZNyPC0ymY6Fbex00TGTix2kc09iN05n
         kKuYb7kiLkvflo7cgERBsJV7pAK3zGldgIJi6Fm/lPgTuxWjKdRkZ0ZF/nc4NPt5Cfmq
         42rg==
X-Gm-Message-State: AAQBX9e7xjx3WoMB/ISEkltz0VeO5rZ6MIO7+wD2Y/qi1WaVLBFQKda5
        eZzXKY453afXCTeHsZnqsxrBxw==
X-Google-Smtp-Source: AKy350brAw2xbzWEbFc9h7Ikz+UXNzJE9crBApxB2kpqLEzSYja76xDjPtmEM15SWNiaOl43TGXg0Q==
X-Received: by 2002:ac2:4199:0:b0:4eb:d8d:6c13 with SMTP id z25-20020ac24199000000b004eb0d8d6c13mr43720lfh.9.1681331373251;
        Wed, 12 Apr 2023 13:29:33 -0700 (PDT)
Received: from [192.168.1.101] (abxj23.neoplus.adsl.tpnet.pl. [83.9.3.23])
        by smtp.gmail.com with ESMTPSA id d7-20020ac25447000000b004eb4357122bsm3175296lfn.259.2023.04.12.13.29.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 13:29:32 -0700 (PDT)
Message-ID: <0e2d4c8a-4e2c-d811-2656-a39ba67a2fcf@linaro.org>
Date:   Wed, 12 Apr 2023 22:29:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH] arm64: dts: qcom: sm8250-elish-*: Fix panel compatibles
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jianhua Lu <lujianhua000@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230412-topic-elish_compat-v1-1-4e03f95d5410@linaro.org>
 <ec2rxutblwlm2wxm6e4zlu3v5d3f6l2eqxjafq2emky6t2kvgt@3u2lo4e53ixs>
 <66851ec3-b797-6b40-865c-ec375b5ded68@linaro.org>
 <e0320172-65e0-d58f-8960-6f11a328df20@linaro.org>
 <ny5frsoomjj6vhc3g77ybzjowx4owkuua7j2vbcnrcxsanrdxi@cgdohwtde4x5>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <ny5frsoomjj6vhc3g77ybzjowx4owkuua7j2vbcnrcxsanrdxi@cgdohwtde4x5>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12.04.2023 22:28, Marijn Suijten wrote:
> On 2023-04-12 22:23:25, Konrad Dybcio wrote:
> [..]
>>>>> foo b4 requires i put something here
>>>>
>>>> What?
>>> git checkout linux-next/master
>>> <craft a single patch>
>> git checkout -b branchname
>>> b4 prep -e $(cat localversion-next| cut -c 2-)
> 
> I think that could just be:
> 
>     b4 prep -n branchname
> 
> (in favour of prep -e _and_ checkout -b)
Maybe. I have reverse-i-search + muscle memory for the more bloated
approach though..

> 
> Might also need to pass `-f $(cut -c 2- localversion-next)` to get the
> forkpoint right though.
> 
>>> b4 prep --edit-cover
>>> /* you get a bunch of EDITMEs that b4 really insists you fill out */
> 
> And what if you remove the line entirely?
I just tried that after replying to you, on the Edo venus patch..
Apparently works as well..

Konrad
> 
> - Marijn
