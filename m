Return-Path: <devicetree+bounces-522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E617A1D0C
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 13:02:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CBB5B1C20B15
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 11:02:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7C6DDD3;
	Fri, 15 Sep 2023 11:02:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 588DD63F
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 11:02:32 +0000 (UTC)
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECABA2D52
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 04:00:14 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-401d6f6b2e0so19829975e9.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 04:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694775613; x=1695380413; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fpbQlB4mjb78rjSUP8bafejWuvtuI54lBSHWWYp8cUk=;
        b=UCfXukospgjvAoNUKbNkhmfqlUFpn/hNNdyLCcMvwCsEIow/G6zupX5nigvTkaNUzE
         8Zpmbi9a2v+CNa3K9qxlqeFEgb8e3LD0CAq7L1JuSnfIpukO/hEtQ7sZrkWuWmjqHYoV
         N/ISWZw/Tq3u3nSFNYvx6g+KE8T/JYHkr/adJLuNkVXqnGZUhlvh+OMmqLHkumN2qDz/
         gcuDKK4sp4ecMQibt8Mz1vf54pjwr+UV/vXbru4iItjrgJPyf+dnQc0My4taw7ZLQzKU
         iQbS3pyxCmVlCK6fzoEGWfo6mZe/YCRq/nYA8Xzy4C6OVcqe9FGpQiR2QrBZ3HA+UgXP
         zzfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694775613; x=1695380413;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fpbQlB4mjb78rjSUP8bafejWuvtuI54lBSHWWYp8cUk=;
        b=HLGd/Jo3AtGfFQypGHXNZaFXzEAJC3d7rMTGBfYIFK66K6SKZ2PbAOBKFiKpCG4TJu
         U3UrLtbwtmVc9uemHq9j0Nqi/oCSh3RgEISKTkwqsU6j39ljZyjV6EHBUrBkOM4yGp6w
         UluDmhizb/HVeyKK2q0mPV8gKC8YrY/SJ2B2jPtfxrXvdiMaGCgzsye2UcoYO2EdiVjE
         0xbvnfBpXLHP/GS4eQNn+rTdQ3Tbj89FZoBNymWquqjTHDET57kBXuJnn6MWmcEvVWo/
         aFWK8vP3HR23ySpeuCmc9o2l8nNU0usbig2MM6hcZxwC76A5V1BiyRFIroNrL0qVkbGI
         fGMQ==
X-Gm-Message-State: AOJu0Yzna+x9/J803ug9FfwGREcISV+gyb9eJbOrbLlpm5CxGF3JUzwC
	cqD9lIGScYbvBwec7REeYMcQOA==
X-Google-Smtp-Source: AGHT+IEos45Zc8390rDkKHePbKN2uLHi9tDs+24aSbHmPKAWNb7n2370dfdwOZtcYbU8OWdym81xJQ==
X-Received: by 2002:a05:6000:8c:b0:31f:335b:f436 with SMTP id m12-20020a056000008c00b0031f335bf436mr2973131wrx.22.1694775613014;
        Fri, 15 Sep 2023 04:00:13 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id ci8-20020a5d5d88000000b0031fedb25b85sm1843665wrb.84.2023.09.15.04.00.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 04:00:12 -0700 (PDT)
Message-ID: <0a218ff4-9ef8-d18d-9310-4446dcf05795@linaro.org>
Date: Fri, 15 Sep 2023 13:00:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v4 25/42] dt-bindings: mtd: Add ts7200 nand-controller
Content-Language: en-US
To: nikita.shubin@maquefel.me, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Alexander Sverdlin <alexander.sverdlin@gmail.com>
References: <20230915-ep93xx-v4-0-a1d779dcec10@maquefel.me>
 <20230915-ep93xx-v4-25-a1d779dcec10@maquefel.me>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915-ep93xx-v4-25-a1d779dcec10@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 10:11, Nikita Shubin via B4 Relay wrote:
> From: Nikita Shubin <nikita.shubin@maquefel.me>
> 
> Add YAML bindings for ts7200 NAND Controller.
> 
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


