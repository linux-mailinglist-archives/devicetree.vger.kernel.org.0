Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E10DF6D0293
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 13:07:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231447AbjC3LH4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 07:07:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231499AbjC3LHv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 07:07:51 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 74B079757
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 04:07:36 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id q14so19161628ljm.11
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 04:07:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680174454;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7LR0S6AFtSUht8G1Qa+bxNb42VLodjoT5rK6P9xF4Gc=;
        b=XqH/7X9qatA1dYQUrhBhn441lDbqy6pAT5lTOsxIGodOo2IVXQM8NfkE9c7nZt0TJv
         wLDz1AExDXUIMbkdo1GmCSRLb8LxScDgdiJVo5dNUeSS7j3n2JM0OV8sH7lDyWu+ZG4x
         9M5W3GBJ7QY1qOzrSEHeerKpzs5jnLE82/FJrl9VZKzDfy0ukqn3j9DJungOlReK1UPk
         IB6uScMlI39MgMCGOtZvqu8J4C/y2YCNKk/mBBvozmRP73SXLbhiStRHy4RIPZ/K54nW
         7I2WEQJ04BUxHHXHCv1YwJSv7Ij8UbMzUk/aUv7vNVIKrazwzGxmbazBcPog3LvTXMKM
         IkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680174454;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7LR0S6AFtSUht8G1Qa+bxNb42VLodjoT5rK6P9xF4Gc=;
        b=xIqnTaO6cQvamVmQZJLdrgw45hcu999/s5leSUtA1ghe9/PDLu8J53+GL5ieJ6K2+W
         uZpxn9c9yX3wjY2XScJdXEn2oxUneUHgon96+dBasEC+mTBGT9gR+7gNoxqzOegjLm5+
         vYh4SPOZul8Lc9+PxnN6ecmMbLpmqhnx3hXyKGtasnNxYKJxuj28/bVRh4YliAxuMt73
         +eYaEHDCYPqFLrzbxyn989lmyP2WkRdCFj2O3tm8qxX64jzqVH/yCIIF86whqilSiY6H
         0u4WKj3hAJgk+VnP5NN1eeSQcpwHmnahFWet7HNx7Tvkh4pnK1m9jBQZyPVHDWnHC6E8
         k/qQ==
X-Gm-Message-State: AAQBX9cIRA2vR76QwliODdwclemUkVxOGzMTEZYcXXuqMCd6C24cQ6ig
        mN7NwYcMFfRdVUYzCefufoaUjQ==
X-Google-Smtp-Source: AKy350a0PgypgwzkeyyVZVF+0aACOhmQj6Ct7xxutZCWN1CqF+6llkKERiyx17zTvopzsIZ7UD4KTQ==
X-Received: by 2002:a2e:b0eb:0:b0:2a4:def6:7112 with SMTP id h11-20020a2eb0eb000000b002a4def67112mr5430895ljl.30.1680174454602;
        Thu, 30 Mar 2023 04:07:34 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id d2-20020a2eb042000000b002a1e54581desm3147611ljl.58.2023.03.30.04.07.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 04:07:33 -0700 (PDT)
Message-ID: <fe6eb9ce-6303-ca8a-1252-53c608b943cd@linaro.org>
Date:   Thu, 30 Mar 2023 13:07:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v1 1/2] dt-bindings: clock: versal: Add versal-net
 compatible string
Content-Language: en-US
To:     Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        devicetree@vger.kernel.org
Cc:     git@amd.com, linux-clk@vger.kernel.org, sboyd@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        michal.simek@xilinx.com
References: <20230330091309.16215-1-shubhrajyoti.datta@amd.com>
 <20230330091309.16215-2-shubhrajyoti.datta@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330091309.16215-2-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 11:13, Shubhrajyoti Datta wrote:
> From: Jay Buddhabhatti <jay.buddhabhatti@xilinx.com>
> 
> Add dt-binding documentation for Versal NET platforms.
> 
> Signed-off-by: Jay Buddhabhatti <jay.buddhabhatti@xilinx.com>
> Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
> ---
> 
>  .../devicetree/bindings/clock/xlnx,versal-clk.yaml         | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> index 4bbf96484b56..ee1924acebaf 100644
> --- a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> +++ b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> @@ -20,7 +20,12 @@ select: false
>  
>  properties:
>    compatible:
> -    const: xlnx,versal-clk
> +    oneOf:


Just enum. Your descriptions are not saying anything more than
compatible is.

Best regards,
Krzysztof

