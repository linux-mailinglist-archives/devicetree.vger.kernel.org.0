Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADEDB52621F
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 14:40:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1377778AbiEMMkE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 08:40:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239666AbiEMMkC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 08:40:02 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FA378B099
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 05:40:01 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id t25so14286790lfg.7
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 05:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=WZDB7Z12eDc46BTLC2lfW32G/wF1AJbeefP857zfk1I=;
        b=AXHG4xCifCU8eHr3vEVmEVz7CX1ab+ISwd6QZJXhvTQ077OK2ogJya3YTgriZv8BR4
         Fg57x4oH2fk9fM8djQr7SQyu2KJG0ASZ3k4jhDvy2zxlHTecnJZwAmt2V+Y2SlVk5Krl
         GBsU2ZEtg+BEbEzkcK6KqRgy3NjEYpZf6QRc432NggntsGLNXD7s6zjkhQzL5XrZyKCK
         77Pqvf9mQLSahMgUR9MyNPKH1//EPXcrP4tirm/jk4NcAiB7muP9mrT+F/rg5bnIuvdL
         Nyn+47x3QQuB8vekMTt2+l1CXWQpUFFJUyprxU8jPw0KCIa5o/JRD80rIajD778t1+D+
         B1+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WZDB7Z12eDc46BTLC2lfW32G/wF1AJbeefP857zfk1I=;
        b=8MBgdDWgpIRxkAbra2Ij6oUbkYH1ScUOQlmrAo8NtDdWBajD8MjWNJFZx8w/slNkjr
         96x4D4JGb4J3Sk1Hk5OrIHFVxSydz0/aW52ZFihrJcJhXOHkOoF8yid4s+/D7t7Ys8b6
         jnofPfeaQGr+JNQpLLUKZZTnJDnJLbOxpbtOAzGqKH3kvtv4ObBWE+wVh+eVf9PiIKgb
         5sYaviQGzX1XIVWOwwx2kMGZ63TnOrdghYywf6MOmKQCS8D2WNeSHw3HyKAzc+v8XgP4
         +DOCpNTxmBu4VJY4wqhKi0ta5/wU3Llnij10fEdJryej6D/KX0GaVTcMcVTrvVofBjV1
         39HA==
X-Gm-Message-State: AOAM5324cndReswUhekCnfBeKhYIfsN1joti18ubOCI9B5RzQBwxvLcL
        aKy/cJSljxv2iipeTVoKzDb75g==
X-Google-Smtp-Source: ABdhPJzzy191PGmD87/Teiyji239CVjb4mjOGOtcjLzQQh2m4VRudIAadvHZQC+uvLNg1xi6n+NDUQ==
X-Received: by 2002:a05:6512:1684:b0:448:a0e6:9fa6 with SMTP id bu4-20020a056512168400b00448a0e69fa6mr3309307lfb.592.1652445599514;
        Fri, 13 May 2022 05:39:59 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id h10-20020ac2596a000000b0047255d210fasm367963lfp.41.2022.05.13.05.39.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 05:39:59 -0700 (PDT)
Message-ID: <c35595ff-f789-5452-d9a8-b5dfcb920141@linaro.org>
Date:   Fri, 13 May 2022 15:39:58 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v8 00/10] PCI: qcom: Fix higher MSI vectors handling
Content-Language: en-GB
To:     Johan Hovold <johan@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org
References: <20220512104545.2204523-1-dmitry.baryshkov@linaro.org>
 <Yn4dvpgezdrKmSro@hovoldconsulting.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <Yn4dvpgezdrKmSro@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/05/2022 11:58, Johan Hovold wrote:
> On Thu, May 12, 2022 at 01:45:35PM +0300, Dmitry Baryshkov wrote:
>> I have replied with my Tested-by to the patch at [2], which has landed
>> in the linux-next as the commit 20f1bfb8dd62 ("PCI: qcom:
>> Add support for handling MSIs from 8 endpoints"). However lately I
>> noticed that during the tests I still had 'pcie_pme=nomsi', so the
>> device was not forced to use higher MSI vectors.
>>
>> After removing this option I noticed that hight MSI vectors are not
>> delivered on tested platforms. After additional research I stumbled upon
>> a patch in msm-4.14 ([1]), which describes that each group of MSI
>> vectors is mapped to the separate interrupt. Implement corresponding
>> mapping.
>>
>> The first patch in the series is a revert of  [2] (landed in pci-next).
>> Either both patches should be applied or both should be dropped.
>>
>> Patchseries dependecies: [3] (for the schema change).
>>
>> Changes since v7:
>>   - Move code back to the dwc core driver (as required by Rob),
>>   - Change dt schema to require either a single "msi" interrupt or an
>>     array of "msi0", "msi1", ... "msi7" IRQs. Disallow specifying a
>>     part of the array (the DT should specify the exact amount of MSI IRQs
>>     allowing fallback to a single "msi" IRQ),
> 
> Why this new constraint?
> 
> I've been using your v7 with an sc8280xp which only has four IRQs (and
> hence 128 MSIs).
> 
> Looks like this version of the series would not allow that anymore.

As a second thought, let's relax parsing needs.

> 
> Johan


-- 
With best wishes
Dmitry
