Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2FAAD3C89C9
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 19:27:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230141AbhGNRag (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jul 2021 13:30:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46072 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229592AbhGNRag (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jul 2021 13:30:36 -0400
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69363C061762
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 10:27:44 -0700 (PDT)
Received: by mail-oi1-x236.google.com with SMTP id p67so3144240oig.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jul 2021 10:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=wkHXhJTtNhdujDSSCpFKRUIq7j2+Okh7s5O9R4Duq28=;
        b=CTiZgmsMPg7rUmQ6jQ5PQMCHVZ+3AI90U+ST5VRy4r8VMP3HMT3C07oWLEwP42yVDG
         kV3UqYyLRf+NtoEr3EYQn1/V/FX1mTZmF40PJo2o3Ff6zaszlPO0/wiKnU2RvWYmnz39
         ML9O0LdyxioNfycghTUf+kQOJuc3Ge2UgNtNMucFCoBb+7TAAg07/TblKn/5uU9iRXKH
         hEuoqii0/iaFVlv8vR2LMTU2BNaazJDxc4Sl3xn8aMWkwJW6lSrp/pZ+tYD1Igi/pJUE
         HEnJ7np4Ko/J0lGBmb0H7QFtva88w8BiG9rcjTZEJezJadyKOdGjlO5UVLlMSxpfyk0s
         jfYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wkHXhJTtNhdujDSSCpFKRUIq7j2+Okh7s5O9R4Duq28=;
        b=Gl+EvNgwFEgDt7pdGrtEkUiuuQLukYTox83WSK3i3ghiFdsaD2lRcDby+Eyw884tpO
         oZNS8rkl4uxD5kTjaDOvqtCqeNGdEskY4u4uUZtCNX9n1E/UyUCN3pcR5L9/srWNIAXv
         P7Rr1hpNIm1hAEx6rFOGa00XTm3UQPQG9xR8DprlGklc2HiVnxWx23j6OzDWjwAqsgmN
         FrbGGolXNntZxUVKevxrobFpGEOZILauvsX+fwcpfx2C8FM1ZvMImvOlkj+jldoSO0po
         SdQt4+8absUSg65EGCcVryf2IxnG/sl4aZOV1sR1bPyw7hGreUnGQm27MEIcxGUEqkN5
         wcnA==
X-Gm-Message-State: AOAM530RQhvJr8pgo0lYXEME8jTJ4gYTEJcWviMRK0w0uOpf35EXBfwA
        azM1WSdxb3KAcHaLugtr5odvCA==
X-Google-Smtp-Source: ABdhPJz/6HvilMktnhwiVEebv7cmG3egvmiRmPb8KqV+La6/uKQhY0T7S+IXezOFF5wEM2oIIzG0hw==
X-Received: by 2002:aca:af01:: with SMTP id y1mr8456941oie.6.1626283663783;
        Wed, 14 Jul 2021 10:27:43 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id t207sm608372oif.27.2021.07.14.10.27.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jul 2021 10:27:43 -0700 (PDT)
Date:   Wed, 14 Jul 2021 12:27:41 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Johan Hedberg <johan.hedberg@gmail.com>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-bluetooth@vger.kernel.org
Subject: Re: [PATCH v3 3/7] Bluetooth: hci_qca: provide default device data
Message-ID: <YO8ejQ1PlQrFAbz8@yoga>
References: <20210621223141.1638189-1-dmitry.baryshkov@linaro.org>
 <20210621223141.1638189-4-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210621223141.1638189-4-dmitry.baryshkov@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 21 Jun 17:31 CDT 2021, Dmitry Baryshkov wrote:

> In order to simplify probe function provide default device data. This
> removes the rest of if (data) checks.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  drivers/bluetooth/hci_qca.c | 24 ++++++++++++++----------
>  1 file changed, 14 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/bluetooth/hci_qca.c b/drivers/bluetooth/hci_qca.c
> index 53deea2eb7b4..3704dbadba1d 100644
> --- a/drivers/bluetooth/hci_qca.c
> +++ b/drivers/bluetooth/hci_qca.c
> @@ -1874,6 +1874,11 @@ static const struct qca_device_data qca_soc_data_wcn6750 = {
>  	.capabilities = QCA_CAP_WIDEBAND_SPEECH | QCA_CAP_VALID_LE_STATES,
>  };
>  
> +static const struct qca_device_data qca_soc_data_default = {
> +	.soc_type = QCA_ROME,
> +	.num_vregs = 0,
> +};
> +
>  static void qca_power_shutdown(struct hci_uart *hu)
>  {
>  	struct qca_serdev *qcadev;
> @@ -2019,12 +2024,15 @@ static int qca_serdev_probe(struct serdev_device *serdev)
>  	int err;
>  	bool power_ctrl_enabled = true;
>  
> +	data = device_get_match_data(&serdev->dev);
> +	if (!data)
> +		return -EINVAL;
> +
>  	qcadev = devm_kzalloc(&serdev->dev, sizeof(*qcadev), GFP_KERNEL);
>  	if (!qcadev)
>  		return -ENOMEM;
>  
>  	qcadev->serdev_hu.serdev = serdev;
> -	data = device_get_match_data(&serdev->dev);
>  	serdev_device_set_drvdata(serdev, qcadev);
>  	device_property_read_string(&serdev->dev, "firmware-name",
>  					 &qcadev->firmware_name);
> @@ -2033,9 +2041,8 @@ static int qca_serdev_probe(struct serdev_device *serdev)
>  	if (!qcadev->oper_speed)
>  		BT_DBG("UART will pick default operating speed");
>  
> -	if (data &&
> -	    (qca_is_wcn399x(data->soc_type) ||
> -	    qca_is_wcn6750(data->soc_type))) {
> +	if ((qca_is_wcn399x(data->soc_type) ||
> +	     qca_is_wcn6750(data->soc_type))) {
>  		qcadev->btsoc_type = data->soc_type;
>  		qcadev->bt_power = devm_kzalloc(&serdev->dev,
>  						sizeof(struct qca_power),
> @@ -2077,10 +2084,7 @@ static int qca_serdev_probe(struct serdev_device *serdev)
>  			return err;
>  		}
>  	} else {
> -		if (data)
> -			qcadev->btsoc_type = data->soc_type;
> -		else
> -			qcadev->btsoc_type = QCA_ROME;
> +		qcadev->btsoc_type = data->soc_type;
>  
>  		qcadev->bt_en = devm_gpiod_get_optional(&serdev->dev, "enable",
>  					       GPIOD_OUT_LOW);
> @@ -2309,9 +2313,9 @@ static SIMPLE_DEV_PM_OPS(qca_pm_ops, qca_suspend, qca_resume);
>  
>  #ifdef CONFIG_OF
>  static const struct of_device_id qca_bluetooth_of_match[] = {
> -	{ .compatible = "qcom,qca6174-bt" },
> +	{ .compatible = "qcom,qca6174-bt", .data = &qca_soc_data_default},
>  	{ .compatible = "qcom,qca6390-bt", .data = &qca_soc_data_qca6390},
> -	{ .compatible = "qcom,qca9377-bt" },
> +	{ .compatible = "qcom,qca9377-bt", .data = &qca_soc_data_default},
>  	{ .compatible = "qcom,wcn3990-bt", .data = &qca_soc_data_wcn3990},
>  	{ .compatible = "qcom,wcn3991-bt", .data = &qca_soc_data_wcn3991},
>  	{ .compatible = "qcom,wcn3998-bt", .data = &qca_soc_data_wcn3998},
> -- 
> 2.30.2
> 
