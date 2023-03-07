Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B8776AE48E
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 16:24:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231280AbjCGPYg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 10:24:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230437AbjCGPYQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 10:24:16 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D38B94E5DC
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 07:21:51 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id u9so53799490edd.2
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 07:21:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678202509;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hv3uTxY1cPVK/8fUVsbHScrqp/m3XoVAD3dk5MpvuPw=;
        b=d5iNCTJTH0h35spNeejDEjGOJewVdxdGGnZadbC/clXywot6FdXSSUKlHXJockohB3
         tghC1vAf6vWlDi81H+xjTkUhG8UkRGb4p9XhDNllmRmuBw46dW9CXQwU5QGvxq5rZiPE
         EQC9gGP+JDytQwXClx5l+u0D0FkJlmjYzZjy1qAR+QoVfPHeLWlAMV4WwQEFNrfMoG3r
         3Cx4NbIzeFjpCw0A5p31qmwxh+8RnmQV2SSOdEchJ7rKiRtr0POnPWNXvgK+fUrLjlHG
         rJg4UZqfDOwkgP8FVmgAwfhfmIFmiPsNDGSqMhGCD7KNPsyMNMb/pMtVe9cPk0CUllh+
         RplQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678202509;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hv3uTxY1cPVK/8fUVsbHScrqp/m3XoVAD3dk5MpvuPw=;
        b=BqhMdn0EXHz8NnIUN40DnFh8Y2tMOKqvlHKNXsFMKX1w874Nhqx5VXU0+IOivsGeYD
         gzngghYEqfx2/oXnniRhlyIx53ySBJJuz754LXvcxMK9yewjlh4dgXGI0tY8Wj6x/Cff
         AvshRMhEX06nSrTThyMkDtg+me2OJrko3y9+HkwUK2/X7fVOsz3nYfGDJ28XzhUR1Yci
         sLZsJVrcURD1Qpt5D8y5omSs7+wkkP9LCoeheVbbJqIi2Dv8ZFdItQ2A9SEMXOL272x9
         r8XLLY5oVzoILNFwg5ju1w3ZDK4Sm3aSOo6t7b107/bHmVTeTUU1ehUC5eT4T2K1rsfl
         b+OQ==
X-Gm-Message-State: AO0yUKUKJuMIbMq5UKywxvXrhfk892S+rane1R3fxwUkL18NtKIgF4vQ
        AjtwK49lf1YTyL4qqX8r7GiQig==
X-Google-Smtp-Source: AK7set8arbE2CUBMCgi960hgaL0lT08XB6xHhmS+tbFjTJC+nbJD80ZZ0/G0d0VqfKNa4iw3d+AVEQ==
X-Received: by 2002:a17:906:d542:b0:8b2:e93:3f59 with SMTP id cr2-20020a170906d54200b008b20e933f59mr17023919ejc.31.1678202509557;
        Tue, 07 Mar 2023 07:21:49 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:a60f:e604:c252:1f3d? ([2a02:810d:15c0:828:a60f:e604:c252:1f3d])
        by smtp.gmail.com with ESMTPSA id bl15-20020a170906c24f00b008d83ad86fe8sm6248110ejb.59.2023.03.07.07.21.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 07:21:49 -0800 (PST)
Message-ID: <19d5ce31-284c-4028-bf9e-190b97dca906@linaro.org>
Date:   Tue, 7 Mar 2023 16:21:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 02/11] dt-bindings: mailbox: qcom: Add IPQ5018 APCS
 compatible
Content-Language: en-US
To:     Manikanta Mylavarapu <quic_mmanikan@quicinc.com>,
        agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jassisinghbrar@gmail.com, mathieu.poirier@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, quic_gurus@quicinc.com,
        loic.poulain@linaro.org, quic_eberman@quicinc.com,
        robimarko@gmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, linux-clk@vger.kernel.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_poovendh@quicinc.com
References: <1678164097-13247-1-git-send-email-quic_mmanikan@quicinc.com>
 <1678164097-13247-3-git-send-email-quic_mmanikan@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1678164097-13247-3-git-send-email-quic_mmanikan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/03/2023 05:41, Manikanta Mylavarapu wrote:
> Add compatible for the Qualcomm IPQ5018 APCS block.

Is it compatible with ipq6018 or ipq8074? Your driver tells it is...

> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
>  .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml      | 2 ++
>  1 file changed, 2 insertions(+)
> 



Best regards,
Krzysztof

