Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 127737A3DF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 11:19:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728729AbfG3JTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 05:19:04 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:32919 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728192AbfG3JTE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 05:19:04 -0400
Received: by mail-wr1-f65.google.com with SMTP id n9so65027915wru.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 02:19:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=ykkz+L7ueY/G9ZX+WPXhNymw6EgYaPgvung5Lo0cKso=;
        b=ECewcIggnR3uKWLBrdpedZQiWwaY+fYHBhtlK7l6/oIVzptrgfwKg6HldwrHVh+/vn
         73rKUSE04lYvy0hV42xjv3EwXzjvqqWINhF5YJElOdMoR1TnXAAIAJkiNgkLsC+CvwMU
         bRya1pzeZewlpas6AhlZ8h4H3ztEP+2STbrzHZ/QO6ULkPYWDYIDSfX04m3J5xcf1Rxc
         WL8YTLCnnaj0Rr5yHX7stYweYJXm1E2bicAUiZT3svNTlwFUJveg1fENdKfwmBDS8Tbo
         OgX3Ld47DtgygsXV3HUwLuIjelJbgRwAOu+nvtQ54t1C9k8sc2r8SN1jkS7SKhhJkxeb
         RSPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=ykkz+L7ueY/G9ZX+WPXhNymw6EgYaPgvung5Lo0cKso=;
        b=EUmYfM+m8lWbGQRzOu2iNUVM6GFTAV0qWeq6scPEgqNjUQRfDVqt6TvC3KvGV0qirQ
         fNFUkLPsakHeL2w5uXkoBGwEbT5kSr9+Z2n3GcXPu3FGmJY8XfFKuvyL5d62cnJmJk1p
         E0eTPcNDflmw3s1MnGNr3/CzXtcaJAdq8ukRXEp3FOIDBNNbXmNI/xBuTszK7bCjUWLr
         ALsJNd8liGTuvrtvqAoDufpFFijh7U7nwsr0wTisFwJqUdKEyWFM87yii+xbm1O3VLVa
         w7YVB9udSTfDcbdS5g91wAJVpY+rj22rp9jYfvEaD2lkEz4H+ut6YlUDB14ZNPDKo9pa
         VU8w==
X-Gm-Message-State: APjAAAW5tmxFnXhRzK8eqjbHvuBdvsKtEUukL3QILMa9OBQ9AxZnGb68
        TX3ti3VbTLHAYXKJzKKB6WA3GQ==
X-Google-Smtp-Source: APXvYqxtRWJB7RfHZ3lpvpFOAlMD0r4a5FaFGRjyuOKz3gukwTvqqmEFkkQtJlIQ5tqT4X12i4jTSA==
X-Received: by 2002:adf:dcc2:: with SMTP id x2mr113690568wrm.55.1564478340251;
        Tue, 30 Jul 2019 02:19:00 -0700 (PDT)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
        by smtp.gmail.com with ESMTPSA id x129sm61681392wmg.44.2019.07.30.02.18.59
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 30 Jul 2019 02:18:59 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Carlo Caione <ccaione@baylibre.com>,
        srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: Re: [PATCH 4/5] firmware: meson_sm: Rework driver as a proper platform driver
In-Reply-To: <20190729183941.18164-5-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com> <20190729183941.18164-5-ccaione@baylibre.com>
Date:   Tue, 30 Jul 2019 11:18:58 +0200
Message-ID: <1jsgqn283h.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 29 Jul 2019 at 19:39, Carlo Caione <ccaione@baylibre.com> wrote:

> The secure monitor driver is currently a frankenstein driver which is
> registered as a platform driver but its functionality goes through a
> global struct accessed by the consumer drivers using exported helper
> functions.
>
> Try to tidy up the driver moving the firmware struct into the driver
> data and make the consumer drivers referencing the secure-monitor using
> a new property in the DT.
>
> Currently only the nvmem driver is using this API so we can fix it in
> the same commit.

Indeed, I don't have another idea to deal with it without breaking bisect

Thanks for this !

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>
> ---
>  drivers/firmware/meson/meson_sm.c       | 94 +++++++++++++++++--------
>  drivers/nvmem/meson-efuse.c             | 23 +++++-
>  include/linux/firmware/meson/meson_sm.h | 15 ++--
>  3 files changed, 93 insertions(+), 39 deletions(-)
>
> diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
> index 772ca6726e7b..2e36a2aa274c 100644
> --- a/drivers/firmware/meson/meson_sm.c
> +++ b/drivers/firmware/meson/meson_sm.c
> @@ -54,8 +54,6 @@ struct meson_sm_firmware {
>  	void __iomem *sm_shmem_out_base;
>  };
>  
> -static struct meson_sm_firmware fw;
> -
>  static u32 meson_sm_get_cmd(const struct meson_sm_chip *chip,
>  			    unsigned int cmd_index)
>  {
> @@ -90,6 +88,7 @@ static void __iomem *meson_sm_map_shmem(u32 cmd_shmem, unsigned int size)
>  /**
>   * meson_sm_call - generic SMC32 call to the secure-monitor
>   *
> + * @fw:		Pointer to secure-monitor firmware
>   * @cmd_index:	Index of the SMC32 function ID
>   * @ret:	Returned value
>   * @arg0:	SMC32 Argument 0
> @@ -100,15 +99,15 @@ static void __iomem *meson_sm_map_shmem(u32 cmd_shmem, unsigned int size)
>   *
>   * Return:	0 on success, a negative value on error
>   */
> -int meson_sm_call(unsigned int cmd_index, u32 *ret, u32 arg0,
> -		  u32 arg1, u32 arg2, u32 arg3, u32 arg4)
> +int meson_sm_call(struct meson_sm_firmware *fw, unsigned int cmd_index,
> +		  u32 *ret, u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4)
>  {
>  	u32 cmd, lret;
>  
> -	if (!fw.chip)
> +	if (!fw->chip)
>  		return -ENOENT;
>  
> -	cmd = meson_sm_get_cmd(fw.chip, cmd_index);
> +	cmd = meson_sm_get_cmd(fw->chip, cmd_index);
>  	if (!cmd)
>  		return -EINVAL;
>  
> @@ -124,6 +123,7 @@ EXPORT_SYMBOL(meson_sm_call);
>  /**
>   * meson_sm_call_read - retrieve data from secure-monitor
>   *
> + * @fw:		Pointer to secure-monitor firmware
>   * @buffer:	Buffer to store the retrieved data
>   * @bsize:	Size of the buffer
>   * @cmd_index:	Index of the SMC32 function ID
> @@ -137,22 +137,23 @@ EXPORT_SYMBOL(meson_sm_call);
>   *		When 0 is returned there is no guarantee about the amount of
>   *		data read and bsize bytes are copied in buffer.
>   */
> -int meson_sm_call_read(void *buffer, unsigned int bsize, unsigned int cmd_index,
> -		       u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4)
> +int meson_sm_call_read(struct meson_sm_firmware *fw, void *buffer,
> +		       unsigned int bsize, unsigned int cmd_index, u32 arg0,
> +		       u32 arg1, u32 arg2, u32 arg3, u32 arg4)
>  {
>  	u32 size;
>  	int ret;
>  
> -	if (!fw.chip)
> +	if (!fw->chip)
>  		return -ENOENT;
>  
> -	if (!fw.chip->cmd_shmem_out_base)
> +	if (!fw->chip->cmd_shmem_out_base)
>  		return -EINVAL;
>  
> -	if (bsize > fw.chip->shmem_size)
> +	if (bsize > fw->chip->shmem_size)
>  		return -EINVAL;
>  
> -	if (meson_sm_call(cmd_index, &size, arg0, arg1, arg2, arg3, arg4) < 0)
> +	if (meson_sm_call(fw, cmd_index, &size, arg0, arg1, arg2, arg3, arg4) < 0)
>  		return -EINVAL;
>  
>  	if (size > bsize)
> @@ -164,7 +165,7 @@ int meson_sm_call_read(void *buffer, unsigned int bsize, unsigned int cmd_index,
>  		size = bsize;
>  
>  	if (buffer)
> -		memcpy(buffer, fw.sm_shmem_out_base, size);
> +		memcpy(buffer, fw->sm_shmem_out_base, size);
>  
>  	return ret;
>  }
> @@ -173,6 +174,7 @@ EXPORT_SYMBOL(meson_sm_call_read);
>  /**
>   * meson_sm_call_write - send data to secure-monitor
>   *
> + * @fw:		Pointer to secure-monitor firmware
>   * @buffer:	Buffer containing data to send
>   * @size:	Size of the data to send
>   * @cmd_index:	Index of the SMC32 function ID
> @@ -184,23 +186,24 @@ EXPORT_SYMBOL(meson_sm_call_read);
>   *
>   * Return:	size of sent data on success, a negative value on error
>   */
> -int meson_sm_call_write(void *buffer, unsigned int size, unsigned int cmd_index,
> -			u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4)
> +int meson_sm_call_write(struct meson_sm_firmware *fw, void *buffer,
> +			unsigned int size, unsigned int cmd_index, u32 arg0,
> +			u32 arg1, u32 arg2, u32 arg3, u32 arg4)
>  {
>  	u32 written;
>  
> -	if (!fw.chip)
> +	if (!fw->chip)
>  		return -ENOENT;
>  
> -	if (size > fw.chip->shmem_size)
> +	if (size > fw->chip->shmem_size)
>  		return -EINVAL;
>  
> -	if (!fw.chip->cmd_shmem_in_base)
> +	if (!fw->chip->cmd_shmem_in_base)
>  		return -EINVAL;
>  
> -	memcpy(fw.sm_shmem_in_base, buffer, size);
> +	memcpy(fw->sm_shmem_in_base, buffer, size);
>  
> -	if (meson_sm_call(cmd_index, &written, arg0, arg1, arg2, arg3, arg4) < 0)
> +	if (meson_sm_call(fw, cmd_index, &written, arg0, arg1, arg2, arg3, arg4) < 0)
>  		return -EINVAL;
>  
>  	if (!written)
> @@ -210,6 +213,24 @@ int meson_sm_call_write(void *buffer, unsigned int size, unsigned int cmd_index,
>  }
>  EXPORT_SYMBOL(meson_sm_call_write);
>  
> +/**
> + * meson_sm_get - get pointer to meson_sm_firmware structure.
> + *
> + * @sm_node:		Pointer to the secure-monitor Device Tree node.
> + *
> + * Return:		NULL is the secure-monitor device is not ready.
> + */
> +struct meson_sm_firmware *meson_sm_get(struct device_node *sm_node)
> +{
> +	struct platform_device *pdev = of_find_device_by_node(sm_node);
> +
> +	if (!pdev)
> +		return NULL;
> +
> +	return platform_get_drvdata(pdev);
> +}
> +EXPORT_SYMBOL_GPL(meson_sm_get);
> +
>  #define SM_CHIP_ID_LENGTH	119
>  #define SM_CHIP_ID_OFFSET	4
>  #define SM_CHIP_ID_SIZE		12
> @@ -217,14 +238,18 @@ EXPORT_SYMBOL(meson_sm_call_write);
>  static ssize_t serial_show(struct device *dev, struct device_attribute *attr,
>  			 char *buf)
>  {
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct meson_sm_firmware *fw;
>  	uint8_t *id_buf;
>  	int ret;
>  
> +	fw = platform_get_drvdata(pdev);
> +
>  	id_buf = kmalloc(SM_CHIP_ID_LENGTH, GFP_KERNEL);
>  	if (!id_buf)
>  		return -ENOMEM;
>  
> -	ret = meson_sm_call_read(id_buf, SM_CHIP_ID_LENGTH, SM_GET_CHIP_ID,
> +	ret = meson_sm_call_read(fw, id_buf, SM_CHIP_ID_LENGTH, SM_GET_CHIP_ID,
>  				 0, 0, 0, 0, 0);
>  	if (ret < 0) {
>  		kfree(id_buf);
> @@ -268,25 +293,34 @@ static const struct of_device_id meson_sm_ids[] = {
>  
>  static int __init meson_sm_probe(struct platform_device *pdev)
>  {
> +	struct device *dev = &pdev->dev;
>  	const struct meson_sm_chip *chip;
> +	struct meson_sm_firmware *fw;
> +
> +	fw = devm_kzalloc(dev, sizeof(*fw), GFP_KERNEL);
> +	if (!fw)
> +		return -ENOMEM;
>  
> -	chip = of_match_device(meson_sm_ids, &pdev->dev)->data;
> +	chip = of_match_device(meson_sm_ids, dev)->data;
>  
>  	if (chip->cmd_shmem_in_base) {
> -		fw.sm_shmem_in_base = meson_sm_map_shmem(chip->cmd_shmem_in_base,
> -							 chip->shmem_size);
> -		if (WARN_ON(!fw.sm_shmem_in_base))
> +		fw->sm_shmem_in_base = meson_sm_map_shmem(chip->cmd_shmem_in_base,
> +							  chip->shmem_size);
> +		if (WARN_ON(!fw->sm_shmem_in_base))
>  			goto out;
>  	}
>  
>  	if (chip->cmd_shmem_out_base) {
> -		fw.sm_shmem_out_base = meson_sm_map_shmem(chip->cmd_shmem_out_base,
> -							  chip->shmem_size);
> -		if (WARN_ON(!fw.sm_shmem_out_base))
> +		fw->sm_shmem_out_base = meson_sm_map_shmem(chip->cmd_shmem_out_base,
> +							   chip->shmem_size);
> +		if (WARN_ON(!fw->sm_shmem_out_base))
>  			goto out_in_base;
>  	}
>  
> -	fw.chip = chip;
> +	fw->chip = chip;
> +
> +	platform_set_drvdata(pdev, fw);
> +
>  	pr_info("secure-monitor enabled\n");
>  
>  	if (sysfs_create_group(&pdev->dev.kobj, &meson_sm_sysfs_attr_group))
> @@ -295,7 +329,7 @@ static int __init meson_sm_probe(struct platform_device *pdev)
>  	return 0;
>  
>  out_in_base:
> -	iounmap(fw.sm_shmem_in_base);
> +	iounmap(fw->sm_shmem_in_base);
>  out:
>  	return -EINVAL;
>  }
> diff --git a/drivers/nvmem/meson-efuse.c b/drivers/nvmem/meson-efuse.c
> index 9924b98db772..669d20d73877 100644
> --- a/drivers/nvmem/meson-efuse.c
> +++ b/drivers/nvmem/meson-efuse.c
> @@ -17,20 +17,25 @@
>  struct meson_efuse {
>  	struct nvmem_device *nvmem;
>  	struct nvmem_config config;
> +	struct meson_sm_firmware *fw;
>  	struct clk *clk;
>  };
>  
>  static int meson_efuse_read(void *context, unsigned int offset,
>  			    void *val, size_t bytes)
>  {
> -	return meson_sm_call_read((u8 *)val, bytes, SM_EFUSE_READ, offset,
> +	struct meson_efuse *efuse = context;
> +
> +	return meson_sm_call_read(efuse->fw, (u8 *)val, bytes, SM_EFUSE_READ, offset,
>  				  bytes, 0, 0, 0);
>  }
>  
>  static int meson_efuse_write(void *context, unsigned int offset,
>  			     void *val, size_t bytes)
>  {
> -	return meson_sm_call_write((u8 *)val, bytes, SM_EFUSE_WRITE, offset,
> +	struct meson_efuse *efuse = context;
> +
> +	return meson_sm_call_write(efuse->fw, (u8 *)val, bytes, SM_EFUSE_WRITE, offset,
>  				   bytes, 0, 0, 0);
>  }
>  
> @@ -43,6 +48,7 @@ MODULE_DEVICE_TABLE(of, meson_efuse_match);
>  static int meson_efuse_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> +	struct device_node *sm_np;
>  	struct meson_efuse *efuse;
>  	unsigned int size;
>  	int ret;
> @@ -51,6 +57,17 @@ static int meson_efuse_probe(struct platform_device *pdev)
>  	if (!efuse)
>  		return -ENOMEM;
>  
> +	sm_np = of_parse_phandle(pdev->dev.of_node, "secure-monitor", 0);
> +	if (!sm_np) {
> +		dev_err(&pdev->dev, "no secure-monitor node\n");
> +		return -ENODEV;
> +	}
> +
> +	efuse->fw = meson_sm_get(sm_np);
> +	of_node_put(sm_np);
> +	if (!efuse->fw)
> +		return -EPROBE_DEFER;
> +
>  	efuse->clk = devm_clk_get(dev, NULL);
>  	if (IS_ERR(efuse->clk)) {
>  		ret = PTR_ERR(efuse->clk);
> @@ -73,7 +90,7 @@ static int meson_efuse_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	if (meson_sm_call(SM_EFUSE_USER_MAX, &size, 0, 0, 0, 0, 0) < 0) {
> +	if (meson_sm_call(efuse->fw, SM_EFUSE_USER_MAX, &size, 0, 0, 0, 0, 0) < 0) {
>  		dev_err(dev, "failed to get max user");
>  		return -EINVAL;
>  	}
> diff --git a/include/linux/firmware/meson/meson_sm.h b/include/linux/firmware/meson/meson_sm.h
> index 7613bf7c9442..6669e2a1d5fd 100644
> --- a/include/linux/firmware/meson/meson_sm.h
> +++ b/include/linux/firmware/meson/meson_sm.h
> @@ -16,11 +16,14 @@ enum {
>  
>  struct meson_sm_firmware;
>  
> -int meson_sm_call(unsigned int cmd_index, u32 *ret, u32 arg0, u32 arg1,
> -		  u32 arg2, u32 arg3, u32 arg4);
> -int meson_sm_call_write(void *buffer, unsigned int b_size, unsigned int cmd_index,
> -			u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4);
> -int meson_sm_call_read(void *buffer, unsigned int bsize, unsigned int cmd_index,
> -		       u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4);
> +int meson_sm_call(struct meson_sm_firmware *fw, unsigned int cmd_index,
> +		  u32 *ret, u32 arg0, u32 arg1, u32 arg2, u32 arg3, u32 arg4);
> +int meson_sm_call_write(struct meson_sm_firmware *fw, void *buffer,
> +			unsigned int b_size, unsigned int cmd_index, u32 arg0,
> +			u32 arg1, u32 arg2, u32 arg3, u32 arg4);
> +int meson_sm_call_read(struct meson_sm_firmware *fw, void *buffer,
> +		       unsigned int bsize, unsigned int cmd_index, u32 arg0,
> +		       u32 arg1, u32 arg2, u32 arg3, u32 arg4);
> +struct meson_sm_firmware *meson_sm_get(struct device_node *firmware_node);
>  
>  #endif /* _MESON_SM_FW_H_ */
> -- 
> 2.20.1
