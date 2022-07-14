Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBC9857486B
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:17:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238109AbiGNJR1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:17:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238112AbiGNJRF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:17:05 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5CFF48C93
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:15:17 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id bf9so1738276lfb.13
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=TRFeXXTXwzOUXF1n3l5jU1GT6K4HDgLulMkCIGzGeHI=;
        b=fZsx0Aa7TgK5AluPUxwrimZsRFlg/bN/JQ3buBRmMKH7eXQ/rZgxoNJwhpcGRuT91j
         l8e8bFAkRyQe+ArrN+4WfbKUSbS8LooXkofNij6ydXL+2rMfkGtQI+xGb8WVDJYCJC4K
         YlzZxl/TytxnzYuA24vcut2uPFIb3Nr575WHIFYfMYJE204kkwMPY/b4fueAEQkLTaYk
         QaP3yQQqoRa74sszy7p5riXuwRTfe13MFlml/uEayAJH0aGFhdiODCvG2tkzCer7R28e
         0bvYEcbNex+mCmogMtlLzVZx9QrSkzNQQClf8Tn0Jaai+Ajg+WWNRXMe1lfiP9ey71pq
         Jq1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=TRFeXXTXwzOUXF1n3l5jU1GT6K4HDgLulMkCIGzGeHI=;
        b=mEJWR/SngFKfVkxqCbPrTJejOcqWJ4mGlPQYl+xWaFjCO7lXRqJ8f5lniMWYmg1Ncq
         LrIEz6F+9dTImBlL2wZVmTxlkXYdO18U1bCTma/bS3AxttJyDoPuchqkqoGBm0ddjDsB
         k9x3fzfhHM2bsT8HgqiM273D/hifhnJ0whTruCGeOjW8N01+HtPLrMGMpeJJUYuRLuO8
         YpotVNh+XnBe+dSaxNzsgUoLCIFU/HB8T5k4+Kwx6K1axihAmoE79QhusKCkz4J9UUxm
         fiWG1+qW0lr9kgoOs49ct3sIn7f24dtHgxiC430lKeadY2+oInOBwiakmgJezBr1u5Ya
         fqAw==
X-Gm-Message-State: AJIora8gL56xwtVoZLniKuRYE8WWybar9ty04MRtvtXf+53+cIDKG5oU
        zHfAs7ppxvrOJJ1yEBmH6G74Nw==
X-Google-Smtp-Source: AGRyM1sC2lRYbWIiCDX906wuVnasYpRy8GgAZP4DK6DJ+DK3ztwsNKcilXJ/9nV2DA3dsX1mNCXfdA==
X-Received: by 2002:a19:6d09:0:b0:481:3c54:ad52 with SMTP id i9-20020a196d09000000b004813c54ad52mr4886048lfc.393.1657790106277;
        Thu, 14 Jul 2022 02:15:06 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id s5-20020a056512214500b0047255d2111csm252203lfr.75.2022.07.14.02.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:15:05 -0700 (PDT)
Message-ID: <f9bddc6f-faec-01a2-55b7-eab2740120f8@linaro.org>
Date:   Thu, 14 Jul 2022 11:15:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 12/30] dt-bindings: phy: add QMP PCIe PHY schema
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-13-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-13-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2022 15:47, Johan Hovold wrote:
> The QMP PHY DT schema is getting unwieldy. Break out the PCIe PHY
> binding in a separate file.
> 
> Add an example node based on a cleaned up version of sm8250.dtsi.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
