Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D80A84FE132
	for <lists+devicetree@lfdr.de>; Tue, 12 Apr 2022 14:53:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354690AbiDLMzD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Apr 2022 08:55:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355214AbiDLMxy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Apr 2022 08:53:54 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D712BCA5
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 05:24:50 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id p15so36971164ejc.7
        for <devicetree@vger.kernel.org>; Tue, 12 Apr 2022 05:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=J2HOD4HkMW/WZyqU0scb3DkqJOIyVXtxXfFpqLF39LA=;
        b=BSDBx092na8G09obDs12KLpu14UVloBiQJ/OUqzJv5waDFB27iZt7LmuLRQTcdF/QK
         UtNLeaZbQhMYajiLfZd/CPAPvD72Oip6XFlqRlHfSmlQgCZdKt86+UWjNoqTQZbx8iss
         Z6zJJTUs+vldkwfbjABxL3NstE0QtnGNApADZhtMIRQXKNl4NL1zSQbCtlQpbBqPTurp
         BS2mG4nHSwf1Ev64IKyULv1yZVa194WpIIdWp2q6rknBZt1aPAYsqiqFpG/7WDO5/KAJ
         /lseMUcKB4NbnuDW2O8dx9HyyqsD63nzIbDIgc3CW5RmEhujFJwuTmxSwTTLy0ej/1rZ
         mYdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=J2HOD4HkMW/WZyqU0scb3DkqJOIyVXtxXfFpqLF39LA=;
        b=aL4ZCs4lvuiiKICjN30E8YTrmbtFzAqGqxfKTeAxt3j2jEBHU/hu/jNmHtASxAC1L4
         AiPBo8Hhe1pWlilq37aDUeCosLO9pTsibezvYLx+RLFoaVPDdvbfwDA/ISQB5WnfjaC+
         pNjEJVHVoI/pdIaQNMAPeoEKCP8ix8aSHrIdelzV7AzbVVakt3apkuVSQdXxFg6ZLN4/
         3qgXEjc38V99AvWPJ6+zzrZPiQX4MoCr1Nyc7JuuJbs1OuuSgOV46wnSsptKq976QISm
         Eut2DJGt52iqoFzYQrQJlTGTM26KOZp3BY3yAxUncWoufKDm6dZWOcqk59sgy7xQLED4
         Wdfw==
X-Gm-Message-State: AOAM532r0elBnWMcQddtB4+kfCV9tdB1iac8E7P5Wf1W0kHIC4Pa1IoT
        8gOi9b5UBAjcyHv3ajEk1fXQ3Q==
X-Google-Smtp-Source: ABdhPJwxDokvnjMDNUOHEQrLSn0IBIa0rpIgwtzTTXscmRrZbvnL+qTQQZS+r1WuNbxU2d4mzcczrg==
X-Received: by 2002:a17:906:5d11:b0:6e5:344f:22e7 with SMTP id g17-20020a1709065d1100b006e5344f22e7mr32096986ejt.178.1649766288912;
        Tue, 12 Apr 2022 05:24:48 -0700 (PDT)
Received: from [192.168.0.195] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id c13-20020a17090654cd00b006e0db351d01sm13147984ejp.124.2022.04.12.05.24.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Apr 2022 05:24:48 -0700 (PDT)
Message-ID: <69ae7c10-0967-7581-18df-8ec19e9aa410@linaro.org>
Date:   Tue, 12 Apr 2022 14:24:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 4/7] scsi: ufs-renesas: Add support for Renesas R-Car UFS
 controller
Content-Language: en-US
To:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        alim.akhtar@samsung.com, avri.altman@wdc.com, robh+dt@kernel.org,
        krzk+dt@kernel.org
Cc:     jejb@linux.ibm.com, martin.petersen@oracle.com,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <20220412073647.3808493-1-yoshihiro.shimoda.uh@renesas.com>
 <20220412073647.3808493-5-yoshihiro.shimoda.uh@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220412073647.3808493-5-yoshihiro.shimoda.uh@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2022 09:36, Yoshihiro Shimoda wrote:
> Add support for Renesas R-Car UFS controller which needs vender specific
> initialization.

Thank you for your patch. There is something to discuss/improve.

> +static const struct of_device_id ufs_renesas_of_match[] = {
> +	{ .compatible = "renesas,r8a779f0-ufs" },
> +};
> +MODULE_DEVICE_TABLE(of, ufs_renesas_of_match);
> +
> +static int ufs_renesas_probe(struct platform_device *pdev)
> +{
> +	return ufshcd_pltfrm_init(pdev, &ufs_renesas_vops);
> +}
> +
> +static int ufs_renesas_remove(struct platform_device *pdev)
> +{
> +	struct ufs_hba *hba = platform_get_drvdata(pdev);
> +
> +	ufshcd_remove(hba);
> +
> +	return 0;
> +}
> +
> +static struct platform_driver ufs_renesas_platform = {
> +	.probe	= ufs_renesas_probe,
> +	.remove	= ufs_renesas_remove,
> +	.driver	= {
> +		.name	= "ufshcd-renesas",
> +		.of_match_table	= of_match_ptr(ufs_renesas_of_match),

You probably need "__maybe_unused" if you want to keep of_match_ptr.
Compile test with W=1 on other platforms should point it out. Other
solution is to remove of_match_ptr().

Best regards,
Krzysztof
