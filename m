Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2957158EF99
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 17:48:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231708AbiHJPst (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 11:48:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231482AbiHJPss (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 11:48:48 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E71BA5A156
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 08:48:46 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id l21so5046270ljj.2
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 08:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=qO3R4TRwFVDwtSz2v/eVHonfq/kJTfpqe/6GQS5ROS8=;
        b=QGoQSE8L9+ivCxqMtksPllpM+HMweN/IQWYilLu+yTlqKlOjMrmk2RYqbJ4GARJqNj
         d5A2W/ZnN2qlSE956IWKj5T99iPxXsqbMHAnLH1FZcvXz9vE90pR0YSlZ/qPwBl+PyGP
         N8AFl5LtST/Q35DGg57+LVj2ay2AbiaOazpgR+tsFPOgTC5MFNoHilqQWj45MQlG9Jw7
         h6d9kEynTh3c3EsRRVen+RDp1mTmCBhQmW7kOl3LAnAwVNhmAyF4PJy+wBJrAahQhCpo
         WbB9W1gK3Q5Fk//uf63zRNdr/9UqoxXpY5bhGJ4lbELjTYdWlrnOR3UQC4QhQGiof4it
         1WZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=qO3R4TRwFVDwtSz2v/eVHonfq/kJTfpqe/6GQS5ROS8=;
        b=7TaS3jhPjzRoDOvxhkoFr/E8UjiAHsKecNispj1hGSFQsMxbJmAebNT4hVG3a0vz1l
         Rakl/6D8Mp7BI+R4Ziw3q1CN5Ycy43gusPNiGnsSiQQMEuvtJmZ7ebWF/eZJ7O8rLrS+
         5U84Lnw55mjy4uW8nAZ9gLKhj+H5KJFu/ts4M6TyF9xV7U+4tboCX+RaDTygxqZIiCoR
         uZJRDm/nFftC3WGY0gf5Fo3zJq0bO1UK1ieANRtFd2mKE0vCxf2qYQb2nyWkhxjeKcvm
         6kiiUqT3EiqEveYIke/AOpSkCHIIMbuPWw0CB35JXAMWZpeMFGam/lSvlHWP8EQCBxgR
         oxzw==
X-Gm-Message-State: ACgBeo1XyHGWVUEmW8+6h/13d+pbKaQFVB77/j2X+CRd0AtipBfVz/Bc
        B1lqPdAvhIxano8Blu5c9mKimA==
X-Google-Smtp-Source: AA6agR6ou9uMnqssZjsv/mQww0BkhDijz8PAkwOIFkni0Ae1gAIMNMbilrMwyON1p5QltdhqGAHpfw==
X-Received: by 2002:a2e:a889:0:b0:25e:3d55:b092 with SMTP id m9-20020a2ea889000000b0025e3d55b092mr9460020ljq.402.1660146525302;
        Wed, 10 Aug 2022 08:48:45 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id o7-20020ac25e27000000b0048af7e1b268sm379270lfg.210.2022.08.10.08.48.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 08:48:44 -0700 (PDT)
Message-ID: <271f4997-dcd6-bad5-1617-d226b724749c@linaro.org>
Date:   Wed, 10 Aug 2022 18:48:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 4/4] dt-bindings: soc: qcom: stats: Document SDM845
 compatible
Content-Language: en-US
To:     abel.vesa@linaro.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh@kernel.org>,
        Maulik Shah <mkshah@codeaurora.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220810105718.2137015-1-abel.vesa@linaro.org>
 <20220810105718.2137015-4-abel.vesa@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220810105718.2137015-4-abel.vesa@linaro.org>
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

On 10/08/2022 13:57, abel.vesa@linaro.org wrote:
> From: Abel Vesa <abel.vesa@linaro.org>
> 
> SDM845 is a special case compared to the other platforms that use RPMh
> stats, since it only has 2 stats (aosd and cxsd), while the others have
> a 3rd one (ddr).
> 
> So in order for the driver to use the dedicated stats config, we added
> the SDM845 dedicated compatible, which we document here.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml
> index 473adca4e973..ad6ac0af16bf 100644
> --- a/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml
> +++ b/Documentation/devicetree/bindings/soc/qcom/qcom-stats.yaml
> @@ -20,6 +20,7 @@ properties:
>    compatible:
>      enum:
>        - qcom,rpmh-stats
> +      - qcom,rpmh-stats-sdm845

qcom,sdm845-rpmh-stats

https://lore.kernel.org/all/20220720073326.19591-1-krzysztof.kozlowski@linaro.org/

Best regards,
Krzysztof
