Return-Path: <devicetree+bounces-81-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 751B479FB8C
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:04:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0A0571F21E47
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:04:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4200C25102;
	Thu, 14 Sep 2023 06:03:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34749184E
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:03:57 +0000 (UTC)
Received: from mail-wm1-x333.google.com (mail-wm1-x333.google.com [IPv6:2a00:1450:4864:20::333])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F1E0F5
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:03:57 -0700 (PDT)
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-401bbfc05fcso5651835e9.3
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694671435; x=1695276235; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wJrl1gf/KgIL72MKV3GsbSVepIuZ30o12UlDdGV1sJI=;
        b=k14rQHBIGnztU1L5LBd4Fgzd2zLSk3gWWSK/MAsqxSRlvE2pt/UoL/8dkaiLhdlnN7
         UfekMtc42QaMae6PqJss0L2LFlii60ZhZg2Dev3VzIVtsMZnRilNZnwM7Q5WP35ugn+0
         kF1r57EwulUuvbVyoKk71NUR2hSpXLtm81r2VCIN9zLpUambgpFetoGyvAFUZW5mudiI
         YQjCWdNqkunJRZcMa/erKlzbzJAx5m/Ma+6M9cYQUz7AHe7egVlp75mFq3l6Ipytjfgo
         uwGtSExKTSkAQFOl7b+ahcfLXRMvtELCZVtNylNB03SKF+2BuhVxybHWRU0eSAEJlCaQ
         WrcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694671435; x=1695276235;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wJrl1gf/KgIL72MKV3GsbSVepIuZ30o12UlDdGV1sJI=;
        b=mzLesST4x7ibQGM2TQWKZ8SLx+YlP5zX99K7++h7zEmglhHoBbQYjcZR5egSVqSxhR
         UIN8+IcG+RjyFVh/FE8GdAGZCq6dCcTDB+XCS2cDTqq6qp9tcShp4QtXEXtlnSf2GZfb
         2i5lXrc1I0wZMWITnceCb7AUOy5PY5HX6E9HwE1ujylQv/ja9q4NmtMGaQBxyeYzDXsO
         MnQ65rOmmQbQEn5ON72pTQsfk+vUIlg6G4l53mThlwXTwaKXKUZtgQDrI3FMre+RkwUg
         Av0q8Gwm6gMnWM/q8Nu7UVE2qDuFMxvjWLP7Vrlx8UxiItsB7DC39CMssfTYAYbeu7DM
         nAVg==
X-Gm-Message-State: AOJu0Yz2+p+N0G+tRhL8tqzRsfTx5obLAZHQbM5DtrRjaKJeGNXix0X3
	JRwiKUvJpN8JQbIvKDPLvg2DeQ==
X-Google-Smtp-Source: AGHT+IHcGwQRogpWWtp7Paz0eXwAfZRpttx5AEZ+wm18CWR/bLpMdyGvknlYqkTXte6C48a1sbwfVw==
X-Received: by 2002:a05:600c:3657:b0:3fe:1871:1826 with SMTP id y23-20020a05600c365700b003fe18711826mr3809097wmq.27.1694671435549;
        Wed, 13 Sep 2023 23:03:55 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id s24-20020a7bc398000000b003feee8d8011sm3849122wmj.41.2023.09.13.23.03.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 23:03:55 -0700 (PDT)
Message-ID: <73a52175-73bd-1b1b-9592-4d8bd0ab2874@linaro.org>
Date: Thu, 14 Sep 2023 08:03:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] dt-bindings: firmware: document Qualcomm SM7150 SCM
Content-Language: en-US
To: Danila Tikhonov <danila@jiaxyga.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, robimarko@gmail.com,
 quic_gurus@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230913194418.30272-1-danila@jiaxyga.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230913194418.30272-1-danila@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/09/2023 21:44, Danila Tikhonov wrote:
> Document the compatible for Qualcomm SM7150 SCM.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  Documentation/devicetree/bindings/firmware/qcom,scm.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> index 4233ea839bfc..0c073335f8ff 100644
> --- a/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> +++ b/Documentation/devicetree/bindings/firmware/qcom,scm.yaml
> @@ -56,6 +56,7 @@ properties:
>            - qcom,scm-sm6125
>            - qcom,scm-sm6350
>            - qcom,scm-sm6375
> +          - qcom,scm-sm7150

Where is the user of this binding? Please provide a link in any future
submission without obvious user.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


