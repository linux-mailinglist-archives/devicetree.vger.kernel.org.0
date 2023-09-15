Return-Path: <devicetree+bounces-388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABB37A1721
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5493B2829CA
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:17:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45F5FD275;
	Fri, 15 Sep 2023 07:17:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D012F6AB7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:17:40 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F5E0115
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:17:38 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40413ccdd4cso9599185e9.0
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694762257; x=1695367057; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nKlXZwcMYS0nRM5520Aq9RRDReEviWQWXfnNE3DisAk=;
        b=zQUPEQ4TLLMfBDHiiOH9g+n5mpOaR37gNSRRzTXRpMH8KE+0VXzWplCuEgG4t3RUxq
         thzUqs+ZvUievRu+WPmN8jz6LLhBmtj3MPKrF6EENYvztlLTmqgSfPCEGdio5ARh21GI
         YW93WzFV+Bv/v2NFCTMm/DmhdOj2gb/UqiBDJ00+sUmmOP+iNbyp1JM2YDCwHQYjSAu0
         4h7es5Zal1MxtWOPePo9k31PPghZ9QbWm3uDY3lSf6p3BKek3E6r40cBZdctNMLp2TEs
         HKgYObh1/VlPP3g+dNl/VI4PeWOLPYFUkqNH4sO8oFUBZZKlBQ3yNKHYo0Uhnjfapgh7
         JDaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694762257; x=1695367057;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nKlXZwcMYS0nRM5520Aq9RRDReEviWQWXfnNE3DisAk=;
        b=WzmSI051AjJRWhtl948vL4kuDZZT1VXxYJpSUcmxn45m3tWylEiUACjpj1aqDrJoOw
         9WxBJ1q96E2+5GZpl0KwlCZWXSVmjsPzs2k0RGWP55LVS+x3V4mLWYuclwLdDOWPc/Q5
         CZhfm1tVcvpQhwIVhFKnLj1i9A8wQAJy1okOqv1/tCx9wn+dcvP57znq2NCUCY5Oa5ql
         0H0/5kpjEf+HvVg9tAkstTGDScOxI9mYXx3BuUVBrPEkMJj4+QiiWygH0PHSfr1HcUzP
         fi6pYdKptCR4aaYTjy0X+hE7gurVADC2M0hHgpQm27JEfEThuoEidEJkiiOv8tM2V/Fe
         7oTQ==
X-Gm-Message-State: AOJu0Yxd7Kq/GJZd3el8cll8YMIK9S6l35lhJi5/3ZCUfNyOeWsNwJxc
	+63haGyqR3JamqjBdf5amK6w8Q==
X-Google-Smtp-Source: AGHT+IFLPQoHUaGnhgNK8hVifo28q8Mg3P4hJPyPf8HjItYYBfnS1qR1isuRtxNCFzzz2hmRHqOfxw==
X-Received: by 2002:a05:600c:28f:b0:402:e68f:8a4f with SMTP id 15-20020a05600c028f00b00402e68f8a4fmr557370wmk.0.1694762256675;
        Fri, 15 Sep 2023 00:17:36 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id x7-20020a05600c2d0700b00404719b05b5sm3392964wmf.27.2023.09.15.00.17.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:17:36 -0700 (PDT)
Message-ID: <a48d1d09-e967-3226-7173-4e2a58ffae1d@linaro.org>
Date: Fri, 15 Sep 2023 09:17:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/2] dt-bindings: interconnect: Add Qualcomm SM4450
Content-Language: en-US
To: Tengfei Fan <quic_tengfan@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, djakov@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 quic_tsoni@quicinc.com, quic_shashim@quicinc.com, quic_kaushalk@quicinc.com,
 quic_tdas@quicinc.com, quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
 kernel@quicinc.com
References: <20230915020129.19611-1-quic_tengfan@quicinc.com>
 <20230915020129.19611-2-quic_tengfan@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915020129.19611-2-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 04:01, Tengfei Fan wrote:
> The Qualcomm SM4450 SoC has several bus fabrics that could be controlled
> and tuned dynamically according to the bandwidth demand.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---

qcom,sm4450-rpmh.example.dtb: interconnect@1700000: reg: [[0, 24117248],
[0, 200832]] is too long

Did you test it before sending? No, you did not. Eh :(

Best regards,
Krzysztof


