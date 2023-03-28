Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBC126CB746
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 08:37:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232381AbjC1GhA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 02:37:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232208AbjC1Gg7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 02:36:59 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF24312E
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 23:36:54 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id ek18so45315167edb.6
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 23:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679985413;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rg7ln0vtWUz2rX09aiXxcm/NmjbrwQwhmjlO2+xf65c=;
        b=bJFuoeYvos6lpzBKhbZ13koLXy0NZysEjyNZje4vCdC0hEor+K56w5X94AhomyWBPK
         +arik7s1GIUOE4i3bp1dViZXfhYiDWje5wDy+VguF6ZE4b6165vuScAkj9h3qnYy50uo
         +e71NUyCldyEvdC6VjA2F+HGlimCffcz4hiCpLRJMXwHIkuZM2tmuPRNuXiO4zleFvhN
         kGg4okFvG6lc4W/timUsjP3mJxDN5pwaqqC0LyshnJHCMvuMXvMk5RzW1lrcsArnX9kw
         4EBXz+ExSJDKrEx10Q1rYaDxrVpXcbRtamA466QBSihz1LtVDDuue1qLjHIRcNKxav84
         7ysA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679985413;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rg7ln0vtWUz2rX09aiXxcm/NmjbrwQwhmjlO2+xf65c=;
        b=wLIjm0Il/cdsjlYypb6JfPjNgwUURNs5T25Pr/MOaSXsP5JsfJPYVj+a6Ke2Z3D70u
         wTxy/N0kxB3WAJCrobEtb5uffSYnrbRsl2NEMD0jJc4Ina1S0slLpKi1j+bCGnF9c3PH
         SGqpqo6KMuH+BjTqnRpOFEwaz3+QQM0WLIIXvf/VaNjLI0tFm/rVOC1tP770w49PuTjh
         PLz6VE+VI7OyXOUiHbviSKNsGvN68+E8YuSqFBHtoajjEESolxpDy1iMOGL4sCiLIQ2k
         AbDRojmX8IsbGl0AVq/iFx0nxXTLB4zfHhA71c7oKRX/uEU/T0XU1LvbxE7emspx6wLc
         WZxQ==
X-Gm-Message-State: AAQBX9cf2RPXTqGgUAz0jYEjwQtsu6hHR8DdgGYNLND4w9zY2GqO1aHv
        AMtuf659c62sLrQXcDJBquGB8g==
X-Google-Smtp-Source: AKy350YR4kjr4yCk8UnUPhlJWSjLT1aUW1CZ0zwUJkBhu0R6dQMskjbM2t0Zl3BjeL+CDVqDOR++FA==
X-Received: by 2002:a17:906:d78f:b0:932:40f4:5c49 with SMTP id pj15-20020a170906d78f00b0093240f45c49mr15253200ejb.67.1679985413260;
        Mon, 27 Mar 2023 23:36:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9e92:dca6:241d:71b6? ([2a02:810d:15c0:828:9e92:dca6:241d:71b6])
        by smtp.gmail.com with ESMTPSA id r5-20020a1709064d0500b00923f05b2931sm14868672eju.118.2023.03.27.23.36.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 23:36:52 -0700 (PDT)
Message-ID: <1838b760-c911-cb0a-184e-150df2f86c3b@linaro.org>
Date:   Tue, 28 Mar 2023 08:36:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/2] dt-bindings: firmware: arm,scmi: Support mailboxes
 unidirectional channels
Content-Language: en-US
To:     Cristian Marussi <cristian.marussi@arm.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, sudeep.holla@arm.com,
        vincent.guittot@linaro.org, souvik.chakravarty@arm.com,
        nicola.mazzucato@arm.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <20230327140342.222168-1-cristian.marussi@arm.com>
 <20230327140342.222168-2-cristian.marussi@arm.com>
 <dd8d1503-e2bf-7032-4d0a-16d9a5b2aa51@linaro.org>
 <ZCG154hlWbLMAzIi@e120937-lin>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ZCG154hlWbLMAzIi@e120937-lin>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/03/2023 17:27, Cristian Marussi wrote:
>>> +  - |
>>> +    firmware {
>>> +        scmi {
>>> +            compatible = "arm,scmi";
>>> +            mboxes = <&mhu_U_tx 0 0>, <&mhu_U_rx 0 0>;
>>> +            shmem = <&cpu_scp_lpri0>;
>>> +
>>> +            #address-cells = <1>;
>>> +            #size-cells = <0>;
>>
>> I don't think adding one more example with difference in only one piece
>> is needed here.
>>
> 
> Mmm, I thought was sensible to add this example, given that a mailbox
> transport configuration for a mailbox exposing unidrectional channels is
> quite different from the usual bidirectional channel config already
> present in the pre-existent example.
> 
> I'll add mbox-names into this example and see if I can change your
> mind...or I can then finally drop it.

And what exactly this one more example changes? Does not validate
different parts of the binding if only one property differs...

Best regards,
Krzysztof

