Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0121476850B
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 13:22:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229592AbjG3LV5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 07:21:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230061AbjG3LVp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 07:21:45 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7D7AD1BC7
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 04:21:44 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-52256241c50so5612894a12.3
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 04:21:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690716103; x=1691320903;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IXMMuR7B8SyK63Dw8ZGg1s6tNzHxfB46KYaCNLw2R9A=;
        b=iZMeKYUrky0Kyba23iJz0Vvzj6/FNsU2A/iW5w1Ze3vQnSwcNcI1cd0Hm1+/GWH4ek
         Qh1nsGioCeNw5vV7dHulevMKIprN+jot6ml79LoEKunRZNP6/+9ajjnZr0trCcyra4AI
         A2ILQDt/Lt65j+vARLsO7zFjd7HLkSVRbO6+ZQE3rtbp61P1F3i7euh+oU+BlmHQ6BRD
         ytTCbeWDDF0SOdgg78tUHFT0i0PnxRLctoDzSrt6+s0SgQWWFHl0AHUwdZVtsYToWH4F
         SO3fG5DQmerPjA6zh7LtFUYDLoEtct50NG8M+jNyNLaUz/U/SG1qUgLg3No00jSRxgst
         tfvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690716103; x=1691320903;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IXMMuR7B8SyK63Dw8ZGg1s6tNzHxfB46KYaCNLw2R9A=;
        b=iFsn+d8wAE+eNfwMEVMt2szZUzoOBNE7F04HAf+dfAkWm+E1xFjUMexT21mQbF0YkN
         xBTvdNVZpluqv3bMa7c1+1YY8lhjsWB4BFhnZgZJZPl9rZqawleXTdl8MToMsspnUDHg
         WkhZpRsUFNkLdGjadATIhbnW2j3XsNG2XcdNnUh7ZZJwW2udQk653nBij6d/E3CmonOo
         RWckmRD2+ht0K2suqcF2Q4x/dt9x21/+1wp8F9yHHi1TAPlOGlc1hYEwsnpY9U2omHXI
         cb36cODD6pq1ePMhb2jfPLrdN3TdHNtCquYWXPQKRHnvufKsN6DJ4Q7eer2AwW83roRL
         yi2w==
X-Gm-Message-State: ABy/qLbvfMW9MG4s+tW+uIrw3vpWg6YF8hxLhDL4xGcQpSsqbeoQB2m7
        xfqj++kcI7NzizIzb6mGlvDImg==
X-Google-Smtp-Source: APBJJlE8ilH9S5BU+cuNoWGe2EiqfevrmLHWL5ZksdYE6C2yZfS5A0YQy9JAY98HegdYIs/Rz9fL7w==
X-Received: by 2002:aa7:d293:0:b0:51d:d4c3:6858 with SMTP id w19-20020aa7d293000000b0051dd4c36858mr6284928edq.12.1690716103010;
        Sun, 30 Jul 2023 04:21:43 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id d15-20020aa7d68f000000b00522594a614fsm3966620edr.13.2023.07.30.04.21.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jul 2023 04:21:42 -0700 (PDT)
Message-ID: <6ff004bb-2f5e-d0ee-9f50-2d2b631eb6e0@linaro.org>
Date:   Sun, 30 Jul 2023 13:21:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v4 1/4] arm64: dts: lx2160a: describe the SerDes block #2
Content-Language: en-US
To:     Josua Mayer <josua@solid-run.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
References: <20230730092422.16771-1-josua@solid-run.com>
 <20230730092422.16771-2-josua@solid-run.com>
 <8ee50871-e299-7a2e-2ece-a43e8263f6b5@linaro.org>
 <1b31e40d-5468-d886-f4c3-59dcac33ff7d@solid-run.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1b31e40d-5468-d886-f4c3-59dcac33ff7d@solid-run.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/07/2023 13:04, Josua Mayer wrote:
> Hi Krzysztof,
> 
> Am 30.07.23 um 12:13 schrieb Krzysztof Kozlowski:
>> On 30/07/2023 11:24, Josua Mayer wrote:
>>> Add description for the LX2160A second SerDes block.
>>> It is functionally identical to the first one already added in:
>>>
>>> 3cbe93a "arch: arm64: dts: lx2160a: describe the SerDes block #1"
>> Please use proper commit xxx syntax as asked by checkpatch.
> 
> checkpatch doesn't tell me anything. Please can you elaborate what the 
> issue is?
> 

The syntax is "commit xxx". Then checkpatch will tell you that SHA is
too short.

Best regards,
Krzysztof

