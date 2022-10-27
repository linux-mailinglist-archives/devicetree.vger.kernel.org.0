Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1398560F9F3
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 16:02:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235160AbiJ0OCG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 10:02:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234035AbiJ0OCF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 10:02:05 -0400
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39DDE1867A6
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 07:02:04 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id h188so1557023iof.1
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 07:02:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CSI134q3G18vUOM2R14o4I7JTrpKljdKg2N+dHw2UKg=;
        b=h/TyVcNyD90NOTJae72UiS5ijQQiCeQ62WFCUxoY/ro/nYIE/HxARb4Cusl7AZk+8r
         BUHhuOalv0zSaGXebJBCnr7LXp3iTruNKOFvhMQeTMpM51Sm3675hiVyW0X82RojRLYl
         jEhbg6gsAn1AsQrVwiWzgvpxyI0LTe9AHQKGGl4DsMBQfsgJzM91YrvMyPsOFBE2k1bm
         QLy5RdIkl2ZbPWieY6cj3gHzeBuvD1ManViJF6n56TMsFVxHPN+1yKa0C7hf8xgdgzvs
         V8TtQLA8WXvE7tAd+NV0pKIepzgpD+LTcTe1uKnt1sa2pom+6af3PQQpkNUd+gWSYevD
         Eyww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CSI134q3G18vUOM2R14o4I7JTrpKljdKg2N+dHw2UKg=;
        b=bOsJROWpuofDGoOpSSm7J9L+Rr0PshznCAalvtbY02oeKTL+4+0BdY3bIGa/99AtiN
         jx3syTyO1rtsXzyGF9H8Dkw8XqcK0EfodZij3mH84/hIWaOZgyMoLp+hlTCT3/mc8VcJ
         5p3WfN3SUO7l+1+vMwwJOdt7gVDudb1S+Fg4RYz32AnpAXAlKz3/VJrkho07Jinsg4Ew
         zPuWaMOlvLKNk4NILxwhJaU1JM/mCI7D6o7hajYAVZKo1BxEZZ56Au7o2p/pky5i8GGU
         tjgPcgkHaH/dPd4qSReLN0PPSAHn8PXuhp12yffT9gTvgYPUDUhfmnfWSYrEdPndz+hG
         ZD6w==
X-Gm-Message-State: ACrzQf1Ef4ECdn3hCVnvAuwOoCYM5EW4EoZxeslYPgs54pgkXGt7uUZn
        zys8XBz0tVT/1DT3ACcC1Pu6JqyNYZJplw==
X-Google-Smtp-Source: AMsMyM5k6qFVt09+gePFQzp2veaHXo7bZ48hnaS7zc2NraR/t00V3L5VKDp6l+eJyEA7D69n1XkizQ==
X-Received: by 2002:a05:622a:1312:b0:39c:fbd3:6dbf with SMTP id v18-20020a05622a131200b0039cfbd36dbfmr37799641qtk.335.1666879313363;
        Thu, 27 Oct 2022 07:01:53 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id c5-20020ac80545000000b0039a610a04b1sm913975qth.37.2022.10.27.07.01.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 07:01:52 -0700 (PDT)
Message-ID: <088bd8a1-fcc7-820a-a100-9d4c62837a17@linaro.org>
Date:   Thu, 27 Oct 2022 10:01:51 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH 07/11] arm64: dts: qcom: sc8280xp-x13s: Enable PMK8280
 RESIN input
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, johan+linaro@kernel.org,
        quic_jprakash@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221027063006.9056-1-manivannan.sadhasivam@linaro.org>
 <20221027063006.9056-8-manivannan.sadhasivam@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221027063006.9056-8-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/10/2022 02:30, Manivannan Sadhasivam wrote:
> Enable resetting the PMK8280 through RESIN block in SC8280XP X13s.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

