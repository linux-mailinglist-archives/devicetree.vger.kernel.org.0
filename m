Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5FCE6B83CB
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 22:12:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229801AbjCMVMS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 17:12:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229742AbjCMVMQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 17:12:16 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DB0E8F712
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 14:11:45 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id i28so17483732lfv.0
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 14:11:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678741903;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+ne8t/EiBvW0vN7e00XtbUoK+necbXV5F7cPmVrqdNM=;
        b=Xa5untDV6Z4zUJ1e5WluhaMs0w2vf2GB39debve6l/z5T2nsHs4MbLb3/qWSabM+DV
         ftpE40qQX66Hz9ShI4cQkIsoYTF9pUDJrPNf36huji8h5is4cr3vosPK5/KZV2l6hrpI
         jj93D60noFuAv15FhNB9EHlrN/nx5MpGnccwvWDB2MD4nGNjeCz1a8Hw3M/JbUTcvm5t
         JU1Zd1mxQY8p6wVdy0oU8cCUvPQ68yXNpB0bMEbCR/vYUSBqIR6lsq1PhgQS4feHmfd/
         jhqcWb08Z+XtkeRxADsjL2Agwk1pPf3CEgneQlNPxr5PRm+/98nGUHEfHBuTYILRXULE
         nO+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678741903;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+ne8t/EiBvW0vN7e00XtbUoK+necbXV5F7cPmVrqdNM=;
        b=YwC77JdKzYF3TUehRsuKTfaSSkFd3rUMQz7aKBrCg0ah2W9e+ofal0XlJoVDSM5I4f
         nUxSTEaNbT3ziCRokur9FMmPhpTuU6PYYAsu8k2ghdr747lUiYNN2Sx/aEHApYc1Dmxy
         MXJDsX4HXfc7JACtBkzwMImvGjqOoqwTWiYCWWdlqGsk+vo+VkTmncGCyAGv4Ax18RFd
         NwHTbbJsSAvsz4sVv0hr8pFLcCfLMocUGaa4H8l+37gkYl7hUqju6t9VGLj6ucdVraI4
         MTIDSE41UAjYwN3vl7Jx1g44UVMjHzKYJETr75grQCNYTLEQepzUMm/M5D2FSN3FT8G0
         BY1Q==
X-Gm-Message-State: AO0yUKWgi2lHMz2a/WgumgsFX0uzsCtoYNid6cKftkoLLq0ZkryAXx79
        zfzY3cyB8VjOK9dqTKi2TkNyfRiinfyVfBsUA5E=
X-Google-Smtp-Source: AK7set+4+MDDr8Imm37JZRDfAWvvfr51MtYpj0mcq32Kq6EuEp70Ub2edl/UE0Wce4DElwi6S/mfAA==
X-Received: by 2002:ac2:44b4:0:b0:4db:1e4a:74a1 with SMTP id c20-20020ac244b4000000b004db1e4a74a1mr9472348lfm.0.1678741425726;
        Mon, 13 Mar 2023 14:03:45 -0700 (PDT)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id g22-20020a19ee16000000b004d61af6771dsm101299lfb.41.2023.03.13.14.03.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 14:03:44 -0700 (PDT)
Message-ID: <4b6df5f4-d5e5-30f4-dc1e-a8e5f8c66363@linaro.org>
Date:   Mon, 13 Mar 2023 22:03:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: qcom: sm6115: Add remoteproc nodes
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        bhupesh.linux@gmail.com, linux-remoteproc@vger.kernel.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org
References: <20230128054256.2100501-1-bhupesh.sharma@linaro.org>
 <5922cd55-060c-d1b1-0eb2-0875439e4268@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <5922cd55-060c-d1b1-0eb2-0875439e4268@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 13.03.2023 21:58, Bhupesh Sharma wrote:
> Hi Bjorn,
> 
> On 1/28/23 11:12 AM, Bhupesh Sharma wrote:
>> Add the adsp, cdsp and modem remoteproc nodes to sm6115.
>>
>> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
>> ---
>> - Depends on the dt-binding and driver change submitted via [1].
>> [1]. https://lore.kernel.org/linux-arm-msm/20230128053504.2099620-1-bhupesh.sharma@linaro.org
> 
> Gentle Ping. Since the dependencies (dt-bindings and driver changes) have already been merged into linux-next, this patch can now be applied.
Not really, it won't apply as-is. I suggest applying the version below
which was rebased, the reg was adjusted for 64bit addressing and the
-names were turned into vertical lists, I've been carrying it downstream
for a while and can confirm it works - I even got Wi-Fi up on the Tab P11!

https://github.com/SoMainline/linux/commit/a34e0bf410318b573820254bd241fef0ea013ea1.patch

(this is a git am-able plaintext patchfile)


Konrad
