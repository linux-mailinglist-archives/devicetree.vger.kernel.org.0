Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8452C574B95
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 13:12:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238288AbiGNLM2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 07:12:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51398 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238291AbiGNLM1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 07:12:27 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7472946D8B
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 04:12:25 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id e28so2239702lfj.4
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 04:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=fvqr8DzCB5Ms/ndKd51yog97G935KCQIcJUMeAgMVno=;
        b=jH3QiWlHtlfoa285UHBE/VcWeZvy+mWv8ej2r09+geEqhtysnIcqJrPxFqiPyj7+DW
         vmc8luVf2oe5ikO9Gmt7Wt2fXfEHhb4ZaEpnDXvSxzIF0iHpFVdwK8NtKk1JQdVFwVT5
         ALl/1n6s/i+qewLXz99/tweY9Jyt3H4ls1fGcieaPiLer3hhqkInYN//KZE71wL+fRUy
         iSfKCQWhzC8zEitfq7SXfguxh8eh4fUHjIz4XC8uHs369oxkfLstSKAtqVMqoJE7pNbF
         MyTK+43wR1oFaz2kChl4uHiubD3ozhysHVhUZJTsiEnxBf3vs0nl0Pl/U9loIanBW7XY
         qTBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=fvqr8DzCB5Ms/ndKd51yog97G935KCQIcJUMeAgMVno=;
        b=JY9k2dKDPbX5XxTOShGowtaREyyTTIRlIs7aUQ/hHMbL4qALMMA+oK67xMzX3uNgsz
         7IzRgahjUbeRcSE/mpxoJ58o3KRPhdUm4R4okL+RrzrEjga//udNaSrMg5xmXaZ3i1do
         6g8LgHhcTRFlRvPYtyO53YKP5qjqmEQlFq8jg664EAD3g0W8PnNEkFjjXiMaGOwZgHq8
         MeeslRbMfLuyr3E37MjlZt9CVuuA/HGrUFevQrAjloeIiA/VBCrRYHS4NNg802t3zBHt
         9dli3Ocaxu7wEUXSbTy2/BVZ/qyfbaUTEg4qxJnGDv+DrzSOILJNhX3lHCaSV2x2bvct
         kFDg==
X-Gm-Message-State: AJIora/1HZV+cF/fOeU7cHeWqct242sMbEWLUbxvoykBwZdEZFnBNv7N
        A0Flh1Zqh2RkELZVz6B7sVCIfw==
X-Google-Smtp-Source: AGRyM1uCyLRMhFXry/qiHNx5qI9aOJ2I8WKRtkBiIN8tzefGYlhoUNhVFIVYj/Kq0zEZDXj+B2Eawg==
X-Received: by 2002:a05:6512:3342:b0:489:e367:ac with SMTP id y2-20020a056512334200b00489e36700acmr5231044lfd.191.1657797143883;
        Thu, 14 Jul 2022 04:12:23 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id f8-20020a05651232c800b004894b6df9e2sm302327lfg.114.2022.07.14.04.12.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 04:12:23 -0700 (PDT)
Message-ID: <63c2f4a0-e2f7-cf86-50de-dbbac074c26e@linaro.org>
Date:   Thu, 14 Jul 2022 13:12:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/4] dt-bindings: arm: qcom: Document Sony Xperia 1 IV
 (PDX223)
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephen Boyd <sboyd@codeaurora.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220713201047.1449786-1-konrad.dybcio@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220713201047.1449786-1-konrad.dybcio@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/07/2022 22:10, Konrad Dybcio wrote:
> Document the compatible for the PDX223 device.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
