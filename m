Return-Path: <devicetree+bounces-815-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA547A3417
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 09:37:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 51DFC1C2087C
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 07:37:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7D0F1869;
	Sun, 17 Sep 2023 07:37:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DAC1865
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 07:37:16 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACF4918B
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:37:15 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2bcb89b4767so54592381fa.3
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:37:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694936234; x=1695541034; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RvMkdgtkNGNiDefVNDejUYjyLoLcBedhxBbnbsWuV2o=;
        b=EdgNhkm2/OWh4eFVILZIOYcI4tTe76U7RLvW2g92A2GSGPxugLoWVmxHGdpAycljam
         fq5MdFWedy/dktk23hfw2K9ACk7LwQe7JpEQF9L4/Iv5f3E1hFDtioCAtAaJAvqpyBaJ
         G2D++qYjC9RkEfc51/aHN3dua0gL2Lo264sopwHFpKE9sbd+ZoMviY/m0n2wloSRLQy8
         n1Sjgf+AgDhI6Xvvyh24WxH8x5kt8vR10fDlkM+jMFjLCqU6y1FR7cP0/vRjiyYpIA/a
         DwDvCGT2iCPdGJKdFncI9yCemqv2KEiOfv3Tvc6GTPxxZPKnpgKifCmYmsGX3ukriy4+
         prcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694936234; x=1695541034;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RvMkdgtkNGNiDefVNDejUYjyLoLcBedhxBbnbsWuV2o=;
        b=Nl6dLQa7zJgj9ECI2FFpHBTSvarDkSgSc8zeXm52rdPY/iiPK8XmxaaRMSbM9hc6Hv
         WKAaQYbaqnZwMjQuWjETYOeJQU277naEw3BEjDwpGYwqpzOCBpmny/XNfQ46h8/ZWsGR
         ZYbVhzcXMWtqobSHP1tFbP97GQcM44/+ZR2ZU89FUiELEW8+7sWRFtVhBd/evckSwA+2
         wCPtuU9C1wzQEG9AbfQn1/EHjvbEtstYbH1AajhniomzsLETaAt2UXTdMhAVcZPPANBf
         gI4OAdYprycriBnRSxi+QQsfvtfwZ7lh6Fu4rOw+GGCWSvUpOgrZlskLHSuhs6u/k93W
         uVYA==
X-Gm-Message-State: AOJu0YzEgRgcDS3dHpM9da7pboOoaFBYpF0veAHozfvYr6gXmeDfSNfm
	nY8OIi8NABSoGp1CDprgqdTlOw==
X-Google-Smtp-Source: AGHT+IEL8NbLQzIyJwWj3iyNixBkp1V6UkVgGtcWAffqfVPS4lYuBlbxvc3fLnB6Mt/CSDQri1aZ8g==
X-Received: by 2002:a2e:9791:0:b0:2bd:1cd0:603f with SMTP id y17-20020a2e9791000000b002bd1cd0603fmr4929585lji.45.1694936233810;
        Sun, 17 Sep 2023 00:37:13 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id s22-20020a1709066c9600b00993a9a951fasm4739819ejr.11.2023.09.17.00.37.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 00:37:13 -0700 (PDT)
Message-ID: <bbf576d9-ec2c-e243-fddf-9f74ae44e0fd@linaro.org>
Date: Sun, 17 Sep 2023 09:37:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/2] dt-bindings: power: qcom,rpmpd: Add SM7150
Content-Language: en-US
To: Danila Tikhonov <danila@jiaxyga.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 ulf.hansson@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20230916175952.178611-1-danila@jiaxyga.com>
 <20230916175952.178611-2-danila@jiaxyga.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230916175952.178611-2-danila@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 19:59, Danila Tikhonov wrote:
> Add a compatible for SM7150 platforms.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


