Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8B63C64D51C
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 02:51:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229596AbiLOBvy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 20:51:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229724AbiLOBvu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 20:51:50 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2611054347
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 17:51:49 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id ay14-20020a05600c1e0e00b003cf6ab34b61so739849wmb.2
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 17:51:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gbi9GcVTR8H1eERdxlESG9eGZCWPeMSzsHRp3Ru8N/Y=;
        b=s2T6rUV1NT5tztd5iDeqbcSF59HI8MBxAlzZjMjDZWRh0qQu1DzSAeLz+MrvOONcli
         aQRBFfYLT5s2oPTM3BY+lKBQPtT+zAMqvjKKwFyoIz+Dt9X1FV4j0THowlXAkXUDw20i
         ThaRDX69udI+7ntFGCR0+iMmFxnjcXfbJ03cu2puYTZI7yJxfdsxVI4NE7WxzX6jC/c/
         ZqnTelH1rgLEtyoHZiuAzHXheYG31w4o+8lIIfbqUyovGPe0Cqi1qK6nQDdSYIjFhmEp
         KyOtLPRj4Mdi5vJ3OYkJ9SHfYFyEk9P7FB3nUqqKd3EIfxSdqDokGyWqLVZy3bHz/lvH
         evaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gbi9GcVTR8H1eERdxlESG9eGZCWPeMSzsHRp3Ru8N/Y=;
        b=2IkT7wOeU3XuNOcygabfmtU48byStR5dvQqDb/8/LzrZOETq+54k8DTfXt6n+mEeCc
         TnneS+mMIUUPy0WtylAc+wKPy8DfhBnhQVlOSk7iGJDsUNBXLFiesEEFsEXZA97AArpp
         b/WXZAGxRVRol2ukkcosxdEYc0UressK8Si31eASRC13An2iBaTRXSd+6zCIEM1+F7Au
         8zQvTyalNX1HPiPIkt1YvEm8/1P30vO6A2inlsMIuTtE0NoP0ggzQNjZpQOwyOLqCt1+
         reNL4lszWPEXZkau/P7nQlrNrHDrdeYEp8IX0Btz/VmK9/xZMwSOUTuYcDfdNZcfgBrB
         Fpkw==
X-Gm-Message-State: ANoB5pkuRU8NViDuFHLzQCgRhYk45aLByF94JbD1EgCav6Z70GCnKkr3
        xd0QJ8Yn8XYlfQnjr0yF4+kOWg==
X-Google-Smtp-Source: AA0mqf6MoXMgp7n/Tp7ypFp6MziLZuNaWno27mQuQRWPuhajhiYlDmCMsEGE3acTymqr5gE7XArthg==
X-Received: by 2002:a05:600c:3511:b0:3cf:7b8b:6521 with SMTP id h17-20020a05600c351100b003cf7b8b6521mr21107643wmq.32.1671069107594;
        Wed, 14 Dec 2022 17:51:47 -0800 (PST)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id j41-20020a05600c1c2900b003b4ff30e566sm13776425wms.3.2022.12.14.17.51.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 17:51:47 -0800 (PST)
Message-ID: <c3934708-8554-7b70-9a1d-68734df35247@linaro.org>
Date:   Thu, 15 Dec 2022 01:51:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH] Revert "phy: qualcomm: usb28nm: Add MDM9607 init
 sequence"
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Michael Srba <Michael.Srba@seznam.cz>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221214223733.648167-1-marijn.suijten@somainline.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20221214223733.648167-1-marijn.suijten@somainline.org>
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

On 14/12/2022 22:37, Marijn Suijten wrote:
> This reverts commit 557a28811c7e0286d3816842032db5eb7bb5f156.
> 
> This commit introduced an init sequence from downstream DT [1] in the
> driver.  As mentioned by the comment above the HSPHY_INIT_CFG macro for
> this sequence:
> 
>      /*
>       * The macro is used to define an initialization sequence.  Each tuple
>       * is meant to program 'value' into phy register at 'offset' with 'delay'
>       * in us followed.
>       */
> 
> Instead of corresponding to offsets into the phy register, the sequence
> read by the downstream driver [2] is passed into ulpi_write [3] which
> crafts the address-value pair into a new value and writes it into the
> same register at USB_ULPI_VIEWPORT [4].  In other words, this init
> sequence is programmed into the hardware in a totally different way than
> downstream and is unlikely to achieve the desired result, if the hsphy
> is working at all.
> 
> An alternative method needs to be found to write these init values at
> the desired location.  Fortunately mdm9607 did not land upstream yet [5]
> and should have its compatible revised to use the generic one, instead
> of a compatible that writes wrong data to the wrong registers.
> 
> [1]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/mdm9607.dtsi#585
> [2]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#4183
> [3]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#468
> [4]: https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#418
> [5]: https://lore.kernel.org/linux-arm-msm/20210805222812.40731-1-konrad.dybcio@somainline.org/
> 
> Reported-by: Michael Srba <Michael.Srba@seznam.cz>
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>

Hmm.

I got a bit concerned qcs405 was broken too, which would be worrying 
since I remember testing this code, though not specifically turning off 
the PHY init, then again, there's a near zero chance the USB PHY would 
work after reset without the specified init seq.

The original upstreamed code for qcs404/405

https://android.googlesource.com/kernel/msm/+/refs/heads/android-msm-coral-4.14-android10/arch/arm64/boot/dts/qcom/qcs405-usb.dtsi

https://android.googlesource.com/kernel/msm/+/refs/heads/android-msm-coral-4.14-android10/drivers/usb/phy/phy-qcom-snps-28nm-hs.c

Does a relative write to an offset of the PHY CSR

CSR base is 0x7a000
https://android.googlesource.com/kernel/msm/+/refs/heads/android-msm-coral-4.14-android10/arch/arm64/boot/dts/qcom/qcs405-usb.dtsi#74

https://android.googlesource.com/kernel/msm/+/refs/heads/android-msm-coral-4.14-android10/drivers/usb/phy/phy-qcom-snps-28nm-hs.c#285

which will result in 0x7a000 + 0xc0 = 0x01, etc

which for us upstream then is

https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/qcom/qcs404.dtsi#L336

and

https://github.com/torvalds/linux/blob/master/drivers/phy/qualcomm/phy-qcom-usb-hs-28nm.c#L388

Writing 0x7a000 + 0xc0 = 0x01, etc - a writel() in this case

so that bit is fine.

mdm9607

https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/mdm9607.dtsi#569 
- compat string is

CSR is @ 0x6c000

https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#664

downstream PHY init seq

https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/arch/arm/boot/dts/qcom/mdm9607.dtsi#585

and downstream driver PHY init write

https://android.googlesource.com/kernel/msm/+/android-7.1.0_r0.2/drivers/usb/phy/phy-msm-usb.c#664

Which does

writel_relaxed(ULPI_RUN | ULPI_WRITE |
	       ULPI_ADDR(reg) | ULPI_DATA(val),
	       USB_ULPI_VIEWPORT);

Yep, you're right, we can't do a simple writeb(csr + reg, val); for 
mdm9607 but, also the qcs404 => compat = "qcom,usb-hs-28nm-femtophy" is 
doing the right thing.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
