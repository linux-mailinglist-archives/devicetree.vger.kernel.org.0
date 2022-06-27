Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5054E55D5D7
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 15:16:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232371AbiF0IbT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 04:31:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233589AbiF0IbF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 04:31:05 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFC036301
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 01:30:55 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id sb34so17460246ejc.11
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 01:30:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language
         :from:to:references:in-reply-to:content-transfer-encoding;
        bh=r/k/Wup5MZ0W8s3nAcDiEGYXaMuQoL3NODuPPee+xMA=;
        b=lV0hqjwlV3MZhzxNn8J0ngh91fVXmi9vWf/WIa5/b2W1b9+8oIcFRgKOPrdy+8dASR
         DOdrhMBP+fGLUTzjFZcAkLERbuOw/AEEQlxqYHhNhNrZ18MI1wAyuyOJgJAlRMOStXts
         pxJ0ngjLsurtzrBRPUCQVX1+dMoWH2hBa8MqTyE5pLkJbOPVg2gJcRpoTIfM4aVY/1Lz
         +oNOJz7kwGPZ/nSVXeXvg/udtItq05wcqGBlIengWSF+eNWJXyBA036sa3papisnP6sE
         XoDS2OOwa0O8pEu0ASXNFVkFmRhISkXRsK0HvE8ENyV7PmT+u4oN3sQjlYeY4LSrdCRL
         +Iew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:from:to:references:in-reply-to
         :content-transfer-encoding;
        bh=r/k/Wup5MZ0W8s3nAcDiEGYXaMuQoL3NODuPPee+xMA=;
        b=KOuCDWICf/Ym/GqBJ6J8Lsy1/2lOUDSy4R1e8x1mEDjiMDO2yUJ0YeyE9aQ8MeXDTr
         EM1oX12C1YyEQLDo2ag84X7XnsslRerLw1u7JbrqxiKpAskYflTK8a/vVJRyQKvh1EcP
         aHvFcgNtf1XKaJkBfvk/dgHVxzG+A9OilGuYiHkQ60YWcMSJOkcqYIfyOUh94hCkM2gd
         dVFQtzv9c1RlSnMGVGbezgNRIYjlubaNiEkwqSjhHHDRw/1OLLEjy0IH+ce2QxJRrND0
         j2rqi79WqUDseEGjA3z/YYQtuldhy7YAqmsdfpcCEm9hrUwYrKS3VBo5Z3MydgvGCd3J
         DF8Q==
X-Gm-Message-State: AJIora8fAaFx8GdwSf2dYn/D3frX2EVwFtv+KM8uS1Gi1W+FS5LNk32t
        WjUeA4wIggtaRS2wk+pBFm7l4Q==
X-Google-Smtp-Source: AGRyM1tnzpEH5baCKq/SmMFgmvAPOw8Kzw5ImotQVhY6SXQgyGQuIua8gVHp77Z1u1oYmIlUc9d81g==
X-Received: by 2002:a17:906:5512:b0:726:be2c:a2e5 with SMTP id r18-20020a170906551200b00726be2ca2e5mr643759ejp.88.1656318654433;
        Mon, 27 Jun 2022 01:30:54 -0700 (PDT)
Received: from [192.168.0.246] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id x6-20020aa7cd86000000b0043574d27ddasm7019774edv.16.2022.06.27.01.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jun 2022 01:30:53 -0700 (PDT)
Message-ID: <f61cd23e-2e37-accb-6e6c-69fcab0cc3d7@linaro.org>
Date:   Mon, 27 Jun 2022 10:30:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/2] arm64: dts: qcom: adjust whitespace around '='
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220526204248.832139-1-krzysztof.kozlowski@linaro.org>
 <0a35d997-7e7e-8847-7c87-edd33719f7a3@linaro.org>
In-Reply-To: <0a35d997-7e7e-8847-7c87-edd33719f7a3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/06/2022 10:30, Krzysztof Kozlowski wrote:
> On 26/05/2022 22:42, Krzysztof Kozlowski wrote:
>> Fix whitespace coding style: use single space instead of tabs or
>> multiple spaces around '=' sign in property assignment.  No functional
>> changes (same DTB).
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>
>> ---
>>
>> Output compared with dtx_diff and fdtdump.
> 
> Any comments on these two patches? If there are no objections I'll take
> them with rest of cleanups.

I understand - no objections. :)

Best regards,
Krzysztof
