Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 45DC3717247
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 02:08:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233862AbjEaAIf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 20:08:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43972 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233724AbjEaAIe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 20:08:34 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EE64D9
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 17:08:32 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-30ae95c4e75so3279583f8f.2
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 17:08:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685491711; x=1688083711;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nprvv5dipJQhNKlGtncqecBE+d6cMnyn5+mgkMrzuNY=;
        b=OxWcLoaXBygCM10Vi3SvsrDY+j4ZLu4ZGMnozKsroNQxE+K33YuA8eqNg/1EgfKYJr
         gmD4qncvtX+pH1soFx+2Y0fp+kftmJgmusjMUD90YCffhr6fc2m7ky4tmk7afyCPMJre
         32YZwokIgBy5j2uv9gLHAMioZTL16fqN0Kk954egaZV+xt38Fmi0lrhMF8RUq809QDYY
         Zn9Pqxzp+PdJtoskANNsu4S/n3+j/4GgyfsG7lI5ujldsbkmLy6gexz4z6sR/iQEG5wa
         STf3mW1sPWfYdqFtmSGAh9BJc7tTBAKt9opYPGNJahm05Yiu7eWmd/2585UJLvxt2oN+
         X44A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685491711; x=1688083711;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nprvv5dipJQhNKlGtncqecBE+d6cMnyn5+mgkMrzuNY=;
        b=FGOUTXR35yViu3SkYRnoJcfeh1ui5KNPYfukt03iVcxzaHpk5dvNCEsT/zeN3aiBFI
         beqqs8TV+z+Kyd68qnlsooslEDtSF7BG7bS0dNiH3/r/rUfm9MZeTvh9eDqj69f1xy0c
         YYx+Mc1Mw9Phzu24/XQRdVYxuvyoSze6DWbUZJFrTNH8D+dYJUjCB8T55DpB/uoMTZfM
         svHV8qGHmBqi32mb8EMRwLyRi8oh9rL5OzUbpho+0+z4uo+Y0EqAtiqYL98DEXv+fEW2
         U6sjQAuzjAMv3gwGrtiIBlfVKJ8RdySGwHKse18fzmWvrTD6GgeXBbk5t10fpDOW9ede
         Xx2g==
X-Gm-Message-State: AC+VfDzSlqqB9J22Z29qOZQyOEje1hY8RO3oUHWU8jWQg45QC4Lod+CL
        ilM7GZ1TE2kjC06ztSVKgV83AA==
X-Google-Smtp-Source: ACHHUZ5Men398+9FEhEH47wSWrrc3WimVgKoYrBc1rlIza2YqdcjKZG3ZF/6NsD05Qtse+zqWGZYrg==
X-Received: by 2002:adf:f104:0:b0:30a:e5ba:170d with SMTP id r4-20020adff104000000b0030ae5ba170dmr2920336wro.32.1685491710977;
        Tue, 30 May 2023 17:08:30 -0700 (PDT)
Received: from [192.168.0.84] (cpc76484-cwma10-2-0-cust274.7-3.cable.virginm.net. [82.31.201.19])
        by smtp.gmail.com with ESMTPSA id h14-20020a5d6e0e000000b002ff2c39d072sm4732909wrz.104.2023.05.30.17.08.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 May 2023 17:08:30 -0700 (PDT)
Message-ID: <e0d7021c-d6af-25df-5c90-3caec4bb83b7@linaro.org>
Date:   Wed, 31 May 2023 01:08:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v2 2/3] soc: qcom: rmtfs: Support discarding guard pages
Content-Language: en-US
To:     Bjorn Andersson <quic_bjorande@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230530233643.4044823-1-quic_bjorande@quicinc.com>
 <20230530233643.4044823-3-quic_bjorande@quicinc.com>
From:   Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20230530233643.4044823-3-quic_bjorande@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 31/05/2023 00:36, Bjorn Andersson wrote:
> In some configurations, the exact placement of the rmtfs shared memory
> region isn't so strict. The DeviceTree author can then choose to use the
> "size" property and rely on the OS for placement (in combination with
> "alloc-ranges", if desired).
> 
> But on some platforms the rmtfs memory region may not be allocated
> adjacent to regions allocated by other clients. Add support for
> discarding the first and last 4k block in the region, if
> qcom,use-guard-pages is specified in DeviceTree.

Oh nice!
> 
> Signed-off-by: Bjorn Andersson <quic_bjorande@quicinc.com>
> ---
> 
> Changes since v1:
> - Drop the dma_alloc_coherent() based approach and just add support for
>   the guard pages.
> 
>  drivers/soc/qcom/rmtfs_mem.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/soc/qcom/rmtfs_mem.c b/drivers/soc/qcom/rmtfs_mem.c
> index f83811f51175..28238974d913 100644
> --- a/drivers/soc/qcom/rmtfs_mem.c
> +++ b/drivers/soc/qcom/rmtfs_mem.c
> @@ -213,6 +213,16 @@ static int qcom_rmtfs_mem_probe(struct platform_device *pdev)
>  		goto put_device;
>  	}
>  
> +	/*
> +	 * If requested, discard the first and last 4k block in order to ensure
> +	 * that the rmtfs region isn't adjacent to other protected regions.
> +	 */
> +	if (of_property_present(node, "qcom,use-guard-pages")) {
> +		rmtfs_mem->addr += SZ_4K;
> +		rmtfs_mem->base += SZ_4K;
> +		rmtfs_mem->size -= 2 * SZ_4K;
> +	}
> +
>  	cdev_init(&rmtfs_mem->cdev, &qcom_rmtfs_mem_fops);
>  	rmtfs_mem->cdev.owner = THIS_MODULE;
>  

-- 
// Caleb (they/them)
