Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CCF8732BE8
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 11:35:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245741AbjFPJfm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 05:35:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50772 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344887AbjFPJfI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 05:35:08 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB07430CB
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:34:47 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-98220bb31c6so72609966b.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 02:34:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686908081; x=1689500081;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kZHHWviwTUp2ejqoeSZblZoLVhlAgV7AT/D/NA4zn2g=;
        b=RFbR3G/tJWjdDIhl9htsX/oE2/jyhXJPe7msrR7SD7etbtY7R5vps+2jRyEMM1cn1H
         OQGuk0DikMBzJxAtu0S8MmGnEDivWTbsbancTB2zJFM0GfeiwscwBRH7p9uCLPCu40FQ
         EjO0FALoXEE9lYAOeqxVwXnqBb5RDLpTf4ISklq6OMCokH9nrXg3zj47Nem+Nwl9VPvB
         5fYgobK51SnYWuInP1lANM2AAjqT4JK7l4UdFrmnLVsL/5CnomT1RygmZoq3EAQ/ljKL
         T4DSvmrK5hYssJ6aQoIJAHZwTbpUNLivkmzajCAZ0qrryrSJfqWWRj7XIFXCC+a36nVe
         uRwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686908081; x=1689500081;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kZHHWviwTUp2ejqoeSZblZoLVhlAgV7AT/D/NA4zn2g=;
        b=JyuJNwdkxuBdEzEi39adhNaKZKFskhcpctxHKN6NS3osmUMdIwNDSj8JS5sD1RPjG3
         x84EluY0SzDNBS7tJ7DGPL1JuQ8NtwcfaBWoeNbb5TQc0g64ipf5CfHm0FTnRgIfaQFe
         XFlQM0GYaB5sckX5Q7jQ8I2/7QYMdjnyYHctSgOLB/qbBhtk8Sd9mPB1dexZxaD/gRq+
         mrv8em5PGlJenVEHQRMmve8Sw2sXEVc3YO+YmNhRUtjLiowuupdQktXPOCIZajDdd51q
         8K3E4ab0N34/1AaEUTehN/k6YXzZ8jSeYHRyfcRqn2Cl2DxvsyrepQ6Luive7uK/emMB
         RRkQ==
X-Gm-Message-State: AC+VfDy84t8A2l3Htd08j7c4yH3sShIbqVf309Kdislsz1tpSBXjQNX8
        O5veQT16eO/gxhwSbyQwzHH4AsePQvJKZfWOf50=
X-Google-Smtp-Source: ACHHUZ4JmeiI5S5sC7B7JLCWQlF0z5JzQWoNDMiTjrVoe1w/cjglt+eqV1gOtm/XPjX2e8NGxPvknw==
X-Received: by 2002:a17:907:3ea2:b0:978:9b09:ccaf with SMTP id hs34-20020a1709073ea200b009789b09ccafmr1586083ejc.14.1686908080964;
        Fri, 16 Jun 2023 02:34:40 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id re6-20020a170906d8c600b00982aca1560asm1777417ejb.219.2023.06.16.02.34.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 02:34:40 -0700 (PDT)
Message-ID: <ffd57fcc-51f1-cb1f-e589-c1a42d3ceeb2@linaro.org>
Date:   Fri, 16 Jun 2023 11:34:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 1/1] ASoC: dt-bindings: tlv320aic32x4: convert to DT
 schema format
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
References: <20230616083549.2331830-1-alexander.stein@ew.tq-group.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616083549.2331830-1-alexander.stein@ew.tq-group.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 10:35, Alexander Stein wrote:
> Convert the binding to DT schema format.
> Since commit 514b044cba667 ("ASoC: tlv320aic32x4: Model PLL in CCF")
> clocks & clock-names = "mclk" is mandatory, it has been added to required
> properties as well. '#sound-dai-cells' is added for reference from
> simple-audio-card.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

