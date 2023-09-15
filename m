Return-Path: <devicetree+bounces-644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B85F7A2673
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 20:44:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 876AA1C2093C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 18:44:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8F3A15E82;
	Fri, 15 Sep 2023 18:44:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C46C1097E
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 18:44:50 +0000 (UTC)
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 490374C0C
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:42:47 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id a640c23a62f3a-9adc75f6f09so173756866b.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694803365; x=1695408165; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4ok5uPWgXZi45gaAZwMSQWfyEedhaDpchiYD0oWGYgM=;
        b=STIXBiQmlyBPQJF2Wr2oGB+9q5Xz58anhpFW1Z+id33syW5QVCpNqrlt6PA0E5FL1i
         Mkttsgpb27NWar6BCQeJqDNL26dg7mv3HXVmB7nCLbJfjL3X/ER9Y8R69LmtBzod2Nby
         NoUzw5JTqpwhPkWgA9P5OzAprGLl99r5h5moW4tVbwhC+e2hYo7LUdGoyQjNWvye2xeD
         XLcNwFyqYVnhT1QSSp5PCAhsn9hqTDhhKpYSeKmV2yvegozpccrH3cRdzFrJD5fiJ1pB
         n++ZJ07wNyWlMxXfqhmCSOSsNjuvrQlT84UASSod+SwdzM95FkpBN8YYNHxzbIS9o9JC
         WJpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694803365; x=1695408165;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4ok5uPWgXZi45gaAZwMSQWfyEedhaDpchiYD0oWGYgM=;
        b=UcuRd65FO/ZBPW49vNvlsLohXG1YjGQQNJ/gbRR9hDW3ieUGypctYDbSFZ7IU+QU11
         XGdLYISkIArNbuMbflBfIhcHZoAc9VpXx8facgdkK0OQLzw3c3OTP437zeKGjphwiE1S
         HxMCwoH5QjRq+jxgGGNaHnw3IEEeQdCXD1rybkLq3ol77OVMxUkYdNoP16AMpxkRC44X
         RXsOJTjht6dZqkpB7ET6jVtpzmv5LyF9XXazwfd7M1WmYzYA64EqjDFAvFOGWV6k/AxV
         bwKI0eI21uPO2YdnocriTAodDarUBiR+jPI7WXdMEyIGOuCVHy+dWAh+0D97FhFXCwTE
         +hdA==
X-Gm-Message-State: AOJu0YwOcLBM+58pfTORYNtZOt0zACTNxSv+shu2WxDW6VM+pnBNZXtx
	lX2m0QKbw/ClmeUbllJx759RhQ==
X-Google-Smtp-Source: AGHT+IEsOq+vG923T3c3It6wrdjLcEdiwkGg0B39VZPPbRcQsoDS9rx7I80uvGmFBfWm7trCovXHPA==
X-Received: by 2002:a17:906:30cd:b0:9a9:f14a:22fa with SMTP id b13-20020a17090630cd00b009a9f14a22famr2176042ejb.16.1694803365168;
        Fri, 15 Sep 2023 11:42:45 -0700 (PDT)
Received: from [192.168.37.154] (178235177024.dynamic-4-waw-k-1-1-0.vectranet.pl. [178.235.177.24])
        by smtp.gmail.com with ESMTPSA id rv10-20020a17090710ca00b009932337747esm2746697ejb.86.2023.09.15.11.42.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 11:42:44 -0700 (PDT)
Message-ID: <17aab34d-689c-4c27-b9de-f9ed6ee049c5@linaro.org>
Date: Fri, 15 Sep 2023 20:42:42 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: power: qcom,rpmpd: Add SM7150
Content-Language: en-US
To: Danila Tikhonov <danila@jiaxyga.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, ulf.hansson@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20230915182054.113839-1-danila@jiaxyga.com>
 <20230915182054.113839-2-danila@jiaxyga.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Autocrypt: addr=konrad.dybcio@linaro.org; keydata=
 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
 izWDgYvmBE8=
In-Reply-To: <20230915182054.113839-2-danila@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15.09.2023 20:20, Danila Tikhonov wrote:
> Add a compatible for SM7150 platforms and relevant defines to the
> include file.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
Please redo this series with commit 7f31667d29f4 ("dt-bindings:
power: qcom,rpmhpd: Add Generic RPMh PD indexes") in mind

Konrad

