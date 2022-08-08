Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5570258C348
	for <lists+devicetree@lfdr.de>; Mon,  8 Aug 2022 08:27:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236390AbiHHG1K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Aug 2022 02:27:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59136 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236173AbiHHG1H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Aug 2022 02:27:07 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA08110FDC
        for <devicetree@vger.kernel.org>; Sun,  7 Aug 2022 23:27:00 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id v7so8790532ljj.4
        for <devicetree@vger.kernel.org>; Sun, 07 Aug 2022 23:27:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=QQLSXoa6vBzyULzMl4Lyj9nCjqEGkXsRm+hwsn6zEQU=;
        b=zIfr/bkoY3gBzFbNcrWpqiMwyNkPCdKNe/MrbGWontsY0HYT4ssA/dAdUdAabizg5N
         Uq6lRdGpZkVFal9dSokwde86NFzLO36qaFgkAcsGa2pp2AewIMfEoLXQu3hwV5vAuG8G
         C39vpKfHrnW8cOYiiw7CBCJZZC9q5aHcEarv2mzTjuimEMXv1nUY0jtqJjjScfaKJNwV
         mK3ZNzHXGD7a5IwATuzg00KVDZTPOGyV+jsJ/uGzqWgmUoM72zYGndAChyFcW4+wfVH9
         +HmN2rEZhRXBzI8fXgw7tCqm3vx1pJXdI5frgGv4weNWXJu4ZCD6p0sxEE2rFDjtaXTu
         Xa4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=QQLSXoa6vBzyULzMl4Lyj9nCjqEGkXsRm+hwsn6zEQU=;
        b=BMde+issXmkaCCZB/CpbuX590awkUnn04fpM3/5AMfd+l+mNlnLYNWJ8/nUI5gL/x/
         tDGauvjzvG3luYsfG2MveqRwPMKiSt/UI/8bAyK3Y/3Et/XjVgkg6atMn2S3elS9uS0V
         zGx7C3mQZNiBPG2CVRlBXsM8JZHzZw4rCu3VqpUp0LecwwIMJS6J+L1zMCzfmRBjRJZ0
         3r/23YeerBzlrWHyXo9fOizhCtTriTxGKjeW9oaZVakACWBWppJeNezkum36VON+LW9N
         k0Wchc6dWC0Rz6PLBp+Lmi6BHmWT9gpnzNys3JM9kNCCX3vZMMqbqrZ0H4avSMKR0sc0
         4l/g==
X-Gm-Message-State: ACgBeo1MVRUCC031Kx4zAU7XAEFUX+5jibyU9a/o229zakK3XCk4xkzg
        ZiZN/qsHXRH96fD8uT5V7EgS6w==
X-Google-Smtp-Source: AA6agR7xDstvO762NOZfSosYL1/7JmPhrOKTSApy4+c172IbCSOvbAnHnC+5kibn/XzAXiv9QgI0GA==
X-Received: by 2002:a2e:918d:0:b0:25e:c884:6a96 with SMTP id f13-20020a2e918d000000b0025ec8846a96mr2674578ljg.157.1659940019211;
        Sun, 07 Aug 2022 23:26:59 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id u11-20020ac258cb000000b0048b08124139sm1313796lfo.177.2022.08.07.23.26.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Aug 2022 23:26:58 -0700 (PDT)
Message-ID: <83bbcb33-1f6e-47cc-54bc-e0a5444c3609@linaro.org>
Date:   Mon, 8 Aug 2022 09:26:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2] dt-binding: ipmi: add fallback to npcm845 compatible
Content-Language: en-US
To:     Tomer Maimon <tmaimon77@gmail.com>
Cc:     Avi Fishman <avifishman70@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Joel Stanley <joel@jms.id.au>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Jonathan Cameron <jic23@kernel.org>, minyard@acm.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        openipmi-developer@lists.sourceforge.net,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>
References: <20220804181800.235368-1-tmaimon77@gmail.com>
 <10e93907-49ef-a3e6-e0b4-0b3e5f236f44@linaro.org>
 <CAP6Zq1ju4=PSiCuDaCi2NQTniaXBwmv5Qn6LoLayGmiayDCvYg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAP6Zq1ju4=PSiCuDaCi2NQTniaXBwmv5Qn6LoLayGmiayDCvYg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/08/2022 09:51, Tomer Maimon wrote:
> Hi Krzysztof,
> 
> Thanks for your review.
> 
> On Fri, 5 Aug 2022 at 09:36, Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 04/08/2022 20:18, Tomer Maimon wrote:
>>> Add to npcm845 KCS compatible string a fallback to npcm750 KCS compatible
>>> string becuase NPCM845 and NPCM750 BMCs are using identical KCS modules.
>>>
>>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>>
>> Your previous commit adding that compatible was simply wrong and not
>> matching the driver and it is not the first time. I think all Nuvoton
>> patches need much more careful review :(
> Will do and sorry about all the mess...
>>
>> You forgot the fixes tag:
>>
>> Fixes: 84261749e58a ("dt-bindings: ipmi: Add npcm845 compatible")
> Will add the tag next version.

You received a bit different review from Corey, so to be clear:
1. Your approach is correct, assuming the devices are really compatible.
2. Add a fixes tag and send a v3, to get my ack.

Best regards,
Krzysztof
