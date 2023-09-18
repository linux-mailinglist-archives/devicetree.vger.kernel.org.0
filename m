Return-Path: <devicetree+bounces-1194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 585CA7A542E
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 22:32:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B6751C2100B
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 20:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBEE52869D;
	Mon, 18 Sep 2023 20:32:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE2F34CCC
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 20:32:12 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D0B510F
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:32:10 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-31fe2c8db0dso4325134f8f.3
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 13:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695069128; x=1695673928; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nJ9kKidA4UTcvgY6X4IKVZPoKP5X1ijt7CTX1NJIC/U=;
        b=UwvEb9xQjrQFDVxVqbNb0gYGmQqQAQuiN+gf61R3tkwojad54psXUFgrQMj/SHfiwh
         dxY4XOpudMrTGPdxkg4JIwmyvk1blLbLIADPHG6PRu9EK4oyabAmCo2/+2RIqBZhhCfC
         W7ChA0xyqARru9num4xukpko/DPRQXa2pWp5rB9AwTqq0ao1c1rcmCIFNmtEHqO0PV6U
         5QmFv29Wa2a/xXmtvww3ic659SM6VO7cZXL4YmVCVO6tYe3tQ5Ct/kl/ZKe4+LSCW4F6
         VbkC+ZdZTVAvEBDjk+peu/qk6eIQxyyMchHR5DSobZHWQGRhdxd9m795qUZyYIECMUU8
         nlfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695069128; x=1695673928;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nJ9kKidA4UTcvgY6X4IKVZPoKP5X1ijt7CTX1NJIC/U=;
        b=n058AoPkGiT2uFCgDZITCEYrJo52WNA9IColjQGycNY0/MW8sRX4v37F5Qqbw3O3Kd
         xRCivwxcjwzDNsmLAZEfCa81BmUNfy9Ue/eLf8JljJ8T52NJ+3L1sJO38zKjCYUyIODA
         6fBhnCR1TdxuE9T1fOh99xKfbqwN+/YFAdIpsWcgDwxNrVjwaHUDOfTDvqJEqvAU2pL/
         3NhzmCzUU4IIb+v91aZWKiPcvMuZXGCphq1Fb0nNNkd9paKdZAaf1EL4LbT0/gZVpeyv
         uqemd2PHGZzP/1Dlxm5S5c3+811Twq7+M1pQMkOeeRPzV5D4sjnqBRJUu4wuuVgqHbqs
         /XGA==
X-Gm-Message-State: AOJu0YzfNHF7OceJt74alLWByQirQ2HuzoMdvD+1W6LkGVJ9UaS3lFkk
	C6XkJdGwUQeYS2T4GPivOum9cQ==
X-Google-Smtp-Source: AGHT+IFaX7hYEZhb1ZMpS1NvihzD053zuOpZrqy7LICre/K/BWFkwhUY5kHeQZ1hPNl6XDq36kwu8Q==
X-Received: by 2002:a05:6000:1091:b0:31f:dcdd:726 with SMTP id y17-20020a056000109100b0031fdcdd0726mr8080291wrw.66.1695069128448;
        Mon, 18 Sep 2023 13:32:08 -0700 (PDT)
Received: from [172.25.80.114] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id lw28-20020a170906bcdc00b00992f309cfe8sm7002116ejb.178.2023.09.18.13.32.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 13:32:08 -0700 (PDT)
Message-ID: <c196d2d5-a5be-6557-f316-26902add0af1@linaro.org>
Date: Mon, 18 Sep 2023 22:32:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v4 0/4] Add qcom hvc/shmem transport support
Content-Language: en-US
To: Nikunj Kela <quic_nkela@quicinc.com>, sudeep.holla@arm.com
Cc: cristian.marussi@arm.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20230718160833.36397-1-quic_nkela@quicinc.com>
 <20230911194359.27547-1-quic_nkela@quicinc.com>
 <0efe305e-031b-bdf5-0268-ca1c6d562653@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0efe305e-031b-bdf5-0268-ca1c6d562653@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 17:01, Nikunj Kela wrote:
> Gentle Ping!

Whatever is written with exclamation mark is not really gentle.
Especially for second time... and 7 days after posting. 7 days and you ping.

Please relax, and help out by reviewing other patches on the mailing
lists in order to relieve the burden of maintainers and move your
patches higher up the list.

Best regards,
Krzysztof


