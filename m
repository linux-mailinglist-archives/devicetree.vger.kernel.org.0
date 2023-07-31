Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2799C768C75
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 08:59:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229674AbjGaG7f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 02:59:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229716AbjGaG7e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 02:59:34 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E849186
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 23:59:32 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-991da766865so660412966b.0
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 23:59:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690786771; x=1691391571;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=95UPGE9s4lGcn1m9mjZQP/9IMo1iaMRV3v2x/eKMCm0=;
        b=S2DTF3WajDco4jlhfxoG1zKc0wi4JRdR9Mjlisgrr70+j5JDCI3YbNR67Uess6VTMa
         c60zySMySuNlk9NPk5/bCvUuGuLr5xCPyi93t4dqbTgioLaRhnnJnnkJIjnAdVXntAwz
         VRwuHDZrQbV+Mt+MlGwHG3WZB9s7lC9h6cx0KRaslVIS3wJ81xzt8ei+Ztw2hlsUybvU
         amK8snXY8+R/d0eIMnhdGDZ4/j1+1kz1m21qjP0m0EEk+9JroLYHmhy38PiUqLLaevg0
         7U592qWCt4QvXJehc2TYm3PSksHrURIS0Z+iC1Lu3hl30aTvzRUplkVu9xsFWep3KUxd
         gELQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690786771; x=1691391571;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=95UPGE9s4lGcn1m9mjZQP/9IMo1iaMRV3v2x/eKMCm0=;
        b=dBa8qPzjfXKZmlEtAPSY9mo4vYahlpc5kzny8aR7KbXuxDGNPadUPdTpq8rQSirmjb
         PHqr5Wx2OgZ/TW/tGqzzpUOFdtGCpocjaiWrvQWStCmGgj2oZ0wzL4GQlVb3t39ulkJo
         xlCc08rOCSG/S4MhexMOCS3EALVNwGDQjCXY2fWbAfkug4SVZJ5SHyjyD4ELHbI6exxU
         z5ycFoHe8eRPISkSH4gWwq/JQcM7U9TIk48qiJoUa3lerPndrUIj7+AgCtesIQMSwEfk
         ZkgkGGhklQzduJjhvTViY3RSMt0y9HMHIT1qOnF4ZCEVzcdX6T2uVuIGyL9raVfUpIyV
         izkA==
X-Gm-Message-State: ABy/qLaHIsykwE9OxO2UpE19m6nxABaKze4V1yxqTZFYVaRaCobyfVxb
        IvxiRJZ5fK5LrE6kITBea2nCyw==
X-Google-Smtp-Source: APBJJlHQjdOa/kB+fbb7kccnJsoNFHON4fhqOZdEex2DgS8JcAMrH7Zw9Aa4TUDhkkmYUL4lI17wEQ==
X-Received: by 2002:a17:906:3147:b0:992:345e:8319 with SMTP id e7-20020a170906314700b00992345e8319mr6024256eje.58.1690786770852;
        Sun, 30 Jul 2023 23:59:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id f5-20020a1709064dc500b0098f33157e7dsm5722990ejw.82.2023.07.30.23.59.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jul 2023 23:59:30 -0700 (PDT)
Message-ID: <558f7d2e-2b89-aed9-6735-b519bbb8b0ea@linaro.org>
Date:   Mon, 31 Jul 2023 08:59:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3 4/8] arm64: dts: qcom: Add base SM4450 QRD DTS
Content-Language: en-US
To:     Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
        kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230731061325.26431-1-quic_tengfan@quicinc.com>
 <20230731061325.26431-5-quic_tengfan@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230731061325.26431-5-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 08:13, Tengfei Fan wrote:
> Add DTS for Qualcomm QRD platform which uses SM4450 SoC.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile       |  1 +
>  arch/arm64/boot/dts/qcom/sm4450-qrd.dts | 18 ++++++++++++++++++
>  2 files changed, 19 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

