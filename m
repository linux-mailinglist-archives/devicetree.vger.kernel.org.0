Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0203E6048DC
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 16:12:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230500AbiJSOMb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 10:12:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231892AbiJSOMJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 10:12:09 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6DE5237D3
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 06:54:37 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id m23so22261057lji.2
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 06:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RknYa2NABgYYHyJknMjUhYiHTu2aqnADkUkC2x00Z/k=;
        b=yVyYhg2zBMm+7w3lS+wQf7QQB6OxkvKhhDBuAPYoaZ7jD0KpwgQm287TcPFHMwTTkE
         jryok8brz3+crpof1k38RGlYAy8EknTf68wgzwJcnn3FBydmHK77NIq8gst0QpljcDnr
         lEQvShh77tEZtVCe8fl0GZnP2mCH81by5zLhTlqbuLfUx0UpnWcovEmz96yWNOv810Mr
         lQfdoKcRbsxklj6SU8zBtJVkDk9ttPpnKVB3WgOpCeAy6PAWmY19KZnVd68/6dOt51tZ
         ZrVbOIMPqosRKsDK0eA3b5vgFTfilJ2lUvoaaulDneOt2wSZ4l6ggS6O4BHZOrnDLQIo
         1jyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RknYa2NABgYYHyJknMjUhYiHTu2aqnADkUkC2x00Z/k=;
        b=SsmMpCkfXbkkqTmtEzPrFPTzWU67Zexb1PdOATxdSfrYtvzVC2cecL086kMqsSHLlh
         SGjM+JRZuFQ4yBtMkY5cSawXDQ3nz+z04SGaBzA1SczU+5OTuT5g5wCrwgRbQEPqN9f7
         7zQ1zUgO6ebq0O7MnQ+LfWirDDl7FcudFXe+36L439z1yaTD84NBDqwUPrMCTZ5Q+8vg
         QFqklbNOwHdB4WTV+QF6PselHwvATyGTwwks0vdvD5DxiD3B8viN5aq21X3zOcaGw0NB
         VyrQN/dpRg0EC3p3R1sPPitUIu0JKaA4FWMdg22bmnkc8dqraSOvWcY17hCeMi0B/3tq
         4Tlw==
X-Gm-Message-State: ACrzQf1XZVDdnyFPvbP4b9ljhFImJXCw+MSH6TZQQ4oSPbdQi0vpwEfW
        q9nHw7DXzB8OJIDy0Z5pbnVcQA==
X-Google-Smtp-Source: AMsMyM7XIZU0I24cerZGyqqlXQ/1nBl3l4sFmHTpzgGVDmR0GJjUQ91snFjYNIxrUZWHEFwuHqEW5w==
X-Received: by 2002:a2e:bc0f:0:b0:26e:15f:51dd with SMTP id b15-20020a2ebc0f000000b0026e015f51ddmr3021059ljf.118.1666187550011;
        Wed, 19 Oct 2022 06:52:30 -0700 (PDT)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t17-20020a056512209100b004996fbfd75esm2298842lfr.71.2022.10.19.06.52.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Oct 2022 06:52:29 -0700 (PDT)
Message-ID: <02a879d4-cc7a-ca8e-7334-755873baa3e7@linaro.org>
Date:   Wed, 19 Oct 2022 16:52:29 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH v2 12/15] phy: qcom-qmp-pcie: fix initialisation reset
Content-Language: en-GB
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221019113552.22353-1-johan+linaro@kernel.org>
 <20221019113552.22353-13-johan+linaro@kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221019113552.22353-13-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/10/2022 14:35, Johan Hovold wrote:
> Add the missing delay after asserting reset. This is specifically needed
> for the reset to have any effect on SC8280XP.
> 
> The vendor driver uses a 1 ms delay, but that seems a bit excessive.
> Instead use a 200 us delay which appears to be more than enough and also
> matches the UFS reset delay added by commit 870b1279c7a0 ("scsi:
> ufs-qcom: Add reset control support for host controller").
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index 2f4bdef73395..9c8e009033f1 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -1866,6 +1866,8 @@ static int qmp_pcie_init(struct phy *phy)
>   		goto err_disable_regulators;
>   	}
>   
> +	usleep_range(200, 300);
> +

If there is a v3, I'd kindly ask to add a comment about vendor using 1ms 
here.

>   	ret = reset_control_bulk_deassert(cfg->num_resets, qmp->resets);
>   	if (ret) {
>   		dev_err(qmp->dev, "reset deassert failed\n");

-- 
With best wishes
Dmitry

