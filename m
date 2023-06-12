Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 947CD72B8C0
	for <lists+devicetree@lfdr.de>; Mon, 12 Jun 2023 09:39:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232917AbjFLHjY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Jun 2023 03:39:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232490AbjFLHjX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Jun 2023 03:39:23 -0400
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54C2619AB
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:38:40 -0700 (PDT)
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5147f7d045bso5949477a12.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 00:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686555295; x=1689147295;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q1/iA2KTeym2owa+RBl7xQJdLjQ/0GLTI4ghL8o+6f4=;
        b=NxjJdP91OHUabCe0qRMMweT3TxyT3rr6wzZtmr/2hVzIF+fpwjh6+MqRPmIjq5/KSE
         UH8GG6yAYrIE5mayxL8ac0Tcwoyy35OARBza3/lNnbnTa6phSXbPsbkPzFCd1UOOOqfs
         khGKDudjnfuj0ZeTm1TSFp+l+vz/b9MIsoIGxsc58p91u+/ZDcqK3TIM749Flxt55NdE
         8YSDHx9YWsxRecX3PZwcPhsvmHGsRxd9eFYZm4h1dXPxSy9hGVh1kt0YSgWnWpIm0DZu
         i3ohILiKQi76HsCzvYQrphBd5a+GirbfISGfq6t8FoKuDZ0MLxE30W0jEa7HDmQePIb8
         CMPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686555295; x=1689147295;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q1/iA2KTeym2owa+RBl7xQJdLjQ/0GLTI4ghL8o+6f4=;
        b=bA93PhtLb7KyldXCvlk3ZMcvsMtpCh9WBffybrMR+01wWo9IpWeb451JyS3W8CH37C
         KEdUt85ZnnzEuQZQCLSMflqcT6dlnKgGEkVptPZmHs3BLBbEmawvRgwK3h9ZJOlPbhbf
         De0DHeIQx4eDTrnx58ihOd5uAQYEKzIVVcZqOH18GgL/RKUqVV8sVsQ+XH73H/4RCTj3
         1c0RSPB6gxZU+eEs1XJins2btcVlfWBgxeImMCsnr6rjzp1LWXDHx8gqUGhAJf73SbpT
         YxmjW9mbX5ITmEerELnItNLdBes5xk83cEdojj1ua2KRWNtG+bcHrySnDes65rF1+T00
         o8GA==
X-Gm-Message-State: AC+VfDzYUbo4LtaHBFsUyAzDz75G4bO0xWg7WisuPle4PQ3QKR6JxA/D
        Z/mgz7d73KZeRbSjbpf+QbVZWp8d9GGdwFpsjqI=
X-Google-Smtp-Source: ACHHUZ7DpcJxKlnnA6faPmN7jkMDpIN8+d1Ug1h4AEiqeOaJqh5Aerat92skVsX2xye2L3p+Xe35/Q==
X-Received: by 2002:aa7:d785:0:b0:514:9c77:50b7 with SMTP id s5-20020aa7d785000000b005149c7750b7mr4791408edq.25.1686554747114;
        Mon, 12 Jun 2023 00:25:47 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id v26-20020aa7dbda000000b0050cc4461fc5sm4649433edt.92.2023.06.12.00.25.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 00:25:46 -0700 (PDT)
Message-ID: <421ddd6d-3938-027c-2099-57248a111831@linaro.org>
Date:   Mon, 12 Jun 2023 09:25:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v2 2/2] ASoC: codecs: wsa884x: Add WSA884x family of
 speakers
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>
Cc:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, alsa-devel@alsa-project.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Patrick Lai <quic_plai@quicinc.com>
References: <20230611102657.74714-1-krzysztof.kozlowski@linaro.org>
 <20230611102657.74714-2-krzysztof.kozlowski@linaro.org>
 <191859d3-42e3-4ef2-87ff-dd56864103f9@sirena.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <191859d3-42e3-4ef2-87ff-dd56864103f9@sirena.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/06/2023 13:57, Mark Brown wrote:
> On Sun, Jun 11, 2023 at 12:26:57PM +0200, Krzysztof Kozlowski wrote:
> 
>> +static struct reg_default wsa884x_defaults[] = {
> 
>> +	{ WSA884X_CHIP_ID0,			0x00 },
>> +	{ WSA884X_CHIP_ID1,			0x00 },
>> +	{ WSA884X_CHIP_ID2,			0x04 },
>> +	{ WSA884X_CHIP_ID3,			0x02 },
>> +	{ WSA884X_BUS_ID,			0x00 },
> 
> It is generally bad practice to provide defaults for ID registers since
> it rather defeats the point of having them.
> 
>> +	{ WSA884X_INTR_STATUS0,			0x00 },
>> +	{ WSA884X_INTR_STATUS1,			0x00 },
> 
> Interrupt status registers will be volatile and therefore should not
> have defaults.

Sure, makes sense, I'll drop all of the above.

> 
>> +	{ WSA884X_OTP_REG_0,			0x05 },
>> +	{ WSA884X_OTP_REG_1,			0x49 },
>> +	{ WSA884X_OTP_REG_2,			0x80 },
>> +	{ WSA884X_OTP_REG_3,			0xc9 },
>> +	{ WSA884X_OTP_REG_4,			0x40 },
>> +	{ WSA884X_OTP_REG_5,			0xff },
>> +	{ WSA884X_OTP_REG_6,			0xff },
>> +	{ WSA884X_OTP_REG_7,			0xff },
>> +	{ WSA884X_OTP_REG_8,			0xff },
>> +	{ WSA884X_OTP_REG_9,			0xff },
>> +	{ WSA884X_OTP_REG_10,			0xff },
>> +	{ WSA884X_OTP_REG_11,			0xff },
>> +	{ WSA884X_OTP_REG_12,			0xff },
>> +	{ WSA884X_OTP_REG_13,			0xff },
>> +	{ WSA884X_OTP_REG_14,			0xff },
>> +	{ WSA884X_OTP_REG_15,			0xff },
>> +	{ WSA884X_OTP_REG_16,			0xff },
>> +	{ WSA884X_OTP_REG_17,			0xff },
>> +	{ WSA884X_OTP_REG_18,			0xff },
>> +	{ WSA884X_OTP_REG_19,			0xff },
>> +	{ WSA884X_OTP_REG_20,			0xff },
>> +	{ WSA884X_OTP_REG_21,			0xff },
>> +	{ WSA884X_OTP_REG_22,			0xff },
>> +	{ WSA884X_OTP_REG_23,			0xff },
>> +	{ WSA884X_OTP_REG_24,			0x00 },
>> +	{ WSA884X_OTP_REG_25,			0x22 },
>> +	{ WSA884X_OTP_REG_26,			0x03 },
>> +	{ WSA884X_OTP_REG_27,			0x00 },
>> +	{ WSA884X_OTP_REG_28,			0x00 },
>> +	{ WSA884X_OTP_REG_29,			0x00 },
>> +	{ WSA884X_OTP_REG_30,			0x00 },
>> +	{ WSA884X_OTP_REG_31,			0x8f },
>> +	{ WSA884X_OTP_REG_32,			0x00 },
>> +	{ WSA884X_OTP_REG_33,			0xff },
>> +	{ WSA884X_OTP_REG_34,			0x0f },
>> +	{ WSA884X_OTP_REG_35,			0x12 },
>> +	{ WSA884X_OTP_REG_36,			0x08 },
>> +	{ WSA884X_OTP_REG_37,			0x1f },
>> +	{ WSA884X_OTP_REG_38,			0x0b },
>> +	{ WSA884X_OTP_REG_39,			0x00 },
>> +	{ WSA884X_OTP_REG_40,			0x00 },
>> +	{ WSA884X_OTP_REG_41,			0x00 },
>> +	{ WSA884X_OTP_REG_63,			0x40 },
> 
> These appear to be OTP data which suggests that they shouldn't have
> defaults either since they can be programmed.

Just to be clear - I don't have access to datasheet so I don't know what
are these. The downstream driver actually initializes (writes to) two
OTP registers - 38 and 40.

> 
>> +static bool wsa884x_readonly_register(struct device *dev, unsigned int reg)
>> +{
>> +	switch (reg) {
> 
> In general the read only registers probably shouldn't have defaults...

For the case when regmap is being read before device enumerates (thus
synced)?

> 
>> +static bool wsa884x_volatile_register(struct device *dev, unsigned int reg)
>> +{
>> +	switch (reg) {
>> +	case WSA884X_ANA_WO_CTL_0:
>> +	case WSA884X_ANA_WO_CTL_1:
>> +		return true;
>> +	}
>> +	return wsa884x_readonly_register(dev, reg);
>> +}
> 
> ...and the volatile regiseters definitely not, the default values will
> never be used and just waste space.

Right.

> 
>> +static struct regmap_config wsa884x_regmap_config = {
>> +	.reg_bits = 32,
>> +	.val_bits = 8,
>> +	.cache_type = REGCACHE_RBTREE,
> 
> Please use REGCACHE_MAPLE for new devices.

Ack

> 
>> +	/* Speaker mode by default */
>> +	{ WSA884X_DRE_CTL_0, 0x7 << WSA884X_DRE_CTL_0_PROG_DELAY_SHIFT },
>> +	{ WSA884X_CLSH_CTL_0, (0x37 & ~WSA884X_CLSH_CTL_0_DLY_CODE_MASK) |
>> +			      (0x6 << WSA884X_CLSH_CTL_0_DLY_CODE_SHIFT) },
>> +	{ WSA884X_CLSH_SOFT_MAX, 0xff },
> 
> Why not just leave as the chip default?

Sincerely, I don't know. Without any documentation, I am relying
entirely on downstream driver which has some code like this. I don't
know whether some parts here make sense only for downstream case or
shall be applicable also for upstream.

Best regards,
Krzysztof

