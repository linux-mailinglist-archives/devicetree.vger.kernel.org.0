Return-Path: <devicetree+bounces-826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B097A3458
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 10:31:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 858C1281B1C
	for <lists+devicetree@lfdr.de>; Sun, 17 Sep 2023 08:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBD00184F;
	Sun, 17 Sep 2023 08:31:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1A71FB2
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 08:31:31 +0000 (UTC)
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1204219B
	for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 01:31:29 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50300cb4776so1721349e87.3
        for <devicetree@vger.kernel.org>; Sun, 17 Sep 2023 01:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694939487; x=1695544287; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=drDjgL0hgos/meU0CMqnv5ge6VNpucOKs27UgCJcW4o=;
        b=uOiLD6iKN4x+LSt5vO0ho8vgWY745YqO4HDowXRJaCd4BRwDpkqYroJh4Z6HehmGBr
         +mYb1ydM1lLdzpkO3yAfSz5Wb3YnHIeSzxN2xYUeENVkvQT63oPyPIFs1H+4nnlR9Oye
         WHueW5N4pBFU+hFxEWDAwItD4rlp9pqGQLjcOKN/V3QPcFPdPLwyz7LUPrJOWhugXmoM
         HEQMETigu5kA52351Kg2iXEytF0BVUi1huKM4xBqjNPY1MtPVi01ylTrYPuq6yMlCHjX
         gZKJjsFu4qUAa/D1j5nPTb8hNmNHDlJ5eha4//qA5x+BcpqB4Txt6m6ruSTMKl2XWH0c
         Myig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694939487; x=1695544287;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=drDjgL0hgos/meU0CMqnv5ge6VNpucOKs27UgCJcW4o=;
        b=s8PdgCMPR19A0/EPVxfrq6By2dloaolEe3lNCKxBK2VKpRxGk2MscmWOyDGmsMV7CR
         N3qlYyZF9jgsa4bzL4D/mW2TCc1D4/zht/TsZ7SWZruSMcdHl+cusGtxKvstk/ZU/q72
         YYHdEyT8N1bodxUXCgpxOe1cL8+kIeZbQnpHMBxXYSXrdihkdthwE+aiH6pd6Z+J92lK
         U3dzY6um54q+MQtoWqhx1gOKd0HMynRw8tcbPzycJPiOuLoIBNxxxXJYOw3pCLRsZT/2
         54+BHLdiphcj1hAnRcbNRk7HFOzHgMJBmnIOX0EKdMj9lS+ttx0diGLXtVMhAx7oFUys
         ORtw==
X-Gm-Message-State: AOJu0Yx5jk3ynctus+GCWz7SCdva3Rg6ePMixPWtEMubTe9e5bbTyX2j
	eqE1IPnbrqveCq+5qFqhRQpfXPv3ktRpZ3X1X0Gggg==
X-Google-Smtp-Source: AGHT+IHFmHHrwMXcnFf/9Ysu9VlD73MTmqu/TrOJBBdfu+3YjbX5GvgssgHy0T7TnBmG+oi1KuCbqw==
X-Received: by 2002:ac2:54a5:0:b0:4fd:d08c:fa3e with SMTP id w5-20020ac254a5000000b004fdd08cfa3emr4659614lfk.42.1694939487357;
        Sun, 17 Sep 2023 01:31:27 -0700 (PDT)
Received: from [192.168.1.77] (150-140-187-31.ftth.glasoperator.nl. [31.187.140.150])
        by smtp.gmail.com with ESMTPSA id i8-20020a0564020f0800b005309eb7544fsm2672737eda.45.2023.09.17.01.31.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 17 Sep 2023 01:31:26 -0700 (PDT)
Message-ID: <3dbff750-c430-04a7-1c53-f2e327e54f2e@linaro.org>
Date: Sun, 17 Sep 2023 10:31:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 0/3] mtk-socinfo driver implementation
Content-Language: en-US
To: William-tw Lin <william-tw.lin@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Matthias Brugger
 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Kevin Hilman <khilman@kernel.org>
Cc: Project_Global_Chrome_Upstream_Group@mediatek.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org
References: <20230915152607.18116-1-william-tw.lin@mediatek.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230915152607.18116-1-william-tw.lin@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 15/09/2023 17:26, William-tw Lin wrote:
> This purpose of the patches is for soc-related information retrival.
> Such information includes manufacturer information, SoC name, SoC 
> segment name, and SoC marketing name.
> 
> Based on tag: next-20230915, linux-next/master
> 
> Changes in v2:
> - Remove mtk-socinfo.h
> - Consolidate different compatibles into mediatek,socinfo
> - Move socinfo node out of MMIO bus
> - Move mtk-socinfo.yaml to hwinfo
> - Fix reviewer's comments

This is way to vague, especially that you did not fix them. You need to
list all of them. Then we will nicely see what you ignored.


Best regards,
Krzysztof


