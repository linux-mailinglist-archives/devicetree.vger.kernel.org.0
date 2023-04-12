Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 26E256DEC86
	for <lists+devicetree@lfdr.de>; Wed, 12 Apr 2023 09:24:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229635AbjDLHYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Apr 2023 03:24:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229919AbjDLHYw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Apr 2023 03:24:52 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55ABD1AB
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 00:24:51 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id kt17so14221009ejb.11
        for <devicetree@vger.kernel.org>; Wed, 12 Apr 2023 00:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681284290;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=19hrHdWxX7fNcx7etYsFG/mBLvuD0BCXXvIBDLJpJmk=;
        b=HfAaKzqtKy0piFW7rzSP4zNO0Ao8zeLOTGwDHPLuzTwOye5tj+8kW0B+yJiDjG9ZhG
         +gJNrJjOk4JSFtqkb9KqRZ6NGkLqnbcpgXD526to1T6wiy5YP7iYLvMiBtLbn6ztxHP5
         9fHbh2kpb+qrUZLPu2rS4c6JaId5YeaNota9esnd1Oihq8luQix6IT7MIRPmMXyyUzYO
         9ZO+ZjYGj3hLU8ajbH0Q8d2SuAk2K+ZdeOppgrv2X1MI0qNmaVj0ks33kfO4dDsS46r+
         MAkHxvWdHOWqN2Lsf1aBDXDCtXqeta8d7f6J4o5tQ+nnXv1ZhuG4H5blLQmglO/PEflm
         uB5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681284290;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=19hrHdWxX7fNcx7etYsFG/mBLvuD0BCXXvIBDLJpJmk=;
        b=PwzAUSE+OSpW3HVdvCrCh9bOID00uP6whpJb3JATDCnmYAhRDkCqVi4i7qxo2V1wEt
         NRLkc8j8hSbeCPLolUqvD96lej6VMSTa5VN53xIUv+us7xDXW+rzFJkUUyD2NI1B3OMU
         0Vpr8oI1rQMPE8Rc6QLx4hRMdHti1ytfjxmf+JwpvOvCTP/pm8gPf+UKq8EfKOKD84/Y
         +Q9comq89ExsiGPz7IEJg/UFzLJ7gGUOri03WCVBUYMe1h9pq4JAdqSwiaosl5Oo2UTj
         9OayrhDgt6LFB0FzMjSCPuu2R5YcQ3oPhfwLo9T9uSkXa9Egxbw8bPD85V3lF6TCoE9G
         tydw==
X-Gm-Message-State: AAQBX9cEuBig/jcitI7AYfNLfugKzFgCDiF1jw68OAtnpWZ+eaJTcp7L
        +Np2OWisoByxSTncRgq9DBymRQ==
X-Google-Smtp-Source: AKy350bKPHaa0QcVd2v4MA7Nc5a9t0T+HJ0v490obqj5rZRH2OI4Pz8S+fMpZdUu/Iwecmi80XpO9g==
X-Received: by 2002:a17:907:2e0d:b0:949:55fd:34fb with SMTP id ig13-20020a1709072e0d00b0094955fd34fbmr14758745ejc.38.1681284289856;
        Wed, 12 Apr 2023 00:24:49 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8fa0:9989:3f72:b14f? ([2a02:810d:15c0:828:8fa0:9989:3f72:b14f])
        by smtp.gmail.com with ESMTPSA id v21-20020a170906859500b0094a7c882638sm3139584ejx.90.2023.04.12.00.24.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Apr 2023 00:24:49 -0700 (PDT)
Message-ID: <c1319685-49cc-9326-f4f9-1190ff633450@linaro.org>
Date:   Wed, 12 Apr 2023 09:24:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 2/2] dt-bindings: cisco: document the CrayAR
 compatibles
Content-Language: en-US
To:     "Daniel Walker (danielwa)" <danielwa@cisco.com>
Cc:     "xe-linux-external(mailer list)" <xe-linux-external@cisco.com>,
        "Marcin Wierzbicki -X (mawierzb - GLOBALLOGIC INC at Cisco)" 
        <mawierzb@cisco.com>, Rob Herring <robh+dt@kernel.org>,
        Daniel Walker <dwalker@fifo99.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20230405223028.1268141-2-danielwa@cisco.com>
 <6a9f041b-1c35-4691-8451-7119cd05ed17@linaro.org>
 <20230407160413.GD1391488@zorba>
 <6af9effe-89c0-7630-9a72-a5a6351e0a95@linaro.org>
 <20230410170915.GE1391488@zorba> <20230410175054.GF1391488@zorba>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230410175054.GF1391488@zorba>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/04/2023 19:51, Daniel Walker (danielwa) wrote:
> On Mon, Apr 10, 2023 at 05:09:15PM +0000, Daniel Walker (danielwa) wrote:
>> On Mon, Apr 10, 2023 at 05:28:03PM +0200, Krzysztof Kozlowski wrote:
>>> On 07/04/2023 18:04, Daniel Walker (danielwa) wrote:
>>>> On Thu, Apr 06, 2023 at 09:12:34AM +0200, Krzysztof Kozlowski wrote:
>>>>>> @@ -0,0 +1,27 @@
>>>>>> +# SPDX-License-Identifier: GPL-2.0-only
>>>>>
>>>>> Dual license.
>>>>>
>>>>
>>>> What are my choices here? I see this,
>>>>
>>>> # SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>>
>>> Yes, the one suggested by the checkpatch. Did you run it?
>>  
>>  I don't recall if I did or not.
>>
>>>>
>>>> Which appears to be what your suggesting. I also see this,
>>>>
>>>> # SPDX-License-Identifier: GPL-2.0
>>>>
>>>> I'd rather use the later.
>>>
>>> Why? Bindings should be licensed under BSD, so what is the reason to
>>> make here exception?
>>
>> I'm sure I can re-license my submissions. I'd have to look into it.
> 
> I'm _not_ sure.


This is a new file - it did not exist in v1 - thus you had to write it.
If you wrote it, you (or your employer) hold all copyrights, so yes, you
(or your employer) can relicense it.

I cannot imagine the case why employer would not like to have dual
license here (it's beneficial to him, so employer would be acting
against himself), but if you need to convince him, you can just say,
that contributing to Open Source project means accepting the licenses in
that project. The license for new bindings in this project is (GPL-2.0
or BSD-2), like pointed by checkpatch.

Best regards,
Krzysztof

