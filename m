Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2C360612593
	for <lists+devicetree@lfdr.de>; Sat, 29 Oct 2022 23:33:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbiJ2VdR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 29 Oct 2022 17:33:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbiJ2VdP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 29 Oct 2022 17:33:15 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2DE05283A
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 14:33:14 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id d6so13605753lfs.10
        for <devicetree@vger.kernel.org>; Sat, 29 Oct 2022 14:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VlA3lfnBFUe7zUSYqzwlpye+KZk0wc68LybbGx49CSM=;
        b=Xyio5PkqeQwF6/G9hdKqHd9izuvMnT5vcxQVLTbdneNY+Sh8spk9jOnA1Q5Lv1Zg3p
         cE0c5eHJRBLAnCddXqf+kgnUflCm1v8ZJh53fQPF8W157teWz3J4OLBDqOdKMfqFfVLd
         54YjU6uDzv3IXAnH0j3E/SjRbYaRmex0/Uc5FuDWTd8/eCXjd+BMAml7la3RtzXTaVCp
         pCv2ErKHUJtbQm1/T89g7faQ41ySkhUnOceaSLIs7R4vK1uaJTpWgl0wXOqWXX/I6A8W
         iw3ESowWy1XWYE3fJs/g6AmnK8GQlccLVh7b3Cm6+Gw7G1L8TT+ui4fVjwivbYkJgj9O
         i+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VlA3lfnBFUe7zUSYqzwlpye+KZk0wc68LybbGx49CSM=;
        b=2JLwNWKWuNNTEJNRZs/iE2x/SUAIKFxtCLiGrqdsAAp9nSI5TXATMJCj8o6TK4rUng
         V3OldqXVP2MT1YIUO661fDAPqBca4pV2M/JDQsL3NjSll0SXp259mgRIUbRxdrHGh9Nd
         LGke9RcDrYzMdxJUh9ulupDJUoznUm4JInmbRnMsCvTf3VzE8x2lEkQK095aRMUpwslg
         CQ6GRtOOCYZb7DxwrQcsp9d9ljtviyd8Psbn09NUMKj2k9bG3+YvHi3l5DCaz0NP3SbD
         P5j9tnAI1i9JE+rvsJQ9T62zajqHCUzfNoPJ1yRfnBz8suVLKfCa45yn+y713wNHp+bT
         xSdg==
X-Gm-Message-State: ACrzQf3/Ir+CcflvpryaIwLTkyrB8fLXvQOHwf32vRRCIol+t3uxCD1i
        0lsVPKfTMDQD3bscRoY6ufz/Yg==
X-Google-Smtp-Source: AMsMyM5yzFV+cKbxFKhSVYT0XAwgce+pQZMkUuypKY220FXOH2xLZ2g8n48DtJPDqQi3b1xitQe3oQ==
X-Received: by 2002:a05:6512:1281:b0:4a2:cbfc:d6a8 with SMTP id u1-20020a056512128100b004a2cbfcd6a8mr2347349lfs.514.1667079193179;
        Sat, 29 Oct 2022 14:33:13 -0700 (PDT)
Received: from [10.27.10.248] ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id q8-20020a19f208000000b0049771081b10sm453307lfh.31.2022.10.29.14.33.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Oct 2022 14:33:12 -0700 (PDT)
Message-ID: <b048e0fa-a2c8-d8f6-2382-4c43658c41de@linaro.org>
Date:   Sun, 30 Oct 2022 00:33:11 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Subject: Re: [PATCH 11/15] scsi: ufs: ufs-qcom: Use dev_err_probe() for
 printing probe error
Content-Language: en-GB
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        martin.petersen@oracle.com, jejb@linux.ibm.com,
        andersson@kernel.org, vkoul@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org
References: <20221029141633.295650-1-manivannan.sadhasivam@linaro.org>
 <20221029141633.295650-12-manivannan.sadhasivam@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221029141633.295650-12-manivannan.sadhasivam@linaro.org>
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

On 29/10/2022 17:16, Manivannan Sadhasivam wrote:
> Make use of dev_err_probe() for printing the probe error.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>   drivers/ufs/host/ufs-qcom.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 8bb0f4415f1a..28ac5f0ab2bc 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -1441,7 +1441,7 @@ static int ufs_qcom_probe(struct platform_device *pdev)
>   	/* Perform generic probe */
>   	err = ufshcd_pltfrm_init(pdev, &ufs_hba_qcom_vops);
>   	if (err)
> -		dev_err(dev, "ufshcd_pltfrm_init() failed %d\n", err);
> +		dev_err_probe(dev, err, "ufshcd_pltfrm_init() failed\n");

What about:

if (err)
    return dev_err_probe(....);

return 0;

>   
>   	return err;
>   }

-- 
With best wishes
Dmitry

