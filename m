Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D726F669166
	for <lists+devicetree@lfdr.de>; Fri, 13 Jan 2023 09:44:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240146AbjAMIn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Jan 2023 03:43:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239400AbjAMIn4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 13 Jan 2023 03:43:56 -0500
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70AE355879
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 00:43:53 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id ss4so43405493ejb.11
        for <devicetree@vger.kernel.org>; Fri, 13 Jan 2023 00:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zB+Yx7ZN+t7edTSSom9Kj39XMeVTKD+ND0VCe3SN4Xo=;
        b=T0mlgn8SoCNdoXKYzWPoS6UZfF4bzgKg38/V/2QqDRoLC8pHUYv6ZiFwbPYy3kJjyf
         gOZ0KTVHs9NjUAqYjo+BNTiT809LbyGIQaQ2tRv9TBNw9x+NOWfWunTvDHWn/hYiMhgX
         ks/HSCZqpbrt3g/tYDo5xacZQ6Kg7EwNxgCCMBRCuvCeIiHQgoAL1mKgyBroSxKB1P3P
         lI1FulipNUMrGHzrKS7Kzotv+wldtlp4dc4iHAVOOaTOKrwpQtYW2GEF8mX1YQanjtYQ
         qHCOiL942qC1P2KpmkiocIEW7RF6lZS3RKqBF2l9C1joEWR2MoG8QlBAGvmi1BL1mqo4
         94EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zB+Yx7ZN+t7edTSSom9Kj39XMeVTKD+ND0VCe3SN4Xo=;
        b=QXNdAorwl4kyWRL2T7Hfmu5uW8akfKeTo5C0eXFEonHUzghzrfD+7d+ubyNGvRKTgn
         HgnWpl4Fah60c5PR6+hPH7ji1RmlbysbBj1TUi8u2msZ7OLxsmtPHRvd0m7OFKmpF7x6
         YByw0unSc6x6RYEJf+cP34lwtH0ic0PdhcTSTJaFAEfXg0zcj0adAt4n7z1CX4eC+pqw
         jtXZIBo9b15/uB1yKz5/95GKL9jAMlbgY30pzr+26/lHIFLiyJDDnPh1FkTYkskROevH
         QQgbniIjsqQhcIjp8EfSWFd1PtmCF3xBiv4/mLE8PL9zkuQ3XfsiTOMlDFplQQwps8pB
         0kmw==
X-Gm-Message-State: AFqh2kpTr15dZHFCL6LugxrKKpW/8CR8YtGmra5N1nB5VuDaqCEs4gl2
        4lguufHwfqRmWSqezyhgi3uwTA==
X-Google-Smtp-Source: AMrXdXtxzKO66Ep+oG3JB08FrDupgVqkcya4/5xLrZ8ij7hNjKIxPF0yY8p0tpEqRM+R6h/+bYJM8A==
X-Received: by 2002:a17:906:5fd0:b0:862:11f6:a082 with SMTP id k16-20020a1709065fd000b0086211f6a082mr6581682ejv.17.1673599431999;
        Fri, 13 Jan 2023 00:43:51 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o11-20020a170906768b00b0084d242d07ffsm7979277ejm.8.2023.01.13.00.43.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Jan 2023 00:43:51 -0800 (PST)
Message-ID: <04e90058-606e-9f0d-3e1c-844595b36fb1@linaro.org>
Date:   Fri, 13 Jan 2023 09:43:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v6 1/2] dt-bindings: clock: Add QDU1000 and QRU1000 GCC
 clocks
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Taniya Das <quic_tdas@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230112204446.30236-1-quic_molvera@quicinc.com>
 <20230112204446.30236-2-quic_molvera@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230112204446.30236-2-quic_molvera@quicinc.com>
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

On 12/01/2023 21:44, Melody Olvera wrote:
> Add device tree bindings for global clock controller on QDU1000 and
> QRU1000 SoCs.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  .../bindings/clock/qcom,qdu1000-gcc.yaml      |  51 +++++
>  include/dt-bindings/clock/qcom,qdu1000-gcc.h  | 175 ++++++++++++++++++
>  2 files changed, 226 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/qcom,qdu1000-gcc.yaml
>  create mode 100644 include/dt-bindings/clock/qcom,qdu1000-gcc.h
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

