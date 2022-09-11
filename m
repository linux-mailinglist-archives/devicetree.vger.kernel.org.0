Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7C3E5B4D57
	for <lists+devicetree@lfdr.de>; Sun, 11 Sep 2022 12:26:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230128AbiIKK0M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 06:26:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230109AbiIKK0K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 06:26:10 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 919A23AB35
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 03:26:04 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id bt10so10303318lfb.1
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 03:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=4VyNYHLc58kEh2P/K9NXghyAtDEjJgTR+B1iQusmQxg=;
        b=nH3wIj8in1OwkcbzzoaJYk+gxADLp4qilU60WYJCv2w6Mgj5SjAMTXS507zsEIjXlX
         l6e7UlVcIpHBKXTkDhU6TjwpoOiI1l2lYX7NEXYinlBI78BrJGvGHgeWr95imFTOV0tf
         ZIFDd9N28nhE0CACE7L4luskezeUB+2go4WmGkWTjH9cu7b18wgwAxtPCR7OMLqg/I3S
         5nbzN/JZRrM/iiN3x0j0IxpcgnBMi/LOP3U4bWyubOPzfonYj5OPV1if3o3cQzGQk9XL
         sxmwG6dTaINV4Sp4KJiH4qjq1cyco4/rEo8tk6CLzTNkuvYeYSu5snHnb8aKqKdSct0B
         tdHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=4VyNYHLc58kEh2P/K9NXghyAtDEjJgTR+B1iQusmQxg=;
        b=Z0BCztzmzhiHpoqkWcyu8cRG+eb5Mvv3TVunfM9DvYedeQ8HLv2aynySaA53e6aebB
         5jBSBAYQvmd2F0nEhz92j3bd7aQgkWEMxgIoHjp0XM1S1PqkpQVsAVygMq8TLs/sBskG
         yw8ZGsndtQ987brIRMV7TMyPH1vzRGy+Yi5/ywUNY3MvoiPnpNccfloZ7J3XyyvowW51
         WLEmYkT1no2AUDOirSd5BjRGC4B5SJzYDDPo+lKZYCYgFzcuqgCMM0h5mXnRr3Y4Je6k
         agZtEWf3rsAQo/4Um9Tx8TJPox4PI+XBIWBZG1otvL7/T3bZkkE6c1eN8yv40jj97dI6
         xvmw==
X-Gm-Message-State: ACgBeo1T440bFuL82paICyYHqxomXpSXXyk9ICNb0gzGEITTDaFjmrlv
        tUraBkxia7pWiLo393u9oH7CxA==
X-Google-Smtp-Source: AA6agR6Amg69FI3ZKdpopaunPwNm04agmw16hYimsLLkQWM28+FWHUPKfoRktjBZIeW8HpX5VAtL0Q==
X-Received: by 2002:a05:6512:168d:b0:491:3206:b63 with SMTP id bu13-20020a056512168d00b0049132060b63mr6907746lfb.149.1662891962958;
        Sun, 11 Sep 2022 03:26:02 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t7-20020a19ad07000000b004949761d330sm562793lfc.128.2022.09.11.03.26.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Sep 2022 03:26:02 -0700 (PDT)
Message-ID: <6f2ec41a-a6fa-dce7-66ee-e9ac3d3ab6f5@linaro.org>
Date:   Sun, 11 Sep 2022 12:26:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 7/9] arm64: dts: qcom: sm6115: Add basic soc dtsi
Content-Language: en-US
To:     Iskren Chernev <iskren.chernev@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20220910143213.477261-1-iskren.chernev@gmail.com>
 <20220910143213.477261-8-iskren.chernev@gmail.com>
 <d51b0a89-a151-dd5b-b026-4291031fe1ea@linaro.org>
 <ad940df1-6876-0c38-81c8-7d7ca97046de@gmail.com>
 <7e5eb29f-913a-7540-c618-fb6c5a493d5d@linaro.org>
 <cdb756fc-6a4f-3853-9570-f02b8cb03990@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cdb756fc-6a4f-3853-9570-f02b8cb03990@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/09/2022 12:22, Iskren Chernev wrote:
>         basic-state { // this matches the first state in oneOf
>             pins: "gpio1";
>             funciton: "normal";
>         };
> 
>         nested-state {
>             some-pins { // this matches the second state in oneOf
>                 pins: "gpio1";
>                 funciton: "normal";
>             };
>             other-pins {
>                 pins: "gpio2"
>                 funciton: "normal";
>             };
>         }
> 
>         // but also, matching second state in oneOf
>         nested-basic-state {
>             pinconf {
>                 pins: "gpio1";
>                 funciton: "normal";
>             };
>         };
>     };
> 
> So I'm saying, we should either choose basic-state and nested-state, in which
> case we don't need the "^pinconf$" variant, or we can have nested-state and
> nested-basic-state, in which case we don't need the 1st case of the oneOf.

Ah, I get it.

> 
> Otherwise people have to choose between basic-state and nested-basic-state,
> which are equivalent in semantics.

Yeah, I can drop pinconf. I put it in the PMIC because it was used, but
I don't find it for TLMM pinctrl nodes.

> 
> On a tangent -- why specifying the .* regex of pinctrl subnodes has effect on
> pinctrl references in other nodes. I.e I don't understand why this fix fixes
> the issue (but it does).

Because it works on DTB and finds linux,phandle. This might be some bug
in dtschema, but anyway better to have a bit stricter patterns in bindings.


Best regards,
Krzysztof
