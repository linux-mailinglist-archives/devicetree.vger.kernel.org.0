Return-Path: <devicetree+bounces-577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D7377A203E
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 15:52:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BC52028283F
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 13:52:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10CE310A27;
	Fri, 15 Sep 2023 13:52:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 990E110949
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 13:52:02 +0000 (UTC)
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54871270E
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 06:51:55 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-9a9cd066db5so291175166b.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 06:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694785913; x=1695390713; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YKeNS2i0N5nQ1uQ2kxRp2a99pDuiA0Cjg/sUKEabIGg=;
        b=wqbbSVqAMpncKPXEdBVGP3jfhHjwnLL+hEYYOuFN1rjF/OKiPB6xr8FrW3PNgcJH0d
         gKZrg3BxmEC+TG81mCd0RZ/WrV35GsTGWzBDvWEr1gi1iZTI6OUJJtSA1VWYzOjCfVr2
         rXcTh0DekLxSGyLbIMmihMTuLuwc1TJvYdWNRf4gkvLX4gtocsNGlSkhO6tK6JDcTQab
         zTKgiPvCZfkaY7qhDW2ol2CQ3Mq0BMhT6ifsTDVjSihe1cK4itQ4CU4guuWnO63agD1C
         IONphnAHAb5IVwWAe3wDpkFoAPrWdOzkrRqJBoGQ/wGifIQ3LAc/ev5rtPtfxKmB/Quu
         +w9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694785913; x=1695390713;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YKeNS2i0N5nQ1uQ2kxRp2a99pDuiA0Cjg/sUKEabIGg=;
        b=P/a3LQH7Ol7ZQVNa5d5k3GrjGd9jOZ7UOeLggfGtsFBhQxyWRN00Odm55EmdBBQv8y
         rWnvsH9X52K1l3SjwMMQERd6Yvwc/T8SpT27vFH+C9+Ls/A/ErqdmrnkyRGFpLJTCjrG
         1JUqrwqrM+oAuEPiOMQeRoFrke59wo+HObSfoFoxk89avEURmh4B+OK/hIqq5o3G/1iF
         R2JPJJmU1/eBAQP29ajJVwOcNrTJQ0yWiADn0R0lUSJCsVkDCd5vMCHuxVwTWbPcwj3H
         nZqRQTc4RDE52fBdg07CFPTFtrHeOIQ+dAwU+ZW1Y6mZm3Jd3AoZFcvtD161YN5AvVzE
         WETg==
X-Gm-Message-State: AOJu0YzmbX6ZXCs9o3rZPYPpwvutrkePLt5Dvkap2DDqfEYPSp7o6eG0
	Y2ZQeJreh8rvIWDKMvQjV+sSng==
X-Google-Smtp-Source: AGHT+IEXQIFMHadyDRChtGWsNdu4tIcR8I5uss+Itz+qjtQCYQjp7KZD7tJPpRt1hh9fB5z8JoAqkA==
X-Received: by 2002:a17:906:cc9:b0:977:ecff:3367 with SMTP id l9-20020a1709060cc900b00977ecff3367mr1598339ejh.40.1694785913646;
        Fri, 15 Sep 2023 06:51:53 -0700 (PDT)
Received: from [192.168.37.232] (178235177024.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.24])
        by smtp.gmail.com with ESMTPSA id p25-20020a1709060e9900b00992b50fbbe9sm2467926ejf.90.2023.09.15.06.51.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 06:51:53 -0700 (PDT)
Message-ID: <b66a72ef-653b-47cb-8c0a-df8418c3619c@linaro.org>
Date: Fri, 15 Sep 2023 15:51:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 8/9] arm64: dts: qcom: msm8916/39: Move mpss_mem size to
 boards
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20230911-msm8916-rmem-v1-0-b7089ec3e3a1@gerhold.net>
 <20230911-msm8916-rmem-v1-8-b7089ec3e3a1@gerhold.net>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230911-msm8916-rmem-v1-8-b7089ec3e3a1@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 11.09.2023 19:41, Stephan Gerhold wrote:
> The modem firmware size is typically highly device-specific.
> The current size of the mpss_mem region in msm8916.dtsi (0x2b00000)
> only works for some APQ8016 devices without full-featured modem,
> such as the DragonBoard 410c.
> 
> The full modem firmware is typically about twice as large (~45 MiB
> -> ~90 MiB) but also varies by a few MiB from device to device. Since
> these devices are quite memory-constrained nowadays it's important to
> minimize the unnecessary memory reservations.
> 
> Make it clear that each board needs to specify the necessary mpss_mem
> size by replacing the DB410c-specific size in msm8916.dtsi with a
> simple comment. &mpss_mem is disabled by default so it's fine to leave
> some properties up to the boards if they want to enable it.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
Any reason not to squash it with one of the earlier patches then?

Konrad

