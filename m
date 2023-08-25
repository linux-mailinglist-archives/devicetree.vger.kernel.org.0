Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C2F2788763
	for <lists+devicetree@lfdr.de>; Fri, 25 Aug 2023 14:30:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232359AbjHYM3w (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Aug 2023 08:29:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49312 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244889AbjHYM3i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Aug 2023 08:29:38 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FA3A2700
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:29:12 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so4002497a12.0
        for <devicetree@vger.kernel.org>; Fri, 25 Aug 2023 05:29:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692966523; x=1693571323;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FhBMwE3MHaDX6ND3qGNugUwUVOyYbmNTlBBuciUOviU=;
        b=aH7vGVSRCLDmoTWkEC7IZ1dxd68MnPouE/QYJjQCkH/C4i+4dEEIkFZ0acfdePNkR/
         1KY+w5wnDJ9OBswFzVzNrZcVEFeqKaM1++X68UMw85vIhod7QZoq6j5/hl7povGcq1MB
         DwS0FpeG3lY+v+lVl8qkUv4Px1o3JPYtZx6Eyzmyj2/DtKN/RTIQWW/Sbv7rrxiYgfUM
         xOBPiRs4VAlyBeqXdcbHOgnE74hdirl4kLDlm4hgaXbQz9067XeSrb/tb3VkYiRySopS
         eYoI8M0aaR6NtTDDwzd83LRqTmqT6XXTOQwde8zpezccRUBD4rYB4rpI7F+Aik8p3BLF
         J8JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692966523; x=1693571323;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FhBMwE3MHaDX6ND3qGNugUwUVOyYbmNTlBBuciUOviU=;
        b=eq/3xeNF7IHdS7CGOeBvUVKMwNpXsGP+JGS/TqcajZcXO6bXZ252QrkBUxKTJx8VWm
         GkcP/7iypfYSGlmt7HwhEXEuxQZJ2OVA2tKP0/BPtJRbGmTc0zp72X3cY9K3q+KIrkM0
         4Tgbr7aXNWhh/ZR07j1jVWEwmAbHx+01gbeoCUDV1mBtqsO0UIrayzVOzJtm7UZe29lv
         MTcyha6Vg+6EP0Po2wPT47VCjCna6KqQ1GuG3/0nHarxQT0TUKWdxPNyHEFTNwP7uXww
         /2qEgs9daMZGM2UFaR0xjhptr2CGyOLpRvyBqbPH7pHKasZPb6E8hgvap9NUjydnid29
         EA9w==
X-Gm-Message-State: AOJu0Yz4CQw4kRIQlAGoSc3+RYCqjIKrNNeJqnC9eNhUQOH1eIT6TNIR
        JgidvJ3MYpVnBQuZ+HymkwRQXw==
X-Google-Smtp-Source: AGHT+IElSbp36KrzVD5bvYcQ7Jekn8F93SVqrRsyyl1c1Vm8K052ePheCMZItL9tFxamFHFADIvCdA==
X-Received: by 2002:a05:6402:11c8:b0:51e:5bd5:fe7e with SMTP id j8-20020a05640211c800b0051e5bd5fe7emr22520456edw.17.1692966523565;
        Fri, 25 Aug 2023 05:28:43 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id h11-20020aa7c60b000000b005227e53cec2sm957223edq.50.2023.08.25.05.28.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Aug 2023 05:28:43 -0700 (PDT)
Message-ID: <da744640-9f06-69cd-16fc-44ddd1e8c7c2@linaro.org>
Date:   Fri, 25 Aug 2023 14:28:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH V2 2/7] dt-bindings: clock: gcc-ipq9574: Add definition
 for GPLL0_OUT_AUX
Content-Language: en-US
To:     Devi Priya <quic_devipriy@quicinc.com>, andersson@kernel.org,
        agross@kernel.org, konrad.dybcio@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, p.zabel@pengutronix.de,
        richardcochran@gmail.com, arnd@arndb.de, geert+renesas@glider.be,
        nfraprado@collabora.com, rafal@milecki.pl, peng.fan@nxp.com,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, netdev@vger.kernel.org
Cc:     quic_saahtoma@quicinc.com
References: <20230825091234.32713-1-quic_devipriy@quicinc.com>
 <20230825091234.32713-3-quic_devipriy@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230825091234.32713-3-quic_devipriy@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/08/2023 11:12, Devi Priya wrote:
> Add the definition for GPLL0_OUT_AUX clock.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  include/dt-bindings/clock/qcom,ipq9574-gcc.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/include/dt-bindings/clock/qcom,ipq9574-gcc.h b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
> index 08fd3a37acaa..f5749bf53898 100644
> --- a/include/dt-bindings/clock/qcom,ipq9574-gcc.h
> +++ b/include/dt-bindings/clock/qcom,ipq9574-gcc.h
> @@ -216,4 +216,5 @@
>  #define GCC_CRYPTO_AHB_CLK				207
>  #define GCC_USB0_PIPE_CLK				208
>  #define GCC_USB0_SLEEP_CLK				209
> +#define GPLL0_OUT_AUX					210

Although you remove here blank line...

Best regards,
Krzysztof

