Return-Path: <devicetree+bounces-525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C107A1D13
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 13:05:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EBED1C20BEC
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 11:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B7E2101D3;
	Fri, 15 Sep 2023 11:05:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54464101D2
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:05:11 +0000 (UTC)
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1E6D1AB
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 04:05:03 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-40475103519so15272275e9.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 04:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694775902; x=1695380702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=58kT+ixqEpo1e9pgQf4xzSvzylFzMVXiyd/UoT8AMlM=;
        b=fUC/nP9xEB7xmdCNOx4F3tAcCqi3/b0tqF3Pnvtgi+RR+wtlUWLS0NGgJkl0lB/Ags
         SgOB6PVyKmbyjw1D2Dj1OrZmmZ81Av/h63qhYACtbSiIf+XxD6SjAKh03a37HzrASjib
         zCIbIWub1y1/mBWFH6JZjz31GmCUSgFfAQ6XSp2kEHl0nHoxpNH0drgRIqWQFyjW3q4u
         eEgjD0VJ5MGmtagrMpF2geU97Sygk5YT7Vvi8dmEc/eE8QEWRkA9YLS6tfw+TVUyIgOO
         dnHB5cvyfCWZHMIpMuLke7DoIdTDEg3HyeoNV8v1xnW5vA+0r85fTXUnafaofCH4J0wl
         aB1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694775902; x=1695380702;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=58kT+ixqEpo1e9pgQf4xzSvzylFzMVXiyd/UoT8AMlM=;
        b=d+1AbeC38FR1rwVDc3Xsqs7APT5js6wrVA0pWW/K4joivPRfUM8Fu4SSyU9AiehPyM
         g9GwUu5NyPtFGmXJZ2iFEwpdyCvdh5nVClnDAOt6rsuNESpdJoUyHkq2MDeZt0/HQ8DZ
         Z5gEedkQLYLSZ9y15WVJDaoByO2adlb7jUGunikua5zHZhkaoXDZsPCQn66Ww8QUaCfE
         OTmyALSA0jfowWvSERSu+8hl9impjhxoHTc79lQ5VgQgQjOTzlUuc2VsztRaElqk+/2C
         qxfw9tzEdL8aqsAVbKpTniFIZDCCh746VJbZT/s/aqkjnyUFp3SCr60N2dcFvwtmKOO+
         zgzA==
X-Gm-Message-State: AOJu0YxbV22PMe0yJiiNf0RLo227Uef7QVXU2adkZ/2Hn1v4LLdorzsM
	Awh2qf8YRSL/s4yNQdOChYFBSw==
X-Google-Smtp-Source: AGHT+IHitpjDRzLZ4InU5Aq/I8d+ugu268RQYNa5z4cxiPs73BCvUvVbaLBYgL+/7Ed66/a1BbHLvQ==
X-Received: by 2002:a1c:790d:0:b0:3f8:fac0:ad40 with SMTP id l13-20020a1c790d000000b003f8fac0ad40mr1412848wme.29.1694775902344;
        Fri, 15 Sep 2023 04:05:02 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id 18-20020a05600c025200b003fe1a092925sm4342093wmj.19.2023.09.15.04.05.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 04:05:01 -0700 (PDT)
Message-ID: <56e1efa4-7bd3-5775-b541-5c35e63da026@linaro.org>
Date: Fri, 15 Sep 2023 13:05:00 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 29/42] dt-bindings: input: Add Cirrus EP93xx keypad
Content-Language: en-US
To: nikita.shubin@maquefel.me, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
 <20230915-ep93xx-v4-29-a1d779dcec10@maquefel.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915-ep93xx-v4-29-a1d779dcec10@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 10:11, Nikita Shubin via B4 Relay wrote:
> From: Nikita Shubin <nikita.shubin@maquefel.me>
> 
> Add YAML bindings for ep93xx SoC keypad.
> 
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


