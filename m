Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BAB2627D5D
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 13:08:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236993AbiKNMIa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 07:08:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236995AbiKNMIR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 07:08:17 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18ECBCE32
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 04:08:16 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id l8so12858361ljh.13
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 04:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UcgVzNNuvApB1tHFUDQ2YdnueyTykrC4lbR1LLNadUo=;
        b=Sv/Ijmsw3p5EPyzH21o4JoCbwhLqukVHHl52JjWYEMbnQCroLkF+xo4RTmyUi0HlV0
         fSTzYPiKy91DjCenKG/CBLbw7crgBOA/qCpn1agh4ACMe2MF92K8ozv1T2j2mhylToEQ
         WGBr3z+VMoThBd8Tal9GnyFkGK9DvIZDogd5GwEO3pd8rHm2aFTJQdz8lRN9n2N7/VDI
         b5isFpkPbjzj0J+uhDD+wmngMQOhdBLhUxIpehPR/jjy2S6e7oJK5035r7a2Bv/gz+eu
         Ga49PnJh+OzTA+4H1Tyf9dT96O8O8WsCKONajeq2Ghyzi4vx/0/rbRiLdrUdAf9MNeG9
         PCrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UcgVzNNuvApB1tHFUDQ2YdnueyTykrC4lbR1LLNadUo=;
        b=tztBsNAI5BW5iT7XNHMTfmYgzAalEO12t9uupbScf0hIeDJs+Z87FaOy5dJbEv+B0U
         iZ50GH2x/HsUnzaT8hO4gXJHzBPzzbI7WEuRQTPJbDpf75Fhvhtj4H+45+yR5wN7hmeh
         tx4qGmj5qKl82naYf3zbMsT8y/fbB3zmR92B5RwOA+ocODpF9agNfddkmwdHBjsYeQXZ
         unsTjrvg71c8HUJsGsFZEmTZ69TVzx3MRESe7IJ0yujdMz/+9N1pQiHPV55VgwZbu+jD
         TzNnqda+S/aRk37iyjg2wJwD+vnlyGXonZ1FK/MjKrk1NAc7nnb5IMMqAW/wjmAx7gEV
         xfwQ==
X-Gm-Message-State: ANoB5pkccBh2c6nrfgklV1OoEyRkwkXRGSdgbtYSSxFhZSlh6A54cmHp
        G9dLWVRz9t9xhZFWTIJgKBH1mw==
X-Google-Smtp-Source: AA0mqf5FiVxTLlfr5dE+/I1zUYvRmbOurrtiYQu+QcrvL066NEuXUGiKTuuxZ62qyDsdFY2dHX6Ung==
X-Received: by 2002:a2e:3e05:0:b0:277:31c3:ca17 with SMTP id l5-20020a2e3e05000000b0027731c3ca17mr3885380lja.523.1668427694295;
        Mon, 14 Nov 2022 04:08:14 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id l10-20020a056512110a00b004948b667d95sm1800206lfg.265.2022.11.14.04.08.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 04:08:13 -0800 (PST)
Message-ID: <cf3b8355-a9db-9a4b-e554-43e829e49a4a@linaro.org>
Date:   Mon, 14 Nov 2022 13:08:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 10/10] ASoC: dt-bindings: qcom,q6apm: Add SM8450 bedais
 node
Content-Language: en-US
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Patrick Lai <plai@qti.qualcomm.com>,
        Srinivasa Rao Mandadapu <srivasam@qti.qualcomm.com>
References: <20221111113547.100442-1-krzysztof.kozlowski@linaro.org>
 <20221111113547.100442-11-krzysztof.kozlowski@linaro.org>
 <cf66aa8f-4bf7-d9c0-e2ae-b6fced7e4948@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <cf66aa8f-4bf7-d9c0-e2ae-b6fced7e4948@linaro.org>
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

On 14/11/2022 12:40, Srinivas Kandagatla wrote:
> 
> 
> On 11/11/2022 11:35, Krzysztof Kozlowski wrote:
>> On SM8450 and SC8280XP, the Q6APM is a bit different:
> 
> This is not specific to SM8450 or SC8280XP its part of AudioReach apm 
> which deals with both backends and pcm.
> 
> In old Elite architecture we had a dedicated service AFE to deal with 
> Backend dais, now APM does all.

Sure, I'll add it to commit msg.

Best regards,
Krzysztof

