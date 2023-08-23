Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3441C7851F2
	for <lists+devicetree@lfdr.de>; Wed, 23 Aug 2023 09:48:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233576AbjHWHs0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Aug 2023 03:48:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233489AbjHWHsZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Aug 2023 03:48:25 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C1F92E52
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 00:48:22 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-31c615eb6feso1192652f8f.3
        for <devicetree@vger.kernel.org>; Wed, 23 Aug 2023 00:48:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692776901; x=1693381701;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yMLqQ07/1S4FGZac+b+3f8r1p2hwvkhxqYFR9XhasgQ=;
        b=xPQOyHts+i9uO+7Lq2SW75l7BNzXbnEHzbY/GIalOHkJV0T9C1s+5e2PYA/yb58BRc
         j3JJEx2+1mhKBwvTO2lioBRdZYiQRurrgvJyx2sdWR3Zd4a1ryZfz1PkrK79eJCrSMc8
         HCTJM2m7WTAMp3zHz2u1Guc7CHjED0IIOQB8B+CJW2DPAWhLPMhaOebScjTyT4ipNn4e
         Y9lU477EdYf0BA/2IscFXXaGlvGtStv0SwE1h7CwP7aMbc2RuN5ImU5o6X3iRxsQO+IC
         yRGmw1iqFdhUYbu2X3QIKq168/Hmwi0u5YsS7X6VgaM2TGa0pyZnkdKsoLwzno1yWsu9
         fVIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692776901; x=1693381701;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yMLqQ07/1S4FGZac+b+3f8r1p2hwvkhxqYFR9XhasgQ=;
        b=HuZIsmsy6p8zU6SQMEgtLxiE8CROS9V6UwA0RpklR9tPbpu2J7EgS6+83N5tlckGJn
         pXdqOle3A2HcOM6afRr7HG4aWD6F2m95OJik1OOyTFPE8zjsFNo5bYu7R//CeUjwqAAg
         KvkzuTqQKI+ylyNfAtaGI1uvv7SBCtAEzz0aU8eYlfnTUrsP3RYsipZJ1Y7wXSTIr6XW
         c8B5zMo4ZED6NPI5D9VnPVoZgRACUvj9bH9fNKnJXacutGpaS/8cRIFISKKiDfhJ8Vhc
         3tK1w8nNbkU4N28Ynbo8UUBM3B9pCFPmQcmeF7kqOnnC8QWb14tGSlIls6dxGPs8sepl
         g6yQ==
X-Gm-Message-State: AOJu0Yx3oj9hXMgvv+Mk1AAxeT7tDXWxx/BjUcpMHTGiW4yBgTR8VcGZ
        Up4nShrIWcK+e62MYZwuKIZvqw==
X-Google-Smtp-Source: AGHT+IEJCgqNoN/t/JtugjJDUHt4ZTgJERVOv2dLtodMoCTxdTohodR2lggnhDmB/2raLk4Fvg/g7w==
X-Received: by 2002:a5d:46cd:0:b0:317:5c36:913b with SMTP id g13-20020a5d46cd000000b003175c36913bmr9140847wrs.48.1692776901194;
        Wed, 23 Aug 2023 00:48:21 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id g16-20020adff3d0000000b00318147fd2d3sm17986636wrp.41.2023.08.23.00.48.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Aug 2023 00:48:20 -0700 (PDT)
Message-ID: <b544e079-c9de-23d3-80f7-cff89293eeb5@linaro.org>
Date:   Wed, 23 Aug 2023 09:48:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 2/5] thermal/drivers/mediatek/lvts_thermal: Add suspend
 and resume
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?Q?Bernhard_Rosenkr=c3=a4nzer?= <bero@baylibre.com>,
        rafael@kernel.org, amitk@kernel.org, rui.zhang@intel.com,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, rdunlap@infradead.org,
        ye.xingchen@zte.com.cn, p.zabel@pengutronix.de,
        Alexandre Mergnat <amergnat@baylibre.com>
Cc:     linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        wenst@chromium.org, james.lo@mediatek.com,
        rex-bc.chen@mediatek.com, nfraprado@collabora.com,
        abailon@baylibre.com, amergnat@baylibre.com, khilman@baylibre.com
References: <20230530195132.2286163-1-bero@baylibre.com>
 <20230530195132.2286163-3-bero@baylibre.com>
 <371790cd-5a7c-8fa6-cc38-3a3680525092@collabora.com>
From:   Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <371790cd-5a7c-8fa6-cc38-3a3680525092@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 10:05, AngeloGioacchino Del Regno wrote:

[ ... ]

>>   static const struct lvts_ctrl_data mt8195_lvts_mcu_data_ctrl[] = {
>>       {
>>           .cal_offset = { 0x04, 0x07 },
>> @@ -1268,6 +1300,8 @@ MODULE_DEVICE_TABLE(of, lvts_of_match);
>>   static struct platform_driver lvts_driver = {
>>       .probe = lvts_probe,
>>       .remove = lvts_remove,
>> +    .suspend = lvts_suspend,
> 
> Should we do that in noirq handlers?
> We're risking to miss a thermal interrupt.

I'm not sure missing a thermal interrupt is a problem in this context 
but we may go in the irq routine with an undefined state sensor setup 
(eg. the internal clock stopped in the suspend and then read the sensor 
in the isr).

IMO, using suspend_noirq and resume_noirq may be required here.

Alexandre are you taking over the next iteration?


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

