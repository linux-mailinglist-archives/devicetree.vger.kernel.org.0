Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B77D56BD912
	for <lists+devicetree@lfdr.de>; Thu, 16 Mar 2023 20:26:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230116AbjCPT0A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Mar 2023 15:26:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230074AbjCPTZ7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Mar 2023 15:25:59 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 931D4BDD22
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 12:25:54 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id x3so11782146edb.10
        for <devicetree@vger.kernel.org>; Thu, 16 Mar 2023 12:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678994753;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wgPTfhfhDiIaLrQkZ1Ax0N9P9NdnY/3JPnDX15etQuo=;
        b=lXZ83hUYmDBWaVX6MtODbBmsRVq3ifZWAH19XisrptraOYoNuYtA5NGhj0US11a0JB
         IRcQSHKXcgOoiZomzn4edPVtk7YysgPypP5V2R0U5agTm6OsguJoyrlt0yf1g+Q9uhgs
         XjLqj44qQQSUBJpIQWaO13ixMSEPdrKWsVdu8o72q5Z6MN7al4vdiYPbgn2qxu/cc9rw
         VtpiwiZ8lMmDA8Gtz2v7PH/huQnGwbBtdj1/LZotFB2jvMmovCGn6OPWLyKE5wrBsIlg
         jc95s91xfwTYpLldtHofvI8u76XTuXRzlkp4Bo1euslFJSyYidUylsjy1rQnXO2bpqtv
         tK1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678994753;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wgPTfhfhDiIaLrQkZ1Ax0N9P9NdnY/3JPnDX15etQuo=;
        b=r2OuAQ7T37reotAdwnHLt1p56+I1j0PZ7bZMvtSbOqv8iTIkpUzvdUyq4wZu6OBESh
         tLxe6EgYc8oRzR2sP6HhX6z4xjuhcJ7kFb2aY8FxX3WMYMEjeYZFe+Blgy8iqOWaoVdZ
         C8xl1d8jkQSrGh2ceE651IVUZGYnewVS1iaLTVWw0a4x5fb+7E8roEPV6hTOVZqAy0mJ
         Pg14pA0UobX9IVOOSXHY8JNRofAJqBOR+fsDZfSxmMulXFObxCvrxfQlEHEEXqAvEZLq
         1ZFXOYfGoLQVvFdEq75vl6CBk2i1ltfMIflEkUePBvcO8yFsz1r4kPSDVVJbXyq6cMyY
         0Qxg==
X-Gm-Message-State: AO0yUKWToAntDNME5OHdqGY1+vzXz0skDB+hTroLBSZnCfVFDK+TMXFy
        jz+e/RMUqDLdJZj4sgh9MaZwuOmVQ2tDnhrprVs=
X-Google-Smtp-Source: AK7set/2OuY4Wu8yRjcXh6ZCDFyCZYz8H+2cTHDFqdlSNZHNnSsYw22xcdeGq+/ClU5ESFLbr0QSUQ==
X-Received: by 2002:a17:906:770d:b0:930:2e1c:97ba with SMTP id q13-20020a170906770d00b009302e1c97bamr3599284ejm.5.1678994753066;
        Thu, 16 Mar 2023 12:25:53 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:9827:5f65:8269:a95f? ([2a02:810d:15c0:828:9827:5f65:8269:a95f])
        by smtp.gmail.com with ESMTPSA id n25-20020a1709061d1900b008e9c79ff14csm13144ejh.96.2023.03.16.12.25.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Mar 2023 12:25:52 -0700 (PDT)
Message-ID: <1ae4767f-563a-6425-f20b-32be6ba8a7c7@linaro.org>
Date:   Thu, 16 Mar 2023 20:25:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v3 1/2] dt-bindings: input: touchscreen: Add
 'goodix-hold-in-reset' property to Goodix
Content-Language: en-US
To:     Jan Jasper de Kroon <jajadekroon@gmail.com>
Cc:     alexandre.belloni@bootlin.com, broonie@kernel.org,
        devicetree@vger.kernel.org, dmitry.torokhov@gmail.com,
        kernel@undef.tools, krzysztof.kozlowski+dt@linaro.org,
        linux-input@vger.kernel.org, robh+dt@kernel.org
References: <20230312183106.551840-1-jajadekroon@gmail.com>
 <20230316152949.67441-1-jajadekroon@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230316152949.67441-1-jajadekroon@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/03/2023 16:29, Jan Jasper de Kroon wrote:
> Add an optional 'goodix-hold-in-reset', to the Goodix touchscreen
> device tree binding. When set to true, the touchscreen controller will
> be held in reset mode during system suspend, reducing power consumption.
> If not present, the property defaults to false.
> 
> Signed-off-by: Jan Jasper de Kroon <jajadekroon@gmail.com>

Don't attach new patchsets to some other threads. It messes with our
tools and reading/reviewing process.

> ---
> Changes from v2 to v3:
> - Used imperative mood instead of "This patch adds".
> - Dropped "I am submitting this patch to..." as it is redundant.
> - Removed the paragraph related to the related patch sent to the 
>   linux-input mailing list as it is not necessary.
> - Renamed the hold-in-reset-in-suspend function to 
>   goodix-hold-in-reset to prevent potential naming conflicts with other 
>   functions in the codebase. No functional changes were made.
> 
> Changes from v1 to v2:
> - Updated subject prefix to match subsystem.
> - Added more detailed description of the change.
> - Fixed formatting issues in commit message.
>  .../devicetree/bindings/input/touchscreen/goodix.yaml     | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
> index 3d016b87c8df..197f8db9acc2 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
> @@ -56,6 +56,13 @@ properties:
>    touchscreen-size-y: true
>    touchscreen-swapped-x-y: true
>  
> +  goodix-hold-in-reset:

That's not a vendor prefix... missing coma.


> +    description: |
> +      When set to true, the touchscreen controller will be held in reset mode
> +      during system suspend. This can help reduce power consumption, but may
> +      cause the touchscreen to take longer to resume when the system is woken
> +      up from suspend.

Anyway, my concerns were not answered, so to be clear:

NAK till you answer them. Do not send new versions without answering
existing concerns and discussion.


Best regards,
Krzysztof

