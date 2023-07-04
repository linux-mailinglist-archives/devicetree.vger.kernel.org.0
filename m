Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BC26746B84
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 10:07:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230482AbjGDIHp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 04:07:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231624AbjGDIH1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 04:07:27 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7F53173E
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 01:07:15 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9926623e367so611159966b.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 01:07:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688458034; x=1691050034;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ckr6+/gekGirtr50OHDvvWLDUFdItGBZUEI8k9LrOlw=;
        b=UNiyzEjhJ69LSQbYfLtTq/zgmjbXfjdCu6wtuRmFMo7YCqIrk7zudyJiKR4rW6awIl
         dnJLi00KvdsXpgtREiyEZ0OMm7YfeWrhHt2tzGVoORIJwPag0JkN1Vyv9OFvwHu/evFy
         VrSa2Aryuus+aEtKqcICoA6GSIUy45ropXyB8N6dpD8/xQxyE5hSHMzJONNjTj3EBWCM
         5fZ4rG7hP4vlIs27OdVGvA+jvfi3qPMkdFN0qQmhCsT5sgmoIv/fPJXp0RQ6S3PP0vQu
         Z7AocFqwsIksd5j76OUGrZ5N+JEV+nSBIEBgHVD6uG8tuckPPXv/kU84GOrHpXeDiCbw
         Fc+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688458034; x=1691050034;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ckr6+/gekGirtr50OHDvvWLDUFdItGBZUEI8k9LrOlw=;
        b=htFOixJI3WeyJTUD94Hb7pGXcjcXMM3gbdvDweUL+nP7bZPpMObHHNldEa/U5b42zx
         kBjGEx9paN0tVquFHAHtQOLr08ottOC8pkDg562G9gbQAmnsgtGFS0uLz9gHYtM7NcvT
         W8RkkTZPqh+XNFk791E39HbNSd+YFo+EKEjf6CFUm+5cjIvBsE/xA1oZ0IfiWmqvd9g3
         q9WIbuqF5wSHijmIrtvHunWokMBRwEY+JGeQ6UN+8R7uRL2v0+u4b2CZZ+uath7KC3yo
         HLuL4CH4vZOTnnBBJZUqrfjo/72dOCmmVR6zY06vRXWegouKDwAAnraL3mgmC3DcEsHJ
         eZfw==
X-Gm-Message-State: ABy/qLZe/utnW2VINnv0j9eEwm+vKAWrCnGXBVCERKyPuerkV7VXygw9
        5CY8+hCe8r1XOGbMznlhO+pH6Q==
X-Google-Smtp-Source: APBJJlEABByJGfnIEipqN5UYmx124WgDwPOwjwjrXDp8XkPeDqGP+rQevwMp6ZwRWae2hIQqNmzgFg==
X-Received: by 2002:a17:906:4e52:b0:992:9a5e:3172 with SMTP id g18-20020a1709064e5200b009929a5e3172mr7727541ejw.59.1688458034232;
        Tue, 04 Jul 2023 01:07:14 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id z9-20020a17090655c900b00992d0de8762sm5975404ejp.216.2023.07.04.01.07.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jul 2023 01:07:13 -0700 (PDT)
Message-ID: <7299b735-d613-1306-796c-291f03f3b361@linaro.org>
Date:   Tue, 4 Jul 2023 10:07:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v12 01/10] cpufreq: blacklist MSM8998 in
 cpufreq-dt-platdev
Content-Language: en-US
To:     Viresh Kumar <viresh.kumar@linaro.org>,
        Rob Herring <robh@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Niklas Cassel <nks@flawful.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
        Jeffrey Hugo <quic_jhugo@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
References: <20230217-topic-cpr3h-v12-0-1a4d050e1e67@linaro.org>
 <20230217-topic-cpr3h-v12-1-1a4d050e1e67@linaro.org>
 <20230628155656.GA542106-robh@kernel.org>
 <20230703041701.ntv2f2h7z2welmvn@vireshk-i7>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230703041701.ntv2f2h7z2welmvn@vireshk-i7>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/07/2023 06:17, Viresh Kumar wrote:
> On 28-06-23, 09:56, Rob Herring wrote:
>> On Wed, Jun 28, 2023 at 04:00:40PM +0200, Konrad Dybcio wrote:
>>> From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
>>>
>>> Add the MSM8998 to the blacklist since the CPU scaling is handled
>>
>> s/blacklist/denylist/ or s/blacklist/blocklist/
> 
> They are already named allowlist and blocklist.

This was about commit msg and subject. They are not named like this.

Best regards,
Krzysztof

