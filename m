Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3421164C9B4
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 14:07:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238439AbiLNNHO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 08:07:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238510AbiLNNG4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 08:06:56 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C10EED139
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:06:53 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id p8so10292976lfu.11
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:06:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FeugLtavLttTgy3SInJow5yRu+F6x9cMbga16VttAVM=;
        b=CmyOKlDpote+lb+EbAyLnMniQcNiHgKJnxNaHo0wtxs3SyoeZ9jPUuuwQy8paYbvd/
         amzEEAaS2pF+aArS+Vjz4FXOmZLQpy61bSfEHSnUNF6ndI8EGzwmsTDxzWTpCWjjNgff
         uKk7dkEPPeUOtEK3SQ8Uh3vAW4ZTswEEUhEXR9W+k07oHR3WO3RCid/+GHtd9YghhC45
         NyafMEf3Yz1TGzv5CPISRQlRjvkfq/F0nun5R0kzbIsnCvNJLfmbJHVgmBONeEVr+RCJ
         mm0E/sWG+VR6V7vzlpvBucuMks1ELjFC29BdLBMDMKsTxOcoxTNGnrOZbbGNnC4Rtu3w
         Uwaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FeugLtavLttTgy3SInJow5yRu+F6x9cMbga16VttAVM=;
        b=SFcpd96KUH8SLV5cFy9hV0HasSDps0Cl5+qonyFakctMZ2lHRr0qYRwHgudBY0GL/7
         RL8TOZruCoKM2qv4cf5Xx2dmSc5m3GM0UPkXt8zrRDiLWI3k23vQJn5iizfkhmpuGtbb
         Nl3fpoIYOU7VcAFwlnUl94KL0i49TDOQ9Q5liBmY85DA6d4KieAkVSfIKjSOst0ekZmI
         yB0jKWatYubjptag8RUH+/2vDqvDYtuZ6DaqC2OgXi208d3xZsfQSXY4H79rrkgVCVq0
         j0290kCN7e1dpNoBWhYGdLGN+BEBBFGuCnZayikjD+WGypQ5LDU/5qoDxH/N5nVToiZz
         xTfA==
X-Gm-Message-State: ANoB5pn1mLLQ7Agug6qoxCBHkhmViGsYk6om8ly0++BTEcljsx9GbraH
        VNPH2i2ZUWNJzZPjzN5ktC5h/CwMmZDRNXoc
X-Google-Smtp-Source: AA0mqf7NRksVVhcrKiyE1qpNNVV52mN/LhirwY9s8J407HWGTber4+/R0FrEys3wuX+txA7PZsiE4g==
X-Received: by 2002:a05:6512:33c6:b0:4a4:68b8:9c3b with SMTP id d6-20020a05651233c600b004a468b89c3bmr9507796lfg.35.1671023212156;
        Wed, 14 Dec 2022 05:06:52 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id l18-20020a194952000000b004a1e104b269sm811212lfj.34.2022.12.14.05.06.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 05:06:51 -0800 (PST)
Message-ID: <f5cfa601-c756-229b-e7f9-ff5f0b25f76c@linaro.org>
Date:   Wed, 14 Dec 2022 14:06:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 14/17] dt-bindings: soc: socionext: Add UniPhier SD
 interface block
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221213082449.2721-1-hayashi.kunihiko@socionext.com>
 <20221213082449.2721-15-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213082449.2721-15-hayashi.kunihiko@socionext.com>
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

On 13/12/2022 09:24, Kunihiko Hayashi wrote:
> Add devicetree binding schema for the SD interface block implemented on
> Socionext Uniphier SoCs.
> 
> This SD interface block is attached outside SDHC, and has some SD related
> functions such as clock control, reset control, mode switch, and so on.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

