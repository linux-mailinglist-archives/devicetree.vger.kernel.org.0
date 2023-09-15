Return-Path: <devicetree+bounces-523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E037A1D0E
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 13:03:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 963341C20CDC
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 11:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E393A101C8;
	Fri, 15 Sep 2023 11:03:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65F5963F
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:03:09 +0000 (UTC)
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D7FB2126
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 04:00:44 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-31ff2ce9d4cso469893f8f.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 04:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694775643; x=1695380443; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tn60yuwsayKteemX+yt8gQbT1B0GE4xqlU7FtFJOVyI=;
        b=pHjVyAdlE/UnfKmeakTcOQK5uisN2JPLdKyTTYA7+LEQUOKHl/VahJNxLVrjqbJ80G
         SlerwynD9v53IvMggO91FcvzsD4LoYQe/e9kOeBfGzjB8Jct7BBiZojv0xyKUuwhw8Ks
         JKTN7mFMYa3NcQoS3O7LsWp7/XLCeb8U+tq+ubtZZP+46PrYyE6doZlxRkJ6eokBHT4c
         pZpf/Glar2MdxndByT8aG0p5HV6dNvDBBosYom+7GlsScHOzW5+sI41STWCinKSo/lXd
         2HNUbDO334rf6B3+006cYh1rCbxGn4RIcCOM+ic4aXY6JDt7TpLqz7ALg+e7EMjsW5TM
         HkCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694775643; x=1695380443;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tn60yuwsayKteemX+yt8gQbT1B0GE4xqlU7FtFJOVyI=;
        b=tfTfnMFOWz2h21PzUv59JxWmKv1JMMpqowScu9QTebM77TtGcP9RmBOy4LIFSvYRY5
         gG1hF3yjKHYhzt5oNGTcz6aRIAmunvkDfMCSOwj/sk1JrIujw0RgcpXfu9kTchzhlGTe
         uMtZzTGvLOC4D67rMKB8FET0rdzsuGXZ5NbN2adl43rRu4mS3nlnlaFAPtUXSqdP/0Td
         /fJwcWby5KRSvDztMu+0H47+A/f0G9curZz1S68NS2MlZKhxqx35bmI5VUrWLPxjlZl9
         ABa4qNv41BfBqCcL+SRBn2gI4cYEI8qOzUdyaRAs0hxh5vrMXtTSiVkUK/hci7JMYQqN
         rgrA==
X-Gm-Message-State: AOJu0YzwuRcIMgAwUhyMUzdx0PxWbZcJfQXAewT/hA383C4pGe9iMqZq
	zaTntHJX/DAMJlKPFOZmcqfh9ejFNDUlEFAg3YI=
X-Google-Smtp-Source: AGHT+IF2SgxJ6JGOtiwKnxlhWSHGpIPuG1WwYWykJZPi/uWFBQSqGjYzCnn6sFTt4SrDQ0mUPVvqCw==
X-Received: by 2002:a5d:4dc4:0:b0:31f:a256:4bbb with SMTP id f4-20020a5d4dc4000000b0031fa2564bbbmr1093708wru.71.1694775642865;
        Fri, 15 Sep 2023 04:00:42 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id i11-20020a0560001acb00b0031fa870d4b3sm3358133wry.60.2023.09.15.04.00.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 04:00:42 -0700 (PDT)
Message-ID: <82261cdd-3db9-c79f-9286-d49a81338b22@linaro.org>
Date: Fri, 15 Sep 2023 13:00:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 27/42] dt-bindings: ata: Add Cirrus EP93xx
Content-Language: en-US
To: nikita.shubin@maquefel.me, Damien Le Moal <dlemoal@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
 <20230915-ep93xx-v4-27-a1d779dcec10@maquefel.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915-ep93xx-v4-27-a1d779dcec10@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 15/09/2023 10:11, Nikita Shubin via B4 Relay wrote:
> From: Nikita Shubin <nikita.shubin@maquefel.me>
> 
> Add YAML bindings for ep93xx SoC PATA.
> 
> Acked-by: Damien Le Moal <dlemoal@kernel.org>
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


