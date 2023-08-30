Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD91878DA33
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 20:36:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235129AbjH3Sfo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 14:35:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243025AbjH3KIc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 06:08:32 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E300A1B7
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 03:08:28 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50098cc8967so8408922e87.1
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 03:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693390107; x=1693994907; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Nxn5up4QextamTtIqwX1SELm1/pR8j6Wz4/nOgg0Fk=;
        b=JoYBvOJcSozegsbQV/FmZWEE8MK24oh+oklOxl5RhYTi1Mqx+hbEk3FG12c1cnTTmm
         omviN62AGBfvENZvLSp94GygoYvuCtrH/yAdx+5NC8sfV62/LMPAPTSzVN5YL5dG8ZOr
         Jd3DibpzgwhRJ3+jhFP+VgBr8VR0R3EeZKmGuO/sr+hMCHzddzNHLlGzJpjR+bfS/zs7
         WAgnF6R2yRH8TMZlcitYSYWaWXM3YZSVJmiEv2G4p2znGDSs+wf3IiGAz1GdN8q7MCjz
         5FecveOcPv/GSJxlm6Ea6cPe4Glup0tDbzj09Jqe3QcdJPdz/9pZVcXFCZvyq8NErJ9v
         eADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693390107; x=1693994907;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8Nxn5up4QextamTtIqwX1SELm1/pR8j6Wz4/nOgg0Fk=;
        b=lWtc+pgIUm4VTrXWOUL5/31e2ok+Z9X3AyoGESGRJMoNUAaJubnPrnmXQlKPQTjYt0
         nDWdvNsypY6B3hFqI3ejMf+vFcjA3AfMqHRKckakKBXD2HigXlaEi0axxt8ekLJhSJ/n
         9jL+gCn0isEUkZIDFaLdplJOnNxZsNASikqd3j8xjfzDghkfLL9r20y+veMHQoruCdx0
         6SW1l1lqzNV1a6o0T9PwzlA8NJoG3N4568Z3KCA2bHWNLIp5usVZMRVEn8OXfJc6JTJF
         v9qYLjNW40xPq1pAMUtJNsl50E6i55k0oKLyLMJ1y9OzKm/AiFhc+R+bxDsyOVsxWYcf
         B5HQ==
X-Gm-Message-State: AOJu0YxbzHcOWsRZkrES5prfFQcO1rsigVD6JxpNImZyi2i+YvmPu1k+
        4+64PjPWgSzTCyzTLoMd2cgORg==
X-Google-Smtp-Source: AGHT+IEy9l5e5D7iUZ81rJNqEUxrnyMDRnW81xox92SRBSuK5C6pMKRSp+8HSo+rFsIkbxdhltWdLA==
X-Received: by 2002:a05:6512:3111:b0:4fd:fad6:5495 with SMTP id n17-20020a056512311100b004fdfad65495mr1017342lfb.18.1693390107091;
        Wed, 30 Aug 2023 03:08:27 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id i5-20020aa7dd05000000b0052333d7e320sm6591175edv.27.2023.08.30.03.08.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Aug 2023 03:08:26 -0700 (PDT)
Message-ID: <8cb65ac9-a8f0-2df9-cd05-e6afdf8f7e36@linaro.org>
Date:   Wed, 30 Aug 2023 12:08:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 06/11] dt-bindings: pinctrl: qcom,sc7280: Allow
 gpio-reserved-ranges
Content-Language: en-US
To:     Luca Weiss <luca.weiss@fairphone.com>,
        cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20230830-fp5-initial-v1-0-5a954519bbad@fairphone.com>
 <20230830-fp5-initial-v1-6-5a954519bbad@fairphone.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230830-fp5-initial-v1-6-5a954519bbad@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/08/2023 11:58, Luca Weiss wrote:
> Allow the gpio-reserved-ranges property on SC7280 TLMM.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

