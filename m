Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECBCF55FC9C
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 11:54:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232822AbiF2Jnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 05:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231338AbiF2Jnt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 05:43:49 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46D6C3B2BD
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 02:43:48 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id cw10so31435414ejb.3
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 02:43:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Hhp4iRKsB2fd3GYkMrO2usPvXFHFBKKxfJTZ32PkYi8=;
        b=uBHK1iXDpPOcx19wUFVC+45GKpJJVU45LOk7BiTSxcdCl5yz/NKu/Et9XqBXQue68i
         rwMZNvBERx2PsEzpqQ0zfdRHqvoITqxj1vMJ72+fgFK9ifn9yXB+dV8TlZPJJiGZ845+
         nZWvuDBRUiGh0WqXkzeKA/JOq9iWKHZ7JIxfnu+TCEXa32/E5kDFNySs82uLLoPSO/MZ
         oxzh3j9QDqFDy/J1GlwpoAUe618+KPJnEWXIqhlTM/yaSDRw2BzS3Io+WeMEEY0V+Bn7
         5GDIOhlyO4ObprlBmd1l1NTS932hKjxDIjDyeR246XaYMnneWcG31qwgjVTuS0RvcXFZ
         5lMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Hhp4iRKsB2fd3GYkMrO2usPvXFHFBKKxfJTZ32PkYi8=;
        b=bJ2eq1GhZ8t1k4nVzWIECaC096Gj5Bx1d1L14bI8BNPZs+z68rApL2yCCe4IfNpp6r
         9G+B0x4Qm4UplTBgZ6TlIm1pC6kQmOKgk52MqPqqjrAhy8lWtSIgwQE+wnIdKy76Q5Ne
         nFatsg5zC17r217fnQCRnCRM+auzX+/1YH0m9yEZSgIK/a1y1bbM7qIS21L84dqC9QI0
         sQGTvAtz0KMKExKUqv3fcOPtoapSgMc7NE4S8gsxWvKVtzA3nWbtC7w7U4J+RjlsWTN5
         Iet5ObhJ9Wi1+mLFxK9g0QiuU/hZyFGC3gtU3PDMVUzJao3im/fXMB2NbidOlNvyMpeo
         MHNQ==
X-Gm-Message-State: AJIora8SJNuOGro5GvaxVdZpzd1hryIw8VfxEdWq0ez59GaS01CLvush
        VzQcSsbG6OlffG1ljFxdGxFOqA==
X-Google-Smtp-Source: AGRyM1tVb5Pr3M9ohRSkQukBaigP2Svf1r1uvTIEe45lKwy0lFJ4Isx+daxWnNjOeIci/FPWsukU3Q==
X-Received: by 2002:a17:907:2d8c:b0:726:2b37:6d44 with SMTP id gt12-20020a1709072d8c00b007262b376d44mr2450515ejc.224.1656495826870;
        Wed, 29 Jun 2022 02:43:46 -0700 (PDT)
Received: from [192.168.0.183] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id t4-20020a17090605c400b00706242d297fsm7379465ejt.212.2022.06.29.02.43.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 02:43:46 -0700 (PDT)
Message-ID: <cf52fbf4-2105-8fa9-5f3b-601a6e132e97@linaro.org>
Date:   Wed, 29 Jun 2022 11:43:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 1/3] dt-bindings: thermal: tsens: Add msm8992/4
 compatibles
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        ~postmarketos/upstreaming@lists.sr.ht
Cc:     martin.botka@somainline.org,
        angelogioacchino.delregno@somainline.org,
        marijn.suijten@somainline.org, jamipkettunen@somainline.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@linaro.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220628142359.93100-1-konrad.dybcio@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220628142359.93100-1-konrad.dybcio@somainline.org>
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

On 28/06/2022 16:23, Konrad Dybcio wrote:
> Add the compatibles for msm8992/4 TSENS hardware.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
> No changes.

Rob's ack disappeared...


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
