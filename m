Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AA33797576
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:51:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232761AbjIGPrU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:47:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42290 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233197AbjIGPl6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:41:58 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DA1530D0
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:38:04 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9a5dff9d2d9so133919166b.3
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694101032; x=1694705832; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y7Y6zFmhlb8oBiHulr6SNzDGIOTaQJEEOwxmUItsSBI=;
        b=X5O1sAdFcpzEB23XEX0nyFKg+6rVkYQxzDuYzWOulJ4Rox/U3D6+KoxkZlM8DqHqAI
         Ng7vbH2oZP/PjRGFANK7RTXQyzSWG4Jf2S6g2ge/jbiQnzCOwMb6xcopDnDWgcNipOHa
         IkOoGd31CklWNYc9I9FB3r+MGcKLc8ySZcs6zHxnzXGPmlPvSh21qqu+PFcxz9XGrWHd
         lHHQzYoQ5TOWuftUCNmDssfqbZWdyqQNaet18Tq6nCtZIzNVVosD9Ijax9cCYSgcfLH2
         EE0V1ycH+NOIHHkM9/MnwbHfDg2/ulUOk7xeIHK/cYeA4A6Oig/3nPMCNcF5w5ySKOd5
         qxxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694101032; x=1694705832;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y7Y6zFmhlb8oBiHulr6SNzDGIOTaQJEEOwxmUItsSBI=;
        b=YibrTfDYBKRcut9wsq3wBwkx+aP+kk2fEcHXPmhjofbNp7EHkJlAardj4cFFiPhzED
         wApWyWktUi+r0m2bDOWpf8GfhasZk08ZyL7mERQl1bD8D2rumRy0BS2DQxDBfpfjwgfs
         ugAbVIDzKFDbqqQhxag2fdtgrdRdY5ATeXQDcl3deyUitKDvHXRNZW1qvYB6fzSPagyt
         PPac63Bf82A7HTFNver40/RPCnE1oS2tF2+dO+BBuakBkErZhrf9Mqjc8ufmLREkkRLM
         gx+f2pvUeQvpXvhiSYJdq6QxTDxI4seeHFLKHP7tJ+ZLarmPNqyf/2i0diTI3p2TSb0l
         ugjA==
X-Gm-Message-State: AOJu0YxYxQCSfq6Giv8zI7q08iTstFfp1ZKWtf6nPabL3ab8SXLbK0wp
        Yd9yPlWIBz0rRi2v/AqpWi8keQEBt+575RkrAXY=
X-Google-Smtp-Source: AGHT+IEKmnSNSlUtiCWpMx5epfLO+Rm4w2bJrzAa6Be3omHD0KXp967h3WlCKIuq9OnSAsdvXE+3AA==
X-Received: by 2002:a05:6402:3c2:b0:522:2dcc:afb6 with SMTP id t2-20020a05640203c200b005222dccafb6mr3798766edw.7.1694066597001;
        Wed, 06 Sep 2023 23:03:17 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id t3-20020aa7d4c3000000b0051bed21a635sm9237337edr.74.2023.09.06.23.03.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 23:03:16 -0700 (PDT)
Message-ID: <3f68d3bf-3273-2339-ea41-3362ced3c91b@linaro.org>
Date:   Thu, 7 Sep 2023 08:03:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v1 05/10] dt-bindings: cpufreq: qcom-cpufreq-nvmem:
 document IPQ5332
Content-Language: en-US
To:     Varadarajan Narayanan <quic_varada@quicinc.com>,
        ilia.lin@kernel.org, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        quic_kathirav@quicinc.com, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <cover.1693996662.git.quic_varada@quicinc.com>
 <8fe23b5401362e214078648926a00f7ceefaa542.1693996662.git.quic_varada@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8fe23b5401362e214078648926a00f7ceefaa542.1693996662.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2023 07:21, Varadarajan Narayanan wrote:
> Document IPQ5332 compatible for Qcom NVMEM CPUFreq driver.
> 
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

