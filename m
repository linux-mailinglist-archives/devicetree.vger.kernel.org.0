Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0FC87590C5
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 11:00:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229928AbjGSJAp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 05:00:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229644AbjGSJAo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 05:00:44 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59D691724
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 02:00:43 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-992e22c09edso802374266b.2
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 02:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689757242; x=1692349242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hGLn3zlUYGC3HAenVHI+FLwS/egG4QY8bCJe/wQjE9s=;
        b=P8wBGEOV0EZ2cWsEJlOqmy4OCGrKLtNkdO9EdOIwL94XDD8WkJu7M7czAY4rSRQQKi
         VgJxwdAwU6UdUuf1dB/+kKfzmKwQUugYSX/gUEmSzzZxNyOgACxjSv1iLSgqhprDRbsI
         YrpRPfffhMeupZmYIU6j5f1fEacOZPPggkel4Wlb+PNHM4Nc169iMyhr2MqHqC3KTepK
         mG2X7WFMc7uiVflNQr43Rw3sDUOWfZp7CP5SCpyrSnCKaQ3so5K1ao73FJD27Qo3//4b
         wQqXdnCmbQ5XaLyOqKuImwwXUqAJV6kL/ejjon6tdXPneAAx/SDCjZdOjpvHhyHmmUfe
         yDDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689757242; x=1692349242;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hGLn3zlUYGC3HAenVHI+FLwS/egG4QY8bCJe/wQjE9s=;
        b=WFZVNPSHan+/zGY5ARKvHFlY+Lah8s6CoRzGBqrlwhezRHzz4LiLY9yc7tE1v2Y55v
         QkFS/0VxS01TziaFA+c7BsrLvd47HxvgyptbGJ/XprSvmOI4XiQpU9A6Bz0QszNZcQoh
         ZKG/UMlMhApApQ6olUVF1VBUA3IT+FyprVZ2rxxGl0RAWz6xif3Ptl/ScBmOOaKYMk14
         pppninQ9E28xUuY7iALQzYFtGlhWCsZUC54Ho7amGCKNDLduY4PfHLM+9gjgCmYDQ71U
         DIVkO/gFvQMogH2tDvO9E3HqSXgaA5b9bzigGsnRnbeo7JsZzVveU9JOXdCocvTnsIU+
         eXkA==
X-Gm-Message-State: ABy/qLbLCiJU+lHeMbt59Cf2KN1UWsVejZlHSI4cwnehyaFsYyy5LtRQ
        k/XJBEcSm5Fonel4L47qvaDldg==
X-Google-Smtp-Source: APBJJlF/nPCcSflocMmfIEFExw1xC3CuTCgBsmD2ibTLiNnNJf5eee182e2+l9+9dXC9W+nO9fugcQ==
X-Received: by 2002:a17:906:258:b0:991:d5ad:f1b1 with SMTP id 24-20020a170906025800b00991d5adf1b1mr2284833ejl.47.1689757241772;
        Wed, 19 Jul 2023 02:00:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id l10-20020a170906414a00b0099304c10fd3sm2012920ejk.196.2023.07.19.02.00.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 02:00:41 -0700 (PDT)
Message-ID: <b4b7c70f-799a-d27d-cba1-4c9d153183d2@linaro.org>
Date:   Wed, 19 Jul 2023 11:00:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] dt-bindings: power: qcom,rpmhpd: Add Generic RPMh PD
 indexes
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <1689744162-9421-1-git-send-email-quic_rohiagar@quicinc.com>
 <1689744162-9421-2-git-send-email-quic_rohiagar@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1689744162-9421-2-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/07/2023 07:22, Rohit Agarwal wrote:
> Add Generic RPMh Power Domain indexes that can be used
> for all the Qualcomm SoC henceforth.
> The power domain indexes of these bindings are based on compatibility
> with current targets like SM8[2345]50 targets.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> Suggested-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

