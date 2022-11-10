Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA5336241F1
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 13:08:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbiKJMIA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 07:08:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229517AbiKJMH7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 07:07:59 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C710A65E72
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 04:07:58 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id be13so2819374lfb.4
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 04:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wTZeoUecrKlOpac1f+l+tkMwOwFXx8RW3xq7DuV+DMM=;
        b=OtYSVx109vXNxZR6GezrRVsY0MmmZtoobU4DmFkpd1Ns/JbNXoL923ZWlTehmQ/Gpf
         GTvhutOnU9np1mi0Nbe6XMkBt4IVwB6F4GhrY3X8Tj6u8SlIjXLdS0KlybmYbPqs7sMs
         rHLruuC6Gff6OvM0r+Bziqp/0OzwnEcnX52me9rqCd8FGDxtYxKZU7GKf56ef3EVOJaf
         CrFEd8pOrgmPBuyu397MsrOUiNNfjQTIQ7OViY3RMaIKH3WWer9XbbI15Y4fdXNOM1Bt
         AXOvD07WywGP+SD6TwhX1wAh1G9/fQHDTsIo7bYvmMgaNMh6iBE0iAbqwqvcu4upMys3
         rbig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wTZeoUecrKlOpac1f+l+tkMwOwFXx8RW3xq7DuV+DMM=;
        b=mviYcF020oOnXpSU2PwERyJ0wajQ0QIFEp9Ly28S3DQPACMP+uPRCi9UaH5qCRa44Z
         A7OuWXPN6IEdgzRaax/SiHEmZZtxzNc5O+Us5pfGSpnpyAfFeHKKcYtIXcW5bnhd/oa1
         W0WrZlRDOn36qzaZJJRLhFPs4nbpcsUJyP4qNi8ighBUg7aXgPyZWCFSh23i3KRtKe3S
         2HBMJW46XLg3CD3l/WY+P3Uk5X1I/8ZY1LDDSlbowutrZf9XSDmvv4xl/OA9SunFLQ69
         lYKoDrwv1jlTlZfkRLTnnD+JXubH4tgb1rWa+pVomQ3l5bLGR2z06l55qIMNVALNf+yY
         ZUew==
X-Gm-Message-State: ACrzQf0V7MkuiyJtO2j1V8EArx2nRZW/haVeg5vvIVT/DEBpoozhSjoW
        BSeAApzMODN9HZsqRIDXkqxlYg==
X-Google-Smtp-Source: AMsMyM5Fy2ozvGSmP1vbjydCPG2UhS0gqPhZr248VdsYUlWeNBm//9YGxeKM10fZPGnjA3WXzapXsQ==
X-Received: by 2002:a19:790d:0:b0:4a2:3d87:8d14 with SMTP id u13-20020a19790d000000b004a23d878d14mr1548113lfc.161.1668082077160;
        Thu, 10 Nov 2022 04:07:57 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id m4-20020a056512114400b004979db5aa5bsm2727460lfg.223.2022.11.10.04.07.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 04:07:56 -0800 (PST)
Message-ID: <ae1ba550-4bee-4b3b-ba5e-716f4dba9917@linaro.org>
Date:   Thu, 10 Nov 2022 13:07:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.1
Subject: Re: [PATCH 03/10] arm64: dts: qcom: Add a device tree for PMK8350 on
 SID6
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org,
        patches@linaro.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221109111236.46003-1-konrad.dybcio@linaro.org>
 <20221109111236.46003-4-konrad.dybcio@linaro.org>
 <CAA8EJprNszfyyN9HLYoRK2Y-yUU-NuGd0QacqJ3UhkDjpvokdg@mail.gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAA8EJprNszfyyN9HLYoRK2Y-yUU-NuGd0QacqJ3UhkDjpvokdg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10/11/2022 10:12, Dmitry Baryshkov wrote:
> On Wed, 9 Nov 2022 at 14:12, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>
>> PMK8350 is shipped on SID6 with some SoCs, for example with SM6375.
>> Add a DT with the SID changed to allow it to work.
>>
>> Unfortunately, the entire DT needs to be copied even if the diff is
>> very little, as the node names are not unique. Including pm6125 and
>> pmk8350 together for example, would make pmk8350 overwrite the pm6125
>> node, as both are defined as 'pmic@0'.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
>> ---
>>   arch/arm64/boot/dts/qcom/pmk8350_sid6.dtsi | 73 ++++++++++++++++++++++
>>   1 file changed, 73 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/qcom/pmk8350_sid6.dtsi
> 
> Just to throw my 2c. If I was doing this myself, I'd allow pmk8350 to
> receive external SID using the cpp #define (And to default to 0 if one
> didn't use it).
Hmm.. that's probably the least duplicative approach, but I'm not sure I
want to see #ifdefs in DTs..

Konrad
> 
> 
> 
> 
