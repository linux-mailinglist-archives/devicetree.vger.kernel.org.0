Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A17B775740B
	for <lists+devicetree@lfdr.de>; Tue, 18 Jul 2023 08:26:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230500AbjGRG0w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jul 2023 02:26:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229986AbjGRG0u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Jul 2023 02:26:50 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19415126
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 23:26:49 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9936b3d0286so751612366b.0
        for <devicetree@vger.kernel.org>; Mon, 17 Jul 2023 23:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689661607; x=1692253607;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=szAN6NYzvhN3ASqUWafz2JxFxR4dH9afImQ7y60YO2E=;
        b=E0JyVuFuCBb4peQQ0mT0mID1+ZZoCN1HJ8ibGl0OJDdzKRrLBdnZ6SDkFTFU+00ABU
         tM61HPH6r1LEakPG84iwVmxvUJL/jqBD20qtHsMyJAuIEANZNBKvE4jPUe9KiY96+1na
         J+QTDkhx9E5cb+5WZe5t0OYiolQKIW4HzUw8aVwA+fZmFImNus3bkKq9I6x9lCCCVZ/s
         7k+MEk9FE5OBw/sgtipzGpDhync959QOqxV+v3mlsGa4hruoqiQzeFmsM/FgSTUd0LIr
         IcDhNIbL1tGAXUVZVlTXzA5yVddUo+jCOnjuq8R7K79q/d+WTy2r3JfDXzNlhSpRmo3p
         UbjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689661607; x=1692253607;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=szAN6NYzvhN3ASqUWafz2JxFxR4dH9afImQ7y60YO2E=;
        b=d2DlUrtSo0p5yvuPZOU1ZtAyL7FpG4Ihlxw0SttG7rRzoX1awBYZ/319pKABrqegvG
         kd10HAucOtvj1Iwm0B8grt1Fh3h8mZf//WDB/w9FSy4pMoKeMBmjgqMu9zB6w1L1wwnl
         e807P5TrhtAY32W8VbH0ewqigsqAQefz1VAZcBhRZFpN1/uK7GedaJATTvCHOMNiB0Uw
         vwy/Jgx6/gMkjBCEazktNGTYqN7kcCTKEfMnX62ptTNgA0fDZ4CYAn1jY9FIAc1nuZ63
         L5+xMhaitgFCjQgDh8FyLStKTwGVpHqlZzM27UYilqL8Gr/rjdz+1pGqtq9bZnm1ivrp
         wR+Q==
X-Gm-Message-State: ABy/qLZADLbCCjpvCB3qBpapBj5hzV55LynVTcAru2x+FBwNVdlTnXX3
        G71/m5r6g0FaLSTmtoH4XJiwAA==
X-Google-Smtp-Source: APBJJlGgvuKsyZAcprltA4X0+Cto4HGQ00PxjW4f9QBYWcSXBe12JZDUy0xv9GffbNJiNd41CRPnpQ==
X-Received: by 2002:a17:906:20a:b0:98b:dc6c:b304 with SMTP id 10-20020a170906020a00b0098bdc6cb304mr13222395ejd.38.1689661607642;
        Mon, 17 Jul 2023 23:26:47 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id m11-20020a1709062b8b00b00991bba473e1sm599800ejg.3.2023.07.17.23.26.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Jul 2023 23:26:46 -0700 (PDT)
Message-ID: <4e2b6fae-7638-ae20-9de0-c14c16577726@linaro.org>
Date:   Tue, 18 Jul 2023 08:26:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v9 2/7] dt-bindings: soc: qcom: eud: Document
 vendor-specific 'secure mode' property
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-usb@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        quic_schowdhu@quicinc.com, gregkh@linuxfoundation.org,
        stephan@gerhold.net
References: <20230718061052.1332993-1-bhupesh.sharma@linaro.org>
 <20230718061052.1332993-3-bhupesh.sharma@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230718061052.1332993-3-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/07/2023 08:10, Bhupesh Sharma wrote:
> On some SoCs (like the SM6115 / SM4250 SoC), the enable bit inside
> 'tcsr_check_reg' needs to be set first to 'enable' EUD mode.
> 
> So introduce a vendor-specific dt-property 'qcom,secure-eud-reg'
> which specifies the base address of the TCSR reg space and the offset
> of the 'tcsr_check_reg'.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

