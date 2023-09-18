Return-Path: <devicetree+bounces-1079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD9637A4964
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 14:17:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A53A01C20DD7
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:17:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A30451CAAE;
	Mon, 18 Sep 2023 12:17:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D79BC38F93
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 12:17:06 +0000 (UTC)
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 770DBFF
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:16:51 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-530bc7c5bc3so2503863a12.1
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695039410; x=1695644210; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pNv1FDwVT3hMnnPhWO3xcQr1aUeDgxmwwA9dkUiq1gI=;
        b=qc95taDBjEAqfD4twunA1NE/fn6b2KKBIJ67SOttxLNUrL3e5YquEC5qHcm7qDijy2
         Jrb2XKRvUEgtFomNNYRz69883mWGWFPWoHUn6aNKBSBtQNDAawjufWcaVRae2DmclFC+
         +LAbuow2Mit0IRCEVorp7YvfNOf9iGj8LwVDfl7q3g9ZLDxZBjV0eABPvLkCoO3eP9rk
         f4ov9EXsK/27l6sVH5Y3VnrW5Q5d2zR3sbXAQ8c2DgVeJb2M3gh+HuhE1tHf5+ur4s+g
         JtFIoQkqbOjeCrOdXnEr6KajkcaZjWrBfDiqNXsBBNP6JQ4e5u+iyXVkepeTDl5MnZ2s
         Dkgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695039410; x=1695644210;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pNv1FDwVT3hMnnPhWO3xcQr1aUeDgxmwwA9dkUiq1gI=;
        b=tmpsWrUYTFO+NU7fEsiXnpzaENnyRG7OdBr6/AcOxLlAmYl+McCzGk+cToco0UHMBA
         bjQDjL5t14dZ6/y59clOuGNDVVn/uMC7MwDetxRufm1vEzlt74rm1hAVccaKtVdXByMe
         wGJpwW5bEpDDaLzGEh6zEoz9BDAIYnZcHydVvG6+kfj3wPR2fWfgxsaY7jAR8TUbfQEb
         YRQ/+DJ9x86/8feXiIFzbxtrzG89seZV5/UjFU/b2u0LTkz6kT9cGh9cUNFZe1iYFFgP
         /P3KaYKmjoId1GTgiIY2QgL3vu5YwWrPCfSbCFQEaX9uTn254mGoPAQ2yzZO++LPRGUl
         TJ+A==
X-Gm-Message-State: AOJu0YzW+wA1GcbEZzMifUbvYQxh8LFt3eMCHMYNzlkpgl0UBuhvxVAM
	272SOd236Bls7+zZ1OBvCbN+MQ==
X-Google-Smtp-Source: AGHT+IHjEzmDf8sH8wfhuBGiqE680D7tr59P6K14bIMYabWiXD52tF+e9xu/8MVoljBZIxA6w9Tptw==
X-Received: by 2002:aa7:d394:0:b0:525:691c:cd50 with SMTP id x20-20020aa7d394000000b00525691ccd50mr8530961edq.24.1695039409909;
        Mon, 18 Sep 2023 05:16:49 -0700 (PDT)
Received: from [172.25.80.114] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id a3-20020aa7cf03000000b0052e1959db1csm5962284edy.20.2023.09.18.05.16.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 05:16:49 -0700 (PDT)
Message-ID: <1f9cfc55-bb63-92f2-7e22-26d31ad16e96@linaro.org>
Date: Mon, 18 Sep 2023 14:16:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1 3/8] dt-bindings: clock: rk3188: Add binding id for
 ACLK_CPU_PRE
Content-Language: en-US
To: Elaine Zhang <zhangqing@rock-chips.com>, mturquette@baylibre.com,
 sboyd@kernel.org, kever.yang@rock-chips.com, heiko@sntech.de,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com, xxx@rock-chips.com,
 xf@rock-chips.com
References: <20230918073151.7660-1-zhangqing@rock-chips.com>
 <20230918073151.7660-4-zhangqing@rock-chips.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230918073151.7660-4-zhangqing@rock-chips.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 09:31, Elaine Zhang wrote:
> export clk id ACLK_CPU_PRE.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


