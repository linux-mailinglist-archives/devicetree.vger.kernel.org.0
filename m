Return-Path: <devicetree+bounces-1085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 488A37A498F
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 14:27:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 02FE6281CB0
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C02011CAB1;
	Mon, 18 Sep 2023 12:27:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74FB71CAB8
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 12:27:03 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 988FD9F
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:27:01 -0700 (PDT)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-52c4d3ff424so5487073a12.0
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:27:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695040020; x=1695644820; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=am3ITFqyqHvAOasQFG8ffUFXROr9lenVSsvirLHr2XM=;
        b=v+ZRHVMFTaN2GuH8JJZTITWpceMfKlr6IPGaLrE+YzfsNVWIkwWt2aF78FUIYKPjeK
         EEoWgLcbZmYJjIaIGnQ5lllJ/rHYrnhlSQ4fXTWQb3e/PFu79GylAeKh9KWG+9j+/bbY
         0n0HoOiJvht8hOlQTIoSdjaTKQWXKibLKzLkm0qtiFuTHyLcQAOrmO6Bz9t92mZ+BPHW
         yRkCZVozegF07j5yP/gx4d6JYw49YQ2+R9ThgFKI8Oh2YIJGVZieBn4VquNMcqQMdnTA
         QLJbet5rmMWB/ePsbjNKXkFR3MZRJS0yK++25nynut+7Hfo3LiQbEd7b7GMLQeW21EQW
         5SDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695040020; x=1695644820;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=am3ITFqyqHvAOasQFG8ffUFXROr9lenVSsvirLHr2XM=;
        b=kk7tYDcexUEyFaPPDfrDgvqIsIzepVv8Vaq8PJIAE8/ZrqBxj8ikozEleYtPAMERV+
         ZAd4MZZ26yXcsmugK3gDvLQZ5gQPpxOQN+UzHiUq/A5Ia3WCbA7ZaNenwMyibdRTzhEB
         VM+ZHOEDjICYRatDhH/JMCRwo3aWJirNvr2mXJBiCBIA7pSgNOxzjVdVGr2dj0QQWhsx
         Fsyxca2Rkw8yAhR0kNjgyYphev8lTkc7Q9M3L8a9sbQzGUrWlTsVTe79ItrCZ7ss0F/7
         1/4B3QCLsM/+hoPiGFzp4BrUuvdbrpvttfCIRSgUUSY6jRGgrHUepr5RV/tzTI+5GVis
         d2MA==
X-Gm-Message-State: AOJu0YybFEqA7hsAMWw/XZopvKlyxNLP3mOkeT0S8nf7AU4tQG5S3eQc
	spuJgJ88XVYTJl0h2CwaTAranQ==
X-Google-Smtp-Source: AGHT+IGu+xED07hiZ0cuzgue+jBzEz+Yo7PoCuycymv2ln873HHx7cZFFWxCeasLd2FZJIaRvVVsmw==
X-Received: by 2002:aa7:d394:0:b0:51e:309:2e11 with SMTP id x20-20020aa7d394000000b0051e03092e11mr7229931edq.36.1695040020012;
        Mon, 18 Sep 2023 05:27:00 -0700 (PDT)
Received: from [172.25.80.114] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id t16-20020a508d50000000b0053112d6a40esm1546588edt.82.2023.09.18.05.26.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 05:26:59 -0700 (PDT)
Message-ID: <c54a070f-692c-b45d-6170-c52b0d33ba51@linaro.org>
Date: Mon, 18 Sep 2023 14:26:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: fsl,mu: add new tx doorbell
 channel
Content-Language: en-US
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>,
 Jassi Brar <jassisinghbrar@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Dong Aisheng <aisheng.dong@nxp.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>
References: <20230917-imx95-mbox-v1-0-440245287356@nxp.com>
 <20230917-imx95-mbox-v1-1-440245287356@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230917-imx95-mbox-v1-1-440245287356@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 17/09/2023 14:43, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Add new tx doorbell channel for i.MX95 SCMI mailbox usage.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


