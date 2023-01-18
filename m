Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBA4C671D8C
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 14:20:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231162AbjARNUf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 08:20:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231220AbjARNUJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 08:20:09 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EDBB56EEC
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 04:43:32 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id o17-20020a05600c511100b003db021ef437so1410215wms.4
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 04:43:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6BpuBHlxhn6JmIP/U1W25BjRcHOubz4Zh2UFAiSQLEU=;
        b=rg+wQ13Ln8o/vCJ7FCD6BCNg51N0zz+kuwyzGaW+eB4v+6imkHl0IK7w4LKR2Uo8Z8
         cREXzPewR/gI3wmeRBQ4u8h9Y5+LnHNYPAguubutmhE8JS8u6XL8sPNsk+plB25evzQ6
         APUctgRkDq4sA0ba8vY+6VSdcXcyrNYO0niw91fhP947VngxcakHwRL7sTvSTSt7dlqa
         Fs/IVyKND7ciFfABFf4j404xOPm10MMb8JbvAGJEQhTdP1tav6nIUPDfm+tsrPFwA+En
         mrLBGRG7mQVfngUt/E7tjhBnKxl/gNJe/oiUoFq2jfMwQC8EPZxa/YsaxU4gZ+ZfDM5V
         gIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6BpuBHlxhn6JmIP/U1W25BjRcHOubz4Zh2UFAiSQLEU=;
        b=4DqVxsRW+rsidseOpp15R5dqXsGUZEbT8B1wqIo+XWXWQE4omzCRxa+baGgpRycIU1
         uOx/Xgcg6FKjJAZWIp9u5CAONaGvlXJYWpNNoq/C4kB/GF3oBdr8IxLOR4sJt+tVPBdx
         5n4Ox2IRT2yVB1T9OUU2wJm/ok9PdHr2KuYV7R6lDtS3eBG2pmmyIFHltDkC+8t6uDHS
         WQjUgGCHIlKx1eGcjKqI+Pb/gS5DuyWkuFeP0c+1M3xOYfzk9+KIfJvFR2EGwU6VEaKU
         yJi2XTNSpeDzsAZSQrbHgn0m/QQz4l2QLj1/OIIKGXe0ZseYaNTv4K3D+fCWOg9rlupn
         GRYQ==
X-Gm-Message-State: AFqh2kpTvyK4UB2Ibqq8sDvKQSobBCJt1SAkivukmfrhggOFptZ68/d9
        flTXSZFAL1Kjbi5Z6wMTHXZ1QA==
X-Google-Smtp-Source: AMrXdXv8u/F/eZG9dc2ocylK99J6Wri4Y6XHkV4l8TM6VnWGG7uhxyezbZ27wJeJ5jUWJwtppSpVDw==
X-Received: by 2002:a05:600c:3b05:b0:3d6:b691:b80d with SMTP id m5-20020a05600c3b0500b003d6b691b80dmr6536563wms.21.1674045810989;
        Wed, 18 Jan 2023 04:43:30 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id c10-20020a05600c0a4a00b003db12112fcfsm1954912wmq.4.2023.01.18.04.43.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 04:43:30 -0800 (PST)
Message-ID: <12358dd7-d600-0b2c-96ab-518ee2e65404@linaro.org>
Date:   Wed, 18 Jan 2023 13:43:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 03/19] dt-bindings: bus: add CDX bus controller device
 tree bindings
Content-Language: en-US
To:     "Gupta, Nipun" <Nipun.Gupta@amd.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "rafael@kernel.org" <rafael@kernel.org>,
        "eric.auger@redhat.com" <eric.auger@redhat.com>,
        "alex.williamson@redhat.com" <alex.williamson@redhat.com>,
        "cohuck@redhat.com" <cohuck@redhat.com>,
        "song.bao.hua@hisilicon.com" <song.bao.hua@hisilicon.com>,
        "mchehab+huawei@kernel.org" <mchehab+huawei@kernel.org>,
        "maz@kernel.org" <maz@kernel.org>,
        "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
        "jeffrey.l.hugo@gmail.com" <jeffrey.l.hugo@gmail.com>,
        "saravanak@google.com" <saravanak@google.com>,
        "Michael.Srba@seznam.cz" <Michael.Srba@seznam.cz>,
        "mani@kernel.org" <mani@kernel.org>,
        "yishaih@nvidia.com" <yishaih@nvidia.com>,
        "jgg@ziepe.ca" <jgg@ziepe.ca>, "jgg@nvidia.com" <jgg@nvidia.com>,
        "robin.murphy@arm.com" <robin.murphy@arm.com>,
        "will@kernel.org" <will@kernel.org>,
        "joro@8bytes.org" <joro@8bytes.org>,
        "masahiroy@kernel.org" <masahiroy@kernel.org>,
        "ndesaulniers@google.com" <ndesaulniers@google.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc:     "okaya@kernel.org" <okaya@kernel.org>,
        "Anand, Harpreet" <harpreet.anand@amd.com>,
        "Agarwal, Nikhil" <nikhil.agarwal@amd.com>,
        "Simek, Michal" <michal.simek@amd.com>,
        "git (AMD-Xilinx)" <git@amd.com>
References: <20230117134139.1298-1-nipun.gupta@amd.com>
 <20230117134139.1298-4-nipun.gupta@amd.com>
 <5ebee797-aa87-8db4-228c-dfe236ad32f8@linaro.org>
 <DM6PR12MB3082BE8616F773B990146866E8C79@DM6PR12MB3082.namprd12.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DM6PR12MB3082BE8616F773B990146866E8C79@DM6PR12MB3082.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 13:39, Gupta, Nipun wrote:
> [AMD Official Use Only - General]

Fix your email client. This is not helping us. What shall I do with it?


> 
> 
> 

(...)


>>> +properties:
>>> +  compatible:
>>> +    const: xlnx,cdxbus-controller
>>
>> This misses SoC specific compatible. Drop "bus" - redundant. I would
>> also say - drop controller - do you see any other devices with such
>> compatible naming? Use naming consistent with other devices in the
>> kernel. Just open some controllers - SPI, I2C etc. and look there.
> 
> Makes sense. Will use "xlnx,cdx" in compatible.

No, this still misses device specific compatible. You did ignored half
of my comment now.


Best regards,
Krzysztof

