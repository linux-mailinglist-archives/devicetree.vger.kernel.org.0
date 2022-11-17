Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DEE2B62D5F7
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 10:09:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239627AbiKQJJk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 04:09:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239515AbiKQJJj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 04:09:39 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE3D41EED7
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 01:09:34 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id a29so1761519lfj.9
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 01:09:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gnoCx3Qk52LXU2uGKSR88WRS2OS29nXSAokefTOA0+o=;
        b=rrhkft9l0QfRs+A08xV/mWc3xIOURd1iiDjCw1+jxB+FEPiFBhsHUxO1cs98f6KP0z
         Q1l3AUZp0eWxRQ9C6nuqqY6DfTrIzv67K8NeEWEPPeZRaIZOR0a2HLMsM0008uf7knJs
         rr2bpy1bQvAtZma7tpY2+5iQSOsA3l4+5HPoxRj5zx1SiW/BarjSGJDcum/07jyIkQyo
         xUU0HKdnhiZyigFkydOTVEPlPAASEM2ZaOEjEMT1VhyDEDhxCsMoVvDoFh+zmeaZVLnv
         hGvLuXWb6jQ1mdNlOnw2rub6tJyMoTZsBec/AG05P/eQ7wJ6SLrebj1+/46DHVpW6Qr6
         MtgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gnoCx3Qk52LXU2uGKSR88WRS2OS29nXSAokefTOA0+o=;
        b=43rFkDkVEHbGeTx0IXFp2mmPi34rqbksJD1t72B8Qc5a5s5PlqzoHhcgs0WcpYyGg6
         4SP5NzxjoC6aZYRAfOnxZIfMh7qi6bSPV7VAs8qL1yiji0qdiXY+/TMwpyxTgSXbq/ZJ
         Ak7zu8bc/9MXX9XlPe7SBtTmUveqs/2VAp2Tqezy5MamXWnLCm8B5xbAIqQchMEs5saP
         dDns8Hmw2cpZXJkMTsMku9X9lx8qrTRizmzEjm5UhFkiNYGV0MvW69RS2OVBGFQN8vWH
         Dn4k72jY0UXZrsJI/j3v4+glpA2KUs9txZMuLaPo3bBTfdmQKaMyvOLnDDU8GNdv8MNI
         yJog==
X-Gm-Message-State: ANoB5pm1cmqOUQDzON+fjnwCOkl4giol/ZwODlME12RrS1h3p36Khz14
        bEukMOMEsMyQQvQpswrPgbBDpg==
X-Google-Smtp-Source: AA0mqf4nUhvYgqzSgvdO8wcVo5x8pSESMmMj37WUL35JSd9AEKoeMCQQaTebiJZGK1UF/1wy6j3usg==
X-Received: by 2002:ac2:4f13:0:b0:4a2:5c46:4b4d with SMTP id k19-20020ac24f13000000b004a25c464b4dmr632558lfr.433.1668676173218;
        Thu, 17 Nov 2022 01:09:33 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id b17-20020a196451000000b00498f23c249dsm55894lfj.74.2022.11.17.01.09.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Nov 2022 01:09:32 -0800 (PST)
Message-ID: <5897972f-9851-8ac5-6856-464f00e845ff@linaro.org>
Date:   Thu, 17 Nov 2022 10:09:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 5/9] dt-bindings: clock: Add RPMHCC bindings for SM8550
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mike Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20221116104716.2583320-1-abel.vesa@linaro.org>
 <20221116104716.2583320-6-abel.vesa@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221116104716.2583320-6-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8
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

On 16/11/2022 11:47, Abel Vesa wrote:
> Add bindings and update documentation for clock rpmh driver on SM8550.

Subject: drop second, redundant "bindings".

> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>


With above:
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

