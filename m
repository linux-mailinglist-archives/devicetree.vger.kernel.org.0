Return-Path: <devicetree+bounces-192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2997A01E7
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 12:46:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBF811C20B54
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 10:46:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3CF208B9;
	Thu, 14 Sep 2023 10:46:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D74F208A2
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 10:46:48 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6606E1BFE
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 03:46:47 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99bcc0adab4so107890166b.2
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 03:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694688406; x=1695293206; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TvowP+I3fsJjkmKB5A3zdLbBXz8ryFqxa5zwwZzCRR0=;
        b=FnQGN9AiYlQyd21DpRMPbMontzGN7LLJMUQfBSwvUxhDzLtRsCMLeJAkxLtJuDA3CN
         madhbfYH0Dg1CuMOHa4Rr3N5ZjDzy52SVWDwwSE+iL2zEDS5D9pBgvY4vxKTQLLPR4+2
         zQLyYmfZUA9zmedsFO1ATwiFOiXj7xNUImnYNq6oVY5Ex6vMmGucjl2Y0TTcqaZbMvoW
         JJHzGmka/TWDvSLC9Kn5ZODJQf8MS2IUG8TX6w/mFIWBDw+AYmoCifbBf01mEIQrAetP
         JW1k5Hs6kRl1lzdFo1DsztJEA9s3CtYwYyMw2Sj7HNohXyNYHJIyxYQNST3RdpfhrJ7F
         u1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694688406; x=1695293206;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TvowP+I3fsJjkmKB5A3zdLbBXz8ryFqxa5zwwZzCRR0=;
        b=pKHxm/00lj2VvifzlGfGtzvP22/1HuOhPFPnIn+SB8ItuFMRJg+Bs3gyTgNHcSBhoy
         1KNpofo53oTMIv9lTX/GcN/bIIn1HP6653QHxHjdawYwFtsjxrSCpZf1sZo4qTM3rww6
         +9P29TKbom17FXINuQ9D91Nfpv5t0GPWRm1cxeaJhQoCC/feyNbNEJxQ2UlkEagsqNzQ
         7dfIJSqo9Ls6Bu0MHIiGJPTkyGwlzYDZzZgsAT5yMk8G49jFpzXkgAsDNdSnyZoTFq4W
         yvo80zN6vCf3QhgpPDThKarzDY7dVLE/qUpU7D6dhT6QlYG5PCOYWQpdE0RFB5WPCzfy
         V22g==
X-Gm-Message-State: AOJu0Yw25C2Fa6UDH4E+5VassURlMSG3SSbuf7dO2zj/M75dTasyzBYe
	xQ/IR+IyFJaxG0Yf5/l0sjFX8BMqk8ye6DZqzkA=
X-Google-Smtp-Source: AGHT+IGWgeeN7qjJiNCc/upsnH6oSrviQHkNk88lo2j2IQJbaXYm7ocmjPDKDm/hoWfwU6FWoycQzA==
X-Received: by 2002:a17:906:2099:b0:9a5:7f99:be54 with SMTP id 25-20020a170906209900b009a57f99be54mr4033740ejq.67.1694688405819;
        Thu, 14 Sep 2023 03:46:45 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id z8-20020a1709060ac800b009ad875d12d7sm808091ejf.210.2023.09.14.03.46.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 03:46:45 -0700 (PDT)
Message-ID: <8fd64e36-4007-c962-5106-f8b692ce7e20@linaro.org>
Date: Thu, 14 Sep 2023 12:46:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] media: dt-bindings: ovti,ov772x: Make powerdown-gpios
 active-high
Content-Language: en-US
To: Fabio Estevam <festevam@gmail.com>, sakari.ailus@iki.fi
Cc: mchehab@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Fabio Estevam <festevam@denx.de>
References: <20230913193932.1947918-1-festevam@gmail.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230913193932.1947918-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/09/2023 21:39, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The powerdown-gpios description mentions:
> 
> "Reference to the GPIO connected to the PWDN pin which is active high."

The binding description or device datasheet? If the first, what
guarantees you have that person writing binding understood the
difference between signal level and OS abstraction logical high/low?


>              port {

Best regards,
Krzysztof


