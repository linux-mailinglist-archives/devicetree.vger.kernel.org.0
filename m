Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBD815A0C62
	for <lists+devicetree@lfdr.de>; Thu, 25 Aug 2022 11:19:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234323AbiHYJT1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Aug 2022 05:19:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238758AbiHYJTJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Aug 2022 05:19:09 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C179A0337
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 02:19:05 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id w22so3861959ljg.7
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 02:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=5sLLJwx5fDC65ir0hnf5+Sti6dIGOgbuBhKyXjwz+yI=;
        b=ImaL0OaB9DjV2I8mkss1KZt4fNOL2+FNjkJF3NAfXpxW6Sq/5kT4TtIScleWrCpXu9
         2ZPt5iPa+dWQ6O2gghcDPruzZaJbyfIK25OxZh0psTEQM2QIvr5rO35LFLqa2YXCUiM/
         Vx8/zYDbS6OxE+Kf5BYILq2Gn3wv8/rDqEANRG5zf1Spn7x3YPSnzrPNp0zKMEO1hW9y
         kTX4mL5D25AkYis2JucJBd9GCbD+gKtRHYKL/IH+rgRGNpBc0c/lX+HcYKmlSmPtMpuj
         StqZhYLWJqLhSW6cSc3EVHK5Bl5xVJ61Isop9APpsAm5RzyWLfjQli4PFBb46MEQAev2
         VO+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=5sLLJwx5fDC65ir0hnf5+Sti6dIGOgbuBhKyXjwz+yI=;
        b=EiMFekW0vA6ig7TT6B061dvZJGqzQNyClkFyxQYAiVEFvWqdWIqXM+1SHyQll6iRlD
         OeFQZlPPf++eFa3xE1uMHb3JuqgyqGQs+mC8V19tzhAXrMLvcSfBMbyK8cGSNxvyho/P
         4gs39vkyEMrrJVcpS16dBURqhNngboj0Kh5VSoBB4nIsYXq6HPo1YxAEhEuKU56pj5QN
         gFaGyD6r15jujU4Z5v+2ZTref2jGHf6L9faIPmyWDNtQVRpCKp6f7OnoLtk4vZyjQEVR
         wgL0ehEbxSSD9D1guHPlBzlRRTtsgSknnf+iUSUyaeVOxAStvKqp5pUpW9CJLbjvIKdw
         Ufzg==
X-Gm-Message-State: ACgBeo3szTwD3FpqTuHYVLIZ4+qW2lK05zRunln+qnZ7xtd4Mde5v+d+
        La+xr3fJHafj5besnE591OJB/g==
X-Google-Smtp-Source: AA6agR5cLMW6dK0mLYBJEmmbS+0xSE4i8FRTC6oNzAhVSwFOrGPK4zJGdxvlic8d5WSygG0ZBfZ2og==
X-Received: by 2002:a05:651c:2d0:b0:25e:6c94:59d5 with SMTP id f16-20020a05651c02d000b0025e6c9459d5mr863198ljo.488.1661419143569;
        Thu, 25 Aug 2022 02:19:03 -0700 (PDT)
Received: from [192.168.0.71] (82.131.98.15.cable.starman.ee. [82.131.98.15])
        by smtp.gmail.com with ESMTPSA id u19-20020a05651220d300b00492db7f47f2sm383198lfr.275.2022.08.25.02.19.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Aug 2022 02:19:02 -0700 (PDT)
Message-ID: <72e484c8-16ce-9ccd-3bf2-4097eca937e1@linaro.org>
Date:   Thu, 25 Aug 2022 12:19:01 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings: edac: Add bindings for Xilinx ZynqMP
 OCM
Content-Language: en-US
To:     "Potthuri, Sai Krishna" <sai.krishna.potthuri@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michal Simek <michal.simek@xilinx.com>,
        Borislav Petkov <bp@alien8.de>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        James Morse <james.morse@arm.com>,
        Robert Richter <rric@kernel.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-edac@vger.kernel.org" <linux-edac@vger.kernel.org>,
        "saikrishna12468@gmail.com" <saikrishna12468@gmail.com>,
        "git (AMD-Xilinx)" <git@amd.com>,
        Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
References: <20220822115821.3907-1-sai.krishna.potthuri@amd.com>
 <20220822115821.3907-2-sai.krishna.potthuri@amd.com>
 <52fa28d6-4d48-bd0c-40e6-4f8855c4eac8@linaro.org>
 <BY5PR12MB42589769EF9702D7A0F83989DB729@BY5PR12MB4258.namprd12.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <BY5PR12MB42589769EF9702D7A0F83989DB729@BY5PR12MB4258.namprd12.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2022 11:50, Potthuri, Sai Krishna wrote:
>>> diff --git
>>> a/Documentation/devicetree/bindings/edac/xlnx,zynqmp-ocmc.yaml
>>> b/Documentation/devicetree/bindings/edac/xlnx,zynqmp-ocmc.yaml
>>> new file mode 100644
>>> index 000000000000..6389fcb7ed69
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/edac/xlnx,zynqmp-ocmc.yaml
>>> @@ -0,0 +1,45 @@
>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause) %YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/edac/xlnx,zynqmp-ocmc.yaml#
>>
>> Filename should be based on compatible, so xlnx,zynqmp-ocmc-1.0.yaml
> I will fix in v3, Just want to know in case if we have multiple compatibles, 
> how to handle such cases?

Then something generic would fit, but you don't have them...

Best regards,
Krzysztof
