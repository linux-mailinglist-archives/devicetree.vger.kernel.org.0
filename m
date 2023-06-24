Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 35E0E73C9E9
	for <lists+devicetree@lfdr.de>; Sat, 24 Jun 2023 11:11:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229560AbjFXJLY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 24 Jun 2023 05:11:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231466AbjFXJLV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 24 Jun 2023 05:11:21 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEBF61BC1
        for <devicetree@vger.kernel.org>; Sat, 24 Jun 2023 02:11:19 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-988b204ce5fso169354466b.3
        for <devicetree@vger.kernel.org>; Sat, 24 Jun 2023 02:11:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687597878; x=1690189878;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TB9IHENJDTgP3/+RgmCR40mbzefHRkoxy0VpWnLxklY=;
        b=grwUtLESlVNXp6uim+dHlAYHJFBXetSUjezL5bHBZaNCN4WHItbgPsVqVEFsjYN4Rt
         2BAB2zpWJwRo9UEqMnSqwJkUbanLf/6B1TSOZLeZ8UfKg2TvccWv5R4eHxIvn5z24DMl
         qk+juz7k5H9qq5p8oUhdEvxEClDedMtrUTeu1djwzyeMCx2QWE5ZyGXJqSF4iB+D7sFM
         IorPe6SpPqO7N3InbG456FHlrS70BkvkEJqIrsMdwpNPXQoILbm6jRlrMgiKN3OppCZC
         39cqq4zhyC9Ea/FvFTODLTojMQmM0Ft5CoePsTengl0SjhapGJAjF1w5j8Ao5uvmcgWP
         gmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687597878; x=1690189878;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TB9IHENJDTgP3/+RgmCR40mbzefHRkoxy0VpWnLxklY=;
        b=Lq2cv3+eTm5J1zDoFfOtImQ/xcFj2IQ1e2hEqQ1WuYBvSrKMBEFFVvv1s/huadAvk6
         7jRzpR2/VmOzPfVngy3NO96r2MYmRJr5Cu9NbvlnavqUq/IB7ceAXhOs9VD5/0moah4v
         w/cfJzF5XvLIk3PpkHsgkRtUdt7U6iVUK2VFL7gGRafoaMdXCT+Si7yvHn1J7FDcQc8W
         mEWAOeQKisKSI5ueOT3SDNJzUDn3mgokTOKlCeUysl9k8xFSet6fWlNy1D3Yas+4Fm4g
         UrIQumhp/EiCF9MGh4HvfT/EtIsA01mZSORd2gQFiAw0/VKPfgg8Z/lnPv6HJ/KTeGuw
         zyVg==
X-Gm-Message-State: AC+VfDx5NFwrcPuDZ1bP9s9llu4+qQ7dIKI3AMDl/BIwJfz01AiaNA8n
        RRcMHcAzrh+J8hixblOa+v3Blg==
X-Google-Smtp-Source: ACHHUZ4TP0Vdg3BKzhJVTx8ptKa5/v9jsxLjJ+4KkREwbvl+gOjJuEvoSK1K+Qjdqw+DMfHimDsPFQ==
X-Received: by 2002:a17:907:7293:b0:988:84e8:747c with SMTP id dt19-20020a170907729300b0098884e8747cmr15007406ejc.32.1687597877906;
        Sat, 24 Jun 2023 02:11:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u10-20020a056402064a00b00514b3dd8638sm455576edx.67.2023.06.24.02.11.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 24 Jun 2023 02:11:17 -0700 (PDT)
Message-ID: <f880e10e-080e-4c80-4faa-fc2c0e62f260@linaro.org>
Date:   Sat, 24 Jun 2023 11:11:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 05/15] dt-bindings: display/msm: dsi-controller-main:
 Document SM6125
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>, David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, Lux Aliaga <they@mint.lgbt>
References: <20230624-sm6125-dpu-v1-0-1d5a638cebf2@somainline.org>
 <20230624-sm6125-dpu-v1-5-1d5a638cebf2@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230624-sm6125-dpu-v1-5-1d5a638cebf2@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/06/2023 02:41, Marijn Suijten wrote:
> Document general compatibility of the DSI controller on SM6125.
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
>  Documentation/devicetree/bindings/display/msm/dsi-controller-main.yaml | 2 ++
>  1 file changed, 2 insertions(+)


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

