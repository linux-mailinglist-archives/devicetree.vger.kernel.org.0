Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EF185262A6
	for <lists+devicetree@lfdr.de>; Fri, 13 May 2022 15:09:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380590AbiEMNIs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 May 2022 09:08:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380609AbiEMNIq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 May 2022 09:08:46 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2032F396B3
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 06:08:33 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 16so10184860lju.13
        for <devicetree@vger.kernel.org>; Fri, 13 May 2022 06:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:cc:references:in-reply-to:content-transfer-encoding;
        bh=OagMcMSPNQ+TeuOeVUPtpznwt4AR/WGDuYhxvBy/RjI=;
        b=sGFTQMwzHTcwPPTgjkc1Vdlitp8Ag/+c9XUC1JjlBNwh56JuR85kogGN8G6Tj7qBYr
         7Jakmu9v3268b9Ej2LUD2kErrvdAtIMxyNT17mcioAXBlGAdlavlcD7tVLhJnr+yKfru
         8/+69hRrly+cTM35rRSRDtOqrrjuAjyQbfWydrbG1UnwduiiR0gjUn9+wpP1jsyvwNxN
         faA0mIc7qYkDMxQmwuJTKbQgRzhXktEi9sgh0b72sya7yFaK6hYzw0K9Gm4wIW92YQaX
         pzCVsetXAwvtuu48rJZP4YRFo9RmAlkj9L/7epYLmPZCCxZNSdHwaQlIaDl2KZIKOf/V
         gskQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:cc:references:in-reply-to
         :content-transfer-encoding;
        bh=OagMcMSPNQ+TeuOeVUPtpznwt4AR/WGDuYhxvBy/RjI=;
        b=FU6U5/b4q2g/9E0e/4CBPOjwHqWA+TJf9S4XER5OZzoJlkm2aJQii2CVQ1S2h1520A
         ujlYX8s4DDGQ65zB9NsXKM67rJg6OQQS1QiISJs08BZJ8UKoso25FzmlFTK8dhsqjpnt
         li5mwcDQKQsUk05iEH43ry0vUwWdXNaiug508gFZkjkE38DLfYJoRwya4T7+m5wS30Om
         mRmvmRqDMlG03R+sbr2LF6ORihdVpEEmkx75uQrjYPu+FlMF2wT4wa7wkYvolVHBjGix
         LPNbRDdf0mijJ4gO4c3HcxOthjJZOi1dhDgxbnmjpSmoIFXvRCdLHmMTt+NozBxFh50l
         3NiQ==
X-Gm-Message-State: AOAM5325ERpGN9+WTuOvIIQBA9ElxYOKVpGH2SqjrHqDiyWN34ZctAO2
        ua+kWNqVgjva6HW9c6PvLEL0yw==
X-Google-Smtp-Source: ABdhPJxTT/B1Hg4inLViQFMe5i1nDkqadOvuYSJvHlLGeMuz3lvvl4omlCkjOCREgUFomh1Npv80dQ==
X-Received: by 2002:a2e:8893:0:b0:250:d9db:db56 with SMTP id k19-20020a2e8893000000b00250d9dbdb56mr3078882lji.492.1652447312156;
        Fri, 13 May 2022 06:08:32 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id z6-20020a2e8846000000b0024f3d1daea4sm434221ljj.44.2022.05.13.06.08.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 May 2022 06:08:31 -0700 (PDT)
Message-ID: <4ea9b1f0-d9f0-cb9f-4b0e-d66606130061@linaro.org>
Date:   Fri, 13 May 2022 16:08:30 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v8 00/10] PCI: qcom: Fix higher MSI vectors handling
Content-Language: en-GB
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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
 <c35595ff-f789-5452-d9a8-b5dfcb920141@linaro.org>
In-Reply-To: <c35595ff-f789-5452-d9a8-b5dfcb920141@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/05/2022 15:39, Dmitry Baryshkov wrote:
> On 13/05/2022 11:58, Johan Hovold wrote:
>> On Thu, May 12, 2022 at 01:45:35PM +0300, Dmitry Baryshkov wrote:
>>> I have replied with my Tested-by to the patch at [2], which has landed
>>> in the linux-next as the commit 20f1bfb8dd62 ("PCI: qcom:
>>> Add support for handling MSIs from 8 endpoints"). However lately I
>>> noticed that during the tests I still had 'pcie_pme=nomsi', so the
>>> device was not forced to use higher MSI vectors.
>>>
>>> After removing this option I noticed that hight MSI vectors are not
>>> delivered on tested platforms. After additional research I stumbled upon
>>> a patch in msm-4.14 ([1]), which describes that each group of MSI
>>> vectors is mapped to the separate interrupt. Implement corresponding
>>> mapping.
>>>
>>> The first patch in the series is a revert of  [2] (landed in pci-next).
>>> Either both patches should be applied or both should be dropped.
>>>
>>> Patchseries dependecies: [3] (for the schema change).
>>>
>>> Changes since v7:
>>>   - Move code back to the dwc core driver (as required by Rob),
>>>   - Change dt schema to require either a single "msi" interrupt or an
>>>     array of "msi0", "msi1", ... "msi7" IRQs. Disallow specifying a
>>>     part of the array (the DT should specify the exact amount of MSI 
>>> IRQs
>>>     allowing fallback to a single "msi" IRQ),
>>
>> Why this new constraint?
>>
>> I've been using your v7 with an sc8280xp which only has four IRQs (and
>> hence 128 MSIs).
>>
>> Looks like this version of the series would not allow that anymore.
> 
> As a second thought, let's relax parsing needs.

Hmm, with num_vectors being specified in the qcom cfg data, this is not 
required anymore.


-- 
With best wishes
Dmitry
