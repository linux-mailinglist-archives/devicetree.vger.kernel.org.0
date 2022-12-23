Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 481D2654D0A
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 08:54:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235944AbiLWHyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 02:54:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229637AbiLWHyX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 02:54:23 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40EF13137A
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 23:54:22 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id b3so6128599lfv.2
        for <devicetree@vger.kernel.org>; Thu, 22 Dec 2022 23:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kHsW91FIykT3ETIcseYYZdpJ59EvWczSWtEr9Q4ddGc=;
        b=XANUS3h/629z1cmOnKSREk2r30tKYxk1EAT+9Ix43JS/t/GysjuFub0CW4C1HIbBRc
         /o2IK2CFQmaGFAbiWX+U2X9KFBldKGJIQgn0gP8aMCfBK9E3ucKCTgM2E93lW6AJD1RZ
         QxKvDY6fCj3gTx6p6RLI8JfG+Muv7s4GlHQGFMGCyUeykLotwItQRKvdW32sW0Nu6zyR
         YKIS8824eST+X8UmG1DddoY2OSImdm9V/tN4pPT3fysIRi7fyB4GNb3bGDoNmpWokws9
         E0Rqv2Qm0kWdZRcH7S731X9WcwW96jUHq81EGgAvXo8IWkQiyXlnuBMUZYxv0ChZkMCd
         LGxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kHsW91FIykT3ETIcseYYZdpJ59EvWczSWtEr9Q4ddGc=;
        b=L9nKR2ai+WNpmwUVGdikhrhjbeRvM7X2rPNDgxNMEex+if5nSdSBpov/anprGjgoZi
         i0VmS6thMI0FgbNBKEUZ3A/+ffRCCbDB078UBG1Qy0JHgCCkwzYhvKPSuMfpLH930psv
         usUvJ2uaH6he7xNc7X1zVg4OtBJOPK006Kv2IGSt4VABET4ldgYyZ7pxUlpy/E7V2M29
         onnHydXc7Gd63CJxlKCZtzUMEzvl1fAEhjHEcodNbih5w2aFap/9nx+q+7+B1nOMEuJy
         N8u1JGIi5EpMSU1IbLyzjaxeHFQDFSic2Xf3dJoqGRUdfZMHX3JJvGmPlxXtKrvE3TgH
         FzCA==
X-Gm-Message-State: AFqh2koO/IymVN/E655Xdy7316k07hiI9h+qk3E9Ng/D2yLqMHXD7yPE
        heMK2IgX3Djx4jPNdEEK+ZdOrQ==
X-Google-Smtp-Source: AMrXdXujbAO3lhTaxi13KZ4puH+Lq4CfpP22MO2G/ltjadsCxKB8sUmNhp1sAqUHDANn3i6GKQrozQ==
X-Received: by 2002:ac2:5df2:0:b0:4aa:7821:8021 with SMTP id z18-20020ac25df2000000b004aa78218021mr2946852lfq.34.1671782060501;
        Thu, 22 Dec 2022 23:54:20 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id bi2-20020a0565120e8200b004b543f38b7csm420615lfb.21.2022.12.22.23.54.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Dec 2022 23:54:19 -0800 (PST)
Message-ID: <5e3cbe2d-5a13-7bbd-647e-94e6690266a9@linaro.org>
Date:   Fri, 23 Dec 2022 08:54:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v2 1/2] dt-bindings: Add the binding doc for xilinx APM
To:     "Datta, Shubhrajyoti" <shubhrajyoti.datta@amd.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Cc:     "git (AMD-Xilinx)" <git@amd.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "michal.simek@xilinx.com" <michal.simek@xilinx.com>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>
References: <20221222084235.12235-1-shubhrajyoti.datta@amd.com>
 <20221222084235.12235-2-shubhrajyoti.datta@amd.com>
 <8d35613e-5729-ccc0-6344-eae1ede5616e@linaro.org>
 <BY5PR12MB4902A397745DA48813C6548D81E99@BY5PR12MB4902.namprd12.prod.outlook.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <BY5PR12MB4902A397745DA48813C6548D81E99@BY5PR12MB4902.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/12/2022 05:55, Datta, Shubhrajyoti wrote:
>> -----Original Message-----
>> From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> Sent: Thursday, December 22, 2022 3:22 PM
>> To: Datta, Shubhrajyoti <shubhrajyoti.datta@amd.com>; linux-arm-
>> kernel@lists.infradead.org
>> Cc: git (AMD-Xilinx) <git@amd.com>; devicetree@vger.kernel.org;
>> michal.simek@xilinx.com; krzysztof.kozlowski+dt@linaro.org;
>> robh+dt@kernel.org
>> Subject: Re: [PATCH v2 1/2] dt-bindings: Add the binding doc for xilinx APM
>>
>> Caution: This message originated from an External Source. Use proper
>> caution when opening attachments, clicking links, or responding.
>>
>>
>> On 22/12/2022 09:42, Shubhrajyoti Datta wrote:
>>> The LogiCORE IP AXI Performance Monitor core enables AXI system
>>> performance measurement for multiple slots (AXI4/AXI3/
>>> AXI4-Stream/AXI4-Lite) activity. Add the devicetree binding for xilinx
>>> APM.
>>
>> You did not implement what I asked for in the subject.
>>
> I missed out I will fix in next version. 

Be sure you implemented all other comments.

Best regards,
Krzysztof

