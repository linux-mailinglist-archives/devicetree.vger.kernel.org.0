Return-Path: <devicetree+bounces-1073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 683DC7A4920
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 14:03:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DD536281865
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 815AB1CAA6;
	Mon, 18 Sep 2023 12:03:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402A41C6A6
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 12:03:31 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 28DC0120
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:02:05 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9ad8a33fd0dso560307466b.3
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695038523; x=1695643323; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8T6FNJ4DGR+EO/eOaGg3eeWJKhttb/eQEueA78daWfM=;
        b=K1/pM9QMGWrqrBanRB5f6XxiqjLFgTEehWXkwvzE7wYCNDrprg8rqXRxQNr7m2gYVY
         3NtcFuwh5x5BxfktfxmUAG7Ribdffqg4yqn+xBlFUyC+3rXRRvO4OgN5qQzGARbYqsjZ
         VlpTQiReMQCERva5TFXM7sZJ1OYrzpJfLfqGOlAevsEWf7BCLGe3mecOMCtq45FBmiGm
         HgZSWeKRunLYAmO0FO6x14dPJarqD4LpFEcDupOt2V4JXRwDyiRMRcRg2YdqQbCB9Ft5
         8iP8HgbjDm4he/l/Vezpn09UR8hhBv+QznpK7XGwSZ+aE6RZB2PAZLoEfzr+bOpWgyPp
         xeOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695038523; x=1695643323;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8T6FNJ4DGR+EO/eOaGg3eeWJKhttb/eQEueA78daWfM=;
        b=ItYSoOX31vuGvBaO3CoVRHf9UFNo81MFPIvT4c9iKFYnYNu8fBMd4ZLMqrt53qpM7i
         tN0kFZ1ut8fYOy+v9PUJsVUx9PYYk2pDUmQtwnxB8hfdCi5Gs6S+FlZRZzQG0C9jlvWC
         G37asfS2Fj+tlY9nJfYNZLaYIOm5jz0moYZPOODnv0mgD7wPUaAvOh5Rdi4gXuyXIlFy
         3/3NrcutCTKtTNq2ujGP+xFDQyoN6mjNfijM96SrV4FmPTEtTgcjs0eDTHLLFd4qeOVM
         t15uT0rRlzOy0eupC630o48YRvD1jEGJQsdSvo33aLjiIFq1ZpSjb33d6NqA1Vx6hIOf
         hJbQ==
X-Gm-Message-State: AOJu0YwYJdtyDMVwrP8M2KE1GRkx+IT7qx4N/hxqm7J2ochSUvZTjH3T
	T4imrHtWm8EmEKCIh5nZLjVJpTteOdUm/Qc4sJBI3zMc
X-Google-Smtp-Source: AGHT+IF2j7vwi1KLyY+HPonMPC3u+1IG0HjRNp5JP8MCpwOwGpIXy55B6BL7aY0Mbg+YgcW2Ksw8Mw==
X-Received: by 2002:a17:906:74db:b0:9ad:e3f0:f335 with SMTP id z27-20020a17090674db00b009ade3f0f335mr5490892ejl.70.1695038522988;
        Mon, 18 Sep 2023 05:02:02 -0700 (PDT)
Received: from [172.25.80.114] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id cf20-20020a170906b2d400b0099bd7b26639sm6416526ejb.6.2023.09.18.05.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 05:02:02 -0700 (PDT)
Message-ID: <6d87034e-6727-09fd-60fc-10f8ca47f85b@linaro.org>
Date: Mon, 18 Sep 2023 14:02:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v12 6/7] dt-bindings: media: wave5: add yaml devicetree
 bindings
Content-Language: en-US
To: Sebastian Fricke <sebastian.fricke@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nas Chung <nas.chung@chipsnmedia.com>, Sascha Hauer
 <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Jackson Lee <jackson.lee@chipsnmedia.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 NXP Linux Team <linux-imx@nxp.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Conor Dooley <conor+dt@kernel.org>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Robert Beckett <bob.beckett@collabora.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
References: <20230915-wave5_v12_on_media_master-v12-0-92fc66cd685d@collabora.com>
 <20230915-wave5_v12_on_media_master-v12-6-92fc66cd685d@collabora.com>
 <30384744-94d7-2675-63ad-d8531e3156d1@linaro.org>
 <20230918064954.iuomunsckduawiay@basti-XPS-13-9310>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230918064954.iuomunsckduawiay@basti-XPS-13-9310>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 08:49, Sebastian Fricke wrote:
> Hey Krzysztof,
> 
> thanks for your review.
> 
> On 17.09.2023 09:56, Krzysztof Kozlowski wrote:
>> On 15/09/2023 23:11, Sebastian Fricke wrote:
>>> From: Robert Beckett <bob.beckett@collabora.com>
>>>
>>> Add bindings for the wave5 chips&media codec driver
>>>
>>> Signed-off-by: Robert Beckett <bob.beckett@collabora.com>
>>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>>> Signed-off-by: Sebastian Fricke <sebastian.fricke@collabora.com>
>>
>> So this is v12 and still no tested?
> 
> I have tested it, multiple times actually since V11. (For some reason
> that indentation issue slipped by me though ...)
> If you mean the tested by tag, the patch was completely unnoticed until
> v10 by the community, which was partially because me and the previous
> commiters didn't use the right recipients for this patch. So from that
> point of view this is more like v2.
> 
>>
>> A nit, subject: drop second/last, redundant "yaml devicetree indings".
>> The "dt-bindings" prefix is already stating that these are bindings.
>> Basically three words bringing zero information.
> 
> Okay so:
> `dt-bindings: media: wave5: add devicetree`

Still not, because devicetree is duplicating "dt". It's redundant.

Instead should be (with correct order of prefixes):

media: dt-bindings: wave5: add AzureWaveFooBar XYL ABC10 (whatever
company and full product name it is)


Best regards,
Krzysztof


