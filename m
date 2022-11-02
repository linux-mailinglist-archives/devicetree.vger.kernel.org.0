Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF7CA616E5E
	for <lists+devicetree@lfdr.de>; Wed,  2 Nov 2022 21:11:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230208AbiKBULv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Nov 2022 16:11:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230433AbiKBULt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Nov 2022 16:11:49 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 131F32E5
        for <devicetree@vger.kernel.org>; Wed,  2 Nov 2022 13:11:49 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id f8so12549307qkg.3
        for <devicetree@vger.kernel.org>; Wed, 02 Nov 2022 13:11:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XVMcnUWjxaSK0Yh2I3vt/XgKGynIdU21Ts9Up5NV3Xg=;
        b=pF+ResqOlkUk7h7VGlX+YNM8nsmuuBPkGnZHp3cM0CYX9OW9tlC9PLrqS/2mB7uZt9
         pzGYJKMnCjb9wJODZRQGbi0n+5BkGvGMc6kP9Sg7CiJhbR/Cqk5OtOrhq6ZsXFvqsfNO
         hC/RL4TtJyWbaUVasSSjNQIhp+utfENXsWodqjT8QFBCVbFwSGWmWS2XRYSNyWejNlmY
         hj0CyJaxVOz0wI0KZJFGUSzvirf2Kzz9pQ8cuyn/h2BRJaU16XhZKj7XKdi0YOLmHliY
         VkhErRd10hhtrPc0sQCm0FxL8gD57mZFaFNPv//J7s4CSKJkE59Rmpi1vRSbHp7JHKbp
         8PrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XVMcnUWjxaSK0Yh2I3vt/XgKGynIdU21Ts9Up5NV3Xg=;
        b=hug5RGE7DPgiovdrPwBwsHhniYWIo3j/IWD71Uox8MlM243jveoYNe9ZSSVeFvGSuR
         LPLpb0esNvP0IhzbDsOdaWs40ti6AM4Iu1+Cnv1FwNgIdlpDgPkZZygEI2hiJ1RFE4Ve
         e8+F+ANKTNCPPx1iIHdQZIK0rCA/oPBfv4jESEi+ZYoDLLgbgGN3X9nR7DOjxNAtrGxK
         hAk5c/0r+MDf1Bzerx70pjHFQWHADm3HPRfHGEgWw2t7HNxfnbgTS+5eiUVYX+taSPh6
         +suTjjaKs8KcNk/W3kOy8RSa9K68cQZt9N50g4i0dBEEt4CGrJ8aCYiIwl4zctTEeWp+
         7kww==
X-Gm-Message-State: ACrzQf02FQliq1S6RRHlBioOVhRO1aA6cYK0czpolXSu0EXx/lkrAGeS
        rcNrTqJxDXvigPFxZfXnduMxRA==
X-Google-Smtp-Source: AMsMyM7NZI3iyZtdE3Da+UibfIbr7SHN+YGUbTEWKsQoHJ8XKbpu12IIBogUp1+QrovfCyhvrdhuzQ==
X-Received: by 2002:a37:de0a:0:b0:6fa:422c:1fda with SMTP id h10-20020a37de0a000000b006fa422c1fdamr9613046qkj.607.1667419908262;
        Wed, 02 Nov 2022 13:11:48 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:28d9:4790:bc16:cc93? ([2601:586:5000:570:28d9:4790:bc16:cc93])
        by smtp.gmail.com with ESMTPSA id bb38-20020a05622a1b2600b003995f6513b9sm6910112qtb.95.2022.11.02.13.11.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Nov 2022 13:11:47 -0700 (PDT)
Message-ID: <aa2b0ab5-8ed5-cb49-711c-f928de24a8e4@linaro.org>
Date:   Wed, 2 Nov 2022 16:11:47 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 1/1] arm64: dts: qcom: Add MSM8976 device tree
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Adam Skladowski <a39.skl@gmail.com>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221030194311.197909-1-a39.skl@gmail.com>
 <20221030194311.197909-2-a39.skl@gmail.com>
 <4dda8dbb-a951-2207-32f6-2d6748e75087@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <4dda8dbb-a951-2207-32f6-2d6748e75087@somainline.org>
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

On 31/10/2022 17:02, Konrad Dybcio wrote:
> 
> 
> On 30.10.2022 20:42, Adam Skladowski wrote:
>> Add a base DT for MSM8976 SoC.
>>
>> Signed-off-by: Adam Skladowski <a39.skl@gmail.com>
>> ---
>>  arch/arm64/boot/dts/qcom/msm8976.dtsi | 1357 +++++++++++++++++++++++++
> Not sure if code that's not compiled anywhere will be accepted.

It's a dead code, so it should not.

Best regards,
Krzysztof

