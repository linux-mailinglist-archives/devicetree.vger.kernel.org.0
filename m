Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99491745DAB
	for <lists+devicetree@lfdr.de>; Mon,  3 Jul 2023 15:46:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230421AbjGCNqV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jul 2023 09:46:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbjGCNqU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jul 2023 09:46:20 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D49F2FF
        for <devicetree@vger.kernel.org>; Mon,  3 Jul 2023 06:46:18 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9922d6f003cso556534166b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Jul 2023 06:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688391977; x=1690983977;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=orUm7AK8inrlj6FnQoFj2Etgcxq7vpMiWCKp5M1Ochw=;
        b=zIBJtJChIqmqPKxcQqMpbJWa2yjGX9at6YH0avVdjWoQEkHhmFBBMIeYp+JE21km0W
         R71M8+T4Gd83ATEvgKwrkgdvI5I/Wvwm/JCRrmey5uNzJ5jFHpY6hyEhNKgZcg0IhuVR
         nrdy6fYzdADFFECkRQglrcCo6Sjk4/QFy8QnEi7gxsOB3F/wCNBVGIy2Idcpl299dEOp
         H4YLOTbjoeSD54AyohNTTOuhQvIrQvPWGmVzN9yxkyYfQMnVmWTUhexiFPQ3JGIAjzXT
         D0oCucafGm9yvpa7T3bYlx/UuyAkM8XyFnKlN3yuCAfUmNC/CrIvDGa4jCRE8m8aH1zg
         4/ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688391977; x=1690983977;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=orUm7AK8inrlj6FnQoFj2Etgcxq7vpMiWCKp5M1Ochw=;
        b=eI5dwHf6GCLnxFlJeQG3Its27M2BIR3bERQoHUCDLUY54s6BDT4+jbr73Gd26y/t7/
         VujOEwjly8UZt3Y/AvBa04TXnue4LagSY+5WKEfgL555thF5igUi/6fKxJNSybVWvrca
         UAZkEgrxfn7pEmCBjkrda9wwxq4yKra2piJId5nDYq9Svb46Tr8NQ6QeogbkfRU/9eXX
         sOVNEDeaJzZGHnVUnKUluz/Z+veh4FKdrtXcPvZ/UtFTP0vzJ3SUD4t1zRuuBeO/O1sg
         /b/XfrjmVvbWlPSsrZPTPxO2RTSPsUulqdJ5fFA5kjBj+NodACfY4fd5DtEEWyvApcis
         8tkA==
X-Gm-Message-State: ABy/qLbzX9phKKOwTQjKjmJ3KowJZZmnyK98FRNY0DoJCkBbxS0LWukB
        HScxUBsi0QL2ws7xQ82bG5mXGQ==
X-Google-Smtp-Source: APBJJlHhuWgWnUgUTwbRIjOLubYyaQ4TC5RAC8Wmqq88LAzrBBjLSjiWEzV8UqJjRafhQj3UTZ3RWw==
X-Received: by 2002:a17:906:2dca:b0:989:450:e567 with SMTP id h10-20020a1709062dca00b009890450e567mr8076675eji.65.1688391977374;
        Mon, 03 Jul 2023 06:46:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id j18-20020a170906831200b0098733a40bb7sm12012594ejx.155.2023.07.03.06.46.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Jul 2023 06:46:16 -0700 (PDT)
Message-ID: <2ce57c29-ff1f-2f3f-df59-528503779243@linaro.org>
Date:   Mon, 3 Jul 2023 15:46:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] dt-bindings: soc: qcom: stats: Update maintainer email
Content-Language: en-US
To:     Maulik Shah <quic_mkshah@quicinc.com>, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_lsrao@quicinc.com, devicetree@vger.kernel.org
References: <20230703092026.4923-1-quic_mkshah@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230703092026.4923-1-quic_mkshah@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/07/2023 11:20, Maulik Shah wrote:
> Replace my email.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Maulik Shah <quic_mkshah@quicinc.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

