Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF0B6781800
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 09:12:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344188AbjHSHMG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Aug 2023 03:12:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344521AbjHSHLd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Aug 2023 03:11:33 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1338C4218
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 00:11:31 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-5298e43bb67so2155045a12.1
        for <devicetree@vger.kernel.org>; Sat, 19 Aug 2023 00:11:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692429089; x=1693033889;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L279B4ZpoigR6vHbrScae5IfezCXD2o2gXc9I6TXPuk=;
        b=N3drhHWFU6Vq+CKRLcgT/87SrOFaM8PrFb/Kfyz6B/W59AVcQe/DMmy5HsQRfMTiMh
         haWxFzMiAv66fhDKZL1+VURclCDrofaUMRs012XglMSD92oRDe8g1oDUnwluBaMqmCCy
         tWZR2VGzNEqom0k/MEBwcUqCK1fJan7QSW6Sh8bG2OQHFyNXR6iHuLlCKTAWD0fjgLKl
         9E7hwUCQDVWHzwbSrKzGCk4gzowqmIypwmyuvVhi9UpKtessM8Rsic4NpfXfqrb8nAT9
         gqYMBDKsETYxIyaCesccq9nvfSMB9ZSd3yYiQbFyKJnjZaZX4KG9Alu9/1/Q0kV9r8xu
         7B6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692429089; x=1693033889;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L279B4ZpoigR6vHbrScae5IfezCXD2o2gXc9I6TXPuk=;
        b=I53D+S2pXMXLiO1VzgBuJ+ce1BOLAigFSuiyJPFURJNFaTe6yaMXkednOhqSzNoySW
         hNjWb9CIVi7EB7hYfPJrAL610eeDNdKApFJlS29OYvXEB5B+ijLAwsUr073L4zVIRSu8
         fSvG75TUjbHgisy3V0BkcdwUg+H1BnvHK1J0donK/PVnmqf+BNatv9WOGETGJAKOu/b3
         4hG6nqY+xdrMXaQZDxBHgQNMCtQirVwROoehmMRIs6MnkDFMITnwU/facUuSe7yT19M+
         GL0yq2FoF7ZFf9Qhcd7fG4do/qURsKknzCyHhlve9EDZjyeeja7lBEB8RSJ0zKQ4m0CP
         CClw==
X-Gm-Message-State: AOJu0YxY/nlNW4mtv73v+Y6py5R/zrYH31zq4EC2WPDyFRjlrWQYA/vC
        TIsKQlWnDDo3n1JbdFVz7bUqCw==
X-Google-Smtp-Source: AGHT+IGqOS5AH3MWBcYtFWY/J77pXTNwjuPPZpEImn1yI/aUFNbalu8BEnsJclgaLdEDyTc1Rc8Exg==
X-Received: by 2002:a05:6402:268e:b0:522:b723:11bd with SMTP id w14-20020a056402268e00b00522b72311bdmr1475371edd.4.1692429089703;
        Sat, 19 Aug 2023 00:11:29 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id j21-20020aa7ca55000000b0052596c88941sm2051723edt.39.2023.08.19.00.11.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 19 Aug 2023 00:11:29 -0700 (PDT)
Message-ID: <714d87ec-e662-4da6-5efa-6d9cc2d6e845@linaro.org>
Date:   Sat, 19 Aug 2023 09:11:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 3/8] usb: dwc3: exynos: Add support for Exynos850 variant
Content-Language: en-US
To:     Sam Protsenko <semen.protsenko@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thinh Nguyen <Thinh.Nguyen@synopsys.com>
Cc:     JaeHun Jung <jh0801.jung@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Heiko Stuebner <heiko@sntech.de>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
References: <20230819031731.22618-1-semen.protsenko@linaro.org>
 <20230819031731.22618-4-semen.protsenko@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230819031731.22618-4-semen.protsenko@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/08/2023 05:17, Sam Protsenko wrote:
> Add Exynos850 compatible string and associated driver data. Only two
> clocks are needed for this SoC:
>   - bus_early: bus clock needed for registers access
>   - ref: USB 2.0 DRD reference clock (50 MHz)
> 
> Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  drivers/usb/dwc3/dwc3-exynos.c | 9 +++++++++
>  1 file changed, 9 insertions(+)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

