Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33C21511D23
	for <lists+devicetree@lfdr.de>; Wed, 27 Apr 2022 20:34:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238870AbiD0PHv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Apr 2022 11:07:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236491AbiD0PHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Apr 2022 11:07:50 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D204377CE
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 08:04:38 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id r13so4000074ejd.5
        for <devicetree@vger.kernel.org>; Wed, 27 Apr 2022 08:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=qSFg4Tj5t0iyrEchnrtK0dBSQObqtqTWb9jQH9X+b9o=;
        b=FcqJ53fMHsoNteWG65OE61cgPXDKxl2TB9xlqpw7d2H0xIFAW3J9jIHgc8D+JVGNXF
         qAuj2G48nNlSqvwteyPX1018Tbc1wLpjDiRabQstpIxsxku0evzjG/evaCOhbdeI9pq9
         gJPqELQa39qzlpYqM/JNJ0olZwD5UlrmcqH3RYUG/5rYuKD9ZNRvQQiuZK5S4Z87ZXVX
         HkVUxfAENgz5hwMOBPx7Gd9WpjQrLgYueyjWQ8T9uPHhK9/vfhjMx2Rw/qQ2OxPedcD+
         FWmIPna0ib0Y+6n3lkaeWzGijXyJkwbGiepQyfeCGFYu0tBeX6s808iQ8YIDg1htIgWz
         4A7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=qSFg4Tj5t0iyrEchnrtK0dBSQObqtqTWb9jQH9X+b9o=;
        b=3RmXwcj6KwITOa5FNzOUe1vXiyJycgeJ92VbfEPIMcg2OCq17nfV/mWMoCco/O5Ufp
         uWf5v28eb2ArZSqxaWC1fw77d00kKxQ0wAOsiF1bZDy/E2ryROF+itwnVFs3Z7IRCvtg
         jFuk4emUNq2x9zGgOFrs4QgBXJT09eDOa3Jl26irhschdppE7eH47/B4ISQMv82r/6MP
         fx5cJ4eF0kVa50Q+H/OEV6ZGjEm0+Vtj6/BKM+edXbBDDMDVY6Ai4DTVpluvfe5clYoC
         CDlNQZvwOJ4JZn5s9R1FB+gMLZNYCVeUESXpEPYGm6WgpRGZOcCjVlbQEXnty8dIU1ms
         tbDg==
X-Gm-Message-State: AOAM532Rw4CsCPaM+y5rPtQTwkzvrVt8RaBRVdh52arykrZmMtwdnDk0
        9nPKxb7ahB3sROlc5rO7svkTHA==
X-Google-Smtp-Source: ABdhPJw6xDM1POPST6rczNOf9S7K4mHZOwvxk95MGxUyrktevc3E9tLAv3v4JHjg4digjA0etDk5qA==
X-Received: by 2002:a17:906:824a:b0:6f3:a07b:2568 with SMTP id f10-20020a170906824a00b006f3a07b2568mr12384434ejx.84.1651071876676;
        Wed, 27 Apr 2022 08:04:36 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o2-20020a056402438200b0041fb0f2e155sm4792899edc.20.2022.04.27.08.04.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Apr 2022 08:04:35 -0700 (PDT)
Message-ID: <fedb56be-f275-aabb-cdf5-dbd394b8a7bd@linaro.org>
Date:   Wed, 27 Apr 2022 17:04:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: PCI schema accepts unevaluated properties
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <42fbcb55-b6ef-906f-7584-62a6097a8639@linaro.org>
 <CAL_JsqJ3FiBci1+8oSOHA6GQ8Q3HHM3QcY+GFg=+KVZEQAnb6A@mail.gmail.com>
 <345716e9-5624-5ba0-09f0-46e9850c546c@linaro.org>
 <CAL_Jsq+d-RHNnTyy+mrs2L7Zycjwq07vENCH8+SHZBuZGCuq=A@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAL_Jsq+d-RHNnTyy+mrs2L7Zycjwq07vENCH8+SHZBuZGCuq=A@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 16:53, Rob Herring wrote:
>> I'll fix the power-domains, but dma-channels/dma-requests should not
>> fail. This should be accepted through:
>> arm,pl330.yaml -> dma-controller.yaml -> dma-common.yaml
> 
> Except that the standard property names are 'dma-channels' and
> 'dma-requests' without the '#'.
> 
> Thanks for the fixes. Unfortunately, it looks like NAND needs the same
> parent/child schema split that was done for SPI.

Oh, few drivers indeed parse '#dma-xxx' variant. For pl330 schema it was
introduced with 42cf20980cde ("ARM: dts: pl330: Add #dma-cells for
generic dma binding support")
 which clearly defines something different than uses in example. I can
imagine that editor added '#' automatically after pressing <enter> when
editing the example.

This wrong variant spread all over and in practice was not detected
because pl330 driver does not parse this field.

I'll fix it.

Best regards,
Krzysztof
