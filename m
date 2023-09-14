Return-Path: <devicetree+bounces-84-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 020CD79FBB2
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 08:12:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 93304B208F5
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 06:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D631E1FA6;
	Thu, 14 Sep 2023 06:12:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C69681873
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 06:12:01 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BBC8F3
	for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:12:00 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-402c46c49f4so5707105e9.1
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 23:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694671919; x=1695276719; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2a/PHWqxsvCjYvw/PrGstkPwApGUDTH1LI40pfCDPVU=;
        b=WyH8FAFbkA33GCBtaxJNxOd3NtHQfvMjpBVZLBhH87u4tT32p54ddHDYsL33JRrYZk
         iVAo3kxs/4SXHUuDgqZuWZSA/A7EtSZ9LoTbFz1tAItuoEVU8M9MNXAiCabW3dZWFQUh
         Ax8jKOkNqWBgboFrIvP6FaG85PHCZ4Ae01UR4bVd1rLlLV7wt8aNywNnzKybYPx+bfJh
         Vf/uI3NRbxQQvp5un2THZGjNKB8BKNjpzpaaMmXMyJji1pUWeSJGice5Fz9HOjpKEVD3
         XwxGkRJQ4aRFL42uLIt0HVyR+8ZKRIAwgzyH4PVvO3s7RfdMInLOw3Hu1NeC1w4a5OQl
         s86A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694671919; x=1695276719;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2a/PHWqxsvCjYvw/PrGstkPwApGUDTH1LI40pfCDPVU=;
        b=PMsgSxaeIkUMvtIpTEiF2AdvWgPu9nscsugiRufTaE9CLSZjvisz2aj5XN+ZZDwGO7
         /ID9yy893T31NHHRr6Gl+Ast6fQ9JuxsF3uAuPq1ZBoLAJpISJYl7/UPuLTK2LFRoJa3
         4wGXFyaIen+41ogNyfvrTIoKanXiSndWOVDzVMeOUIR6V5m76dRKqNUm+qWhZVT6oOYl
         PZiTsECVjvfRD7JMNn2BGWTEiLwXB/M1BHYlIhhCiHEvkPqgOyRNFEQB562WyErewY1J
         koCyfPOzvwjxNdpJmhffRovrEno8Oa6O6hje8p5ldezPkZu3hl+6Xw3mUBSmN78sa+5X
         Nojw==
X-Gm-Message-State: AOJu0YxzwVPHY17ttiwB6CpQq3gj6I041uKn6oDxw9L2X9qF3n6b5cFP
	944hBrhp0srv1CqtUaJtIrXa/A==
X-Google-Smtp-Source: AGHT+IGw6rLBiZ/VZp782H6iiBB72aJIj5bR1ullvx8HbEIzsNDjz5tNRHSmEU1mgTSDc50+cIZokQ==
X-Received: by 2002:a05:600c:204c:b0:401:db82:3edf with SMTP id p12-20020a05600c204c00b00401db823edfmr3487074wmg.39.1694671918950;
        Wed, 13 Sep 2023 23:11:58 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id c20-20020a7bc854000000b003fee6f027c7sm3840112wml.19.2023.09.13.23.11.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 23:11:58 -0700 (PDT)
Message-ID: <f4dc58b3-b721-3081-6fed-66976b694217@linaro.org>
Date: Thu, 14 Sep 2023 08:11:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] dt-bindings: arm-smmu: Add SM7150 GPU SMMUv2
Content-Language: en-US
To: Danila Tikhonov <danila@jiaxyga.com>, will@kernel.org,
 robin.murphy@arm.com, joro@8bytes.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 dmitry.baryshkov@linaro.org, konrad.dybcio@linaro.org,
 quic_saipraka@quicinc.com, quic_bjorande@quicinc.com, a39.skl@gmail.com,
 robdclark@chromium.org, mani@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230913184526.20016-1-danila@jiaxyga.com>
 <20230913184526.20016-2-danila@jiaxyga.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230913184526.20016-2-danila@jiaxyga.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 13/09/2023 20:45, Danila Tikhonov wrote:
> SM7150 has a qcom,smmu-v2-style SMMU just for Adreno and friends.
> Document it.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


