Return-Path: <devicetree+bounces-554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E415B7A1EF5
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 14:43:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9E86D2826D3
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 12:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71BDA1079D;
	Fri, 15 Sep 2023 12:43:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7710D53B
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 12:43:34 +0000 (UTC)
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E7DC196
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:43:32 -0700 (PDT)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-404314388ceso20765025e9.2
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 05:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694781811; x=1695386611; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aSaEjuQP3bJaj+tuqC0EES7njvk708CPwg4r5YZVC90=;
        b=RJtSTweIDYCcI4lrfEC0/wQlBeRJ3Bg17nVesialsmzNF70TzocO/KqcoHBaQPx3H6
         U6zGs1N5g3QDI0Tcx3sJJ7L/rYrhY1GLo0AZWB8Hd1sUbyXR5/9posONW1hE6U5jbaGE
         TACB0ATgmzzypbbC1XXyzXjsn8Wky5F+p9FXo+KPhqq98SVABlhQK1pXDaQgaLLzuLjk
         0yVB9S/Auu8pkrMYUyhuhGv/93gZgY6j3BXRaKE0q7n/D93Hup+Z5tz0w0zpj6xQsb74
         XGOk9NK4P43rkZJcsp0Cjdp0MSl8y3dXN7XMYteO0CFMeoe2JcSG4LwsyQvBU1AwxVJX
         dWpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694781811; x=1695386611;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aSaEjuQP3bJaj+tuqC0EES7njvk708CPwg4r5YZVC90=;
        b=Lr//H01CdqH3vzCGOSYYcHQWZwNQY2Y6glbH/QMTQ9zX0Lc7fVfIDb+5mGjyTxDvz2
         xClA2QrmZrWOgBSFtCLKo9npvorzh2Xo9W2MzOgE1A/vHLpqZpD+UN0kYHFmxnf+zgTs
         M/p419M3nlNi2mfV52MbYiBRcKw9mP5/tv4FoEa07J53HqkyhLFYAtmtAqcroKaxBD7K
         78wXNBRIzAEJknb1iIXeAr7EXejRnEQ0sI1nAt3AJRABDQozKuQ0Wl/aEBkyV0ycgvjt
         8D4ePFkFRs38LgOI0wAqsIAacd0n9e/0kM7IOpsWK8e0Rc83+dp1AAEK46ZKyqhEruxx
         8Pyg==
X-Gm-Message-State: AOJu0Yx1QaSYYYiD2pGFtlc6BHng7ZWK8uZZcSbG6388UeRE4r8AcIaG
	x6nrfHjS7ZqSJD6S+Ujpkt1fQw==
X-Google-Smtp-Source: AGHT+IF2jyol6SrjEHegYj3kBq8qaNmHDS6ISO3rBYrj3clB5oMirv1vXA9GlH77lXUYqUG8NobeRw==
X-Received: by 2002:a05:600c:b5a:b0:401:1066:53e4 with SMTP id k26-20020a05600c0b5a00b00401106653e4mr1470885wmr.38.1694781810769;
        Fri, 15 Sep 2023 05:43:30 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id k16-20020a05600c1c9000b004047f3b73f9sm997698wms.21.2023.09.15.05.43.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 05:43:30 -0700 (PDT)
Message-ID: <03b0cafa-49c7-8838-b116-927c9649cbd3@linaro.org>
Date: Fri, 15 Sep 2023 14:43:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH V2 1/4] dt-bindings: thermal: qcom-tsens: Add ipq5018
 compatible
Content-Language: en-US
To: Sricharan Ramabadhran <quic_srichara@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org,
 srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 thara.gopinath@gmail.com, rafael@kernel.org, daniel.lezcano@linaro.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 dmitry.baryshkov@linaro.org
References: <20230915121504.806672-1-quic_srichara@quicinc.com>
 <20230915121504.806672-2-quic_srichara@quicinc.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915121504.806672-2-quic_srichara@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 14:15, Sricharan Ramabadhran wrote:
> IPQ5018 has tsens v1.0 block with 4 sensors and 1 interrupt.
> 
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> ---
>  [v2] Sorted the compatible and removed example
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


