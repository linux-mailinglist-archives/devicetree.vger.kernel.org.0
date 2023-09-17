Return-Path: <devicetree+bounces-811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F65B7A3377
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 02:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9ADC281649
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 00:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84902368;
	Sun, 17 Sep 2023 00:22:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25688173
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 00:22:31 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8F6A2CCF
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 17:22:30 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-31ad779e6b3so3169011f8f.2
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 17:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694910149; x=1695514949; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7/mSGd0lQiQIs0ky3gsayu99HBJSZ/MEeeFtzu3vHGM=;
        b=O08KXq1StnZ0mi6ZFrkdQPpCsqRzSl2k5pgdo6ZvS3klDp8F1pkNuthmNssgEyU7s+
         SLKfBuaYk3hZUJ2dKiptJdCOnifj80kFUbnYyePY/MQYtEdJI8w3qujfbfqFRFjQvP1T
         U6FaLkv6A3FwwwiijCpXbAg8u963z9uOEKnyGgJSNtwb44j4O4FdILCdv6HuOl4HyHkb
         uZnIWYyxUpMIJjMgJF3e4+jsL0JY0KVCl+ogEZXzwohWGSoEzDtOVT6n5W2rlnJ8gyqx
         zMibd2KhoTXL8l9uUIWVCNF6Vk+8WnKrwYAz4LswNHurfdnaaHnCUBRQhRV2Vz52jpjs
         62gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694910149; x=1695514949;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7/mSGd0lQiQIs0ky3gsayu99HBJSZ/MEeeFtzu3vHGM=;
        b=Nl+AiqZMz3EoA8NIo93TiXxCESZGqlxlA+uJp0l8zwgRrMGjrHsNXdMy1Hu+a2zGHD
         JGhBTB1pbr6QHw871ZtURRqFGTA2+f0peDhQ7bEm9kFUYZMn6SehtZKa2FzLsMX0Om2v
         YWkuK0MbUM3q7AgvbNTYF4SRy1M53JUH+rX52nBXGUsUPji3XimFkb2/CpzoRvegHM3V
         /8RVd86P7rNrsLReLeehTN5wjTdIKcyRnvF4NC2ODPuU3IUUF8kvbz1pkziGz9i/6O82
         cOtW6oXui6XwIv3Z7bIORvZNimMOREo4veGle0/BM0P9Agv89AvvegQoMDuDro72eCAU
         dIvA==
X-Gm-Message-State: AOJu0Ywj/bg78ixGcPKbamYszqqemiWYveDyX0b3UgJTZpkGznqx3i0B
	25hhrBQX3MXxNV0IlHogbGb4Eg==
X-Google-Smtp-Source: AGHT+IF0WUtsBTjNiyn9tDsi9lSymZ3pEuoj5cUAFdJtxACwTRWECoejR/S3RU8WWwYVNbkSljXqEg==
X-Received: by 2002:adf:e78d:0:b0:314:17cc:31d0 with SMTP id n13-20020adfe78d000000b0031417cc31d0mr4482762wrm.34.1694910148573;
        Sat, 16 Sep 2023 17:22:28 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id y14-20020a5d4ace000000b0031c5dda3aedsm8412372wrs.95.2023.09.16.17.22.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Sep 2023 17:22:28 -0700 (PDT)
Message-ID: <3a66a198-5817-4c74-9047-c49e5bcc84c2@linaro.org>
Date: Sun, 17 Sep 2023 01:22:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8939-huawei-kiwi: Add initial
 device tree
Content-Language: en-US
To: Lukas Walter <lukas.walter@aceart.de>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
 Raymond Hackley <raymondhackley@protonmail.com>
References: <20230916134147.163764-1-lukas.walter@aceart.de>
 <20230916134147.163764-2-lukas.walter@aceart.de>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230916134147.163764-2-lukas.walter@aceart.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 14:41, Lukas Walter wrote:
> + +&wcnss_iris { + compatible = "qcom,wcn3620"; +}; +

Are you sure this is 3620, have you tried wcn3660 and/or wcn3680 ?

---
bod

