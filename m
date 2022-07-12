Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBE54571E92
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 17:12:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233452AbiGLPM6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 11:12:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233952AbiGLPMb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 11:12:31 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E56DC1FE4
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 08:05:42 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id q7so10197516lji.12
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 08:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=N95UeN2GEUoq/Y9MZnralNNF96wmUdf5PfFX4kSTL0Y=;
        b=n07ma88Ez+/f2BhSUkw0P0jQFXye2PKrmW17Nqm/1jOPuvJWVZQh478f+yWd+DMO+P
         IGEisyduu+SwOEbyhPlTVUdtNuyQFI8cn+ZfE92XXl3R269ZJ8pjf1uZsPqIRYIHh6oK
         2Ec6K9gADqWCoqnMzZG4tMxcJddPD1figJjC6FLNwJdaMTpZC2E4JzX4rCNdUYxMyvHa
         t1FY02WTUXXWws0Z1RBcgBq5tNpeY+5b8QZ4DNRPYqLeB4MsbreplX0yRn4ps92rvLvd
         /9LU1cNlgvhIPRRLMK9PZHGwpkJ8/e4/IEI6A49tyE9zltvfFngqUkz+n+sUcm2B9cC6
         Hhrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=N95UeN2GEUoq/Y9MZnralNNF96wmUdf5PfFX4kSTL0Y=;
        b=4iH7mPEqBA7SXg7yx9yJyKlRace0mUHG2jo+NcucFMUmmZ5q7DnBJcP36icvMBtfQ1
         x+cl7iovkZv1CBTnflCDKmWjZ7lKj8FlKeDD67C/NfokcMLxgvm7QzkXlihvOG3U8OBO
         B6wCK7mPShor/jIPTv5CXVQmkYgUmZzY4P1ux+rso+S3A2QNrn9zbAqouGmGEAlAwJOl
         6cUst3pPUKfQIgswSsl3F+V2UCvm8dwBnIb7JvYeBx5G96fQ+1j46HbR/J8rdzfsSyMQ
         XvayH5GJM4DAl/RzC9Zetf24Y1Os8ZOdifgZ+KR0891tTPYJwk20tosnFV6zCbSYAAna
         kT+w==
X-Gm-Message-State: AJIora8BhkZW7I/uovtJbHsk+/q1oOGMP56OAqrJOuG5CnhwwLEx6MKA
        yMU85YwZj1Jj7lJWXVKrwhJvFg==
X-Google-Smtp-Source: AGRyM1sBWDmHbBkd9dAeP+xC8COTAEUF3I38MJWleTJir5VKZ2V4ivGoLVPmWVu6FOs5PSxB0VKuHA==
X-Received: by 2002:a2e:2a41:0:b0:25d:832d:2af9 with SMTP id q62-20020a2e2a41000000b0025d832d2af9mr543465ljq.429.1657638340964;
        Tue, 12 Jul 2022 08:05:40 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id f21-20020a2eb5b5000000b0025d4b0707c5sm2495651ljn.125.2022.07.12.08.05.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 08:05:40 -0700 (PDT)
Message-ID: <ed28a4f5-a6f4-1f87-007a-ef7fe6c1670a@linaro.org>
Date:   Tue, 12 Jul 2022 17:05:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: Add support for Xiaomi Mi Mix2s
Content-Language: en-US
To:     Molly Sophia <mollysophia379@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20220712145139.9473-1-mollysophia379@gmail.com>
 <20220712145139.9473-2-mollysophia379@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220712145139.9473-2-mollysophia379@gmail.com>
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

On 12/07/2022 16:51, Molly Sophia wrote:
> Add support for Xiaomi Mi Mix2s (polaris) handsets.
> 
> Currently working features:
> - UFS
> - Touchscreen
> - USB 2
> - Bluetooth
> - Wi-Fi
> - GPU
> - Venus
> - Display (need jdi-fhd-nt35596s panel driver, which I have sent a
>   patch but it haven't been into upstream yet)

I have no clue what changed here and to what I should look.

Best regards,
Krzysztof
