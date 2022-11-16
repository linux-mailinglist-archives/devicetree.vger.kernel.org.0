Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A02862C646
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 18:23:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230205AbiKPRW6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 12:22:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39510 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238691AbiKPRWE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 12:22:04 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 219694AF30
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 09:22:02 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id be13so30638162lfb.4
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 09:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kOMV24mvT6Z+gChaVzQ2FKjnamE1RqSiBkM5c6Q63Ew=;
        b=VhC2ELA7YYwkUZb3bqvYlfuPX+1ULotkPGoE39eo+LnfGVW7aZ8ljsvZE+z0Vpmi7F
         b1KPQ+MrZ46lUHBr0s8t8z4SWSgod9aMHBfYI3VA5/ES2GgKDuWV4nGV4sLoPpQVY4Wc
         kJvjktAmoH2Ot9PNLco7SBm+dJbX+EcejjFR/UTsst0qCIwt6W4XtTDFp9ktv3bOO4FT
         CWhfZNm/DFDTbLH6X4+rT9UfZ39SCBOdq1SWE2VP2x6SI/Rundva8d/OFdeoKXCxTcQg
         QqLIl0ac8Y780hl/qi9f1f5mIXblSuLsUWef1q4XyKpriHxBlKPwhbwxIR25EmwdEiFc
         bWYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kOMV24mvT6Z+gChaVzQ2FKjnamE1RqSiBkM5c6Q63Ew=;
        b=oB771NbM4iU6t8tPCmeAkeJRAWT500XAAzzYiiMCRNKLClNhniwEljCGGF7zNUFr/B
         Rsr02XjyAVYF2YUVQWR9ainh3qSMHI8vJUn1RdN7d9tCGQnxIjsJhw1e32LCHOXsPgtW
         sJoZCFNggEhkKDaOUmnpUFKGtWfVcMyBkv8vFPrhNDYtXwpEgl9oVJtfEi76gQeGLuw0
         LxUspOlwu0IHg65kG/bQYsE2Ry+txqopw/GRprCk2X0dzja/A8RPGfZOXHVtNi+S8Mi3
         EKKEimORoPiK/wHnX2m9uFmJJZNLOVh2heFtiKib+KlLhvAJxC+Cbqi5ZpoBiKCS/y1b
         +nqg==
X-Gm-Message-State: ANoB5pkUMdClMjqACNLbS4CrMHLX0FmkynVYZO8hPRFYimrAY9NHm286
        m3w3qk7g5nRXtpNI2Da6xRXqOQ==
X-Google-Smtp-Source: AA0mqf7ZXR3rHAMssv+XBEoFFz7RGw+jMe1K+n1jByylzWyEXI9ntbh5qO3dWE1n3vDXUPNbpNKRfQ==
X-Received: by 2002:a05:6512:252b:b0:4b4:b20c:4b7 with SMTP id be43-20020a056512252b00b004b4b20c04b7mr990804lfb.201.1668619320495;
        Wed, 16 Nov 2022 09:22:00 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k16-20020a05651c10b000b0026bf43a4d72sm3085645ljn.115.2022.11.16.09.21.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 09:21:59 -0800 (PST)
Message-ID: <b0fdd995-85c8-0833-9d94-918812005d3a@linaro.org>
Date:   Wed, 16 Nov 2022 18:21:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Remove unused sleep pin
 control nodes
Content-Language: en-US
To:     Doug Anderson <dianders@chromium.org>,
        Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
Cc:     vkoul@kernel.org, agross@kernel.org, andersson@kernel.org,
        robh+dt@kernel.org, broonie@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_rohkumar@quicinc.com, srinivas.kandagatla@linaro.org,
        swboyd@chromium.org, judyhsiao@chromium.org,
        alsa-devel@alsa-project.org, quic_rjendra@quicinc.com,
        konrad.dybcio@somainline.org, mka@chromium.org
References: <1668591184-21099-1-git-send-email-quic_srivasam@quicinc.com>
 <CAD=FV=Uzky4uxs+qwSH9d7MBBWbXe8sMdvB_-Lqkq+6jbTCciQ@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAD=FV=Uzky4uxs+qwSH9d7MBBWbXe8sMdvB_-Lqkq+6jbTCciQ@mail.gmail.com>
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

On 16/11/2022 17:51, Doug Anderson wrote:
> Hi,
> 
> On Wed, Nov 16, 2022 at 1:33 AM Srinivasa Rao Mandadapu
> <quic_srivasam@quicinc.com> wrote:
>>
>> Remove unused and redundant sleep pin control entries as they are
>> not referenced anywhere in sc7280 based platform's device tree variants.
>>
>> Signed-off-by: Srinivasa Rao Mandadapu <quic_srivasam@quicinc.com>
>> ---
>> Chnges Since v1:
>>     -- Update subject prefixes and commit message.
>>
>>  .../qcom/sc7280-herobrine-audio-rt5682-3mic.dtsi   |  8 -----
>>  .../dts/qcom/sc7280-herobrine-audio-wcd9385.dtsi   | 20 -----------
>>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi           | 20 -----------
>>  arch/arm64/boot/dts/qcom/sc7280.dtsi               | 40 ----------------------
>>  4 files changed, 88 deletions(-)
> 
> Reported-by: Douglas Anderson <dianders@chromium.org>

I guess rather:
Suggested-by: Douglas Anderson <dianders@chromium.org>

It's not a bug, no Fixes tag.

> Reviewed-by: Douglas Anderson <dianders@chromium.org>

Best regards,
Krzysztof

