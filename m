Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A1445017D6
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 18:04:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243552AbiDNPu7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Apr 2022 11:50:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245703AbiDNPMU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Apr 2022 11:12:20 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 458AB3150F
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 07:50:54 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id v64-20020a1cac43000000b0038cfd1b3a6dso6106565wme.5
        for <devicetree@vger.kernel.org>; Thu, 14 Apr 2022 07:50:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cZ3aHVlUj3iUGX1+8ClxabIToG3L/PJxb5i6AoGECzY=;
        b=jzCrq+HHIQAMur0UEdHCLZdMkeXJr5ngNo2bUIPiku5w5qSPssMznza3im9bcES6Jg
         QPlRYbAul0tbmQC2moYECovJEYQ7M4NkGBNZNjeBFSzorjZR6YUxFNjSOCcLikjDXxmc
         RwelAgFHqN6McOpN3DedTcjjSW1rWCn8beB4lJqCMJC+bUgQ4H8p6d4CfDStVDBoCbSv
         9yx+uB9v3Qo30wdcaVmOLk4YN4PAthz6E+kEaGNDMVZQZ8b8CiIILzpXf/fV68oZtGCj
         p51ZjJdo87PV836yUYlJlTG1J1gn3deLD/6V0bO8n/SnhI1R+ib1WIXNKIdc/LO4iS9t
         ltfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cZ3aHVlUj3iUGX1+8ClxabIToG3L/PJxb5i6AoGECzY=;
        b=0ME3Ic3F1jC9hPfgu5XNXf9XkHD5JEtdFPIdytjs3DIrF9JKFXEcSm5HzAP6GPh9ZT
         dMwlayj1am3z0ltCPkkHfERpCQ1EPRecQhX9RJRGYAuHG+QTfQSw57D1LvC3q2+PTXMp
         9h8+kPBI72T6DwkbuIs4yG/fstDSBzG6JP5Y6mRhDavFaPgKvk1BsBsC/uHI/mqz8EhY
         HZz0/ik+NDiQkH8V8zkTr4IuzeYvpGUjcjIwX69e6GhchOyuPYdkD8PR8eq/l0pv19hN
         4QRm5P+8Eiz3YclEucmnRGmF8Ie/G2Ki53J8AYDl41uF6KYEMVJFpNOtX+goa18NuUDM
         wiRQ==
X-Gm-Message-State: AOAM533g7Lv0EfGVyuwtYKqXgMZtmxTSmEShXcW0VFSuTOBkVyyfbEB3
        T8UFSUGunzejrt79iS9IwagmGg==
X-Google-Smtp-Source: ABdhPJziOKWY9nmO8ESf6veV+n/R+2Hdz1fmp2GJQjE77cwbmqCE2dg9ewy3NlZhulhKh1N2Riglbg==
X-Received: by 2002:a05:600c:a47:b0:37c:965:2b6f with SMTP id c7-20020a05600c0a4700b0037c09652b6fmr3475836wmq.31.1649947852836;
        Thu, 14 Apr 2022 07:50:52 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id p3-20020adfaa03000000b00207a1db96cfsm2031418wrd.71.2022.04.14.07.50.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Apr 2022 07:50:52 -0700 (PDT)
Message-ID: <784b5caf-1e1a-e57c-126e-4b28bc6ff7f8@linaro.org>
Date:   Thu, 14 Apr 2022 15:50:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [PATCH v3 2/2] media: i2c: imx412: Add bulk regulator support
Content-Language: en-US
To:     Sakari Ailus <sakari.ailus@iki.fi>
Cc:     paul.j.murphy@intel.com, daniele.alessandrelli@intel.com,
        mchehab@kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, robert.foss@linaro.org, hfink@snap.com,
        jgrahsl@snap.com, dmitry.baryshkov@linaro.org,
        vladimir.zapolskiy@linaro.org
References: <20220414124505.1329295-1-bryan.odonoghue@linaro.org>
 <20220414124505.1329295-3-bryan.odonoghue@linaro.org>
 <Ylga7FVsbK6znD/+@valkosipuli.retiisi.eu>
 <39cae749-67ef-13d7-2648-01c6e9603887@linaro.org>
 <Ylgn8u5Au0EqUkLj@valkosipuli.retiisi.eu>
 <831e3857-9ee7-c760-ef2e-3b235b57b907@linaro.org>
 <YlgssKI+WVeRTda6@valkosipuli.retiisi.eu>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <YlgssKI+WVeRTda6@valkosipuli.retiisi.eu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/04/2022 15:16, Sakari Ailus wrote:
> On Thu, Apr 14, 2022 at 03:04:10PM +0100, Bryan O'Donoghue wrote:
>> On 14/04/2022 14:56, Sakari Ailus wrote:
>>> On Thu, Apr 14, 2022 at 02:44:00PM +0100, Bryan O'Donoghue wrote:
>>>> On 14/04/2022 14:00, Sakari Ailus wrote:
>>>>>>     	ret = clk_prepare_enable(imx412->inclk);
>>>>>>     	if (ret) {
>>>>>> +		regulator_bulk_disable(imx412->num_supplies,
>>>>>> +				       imx412->supplies);
>>>>> As the function already has an error handling section using labels, this
>>>>> should go there as well.
>>>>>
>>>> Are you asking to move regulator_bulk_disable() to error_reset ?
>>>
>>> No. You'll need another label.
>>>
>>
>> Hmm.
>>
>> I think another label is not required, have a look at V4.
> 
> Ah, yes, indeed. There's just a single location where this will be needed.
> 
> On another note, gpiod_set_value_cansleep() seems to enable reset in
> resume and disable it in suspend. I.e. the polarity is wrong.
> 

Agreed, the polarity looks wrong - in my DTS right now I have 
ACTIVE_HIGH for the relevant GPIO.

For example if I do this

@@ -1363,7 +1363,7 @@ camera@1a {
                 compatible = "sony,imx412";
                 reg = <0x1a>;

-               reset-gpios = <&tlmm 78 GPIO_ACTIVE_HIGH>;
+               reset-gpios = <&tlmm 78 GPIO_ACTIVE_LOW>;
                 pinctrl-names = "default", "suspend";
                 pinctrl-0 = <&cam2_default>;
                 pinctrl-1 = <&cam2_suspend>;
diff --git a/drivers/media/i2c/imx412.c b/drivers/media/i2c/imx412.c
index a9cdf4694d58..1442b416f5aa 100644
--- a/drivers/media/i2c/imx412.c
+++ b/drivers/media/i2c/imx412.c
@@ -1036,7 +1036,7 @@ static int imx412_power_on(struct device *dev)
                 return ret;
         }

-       gpiod_set_value_cansleep(imx412->reset_gpio, 1);
+       gpiod_set_value_cansleep(imx412->reset_gpio, 0);

         ret = clk_prepare_enable(imx412->inclk);
         if (ret) {
@@ -1049,7 +1049,7 @@ static int imx412_power_on(struct device *dev)
         return 0;

  error_reset:
-       gpiod_set_value_cansleep(imx412->reset_gpio, 0);
+       gpiod_set_value_cansleep(imx412->reset_gpio, 1);
         regulator_bulk_disable(imx412->num_supplies, imx412->supplies);

         return ret;
@@ -1068,7 +1068,7 @@ static int imx412_power_off(struct device *dev)

         clk_disable_unprepare(imx412->inclk);

-       gpiod_set_value_cansleep(imx412->reset_gpio, 0);
+       gpiod_set_value_cansleep(imx412->reset_gpio, 1);

Seems like changing the logic would negatively affect the Intel people. 
Might have to churn ACPI to change that logic..

Easier probably to leave as is and define as ACTIVE_HIGH in DTS
