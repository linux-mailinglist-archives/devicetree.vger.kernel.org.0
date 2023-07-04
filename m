Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0065746B77
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 10:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231558AbjGDIGz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 04:06:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231640AbjGDIGt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 04:06:49 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C479F10C6
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 01:06:34 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so9377861a12.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 01:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688457993; x=1691049993;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pjbqSxKHCJgXg3U2nlCeT+KCbY995FI3c2bsWZQkAcM=;
        b=Jb5ruiqCjNOBocFFKc4AyscNKSiqzI+gVjdfXEWjvAmGPxmmGXg6jRWhHJWbtR6RnA
         VoPohLPkitsogM4xLGX7XJdpgwIw6AYWdp40byZlfPkB9Cx4s/+zndmk5nEJUfGXqIdS
         enD+db+L3zcfJb/O0Jt94v+ndFDRCWU81792irK0hO7VmceZjK8Elg9kme0/IL7S54FH
         vhp0NRvCvuvfriHWvFNATp2UUVNpqNjpN6JXF3+AuhCV3U5VNiNZ94s9CuTtY2C3PiT8
         03/hDv52iJnEtjwegE2+sgZTjNmovsxW//H4HOH9JpNTfvOEcMgpDuHYW/VREoAJF2A2
         i7/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688457993; x=1691049993;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pjbqSxKHCJgXg3U2nlCeT+KCbY995FI3c2bsWZQkAcM=;
        b=MHo1cyVFYsCNFnSnfNLAV21VVCXiggoSVM8h5FPyOFdfEJUZoL+ktyUq9Zx02m8F4i
         BmzALw7crN1zQzJTCRjF4Y6oHUJbVW5Y6dZsKwJyTgBKxHreI2rqTnXVlJayo43gnSrM
         XLZc7zfzwsyR/S1VCMR+hY4kVPdLiOKI70TlyfuxWEdpBEiy/D4Hazz6LokuSNn9NXMp
         OqXBfFvY0w2pUebuwBZNwfp25GdkgrIMl5wWq7RqhAsKrHO9WXGht2I08NjIPz5dlQZx
         g+ldu7O+9h5pRtldF0F3tN4eMQ49ue+RUjHQl32SvR8Ch6FPvmfMjuKbykr8dhNN6So9
         akDQ==
X-Gm-Message-State: AC+VfDw4O7uLECymLX7ggOQv/JvTyGbg+vZCuJ9AWguXQsTdqW8yFTGc
        ULP1lNJ5ihncqWlo+Eqz2sc1XQ==
X-Google-Smtp-Source: ACHHUZ77nYO3/EIdisXr06nHjl1fn/QdhhvBuc0MzLLacMsqfak2G6UTzVEkdaDz2J20cWtzRHGlBw==
X-Received: by 2002:aa7:d51a:0:b0:51a:4451:564d with SMTP id y26-20020aa7d51a000000b0051a4451564dmr17195416edq.18.1688457993298;
        Tue, 04 Jul 2023 01:06:33 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id f6-20020aa7d846000000b0051df5eefa20sm5053254eds.76.2023.07.04.01.06.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jul 2023 01:06:32 -0700 (PDT)
Message-ID: <efba4d51-c98a-b646-d643-0a5b6875f9a9@linaro.org>
Date:   Tue, 4 Jul 2023 10:06:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v12 01/10] cpufreq: blacklist MSM8998 in
 cpufreq-dt-platdev
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Niklas Cassel <nks@flawful.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Robert Marko <robimarko@gmail.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
References: <20230217-topic-cpr3h-v12-0-1a4d050e1e67@linaro.org>
 <20230217-topic-cpr3h-v12-1-1a4d050e1e67@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230217-topic-cpr3h-v12-1-1a4d050e1e67@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/06/2023 16:00, Konrad Dybcio wrote:
> From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> 
> Add the MSM8998 to the blacklist since the CPU scaling is handled

It is "blocklist", not "blacklist" (both in commit msg and subject).



Best regards,
Krzysztof

