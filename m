Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D95C05E5B96
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 08:45:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229794AbiIVGpE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 02:45:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbiIVGpC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 02:45:02 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C831AA9C04
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:45:00 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id h3so9820843lja.1
        for <devicetree@vger.kernel.org>; Wed, 21 Sep 2022 23:45:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=lcMW9siO2K9k/7GoNIgCs128fwRhCIapUnYqKZjd/gk=;
        b=OfihJXUC4knLJVa+tCuvlyrXZ9whUMTHqErbH9kQ1QPD59CMktcZ4DxqyXPKq3MB/p
         wmRr89DwBakmVmalUIafzeMWW7vX34VJ/APAsAvQwAkgjgbLJWiDUqxH4/X+ovhPNmFF
         wMrzGDL/mipZBmfRX0rcuamtX9f9rUjqxDi6ZzvF8tup1zdrGYR6dtiEU9Ll//yJr4HV
         GjM7rwGh62YvnSGARDy6Gt4FDwg0h7YX20efC+wTlZ3BogM3k+4KjWamar3eeyah43fn
         A2Y7hTCqoNz2XoSHBUP+4FMfe/+xNEzA/x3ZW2QLLIOILFxBmzZRlPv4U8Vz0hrrHip/
         yuiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lcMW9siO2K9k/7GoNIgCs128fwRhCIapUnYqKZjd/gk=;
        b=ABeKkk837HmsU/mHrRZ9XBJEInv2m7/rufG7E+mLAAsZATQXTBlikwYjTvHrDsrV3d
         uucJ9dT6mixMGhsJyLs4avmRffL6X9GWhrL8CGe5TQ7IOvi6rBKXSQ9jXfmik0sA0C0/
         YPrHuAHuS1JCaR7S0swx6fot3uElyGjFXfWY4mlGytHR8Z7qYN1Oo76hUSTCF9+1eHeA
         jCqRfs7mfrt0nP1HyQc7vfSp/dCPT0XRZWRJCsp0aDPgQ55YvB1hLGhCmcjb/0T/32SG
         1bNky2YeiLf4+DalcHOV8wheF1bmOGMV3Ux9QGVZFZQp4vkNlsw5Jao85XkRUZKTRSZn
         5kRw==
X-Gm-Message-State: ACrzQf24dAiN8DKOGs1F81CNrh6KSkPWEuf6bSZh//BDOGUXeX+q/fky
        DhRL9t1dZJUWUAxmGY+t9jbR8w==
X-Google-Smtp-Source: AMsMyM7zWnZz/7l4MiTD0GTeyoF1xr4RWtfp/Vh3ScwD/gEMWe/ecm5XNt9kuwES+WAG17pd1VJWcw==
X-Received: by 2002:a2e:b4ad:0:b0:26c:24f:b260 with SMTP id q13-20020a2eb4ad000000b0026c024fb260mr512009ljm.173.1663829099119;
        Wed, 21 Sep 2022 23:44:59 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id m23-20020ac24297000000b00499019c34a3sm776473lfh.184.2022.09.21.23.44.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Sep 2022 23:44:58 -0700 (PDT)
Message-ID: <e412810f-fd3e-1be9-3904-a684bfbeb9e2@linaro.org>
Date:   Thu, 22 Sep 2022 08:44:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v4 3/3] ARM: dts: qcom: msm8974: switch TCSR mutex to MMIO
Content-Language: en-US
To:     Alexey Minnekhanov <alexeymin@postmarketos.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Ohad Ben-Cohen <ohad@wizery.com>,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220920150414.637634-1-krzysztof.kozlowski@linaro.org>
 <20220920150414.637634-4-krzysztof.kozlowski@linaro.org>
 <37ebdd21-e46a-fac9-7e87-57042ab67d5c@postmarketos.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <37ebdd21-e46a-fac9-7e87-57042ab67d5c@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/09/2022 22:55, Alexey Minnekhanov wrote:
> Hi,
> 
> On 20.09.2022 18:04, Krzysztof Kozlowski wrote:
> 
>> -	tcsr_mutex: tcsr-mutex {
>> -		compatible = "qcom,tcsr-mutex";
>> -		syscon = <&tcsr_mutex_block 0 0x80>;
> 
> I'm looking and don't understand where does this information go, is it 
> lost in the conversion? I mean those "0 0x80" parameters to syscon 
> reference.

This compatible is using:
of_msm8226_tcsr_mutex
.stride = 0x80,

Best regards,
Krzysztof

