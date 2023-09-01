Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 64C0278FF39
	for <lists+devicetree@lfdr.de>; Fri,  1 Sep 2023 16:31:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232147AbjIAObr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Sep 2023 10:31:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229863AbjIAObr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Sep 2023 10:31:47 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82096A4
        for <devicetree@vger.kernel.org>; Fri,  1 Sep 2023 07:31:44 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-401da71b7c5so20821655e9.2
        for <devicetree@vger.kernel.org>; Fri, 01 Sep 2023 07:31:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693578703; x=1694183503; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ItieQro37js0Xivx/KuEwWU84tuXoE8kLB5CTHgD0s0=;
        b=c86y69Tze1Q6lAbhrBFNELGkaEUqW4VtAE1kB7182heOQ/dv29MiiwlneCyirvc1TW
         B3VigeePVd+UtpUDBbiV+a/x8O3380NBZ5Eu82v/wAFWaTi6k8imIxRwMRwy5jkHAafc
         dQcJcNf2oZ1G10jUyapK5ktw81VJYATsWY3G/fqHKZ6IGQLBavv6NkW3J2LxsrUsMyUd
         o6M9XY0jrROAqfthipAgDKKxZhzVoapc9DPE2ajAMiyeeNu2SIC2V7/NatMX9qVfgKKr
         lyHhpNrX710aDCeRGjVMF9XPDijBUe/nvP1f0Z/PBSSWRE71Z2EAqbLaaglBULr1cwlD
         ZEVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693578703; x=1694183503;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ItieQro37js0Xivx/KuEwWU84tuXoE8kLB5CTHgD0s0=;
        b=ATg0ulTSZgEoPQM48KoeE9myieyjZCf4dHZiXE9Zb5aJO+BUWT8EKTcfnWZslY0s3c
         0CRl6WAqxVZ5LKPYuxM9xk38MYUG0BZ60EVhgqFXuJkerg08+qkHKt2EmPxItmP86R+v
         UDsaDtivss6dD7TJYpSWu4zLK+RvbXjBwJfg7IFrVX7zTcnqVRfw7VqUtazR4XjcjeF2
         JMjTYzyqVxQtPw7YP6FID2VVy6DxR0WkPZmKpLIZPpnuBQz+CHxHZCXZoDHLDjW29h5E
         A51huwS9nXXAWgmQO8SnWzTLJUb2NUVo1nokIikL0gqySc56Qj5T6VaqY+zr3f4S5qd4
         yRXQ==
X-Gm-Message-State: AOJu0YwRYypF2wDxHdUnGio5tUb6K1nnjKcQmFOrYdKomenC4Yk473Op
        /BEyxdHSd/GgwzZb5TFrZFNUKA==
X-Google-Smtp-Source: AGHT+IE4lWhpQs9q5dJpmlxzxIA/yuvOt+uDsr/czXDK+l+wj0w4HQmP2GTBi3i+lbwGzHY082v92Q==
X-Received: by 2002:a5d:4b46:0:b0:317:67bf:337f with SMTP id w6-20020a5d4b46000000b0031767bf337fmr2050872wrs.2.1693578702923;
        Fri, 01 Sep 2023 07:31:42 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id h8-20020a5d4fc8000000b0031ae8d86af4sm5351547wrw.103.2023.09.01.07.31.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Sep 2023 07:31:42 -0700 (PDT)
Message-ID: <90a3675c-2e30-35a5-85d9-3d1b895ab265@linaro.org>
Date:   Fri, 1 Sep 2023 15:31:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] arm64: dts: ipq5018: Correct uart1_pins pinconf
Content-Language: en-US
To:     Ziyang Huang <hzyitc@outlook.com>
Cc:     agross@kernel.org, andersson@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, konrad.dybcio@linaro.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_gokulsri@quicinc.com,
        quic_srichara@quicinc.com, quic_varada@quicinc.com,
        robh+dt@kernel.org
References: <TYZPR01MB5556F902BF64AF857C3ABD44C9E5A@TYZPR01MB5556.apcprd01.prod.exchangelabs.com>
 <49fbae87-ce09-23af-6bcd-459b5646e680@nexus-software.ie>
 <TYZPR01MB55565E0E55FAE550EAA53D3AC9E4A@TYZPR01MB5556.apcprd01.prod.exchangelabs.com>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <TYZPR01MB55565E0E55FAE550EAA53D3AC9E4A@TYZPR01MB5556.apcprd01.prod.exchangelabs.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/09/2023 14:09, Ziyang Huang wrote:
>> Is this change something that should be expressed for a particular 
>> board ?
>>
> 
> Yes, this is device-special. Some boards use GPIO20 and 21 while others 
> use GPIO28 and 29. But we have defined a wrong value here. At lease, it 
> should be a correct demo. Or should I leave 2 configs here to let device 
> choose?

https://gist.github.com/ptpt52/ae47eb7b86ce2911df06d067152f02ac

U-Boot 2016.01 (Jul 08 2021 - 07:14:42 +0000)

DRAM:  smem ram ptable found: ver: 1 len: 4
256 MiB
TEST-
SPI_ADDR_LEN=3
SF: Detected XM25QU128C with page size 256 Bytes, erase size 4 KiB, 
total 16 MiB
*** Warning - bad CRC, using default environment

In:    serial@78AF000
Out:   serial@78AF000
Err:   serial@78AF000

So, we're saying the correct default console is blsp0_uart0 ?

https://git.codelinaro.org/clo/qsdk/oss/boot/u-boot-2016/-/blob/5343739b4070bcec2fecd72f758c16adc31a3083/arch/arm/dts/ipq5018-mp03.3.dts

---
bod
