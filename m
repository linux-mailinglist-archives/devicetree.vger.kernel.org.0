Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8CA2659614
	for <lists+devicetree@lfdr.de>; Fri, 30 Dec 2022 09:08:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234659AbiL3II0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Dec 2022 03:08:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233908AbiL3IIZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Dec 2022 03:08:25 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7727112AE3
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:08:24 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id g13so30806451lfv.7
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 00:08:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qZuUPPj7POQgrgUmQr0W44coDKoeQ+r4sHxkONGBEbo=;
        b=gcQi1AjRCRn0NUKC9qb1Lxm3ZX3cooPwQ0vv7LWza7T9fSIfpwbAFvDwGjXZZ/UM5+
         iWw8rLFaPnauTg3x8EAuk8EqYj51wHLdrv2B5lb7ukwnjBeCtQSCv3/It0AM39c1EHFJ
         AqxFb2a/6etdbc5UziuZZSNueKJ4uBe0zdU6urtjk3b3mDYDASMKng3eaLKJh8p5p0LU
         83volJT0FNUmMCCbwGxoH/6AeFs08P55kPZRFsAu9kR2NI1AEbh6uLubHO/b8x0CkVnq
         rxI9oWOU9xx6+aVdu7idMmC3DLP68NeRhPGQ8MiTjekZRjPDtuHbbJKNdVg+6TAt0wDz
         aaWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qZuUPPj7POQgrgUmQr0W44coDKoeQ+r4sHxkONGBEbo=;
        b=cQjU+QWCFlB1htYBRG+6JnqRuUaBw8ugxL1TtqXRdIVEyKx1BT20RI5QCHLunsZTdo
         R28tyBz5XLVmuPNZGUkdh+dH56ZxCrYlA4Bq45QZX36evMu/VwP+nV09ugf45bQfvv5b
         CHO7lV64klSZSajJxB31J7VIRX4vDY1V8y0KYlaidK2fVnJ1rfzNfnHrDFcjpCFKyypH
         +l20JDxJiCZNcNbt1NQ6DNvx5D/KtInUQyKfNcnNgv8GnhpcRa3D1C0uKE+0q6PY5xzX
         EakAOrapr5egtSFXV2lp/3zm1UHui15A63GDpdjs30Y4A/E+ahLkCAf/LJfokhaZn6gH
         BAzQ==
X-Gm-Message-State: AFqh2krN1bnifoO11s5ifyunnulSMkx7qkiv94RNGh3Fq3hckhYV4uzp
        70DicAZObwOUEsqTlbIgPYfwgGsjPEhOj/s1
X-Google-Smtp-Source: AMrXdXt2dvOLFZXV9QC0OXYs6SE6Jvai4T8mNKAEwswxW7IRGJJWozZmK0quXrerlcKLULgfRmjyKQ==
X-Received: by 2002:a05:6512:4002:b0:4b5:637f:f1b0 with SMTP id br2-20020a056512400200b004b5637ff1b0mr9675274lfb.2.1672387702887;
        Fri, 30 Dec 2022 00:08:22 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id h4-20020a056512054400b004a9b9ccfbe6sm3396021lfl.51.2022.12.30.00.08.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Dec 2022 00:08:22 -0800 (PST)
Message-ID: <9b37ca5b-b28a-f5c0-661f-3c7168439470@linaro.org>
Date:   Fri, 30 Dec 2022 09:08:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 1/2] dt-bindings: soc: qcom: apr: Make
 qcom,protection-domain optional again
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Jiasheng Jiang <jiasheng@iscas.ac.cn>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        linux-arm-msm@vger.kernel.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
References: <20221229151648.19839-1-stephan@gerhold.net>
 <20221229151648.19839-2-stephan@gerhold.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221229151648.19839-2-stephan@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/12/2022 16:16, Stephan Gerhold wrote:
> The protection domain functionality exists only in SoCs starting from
> MSM8998 [1], while the APR bindings are also used on older platforms.
> 
> Commit 41288c305836 ("ASoC: dt-bindings: qcom,apr: Split services to
> shared schema") made the "qcom,protection-domain" required but it
> should remain optional to avoid dtbs_check warnings on older platforms,
> e.g.:
> 
> arch/arm64/boot/dts/qcom/apq8096-db820c.dtb:
>   apr: service@3: 'qcom,protection-domain' is a required property
>   From schema: Documentation/devicetree/bindings/soc/qcom/qcom,apr.yaml
> 
> [1]: https://lore.kernel.org/all/20200312120842.21991-1-sibis@codeaurora.org/
> 
> Fixes: 41288c305836 ("ASoC: dt-bindings: qcom,apr: Split services to shared schema")
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

