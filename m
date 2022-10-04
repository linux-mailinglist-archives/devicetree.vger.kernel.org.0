Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D48815F45E5
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 16:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229808AbiJDOuW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 10:50:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229712AbiJDOuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 10:50:21 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEEF95D0EC
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 07:50:18 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 10so21514711lfy.5
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 07:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=nzv+esMIRxKzhWnsz3O7++Kgraggff4G+6EJKg0J3e0=;
        b=WWPJDsyXzR4x2jXS6i5X6icrdc97I5zV/N42HEzrhgAp/FQcaxKZABHMRxsHt9oB9/
         z64QQvs/01CO7IZ93u1D4ZtzV+VZpnLT+KVCmxvYwx+SosKNQfqEEqLp7n0BWvTioCVX
         922KeXvvt15gTFt4yC4gz+4NwAJUIjjf0WJqZZZ9FEbmI+6H8FDiu7i1K3E4YR6PtexR
         UXP+wPqvmoC59TafyNNTuvRGqXmhIKH4E8o+BAbu95IVxXVLyIkww20+aIX+glMVKoLc
         tRhctj2mY6rsR3KQNg4nERd7rgbbPSygK4aWzcmj+oK0QeXhVnyw13aw7TWgcgWix6DE
         gOhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=nzv+esMIRxKzhWnsz3O7++Kgraggff4G+6EJKg0J3e0=;
        b=0t7tl5SkjTe1OJMnPNP3y+tb8Lf9w1L72HmGmGKtm8FPa2rfxcBszw2fHkl4k5P4X3
         QZQyyvrg4f98CtAfxFph1OBAviLg4IPSAADp5shArQXuSMeiiE1xwsmtTeogOwquIHIN
         Qv97kbwWXgPuHFP7+obRPaxInmpsmMHlx5RM0ICxHp2cSx59IzkpBrLDjrFtMEd56JrY
         aHEFc7RFT40Z1HHirZX3w1YZf7v0G4AgnCqgQBQAhRWauNrIPmOo42Y2YLfdivX051qV
         DGkRxmaa7D83Lkqb7IdHSGBJu/5ngQkJQoN0dDXBy6asnW69sw/KnQX4bukENh+EnEe1
         ZBHw==
X-Gm-Message-State: ACrzQf1vMXs0uKeO2fOs/T9mUElRmJY6X3RlnuE/zzNalzyZHUhc4CXy
        Yd5p7M6+VcP+hwDAZz7nilMkuA==
X-Google-Smtp-Source: AMsMyM7Q9FjfA4NmsV7arqxOzsqVQinIuRhWgwHu7ehLhXGok4UtaUaUjS3u5g8I64TaRRkM8y0RDA==
X-Received: by 2002:a05:6512:1102:b0:49f:cf25:df93 with SMTP id l2-20020a056512110200b0049fcf25df93mr9949544lfg.318.1664895017023;
        Tue, 04 Oct 2022 07:50:17 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id h13-20020a056512220d00b004979da67114sm1947557lfu.255.2022.10.04.07.50.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Oct 2022 07:50:16 -0700 (PDT)
Message-ID: <faa4e821-00e0-4ee0-0c62-b5eb6f75abf7@linaro.org>
Date:   Tue, 4 Oct 2022 16:50:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: Qualcomm DT bindings and DTS cleanups - tracking community wide
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Alex Elder <elder@linaro.org>,
        Nicolas Dechesne <nicolas.dechesne@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Vinod Koul <vinod.koul@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Caleb Connolly <kc@postmarketos.org>
References: <62e95ea6-6b72-a159-56ab-8bb11a5800c8@linaro.org>
In-Reply-To: <62e95ea6-6b72-a159-56ab-8bb11a5800c8@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 16:32, Krzysztof Kozlowski wrote:
> Hi everyone,
> 
> Quite a lot of people are working on Qualcomm DT bindings conversion
> (TXT->YAML) and fixups to Qualcomm DTS. We track a bit of this effort
> internally in Linaro, but that has many shortcomings and we would like
> to track it rather community-wide with the support and contributions
> from the community.
> 
> What to track:
> 1. Which bindings to convert to YAML,
> 2. Missing compatibles (either entirely or because of missing conversion),
> 3. `dt_binding_check` warnings (usually connected with 1-2),
> 4. `dtbs_check` warnings.
> 
> Rob's bot gives us daily output for 1-4, but how can we track current
> efforts to avoid duplication of work? Also it would allow people to find
> tasks for them to get contributions to Linux kernel :). Is anyone in
> community interested in tracking it together, in a public way?
> 
> If so, where?
> A. elinux.org (needs some formatting when pasting the output from tools)
> B. gitlab pages/wiki (maybe scripts could parse tools and create the page?)
> C. gitlab dedicated repo - some text file
> D. Linux kernel TODO file (might be difficult to keep updated)
> E. kernel.org wiki (requires LF accounts, AFAIK, a bit pain to edit; I
> have it for Exynos but I don't find it usable -
> https://exynos.wiki.kernel.org/todo_tasks)


Hi All,

Any thoughts on this? So far I did not receive any responses, so
probably this could mean that there is little interest in this?

Best regards,
Krzysztof

