Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 755A16E128D
	for <lists+devicetree@lfdr.de>; Thu, 13 Apr 2023 18:41:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229647AbjDMQlY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 Apr 2023 12:41:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47428 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229787AbjDMQlU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 Apr 2023 12:41:20 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FD9CAF2E
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 09:41:13 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id dm2so39064145ejc.8
        for <devicetree@vger.kernel.org>; Thu, 13 Apr 2023 09:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681404072; x=1683996072;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wQYhwxmi55X7Z5hFzk1ISpkyBuA28S3CElCKdf9WBEY=;
        b=TnPWS3sbZru+LUpEY9hC24v1uPSt976uz9ck+arSrMGp7Feu44wC258k0syTBRmq2j
         YVZbFbGFvsZFtlfHwN3+v8AQAwf6PukERtgaorlWpxLRpD1DKTDaT2K3cSImf3EvqPnr
         5e53sEcy35zSJc4TuJN2D8OB9NHYcSSnWuO12B2N3CtRN9DaLPQI4sZCl2JQciHBF3QE
         ZoKolHoP9ErCaPu58a5GP6ou/wcp/JwCWfUrFut4jSOzVPwZ//wu2M1CU32vz6CvP8gR
         lp5EoWoOh1hpQ6nUrvaRL6L4QPAwVQ0A5IXEEsdDn2/0lERcugXZo9s5IxfrQIRWR0T3
         RHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681404072; x=1683996072;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wQYhwxmi55X7Z5hFzk1ISpkyBuA28S3CElCKdf9WBEY=;
        b=VZdlX8Ufm8o/FuLSSh5u5+QjwcwqiF/bqZ7AOeXOaiQyGsbRZniEEhOZCI2ZZTw2nU
         pYeCjXfZrW8G3Pl7Q49B1njKMKJsKWsn6MoCV2xNz5/Rbs5QIIDKN2w09p4i7WN66W6i
         JvuWWOyBB/K32AVuRUjhVojUGgx0m6i4qIbHqz1jQAQ2D8/efmTQzOJTD477lysrvWqZ
         fYb4goA+ib0rNY2mpPl1VlNPaDBqLSMLTJVTlnj1ERxz1alrSGkunFig9ayq4NDoer3t
         At6pjGbP/8JGLyy6777jmn3a1055qgNYDcqAQEQQQZllO1jbOGcXx0HalDcqg9bNiWhw
         qeCQ==
X-Gm-Message-State: AAQBX9cf9rEuYHfgjnujq1+ffUNX/A5rHjviOSOGXuy8sQ8lHBJPM4S1
        v4ABGp2Sop0OZPs1BGy0JS7t6TqShhak7GMJE4w=
X-Google-Smtp-Source: AKy350YNIupcubUhuSvWQHjQtt509aCIsOXZhDVvTPXxrk+F7HuI5Yv5fEJfugkTzWAus+6gCWGLjg==
X-Received: by 2002:a17:907:1c89:b0:94a:a6cf:5ab2 with SMTP id nb9-20020a1709071c8900b0094aa6cf5ab2mr4618180ejc.18.1681404071799;
        Thu, 13 Apr 2023 09:41:11 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5032:d2d4:ece5:b035? ([2a02:810d:15c0:828:5032:d2d4:ece5:b035])
        by smtp.gmail.com with ESMTPSA id fy15-20020a1709069f0f00b0094a5b8791cfsm1194440ejc.109.2023.04.13.09.41.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Apr 2023 09:41:11 -0700 (PDT)
Message-ID: <58bf68b4-dad4-64dc-6eee-9f6cc154c1ca@linaro.org>
Date:   Thu, 13 Apr 2023 18:41:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH V3 1/3] dt-bindings: sram: qcom,imem: Add Boot Stat region
 within IMEM
Content-Language: en-US
To:     Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
References: <cover.1681375949.git.quic_schowdhu@quicinc.com>
 <0e48ef5a9558c0bab5c2918af3c15ed4425b07be.1681375949.git.quic_schowdhu@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0e48ef5a9558c0bab5c2918af3c15ed4425b07be.1681375949.git.quic_schowdhu@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/04/2023 11:28, Souradeep Chowdhury wrote:

Thank you for your patch. There is something to discuss/improve.

> +  "^stats@[0-9a-f]+$":
> +    type: object
> +    description:
> +      Imem region dedicated for storing timestamps related
> +      information regarding bootstats.
> +
> +    properties:
> +      compatible:
> +        items:
> +          - enum:
> +              - qcom,sm8450-bootstats
> +          - const: qcom,imem-bootstats
> +
> +      reg:
> +        maxItems: 1
> +
> +    required:
> +      - compatible
> +      - reg
> +
> +    additionalProperties: false

The feedback about additionalProperties was given in different place. On
purpose, because it is easier to read when it is placed before
properties for indented cases. Therefore move it after description, how
I originally asked.

> +
>  required:
>    - compatible
>    - reg

Best regards,
Krzysztof

