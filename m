Return-Path: <devicetree+bounces-805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E92447A327F
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 22:38:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 210AE1C2084F
	for <lists+devicetree@lfdr.de>; Sat, 16 Sep 2023 20:38:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E058D1C287;
	Sat, 16 Sep 2023 20:38:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF9412B80
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 20:38:37 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7600FCF0
	for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:38:35 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99bf3f59905so425314366b.3
        for <devicetree@vger.kernel.org>; Sat, 16 Sep 2023 13:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694896714; x=1695501514; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ck99DUFP41VW4qtdyIsbrq+XQAWsmxc+F6KcFhlBIVI=;
        b=OTmPHfbWHTio8SDNvy6ecAlqhcOOlHM/OMt0pyKSBnQEOtL5P57xkKVSiXn3xOfZAw
         KR2TQ6ZWYH5RzQQ0zDxioPBKnNqItVFIWDEo2j/yrqQihi0O6iHF+gH0sM8MD4aKD9Kk
         oWBBFf2vUFIpfWk7CKsow7a+f1LC/yLX1YmWTnBbBiDGwbsyvvHcxQhhf2Va69uDmKiK
         JAXJlQDa/RJFRKYRyxZ12xrImWidMHP41KOh+coxUL/M/Hbm4h+JrxojzvG13jJS4Iiw
         3eO6j0Wp8r7Zn6Ox0lJXMsOAsrlMcv3pgoFdwHITNoCblYIukpaLjWBBQ81uY/Ofy7OX
         Y3Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694896714; x=1695501514;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ck99DUFP41VW4qtdyIsbrq+XQAWsmxc+F6KcFhlBIVI=;
        b=Q2FtXjTgYfXBaP0OJIoMc5eklLiwh7jhLXDcYaiGBOMqItCNURb5/lQxm91HtNyr7B
         lM7W5gNQeKWY0cMzpbjabNfpsFLOUuoXu1eZYVQ39yM9Q2agcJv47Zna15TomVM744NZ
         WgPn8EmCYfOXQ7vycZ3TObzNiNvWteRwYFCv4kKKb6XhYwPUOT9cV2SfFA6eYAV6tAOV
         5y3xNUF8Tespnb0Y+92IWQSIS7/0QiOhKyIsFqLAwNtd6VHIq8Jo0Lam1/8ZP6vsRZ5K
         qCMgr+Xd1VIx+jEU7gQLnky6QMM3Vpdq8Y1BrPBatdmgHoEGy5BAvjNamF6XQnyboIzf
         lpQQ==
X-Gm-Message-State: AOJu0YzczIX9owfnhTpzQlt4cnkBVBGqqZDlB9GthaMbrZdsVr6zoxhX
	q6uKpsfsxlj7k3wLZud6VGBU8g==
X-Google-Smtp-Source: AGHT+IGPpt6HSdp0GP6i/O8o1TEptGSzL8dCPxxFd82lf1rChEkuakTOqy25fHB2mJDQABKyYTWTMQ==
X-Received: by 2002:a17:906:24b:b0:9ad:d084:a024 with SMTP id 11-20020a170906024b00b009add084a024mr4178083ejl.35.1694896713975;
        Sat, 16 Sep 2023 13:38:33 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id l21-20020a1709061c5500b009ad89697c86sm4159546ejg.144.2023.09.16.13.38.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 16 Sep 2023 13:38:33 -0700 (PDT)
Message-ID: <95863623-8c77-efe8-50fe-4e00cdf5220f@linaro.org>
Date: Sat, 16 Sep 2023 22:38:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Add Huawei Honor 5X / GR5
 (2016)
Content-Language: en-US
To: Lukas Walter <lukas.walter@aceart.de>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230916134147.163764-1-lukas.walter@aceart.de>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230916134147.163764-1-lukas.walter@aceart.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 16/09/2023 15:41, Lukas Walter wrote:
> Add a compatible for Huawei Honor 5X / GR5 (2016).
> 
> Signed-off-by: Lukas Walter <lukas.walter@aceart.de>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


