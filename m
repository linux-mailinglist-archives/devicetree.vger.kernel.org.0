Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46B0B6CAEFC
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 21:39:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230138AbjC0Tja (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 15:39:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232251AbjC0Tj1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 15:39:27 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C71C5582
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 12:39:03 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id r11so40742620edd.5
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 12:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679945941;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=redpLiu311SbpFJkR7PATOE3qgXGU9PbbfnsYfAwvoI=;
        b=w9kNrogMACIBLzAMbqXhw7MjOXm4SZsWqY1bA8oBBhZ4YIWj+K5lArjL6Ps8eTEF5Q
         N2ZyGdh4mhQd6IC8XK9uhKBUuszblDXijeZ3JkIPFsQPKYrYtfdDmYzAMSQTdg9g7ZDr
         agarGs01N0/WQvXkzCOjHxAL6o5oiAsW2BaehVF7/lA1aNq3qVvFwC1wfYM7GwReg2G4
         ib/tSEEFPCd5oaVKzv1kTRa+kj21bTBRDTU1rkpDMfsBsiA8j8/WEgk6CbIeKa/+emso
         +/oxZ73DAGD6NoN1Opj1pd/Iw7AZ7w5RCdfIkT5eOn36T2myeteowJPXfTCjkTGPWFbZ
         Kamg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679945941;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=redpLiu311SbpFJkR7PATOE3qgXGU9PbbfnsYfAwvoI=;
        b=Vx9tNygoTSy7/8rgxTgrgZD1FhMdeCJsdsOCspMvQpHY8tTUVp6NL+HKZqk4nKrK6/
         VyhRflxzbnbsplb+vtPvFm/pfx3H2O7pAtXWLmzXhoYHb4ngYcodUexSv/BaGDgM7EMT
         C0NIDTLHjoIpMDJesNdwUnCnlbg0ZvjPnEX9FYYJ1WW5bOjhNjXFwh+PUXQNOIaG6taQ
         Mb5fJemWH97uHpneau92VdaouENEanK5jvPMcDTDxOr5MP35EHdbT4iw3VfZQ/wnMzoU
         jetU7K7iyEU8kml3ysA8SaTm83wMEcYjy+oFLeQSzFhTYDtGAT2ZZpz91eHrUZbfGxdY
         PoqQ==
X-Gm-Message-State: AAQBX9f5JxH8koIIzrdlqNePiWk+EJkeAdQjz2KPR3wXx/WIj4FkWgLX
        ggRQG+ADdDvmJgYQywxfQSzm4g==
X-Google-Smtp-Source: AKy350ZeIEBZeN6QDtznrLPHkOg8cgCA/bOCSvittRLTjVAFmd4pQ379xchJvdKYaDMLQQlFnMRlig==
X-Received: by 2002:a17:907:6d0c:b0:944:18e0:6ef2 with SMTP id sa12-20020a1709076d0c00b0094418e06ef2mr7547612ejc.73.1679945941515;
        Mon, 27 Mar 2023 12:39:01 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9314:a4b3:ce49:2c6b? ([2a02:810d:15c0:828:9314:a4b3:ce49:2c6b])
        by smtp.gmail.com with ESMTPSA id p9-20020a1709060e8900b0093313f4fc3csm13229566ejf.70.2023.03.27.12.39.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 12:39:01 -0700 (PDT)
Message-ID: <edb9fc8d-5d64-146f-fb82-6112c1d9455e@linaro.org>
Date:   Mon, 27 Mar 2023 21:39:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] arm64: dts: qcom: sdm630: move DSI opp-table out of
 soc node
Content-Language: en-US
To:     Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230326091605.18908-1-krzysztof.kozlowski@linaro.org>
 <20230327193938.42rvpttgo5p4kia6@ripper>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230327193938.42rvpttgo5p4kia6@ripper>
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

On 27/03/2023 21:39, Bjorn Andersson wrote:
> On Sun, Mar 26, 2023 at 11:16:05AM +0200, Krzysztof Kozlowski wrote:
>> The soc node is supposed to have only device nodes with MMIO addresses,
>> so move the DSI OPP out of it (it is used also by second DSI1 on
>> SDM660):
>>
> 
> This node has been moved into the dsi node, so if we still want this,
> could you please update the commit message.

The OPP table has been moved *out of* DSI node. The v1 was moving
inside, but this was not good approach, thus v2 moves it out.

I don't understand what shall be updated here.



Best regards,
Krzysztof

