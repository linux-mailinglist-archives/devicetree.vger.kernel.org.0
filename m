Return-Path: <devicetree+bounces-423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 50F217A17D0
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 09:52:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5C12F1C20AEF
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 07:52:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93F2DD2EC;
	Fri, 15 Sep 2023 07:52:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1544FD295
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 07:52:37 +0000 (UTC)
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8FFF7193
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:52:36 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-52a1ce529fdso2154398a12.1
        for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 00:52:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694764355; x=1695369155; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1DmNveiP8xHX58IAf7GJRRnmwEbVvFnwIttOiAgQ004=;
        b=L4RaL8CdamXJ1n961ofptOQG6ridNxCCg5vq0sHVgSbBVHxurZNySoZqTjeKRBs/5H
         TzR3JULwJo3R0RGeUhiNKjwtn20QYnTFfpRvQw22B9AclekwX7HaPirYX5u5EYxmK8tf
         iyKTRDgjlO4m7eQt1c7bjHNnHvbxlXwPvD98TOn1GNXH/M6pWKUMKmfBiIJl7oTIwZvj
         T9b9Mk9e835KG+DFnjpCXkWlMd4rhWMqn+LtWkd7GW1oJdIWaK3MVwc/VtcL047nrBIW
         0mKKaS31UfhxiyzAPNwuO3i945KBDuWxyjzIYD7GctivBHf/QFQBBDBfxdYuaiwWZbm5
         UEMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694764355; x=1695369155;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1DmNveiP8xHX58IAf7GJRRnmwEbVvFnwIttOiAgQ004=;
        b=KdgLtiU30hwNxSdktQegbZsyhdavJTisGodnK9dkAhxVivtYqP6ud+cziuMR0LDTai
         tbuccRENX6Fdr7c01vRRpoz2qpf7kjC1H19K7U4Oqgln/zGu0bUdA61Ju0nKfQGT+tno
         zUpl4rFgOjNpnOsUu7PBG3EaIr/9mzOH4BSAzVOktUegd0TloJU+XR/zw/mXtu6/Lpp2
         /w7jAt1dJ1Qg/Ah4fs9Omcu1MKtXzaOw3cSdZQixmJg+2+NNwxt66doSK5+ysPhP9ddL
         x8GJgnFGy3Wyj/RZZSQUR08UX7EyWydCfH2sy2TzozJQ7W/WljgOV4xU4e9ivFSnPPff
         3QxQ==
X-Gm-Message-State: AOJu0YwsPYvC+aigjk2vkt/8kFENAadeWx63xWdfsY8zJzzan2fDG7Yd
	7LP9OtUGHTm4A1VaVpLdbi/NbQ==
X-Google-Smtp-Source: AGHT+IG3viMjTUAP25MuwtYIdv3N1ev0u+/SYqVBSVH0BOrYl2RsGa4IaFywaU+81yE3KsWBeGeP+A==
X-Received: by 2002:a05:6402:14c4:b0:52a:1c3c:2ecc with SMTP id f4-20020a05640214c400b0052a1c3c2eccmr687838edx.25.1694764355070;
        Fri, 15 Sep 2023 00:52:35 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id dm6-20020a05640222c600b0053090e2afafsm328735edb.22.2023.09.15.00.52.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Sep 2023 00:52:34 -0700 (PDT)
Message-ID: <83142b6a-90da-b705-5170-5468175cf23d@linaro.org>
Date: Fri, 15 Sep 2023 09:52:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v1 1/2] dt-bindings: soc: mediatek: add mt8188 svs
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
References: <20230915075003.1552-1-chun-jen.tseng@mediatek.com>
 <20230915075003.1552-2-chun-jen.tseng@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915075003.1552-2-chun-jen.tseng@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 09:50, Mark Tseng wrote:
> Add mt8188 svs compatible in dt-bindings.
> 
> Signed-off-by: Mark Tseng <chun-jen.tseng@mediatek.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


