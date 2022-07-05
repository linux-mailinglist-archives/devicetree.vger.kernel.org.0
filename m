Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 960D3566A6A
	for <lists+devicetree@lfdr.de>; Tue,  5 Jul 2022 13:58:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231560AbiGEL6u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Jul 2022 07:58:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231637AbiGEL6s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Jul 2022 07:58:48 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7EEFC5F
        for <devicetree@vger.kernel.org>; Tue,  5 Jul 2022 04:58:42 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id q8so1759231ljj.10
        for <devicetree@vger.kernel.org>; Tue, 05 Jul 2022 04:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ixOkSjqSv3S8pEEk/BdvTn/xwH4HKgghg04zBNBUfaQ=;
        b=Agcpr1EXhYaU9R92S8KGVA8cRs2KrHKFnMXRYHk+knToAcoA2A4mMYJ390qpgFUAV4
         CO0NXqIagQweDr4Asvm1+RqV9Zm5t30eZMgkE8ZpfONnhIPnm2O1bKryuZmx9ynakqVn
         MF06UWnYMfO/wxqiMV6EAkaO/dZcJD2XMv3exnO9EbCO2mOY2zdb+D/PpnGLOl5SOGcw
         kiOqM65gTwaMfssI+T9JQlWJD3IOu/EIdk0dPNDxbqvcoQOVPwi1e1/jS/H3nJZZR7z3
         BKZmc9gEgQJdRlwy67OHnz9HCPcpklxHHOPCgu4d3zmVfahQXoeMZeGvw87ty6hk9HoJ
         f9IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ixOkSjqSv3S8pEEk/BdvTn/xwH4HKgghg04zBNBUfaQ=;
        b=0qK0W7cvCsB1FRPN8qejX8jtDUPr1gK6bx6BKL0jOjqnDmzQjpoKojHKjX7Mws86Dh
         qiPqxgdiYKK6kCq4XaACZjl3bcu7HT1KlCaoznaoRcwS3wP6akPtxWixZW7Lv5BFbBAh
         0I55HcNZlnWPf8BBlGqaSqPNTB57ZX56F8bwB/iUokWdy2+f6LuMzR69lFRPunf83JLp
         sRVFfJMZRcXmA/At2PkSe5wzcG1GeIS9VE9wrJ3Q9fRLwOJ5NeHwIh+N92EFDXl2ZusG
         8ExfwhXg/N0yxYC8ok5/NiFCTryFibGDjpqvWrqP/rOCOwD0cjs2Ym/U7ay8nGzkg54/
         Ud3g==
X-Gm-Message-State: AJIora+vtwcFkSVLHxjvjEH58Z7cKn6B1xO196oOxeNTZryqKobn6EnI
        P6/4pKTQh+desj9nOP+ZeG8e2w==
X-Google-Smtp-Source: AGRyM1vAgY1pWA4h6fcuceb241vDkPl5k2k0PA6Jo4yGx+M1WHPyyi1KSHv26sJNo5ThgUdQD1Si9g==
X-Received: by 2002:a2e:8941:0:b0:25d:3887:a4 with SMTP id b1-20020a2e8941000000b0025d388700a4mr1049380ljk.232.1657022321295;
        Tue, 05 Jul 2022 04:58:41 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x19-20020a056512079300b0047f785a3bd5sm5652654lfr.298.2022.07.05.04.58.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 04:58:40 -0700 (PDT)
Message-ID: <8cc0daa4-35c3-3225-3caf-6ed27f68f77b@linaro.org>
Date:   Tue, 5 Jul 2022 14:58:39 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 03/14] arm64: dts: qcom: ipq6018: drop USB PHY clock index
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220705114032.22787-1-johan+linaro@kernel.org>
 <20220705114032.22787-4-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220705114032.22787-4-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 05/07/2022 14:40, Johan Hovold wrote:
> The QMP USB PHY provides a single clock so drop the redundant clock
> index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>   arch/arm64/boot/dts/qcom/ipq6018.dtsi | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
-- 
With best wishes
Dmitry
