Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1B0A45D45B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2019 18:37:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726486AbfGBQhG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 12:37:06 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:36180 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725972AbfGBQhF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 12:37:05 -0400
Received: by mail-wr1-f65.google.com with SMTP id n4so18629684wrs.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 09:37:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=AnaDSlc/+a8VLh3DLKF9jkwWPslmWRnPpyc/hSwl73c=;
        b=eR5D5tzWOHjDBnQuaJdiS3SQsYhE2FS1pS55cCrtvTKENfJrgtclfpwy+SuyndeKYS
         VTCCeBB6lcMnZlWkTkw9JLfV1zxJAHx7/HkysAQSocjs/0yqQ9l3MyqC1aV01uUH6biL
         fW5DvtIDlY5QyrWl3gTMqvQcPfLzOyLQ0rcC5z602Gsb7pwuPO9G72V2lp8A3S2I7FAv
         mgC3Y3Ozm/fDq7j79TxGmJUsUXrzw4JSBowLNL4ZqAgxo1fXJzQDnonXPaqJYBBP6VZ/
         z2+y0EFdPqNzHpsz2WeMR85tdt5wnlheMloS9sLK9B5f7vVh7bHX8xry1UvZ1OlIuUMZ
         0ErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=AnaDSlc/+a8VLh3DLKF9jkwWPslmWRnPpyc/hSwl73c=;
        b=Qe33WUQ1UrUtpX/mE4M4CZXcXg5D26ZR82SMMgJ1o4zdfufWn4Nhw+LPIS1x602xiI
         6n1hToQlDqReyRYa0H56z/HZ165atOBmxyh53SLrO0hCTq0ZdZqI8GRvmF1L+DO3YzRu
         I9uwRlUydwMzDtqVWchdvljc0qmiCtDt2aVJiBEzslvCLE7M5sTS+pHbtZR6LcNPsotN
         34+C9DVit/+RD/LO/kynvB+UAAnjVDtrH3Z1ZEELpiLKMAv7gmm2f7IKmKk+oNDByOcr
         Lo1YKn5ambgzcc+Xo92kjAusbkspfrjVDVuK0dXgQauLMBshab/v/vagLmDCJv6hF9C2
         sm0g==
X-Gm-Message-State: APjAAAVwwZTCKb5E06i8aeSUXYrJ7YIcrIV9QayRh96oi1zqMax50XOL
        /zKksugKRM4hxYdxLP4UiAma7A==
X-Google-Smtp-Source: APXvYqyAuXUN95hqDCi+Lsi3lwgRhXtjSB06KlL7Ytft3G8xrvzAWoMs22F/QCnF2Z7SYJw3LOa+4g==
X-Received: by 2002:adf:e311:: with SMTP id b17mr6000068wrj.11.1562085422362;
        Tue, 02 Jul 2019 09:37:02 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id d24sm19966358wra.43.2019.07.02.09.37.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jul 2019 09:37:01 -0700 (PDT)
Subject: Re: [PATCH 2/6] ASoC: wcd934x: add support to wcd9340/wcd9341 codec
To:     Mark Brown <broonie@kernel.org>
Cc:     robh+dt@kernel.org, bgoswami@codeaurora.org, vkoul@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        mark.rutland@arm.com, alsa-devel@alsa-project.org, srini@kernel.org
References: <20190702080920.22623-1-srinivas.kandagatla@linaro.org>
 <20190702080920.22623-3-srinivas.kandagatla@linaro.org>
 <20190702144411.GP2793@sirena.org.uk>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <2e2a32dd-3dca-5391-1bfa-ab1c1f420e3a@linaro.org>
Date:   Tue, 2 Jul 2019 17:37:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190702144411.GP2793@sirena.org.uk>
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Mark for taking time to review this patch.

On 02/07/2019 15:44, Mark Brown wrote:
> On Tue, Jul 02, 2019 at 09:09:16AM +0100, Srinivas Kandagatla wrote:
> 
>> +#define WCD_VERSION_WCD9341_1_1     5
>> +#define WCD_IS_1_0(wcd) \
>> +	((wcd->type == WCD934X) ? \
>> +	 ((wcd->version == WCD_VERSION_1_0 || \
>> +	   wcd->version == WCD_VERSION_WCD9340_1_0 || \
>> +	   wcd->version == WCD_VERSION_WCD9341_1_0) ? 1 : 0) : 0)
> 
> Eew.  If you really need these make them functions and write
> normal code with switch statements rather than abusing the
> ternery operator like this, it's really not terribly readable.
> 
I agree, will fix this and such use of ternary operators in the code.

>> +static void wcd934x_update_reg_defaults(struct wcd934x_codec *wcd)
>> +{
>> +	struct regmap *rm = wcd->regmap;
>> +
>> +	regmap_update_bits(rm, WCD934X_BIAS_VBG_FINE_ADJ, 0xFF, 0x75);
>> +	regmap_update_bits(rm, WCD934X_CODEC_CPR_SVS_CX_VDD, 0xFF, 0x7C);
> 
> What's all this stuff doing?  Should you be uing a regmap patch?
> 
I will try that in next version.
>> +static int wcd934x_disable_master_bias(struct wcd934x_codec *data)
>> +{
>> +	if (data->master_bias_users <= 0)
>> +		return 0;
>> +
>> +	data->master_bias_users--;
> 
> There's an awful lot of these refcounted things - are you sure
> none of them could be supply widgets?
I did not like it either, will remove them as this might be redundant. 
"MCLK" is already a supply widget.
> 
>> +static void wcd934x_get_version(struct wcd934x_codec *wcd)
>> +{
>> +	int val1, val2, version, ret;
>> +	struct regmap *regmap;
>> +	u16 id_minor;
>> +	u32 version_mask = 0;
>> +
>> +	regmap = wcd->regmap;
>> +	version = 0;
>> +
>> +	ret = regmap_bulk_read(regmap, WCD934X_CHIP_TIER_CTRL_CHIP_ID_BYTE0,
>> +			       (u8 *)&id_minor, sizeof(u16));
>> +
>> +	if (ret)
>> +		return;
> 
> No error reporting at all?
I agree, will fix this in next version.
> 
>> +	regmap_read(regmap, WCD934X_CHIP_TIER_CTRL_EFUSE_VAL_OUT14, &val1);
>> +	regmap_read(regmap, WCD934X_CHIP_TIER_CTRL_EFUSE_VAL_OUT15, &val2);
>> +
>> +	dev_info(wcd->dev, "%s: chip version :0x%x 0x:%x\n",
>> +		 __func__, val1, val2);
> 
> We don't report id_minor as part of the version?  Also the format
> string there just seems mangled and not even internally
> consistent.

> 
>> +	version_mask |= (!!((u8)val1 & 0x80)) << DSD_DISABLED_MASK;
>> +	version_mask |= (!!((u8)val2 & 0x01)) << SLNQ_DISABLED_MASK;
>> +
>> +	switch (version_mask) {
>> +	case DSD_DISABLED | SLNQ_DISABLED:
>> +		if (id_minor == 0)
>> +			version = WCD_VERSION_WCD9340_1_0;
>> +		else if (id_minor == 0x01)
>> +			version = WCD_VERSION_WCD9340_1_1;
> 
> This looks like you're trying to write a switch statement on the
> minor version...
> 
Will move to switch and any such occurrences.

>> +static void wcd934x_update_cpr_defaults(struct wcd934x_codec *data)
>> +{
>> +	int i;
>> +
>> +	__wcd934x_cdc_mclk_enable(data, true);
>> +
>> +	wcd934x_set_sido_input_src(data, SIDO_SOURCE_RCO_BG);
>> +	regmap_write(data->regmap, WCD934X_CODEC_CPR_SVS2_MIN_CX_VDD, 0x2C);
>> +	regmap_update_bits(data->regmap, WCD934X_CODEC_RPM_CLK_GATE,
>> +			   0x10, 0x00);
>> +
>> +	for (i = 0; i < ARRAY_SIZE(cpr_defaults); i++) {
>> +		regmap_bulk_write(data->regmap,
>> +				  WCD934X_CODEC_CPR_WR_DATA_0,
>> +				(u8 *)&cpr_defaults[i].wr_data, 4);
>> +		regmap_bulk_write(data->regmap,
>> +				  WCD934X_CODEC_CPR_WR_ADDR_0,
>> +				(u8 *)&cpr_defaults[i].wr_addr, 4);
> 
> What is "cpr" and should you be using a regmap patch here?  Why
> is this not with the other default updates?  You've got loads of
> random undocumented sequences like this all through the driver,
> are they patches or are they things that should be controllable
> by the user?
It makes sense to have a single default map here, I will do the in next 
version. And regarding user controllable, I will go thru the list once 
again in detail and remove user controllable registers.
> 
> 
>> +static int wcd934x_get_micbias_val(struct device *dev, const char *micbias)
>> +{
>> +	int mv;
>> +
>> +	if (of_property_read_u32(dev->of_node, micbias, &mv))
>> +		mv = WCD934X_DEF_MICBIAS_MV;
>> +
>> +	if (mv < 1000 || mv > 2850)
>> +		mv = WCD934X_DEF_MICBIAS_MV;

> 
>> +	return of_platform_populate(wcd->dev->of_node, NULL, NULL, wcd->dev);
> 
> Why are we doing this?

I will not be using MFD in this instance as most of the resources like 
interrupts, pins, clks, SoundWire are modeled as proper drivers with 
their respective subsystems.

This gives a advantage of reusing those drivers like SoundWire, pinctrl 
on other Qualcomm IPs as well!
Also I did not wanted to have a custom functions or hooks in the 
drivers, so platform bus made much sense for me to use here, which can 
take care of bringing up and tearing down the devices with proper parent 
child relationship.
This will instantiate all the child devices like pinctrl, SoundWire 
Controller and so on.

> 
>> +{
>> +	struct device *dev = wcd->dev;
>> +	struct device_node *np = dev->of_node;
>> +	int ret;
>> +	/*
>> +	 * INTR1 consists of all possible interrupt sources Ear OCP,
> 
> Missing blank line.
> 
Yes, I will fix such instances in the driver in next version.

>> +	 * HPH OCP, MBHC, MAD, VBAT, and SVA
>> +	 * INTR2 is a subset of first interrupt sources MAD, VBAT, and SVA
>> +	 */
>> +	wcd->irq = of_irq_get_byname(wcd->dev->of_node, "intr1");
>> +	if (wcd->irq < 0) {
>> +		if (wcd->irq != -EPROBE_DEFER)
>> +			dev_err(wcd->dev, "Unable to configure IRQ\n");
> 
> It's helpful to print what the error code was, it can help people
> debug things.
I agree!
> 
>> +	wcd->reset_gpio = of_get_named_gpio(np,	"reset-gpios", 0);
>> +	if (wcd->reset_gpio < 0) {
>> +		dev_err(dev, "Reset gpio missing in DT\n");
>> +		return wcd->reset_gpio;
>> +	}
> 
> devm_gpiod_get()
Make sense!

> 
>> +static int wcd934x_bring_up(struct wcd934x_codec *wcd)
>> +{
>> +	struct regmap *wcd_regmap = wcd->regmap;
>> +	u16 id_minor, id_major;
>> +	int ret;
> 
>> +	dev_info(wcd->dev, "%s: wcd9xxx chip id major 0x%x, minor 0x%x\n",
>> +		 __func__, id_major, id_minor);
>> +
> 
> What was with the other verison parsing and printing code?
I will fix this in next version with single place to print the version 
number.


Thanks,
srini
> 
