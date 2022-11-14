Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FFE4627A37
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 11:14:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236376AbiKNKOA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 05:14:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235983AbiKNKN3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 05:13:29 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D895720193
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 02:12:47 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id h12so12477982ljg.9
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 02:12:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4c/niJOX8IUd4M0ekRTqmwsh6cuXXw3zXTygKOiuah4=;
        b=e3ujLpD7O5XpubM3lstfZxvbFNypOUnKEpNuxRc/4dyTqJhopg1GrK2hBFl/H7qUcP
         jmRqQ9yjvjL8spCOsoM5QJZblO3TrOK9Ah8n0zmDPlVMVtyi8pfxdBeaqxSl5JYPP0OX
         ER9KhxiPJUkKf5KuA3O8iqUDN+Y9t5SbzDBhhlMRwo7VqZTgs+G84+SnN1PWGcJJ9JPE
         bEh5m38/Hcz1ggSvqH/NdN27kFCwrhWGtw68YMHNAEvIDK+Q8e3P7RyTjpBen64VAlz2
         8O2fNpGq5xcII1oSTuxWesyJrWcgmF0/px72Poeg8Wm3Qd8R64pKRJ2mVLBYt/aBIlpv
         yUMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4c/niJOX8IUd4M0ekRTqmwsh6cuXXw3zXTygKOiuah4=;
        b=edqeQ4DXwFIO6VmPUdTe70ny7ZI2b6lNpiubc3/kCEeVeaMajQ80s0bcb9Nce7DT/f
         3zeHucNmbmgwAq2bobGp3uQf+RNHJ+HlPKGvd+X6ACUGLuy/aVTyVR4MG0vjaFONQnye
         Y0AyqFuPMJWjZ/Koyq1I3ti9xunw0l02+R2dS5pZI6rb7ZXRhe/kjgLq1UOe8TkpkaUg
         Gxx1Y2nmc+tdlq8guC/UgTFC14PcDqCfzJNT1J6TmYHFWlBLIhP9mrcxV/0QhX+OGOVg
         VzcPB6oQeFTd9OY0Xlt0g4Pzs5lFZGIFliyxg4KAGiVYUrJjb0xxKAw+FRyj4vB7b2QG
         0RsA==
X-Gm-Message-State: ANoB5pnHNKKGuvs552EcJ1LYFrpI9fA9NX0QQt0OuwsoAyKB1XumGTGR
        QYdNXxQgb9ua10R09nStC/GU8g==
X-Google-Smtp-Source: AA0mqf4c6ACcYbzgA+wVcCEsp99DWK5Yq6meWteH1j6NNm76o/+kbPww85OGzQOoB5FlABs08eCAJA==
X-Received: by 2002:a05:651c:1a13:b0:277:113d:1c38 with SMTP id by19-20020a05651c1a1300b00277113d1c38mr4349084ljb.238.1668420766280;
        Mon, 14 Nov 2022 02:12:46 -0800 (PST)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 11-20020ac24d4b000000b004a62ff61b3dsm1756231lfp.252.2022.11.14.02.12.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 02:12:45 -0800 (PST)
Message-ID: <3ec1141c-b4d2-2204-1798-f066a657ab53@linaro.org>
Date:   Mon, 14 Nov 2022 13:12:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 09/14] phy: qcom-qmp-combo: add clock registration helper
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221111092457.10546-1-johan+linaro@kernel.org>
 <20221111092457.10546-10-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221111092457.10546-10-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/11/2022 12:24, Johan Hovold wrote:
> In preparation for supporting devicetree bindings which do not use child
> nodes, add a clock registration helper to handle the registration of
> both the USB and DP clocks.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 22 +++++++++++++++++-----
>   1 file changed, 17 insertions(+), 5 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

