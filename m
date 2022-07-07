Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5F64D569A90
	for <lists+devicetree@lfdr.de>; Thu,  7 Jul 2022 08:35:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233819AbiGGGex (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jul 2022 02:34:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233320AbiGGGew (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jul 2022 02:34:52 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CB8D26560
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 23:34:51 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id j21so29525478lfe.1
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 23:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Ysc87HWO1xUWXFPdwqw2dVcHrfoCXIGok2opDqUtzfw=;
        b=OZML/7Kij+34LoFn4KZeoOsd6smLupYBJrkB9DKdoKig31Zyl+O07MqCh+uoV0CrKv
         aWjlfN3fZthwDAo/Pk4pjmgQA+7EZR8fK5A20lnPzP4YzxGwVcT8mDemtJaXyN9Z3tUs
         +oT2/IxmpHsYPdqQKqtQULYP9cueICA5nznTPKSij14LjAIFYY6uQ46MyR2sSULpUf0K
         r1Fq/ZWLzbMqCcG8esvWpKa9AnFyFm+1ieSYchBo/yI/athdMHAnI38Zpu8q6rLCyrFa
         7jcueUwDN+Atxv025fb4vllkbR0Rqh15Yp5wG79BOlhHNBJpAd/XotnfhF+D776RJvjF
         jHbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Ysc87HWO1xUWXFPdwqw2dVcHrfoCXIGok2opDqUtzfw=;
        b=VTCgsryA9aR/XUT9tjqeJRIYI4m5ZuvMRrcMSTqbHqpmxRTMZy7K8UIO076RTUl+1U
         59f0b5q2/LklmrOIFKvFlg5wvoMS/Q2syRsQMp3BntRyQ7dTVZU6ySsKnWLxDfQlAXtB
         EFP56cbylknIlsVUVJ5jAaLfDF9SQ4XQ/VA02lBqsK0TuRHvrSUIvKUs0EbfXXV8rjEE
         FaCvdqPOC5GN+ajw43Y9Q/tH5o+UzKsAor9tJDJd9dtPwBRu49+rves1jr8cCGBQeLlp
         ot/AHAKASLdgwd6lIkHYPkycwZkxUOK1jx405IAvNOzEr07j+JtMrvb0RxpcMfE2a03N
         16Jg==
X-Gm-Message-State: AJIora+IuOx+yI1qdN5cYLjew5lZwxDYSa/Cz81mYqzkrsxdBhCNB1YN
        K/Vaw8/eS6zD9bLQ8z4NelHaLQ==
X-Google-Smtp-Source: AGRyM1vNp38CehOe+BehnQZOQ5DRGhrTKJhX90Cyhwscys7T3R991jX0z8uhQGenGTnn7LvXI0Ay0Q==
X-Received: by 2002:a05:6512:2381:b0:482:ba6e:4a08 with SMTP id c1-20020a056512238100b00482ba6e4a08mr10574066lfv.666.1657175689961;
        Wed, 06 Jul 2022 23:34:49 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id k26-20020a05651c10ba00b0025a736f5a41sm6653583ljn.9.2022.07.06.23.34.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 23:34:49 -0700 (PDT)
Message-ID: <4e8a36de-a631-f6c9-44d7-7d873f775db2@linaro.org>
Date:   Thu, 7 Jul 2022 08:34:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2] dt-bindings: phy: samsung,ufs-phy: match clock items
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Alim Akhtar <alim.akhtar@samsung.com>, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <CGME20220707063058epcas2p19364a05a5b2fc8aad81fa390ac030f21@epcas2p1.samsung.com>
 <20220707062807.135960-1-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707062807.135960-1-chanho61.park@samsung.com>
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

On 07/07/2022 08:28, Chanho Park wrote:
> Below error is detected from dtbs_check. exynos7-ufs-phy is required
> symbol clocks otherwise only PLL ref clock is required.
> 
> clock-names: ['ref_clk'] is too short
> 
> Reported-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Suggested-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Suggested-by: Alim Akhtar <alim.akhtar@samsung.com>
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
