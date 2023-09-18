Return-Path: <devicetree+bounces-1082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8AC7A4974
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 14:20:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7A38281C77
	for <lists+devicetree@lfdr.de>; Mon, 18 Sep 2023 12:20:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72DE1CAB4;
	Mon, 18 Sep 2023 12:20:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA1379CD
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 12:20:26 +0000 (UTC)
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AD9F8E
	for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:20:13 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50305abe5f0so2677769e87.2
        for <devicetree@vger.kernel.org>; Mon, 18 Sep 2023 05:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695039611; x=1695644411; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=37gGL6Jw2l0tKYWgVGTCg3eSN+EAxtW6F9x/TNJWld4=;
        b=KwTCEsd4Z9EC9n6Y7NqI5fHh4S4UMCyDip5G83Gikn4/5JC/rt/nz4Ev3hpvS7ax/m
         iqul//xCSnyFR1fJkCMpatOdVFQNQCxlZGBtm3xbW0eNfJ66B6+1EeeJhCcoA+NgruHh
         9sU6eMDhLS4jramsQUHjeVbyk9cUYVoxRioewKQpPEJZR+ArS/Ilmu2/xp39jNPe0iDT
         IiMMU1jps4KSEwZkfYbx9XTUmywALJmN5PZYbqNbkLDWCjgnKMo1LulAmQsPhNxABjm6
         1PCDtKn3q5x0Kn0/UuhROiJzZAHEh2NLTmKeZSleKAOj8Y/kDz6RiBbHhvMfHEwcE8/W
         8nGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695039611; x=1695644411;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=37gGL6Jw2l0tKYWgVGTCg3eSN+EAxtW6F9x/TNJWld4=;
        b=Ch5zMf798Sc0X1Bw9IPJEY/Ksqw23rm2BZfDs64NeYqi8jVEFYAmxVDelNd05xnK16
         bOsXTaSq0tU7ivEcA3uOgSaS2s9ZXb2cSy1g1s+Bi4HeAMSq7GFhjooBAFUeofC30rIy
         8RE0D8k8oBlhN2SF/VWuvv4fF1J06j1/X99ChLT16LolDNJM0FRaH6a8OfZzx1fslcyu
         eFnGoEeLIpPRunsQar2WZQsLarzlrhJQ7FBmK55jCRTDFmcW8c1m6X3RUhVdUxc7JXnZ
         iT0Xs2TmBst3xJUjyAHlSg8FBYxsY6CWaxTSEkK+LowhHcPvDLGG6dw5xL1BniV0M6GH
         zrCQ==
X-Gm-Message-State: AOJu0Yxzkp1N5E6lILP7+XDGC0j1ca37Brj0S+8GBzAi6NcBWlp9tpHJ
	paCP2YTowyZItBRrWx9XUqri7Q==
X-Google-Smtp-Source: AGHT+IHMkJKZiVpJg+tLigw+N6NXKAtpmNFN/BdLPmJ+19DhydtwsrfEqqkG3R0omuA7UHeHeMpURw==
X-Received: by 2002:a05:6512:1115:b0:4fb:9f93:365f with SMTP id l21-20020a056512111500b004fb9f93365fmr8492523lfg.38.1695039611392;
        Mon, 18 Sep 2023 05:20:11 -0700 (PDT)
Received: from [172.25.80.114] ([217.67.225.27])
        by smtp.gmail.com with ESMTPSA id a3-20020aa7cf03000000b0052e1959db1csm5966342edy.20.2023.09.18.05.20.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Sep 2023 05:20:10 -0700 (PDT)
Message-ID: <d70ae419-0038-c9da-8e4a-5ce90fe61f79@linaro.org>
Date: Mon, 18 Sep 2023 14:20:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 1/2] dt-bindings: soc: mediatek: add mt8188 svs
 dt-bindings
Content-Language: en-US
To: Mark Tseng <chun-jen.tseng@mediatek.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Roger Lu <roger.lu@mediatek.com>, Kevin Hilman <khilman@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20230918031835.12352-1-chun-jen.tseng@mediatek.com>
 <20230918031835.12352-2-chun-jen.tseng@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230918031835.12352-2-chun-jen.tseng@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 18/09/2023 05:18, Mark Tseng wrote:
> Add mt8188 svs compatible in dt-bindings.
> 
> Signed-off-by: Mark Tseng <chun-jen.tseng@mediatek.com>
> ---

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions, under or above your Signed-off-by tag. Tag is "received", when
provided in a message replied to you on the mailing list. Tools like b4
can help here. However, there's no need to repost patches *only* to add
the tags. The upstream maintainer will do that for tags received on the
version they apply.

https://elixir.bootlin.com/linux/v6.5-rc3/source/Documentation/process/submitting-patches.rst#L577

If a tag was not added on purpose, please state why and what changed.

Best regards,
Krzysztof


