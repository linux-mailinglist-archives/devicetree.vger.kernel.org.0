Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B963B5748B8
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:24:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231297AbiGNJYr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:24:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237841AbiGNJXZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:23:25 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A75748CA0
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:22:14 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id u15so1426822lji.10
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=B/xjtzcXEiWFgZGhwmmBD0ibwE58wiTB3BScm/ZHlDY=;
        b=wH5xQk3N8+aE8PtQAiK4F3u/hi1aEADCbuFm3AIdMHc9I5FzMG6GFMJL0x8PuLaqy6
         vpjw71DkbHiT/lCNiGu9nJcEN/vrCI/XC7QoFy1V78bgBe6lWni1MVveJ+NrGs+tLi48
         PY3Zp6hs2aq362cf8aC6iGaFR01e0Gxa6t+6TSYmsw9Lb2qWMlKzPXwdCYibjjucww6M
         5V3HZmCoXFShQTOWSFOEBr34S/y4Ug438b3yc7uXg2N9McbMvUVyi7OAHrx2naqj/zkU
         bPwe8Z4RgXfK7d1eFWOukCw/sIIO2v0Tm6BmcPOkq775zgEBp2jDnwGp/ztZCxrwhSr2
         tySw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=B/xjtzcXEiWFgZGhwmmBD0ibwE58wiTB3BScm/ZHlDY=;
        b=d9oOzxEaiQveg+eoU/KMiUBlbtjf92sM31pcmc5spiNPq0+uFRDvhGzyxH531qUmw8
         vP9qi6zsEQEj4Gfhyyj8mLoW5u0qstX/SDHEQB9gifSZ6h1QeyZc5FbJ/XA2McQNDaQz
         dahhx0relT1P0rChjX/IlHoCkqdXyROPkzEvP5R1VcsIb6c2vglT45apmhqLKAzzXjCv
         ufm4+yoZ2q/zdK3FSllMyLg8h4J/x4kQzQUu9yRGG2TmeChvVlNEa7npshVSRdBqimw5
         qM730IvIgnpAlcZO0d2vTlzdLhZvR+MbjBd01Yb5RRT1Lk9dh/Az4MfnrqKVMxfIohZp
         2s1w==
X-Gm-Message-State: AJIora9IgsJZBg297T1boc+i0C6Opv/msPmRDISp2NFZ+U+KXSELmKCU
        Z5DJbC87/up4v7BqPGEKiuHmxQ==
X-Google-Smtp-Source: AGRyM1sq0bNAc4G3wPDov6sHmB5Rov97g+yn2qQ+x/4aiQ0MudZsoqgQMErkwNSVIg3IZPPgqKPMrw==
X-Received: by 2002:a2e:2284:0:b0:25d:490f:60d3 with SMTP id i126-20020a2e2284000000b0025d490f60d3mr4150278lji.486.1657790532975;
        Thu, 14 Jul 2022 02:22:12 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id b14-20020ac2410e000000b00482e7f07dfcsm251664lfi.309.2022.07.14.02.22.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:22:11 -0700 (PDT)
Message-ID: <9d9527ca-aa84-f1a3-3777-647e34b134eb@linaro.org>
Date:   Thu, 14 Jul 2022 11:22:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 17/30] dt-bindings: phy: qcom,qmp-ufs: add missing
 SM8150 power domain
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
 <20220707134725.3512-18-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-18-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
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

On 07/07/2022 15:47, Johan Hovold wrote:
> Add the missing optional power-domains property used by the SM8150 UFS
> QMP PHY to the binding.
> 
> Fixes: fe75b0c4a691 ("arm64: dts: qcom: sm8150: Add ufs power-domain entries")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
