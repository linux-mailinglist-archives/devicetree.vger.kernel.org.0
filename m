Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 94ED66945FC
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 13:37:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229969AbjBMMh0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 07:37:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbjBMMh0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 07:37:26 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AAF41ADDF
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 04:36:55 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id s11so4933432edd.10
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 04:36:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=svG3qOblCEczVA7iX7XiFSJ5qWi1zMeK7HLoSLmNMAU=;
        b=Ks6OVlBQnr7WR171CYw9PDJGkbJJgUPsNjb9snDU6sQ6i74WR8mrMp8cQgSOJ5MC4j
         kvj9LLKxD6Gsf7LaVUzD+CdVx+BztBb27BAxX51EuLOxUtVsbu5e3ttVG9sUaJnYaIV/
         ZPIB6mSTzrzh3NWKrnVYt9/CnjTLdI22Fr73ARuhgWWZjFW4xvVDBt+aR5ThpQUXZeYF
         tOiZC6f/gAa6AlyqnVo0Va1b1NtSdewcgCxtE+Bav9+HYLaeq7CnQnFIY0Z9xxSqZwth
         VGmjO8bnYXCFNL1hZCwLwi0R5MefEqdi1cfgVPBVkFTtBM5b8iDFN5nGUroDJKYV8CCu
         9ZRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=svG3qOblCEczVA7iX7XiFSJ5qWi1zMeK7HLoSLmNMAU=;
        b=PLEoIc3BhAaa3bHTQcZB73VpFMomovm9GMbla0F7bEkWDyXWO3PsDjbWU+vbZlEayt
         sj0ZMUOob+S9Rn0FDcPZo/ZyLDJf0ykYKCX5CGU2oOsPPUbL8K5rJbowYrHzOQt1xJkc
         QeO0IUfypVAHrBp/xf2JmSojpVxaeGsbbM6+siaZU5AfoBiD4JUPxaCIPPl3EObLU/gO
         8glP3uWpKSS5Nb5QFkTdUhm+Y8iiuBqGpXYY2LMm7lB1gGEn4df8cytj313Xf64cYgJI
         kS5YhLeoVicoJPwhuI3XU6nnTvYaHBiEEB8nghq7qn6R4ksOUWWilYj1ZPt5W+qwbiX0
         J4gw==
X-Gm-Message-State: AO0yUKUUVHKqzL1F45JaPPZvp5sJXmgJxPMOkGumbU/WMjXwCqUdT/0c
        g/vtxB0B8V1PRpNlXWOL7u7sVw==
X-Google-Smtp-Source: AK7set9FGCYPUGQaqEZnTk+e5QfFkg1/C32FR37rlhcdz7VgbgQSRbTe1TG3UatRAK67pPU8Ms7loQ==
X-Received: by 2002:a50:ce44:0:b0:4aa:cb67:2a63 with SMTP id k4-20020a50ce44000000b004aacb672a63mr23611026edj.16.1676291814126;
        Mon, 13 Feb 2023 04:36:54 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a66-20020a509ec8000000b004acb832856dsm3605692edf.64.2023.02.13.04.36.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 04:36:53 -0800 (PST)
Message-ID: <e176acf2-6ef0-c1d4-ac91-92b2e4d8702e@linaro.org>
Date:   Mon, 13 Feb 2023 14:36:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 9/9] arm64: dts: qcom: sm6115: Use the correct DSI
 compatible
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     marijn.suijten@somainline.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230213121012.1768296-1-konrad.dybcio@linaro.org>
 <20230213121012.1768296-10-konrad.dybcio@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230213121012.1768296-10-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 14:10, Konrad Dybcio wrote:
> Use the non-deprecated, SoC-specific DSI compatible.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm6115.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

