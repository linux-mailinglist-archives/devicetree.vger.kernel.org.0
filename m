Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2B38E659EE1
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 00:53:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235788AbiL3Xx2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 18:53:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235762AbiL3XxW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 18:53:22 -0500
Received: from mail-io1-xd30.google.com (mail-io1-xd30.google.com [IPv6:2607:f8b0:4864:20::d30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 991A71E3C3
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 15:53:21 -0800 (PST)
Received: by mail-io1-xd30.google.com with SMTP id q190so11826133iod.10
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 15:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yaIIHCyPAmWR615tbC0Nk+wPaByZza1YhVt2KyUXJDk=;
        b=YepwaYPDqvh2fMTqnr2Ug0m3VXi1/1ssxkSfD98N+DDQrFRq9YzydqmOUIurdKLQq3
         ZtOpErHdR2+mslkHyoOXf8ejDrE6o2iAG4CP9kdq93AfiSjyHf/5zKwgC4Mh8WFIfStU
         /t/WVi3b5FgUENAOjWPChZyBWiJAZfB+E60SUZ3iTykoP/9obp+59nmjxx9AFepJnpY+
         o4j0RIc7cI8R2X+5oQqjopL6UYgAD9vdHJz1wyZpS7NGHjRHUcmM9mm7rBnfRBsP1jwR
         eWG8ueGQlzFXg2l5C73GmBupeLfCi9Pq+Mlpu9WFnBlA7Qzu2STHs+/A0qENX5Ta+mcW
         ZFqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yaIIHCyPAmWR615tbC0Nk+wPaByZza1YhVt2KyUXJDk=;
        b=ikKgH32kNETD7ARZlNvnH8nmFtmw2yo2+1xdMSnbGqiWhufRycpCnxDbYRTCAWUCwe
         QQDWgeAN0TXEo88VxWceFrLDWaHtGYwbJ+X61u2RbTUDhZ+vi2MX98y1Ne0y1/jNPdRp
         6nTJoUHzCYlTo/jr8N7xyfuYEa3Bytxux0Y0zpW9HJiUu7/B+9aNPY0QeVvEtsHABKxF
         5PgQ9C64fFOkY8fwk6DrnsMyXuFDPr0TtYJCJtL8xAXi1sKNZfao7GaabqwIpoaeShJf
         o19jZdBxeaAVYLQl6Hh3WU0EqHQZCeIY008ZjBNdCsWZ0bGLxPjJlJFxH7AGwvjqXEnZ
         8+8w==
X-Gm-Message-State: AFqh2kq6nxUtoHhjeEGECm0ghuM0BR/pVrLR+dJPrh0iwmfXnUPsRY7b
        NK0cFLMsWfC3IHkiTp1HFabTP2NWsdDTuP8Z
X-Google-Smtp-Source: AMrXdXtA1uM+5d0hzTdQjOg114pyKUxZstpIsPcMhUlPHPTLiQnXeX798H2SAyX9xamrH94Y/kHwAA==
X-Received: by 2002:a5e:c708:0:b0:6bc:d715:362d with SMTP id f8-20020a5ec708000000b006bcd715362dmr21400562iop.2.1672444400974;
        Fri, 30 Dec 2022 15:53:20 -0800 (PST)
Received: from [172.22.22.4] ([98.61.227.136])
        by smtp.googlemail.com with ESMTPSA id k5-20020a0566022a4500b006dffde23fa9sm8172082iov.24.2022.12.30.15.53.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 15:53:20 -0800 (PST)
Message-ID: <4bd03a34-7de9-2ae4-ff82-df2470b92ea5@linaro.org>
Date:   Fri, 30 Dec 2022 17:53:19 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH net-next 2/2] net: ipa: add IPA v4.7 support
Content-Language: en-US
From:   Alex Elder <elder@linaro.org>
To:     Konrad Dybcio <konrad.dybcio@linaro.org>, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com
Cc:     andersson@kernel.org, agross@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, elder@kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>
References: <20221208211529.757669-1-elder@linaro.org>
 <20221208211529.757669-3-elder@linaro.org>
 <47b2fb29-1c2e-db6e-b14f-6dfe90341825@linaro.org>
 <fa6d342e-0cfe-b870-b044-b0af476e3905@linaro.org>
 <48bef9dd-b71c-b6aa-e853-1cf821e88b50@linaro.org>
 <20b2f7c3-6481-eabf-7c46-f5f38d258c62@linaro.org>
In-Reply-To: <20b2f7c3-6481-eabf-7c46-f5f38d258c62@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/30/22 11:28 AM, Alex Elder wrote:
> 
> Anyway, for a given SoC, the whole IMEM region is used
> by different entities.  For SM7550, for example, it is

NOTE:  This is a typo.  I meant SM7250 above.

> divided into 6 parts of various sizes (100KB, 24KB, 32KB,
> 8KB, 8KB, and 4KB).  For IPA on this SoC, the offset is
> 0x146a9000, with size 0x2000.  Hence the range defined
> above.

Konrad pointed out the error, I just want to be sure
it's corrected so it's clear...

					-Alex
