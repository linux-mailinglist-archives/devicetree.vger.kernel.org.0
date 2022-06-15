Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0017B54D3F8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 23:52:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243817AbiFOVw3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 17:52:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43266 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237675AbiFOVw3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 17:52:29 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE9E53B8
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:52:27 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id u2so12621735pfc.2
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 14:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=0ty1RxSdadl9+9NVwFX4A9nsRzhPnvvUrH+LaNBwqcY=;
        b=mOTOZ38DU8s4FzE5wLrQa/baN9X5EK/Chdacc1xywG2axFJn81QfX1V4bPIuELWZ54
         7ly9GjZPTmsy8LCK2YJVT9ahruaGGsA2w3Zvbyr6hDXHlKeWsVdpye1RcJcaaV7/gYy4
         zYRhDLUPdYD6j6CXrK8RPHMOD27iyCam7fboYjf4YCDK2c0LCwQiuu3Xf79EyySoH67N
         k9fVd2obk+DQ0Y9R6YIQ4/0NwDe6+48zjG7vN29CnhD91xx7oCaGTDWIhl3U8HpsAeFQ
         QN0b8/UEA0VimsxVYO49LMh1ahxH7QpdwwzX4e2i/0Oq0Sr9XqixhVARtkXJMWmw25ps
         TsAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=0ty1RxSdadl9+9NVwFX4A9nsRzhPnvvUrH+LaNBwqcY=;
        b=lRU8/aVC6XGuNIqN/tkKbT9LPHfHoaTRJ87HsWXIOMEotoaN9xV1cO7fZ9fO1tjeEw
         KY42nSiVeupsKaIqQJMMBpD65uBW0UVTfkd4JROObFNc/AEM1o++ul+IlfC9d0shw3YL
         7lbCnxFdZj9plL7B/HXahQ3PZh0SO0cI+9hm/cdsLEpcK789lf6JUfcA0XQArQhv5hcm
         JNV3UMdF+jpMJywcLWqvOucGuU71QMeI0S5nlWaHdzXnsbR7KLV5imu4I6oRCit3Aj7J
         RYtWJfZ/QtTSYcsRGkwCxlsmj9a17NSOkViIhwIhYQMtLJPMXkkfjYl5RKIXT/eP1A83
         FMtw==
X-Gm-Message-State: AJIora/xTFOE+PeQQS350hGzP1dKbCRorJhaaEWsYy712/FhJ3ASE/Cv
        LGiRWdLh3QUzoyf5XzNVPk1Cyw==
X-Google-Smtp-Source: AGRyM1uI1Sje76zEXKJGG1p78/HpCUSQaVRb3IjIorpckoBM3clSfQzXUTyCe6Ie40563QpO7eiN+g==
X-Received: by 2002:a63:8941:0:b0:3fc:7efa:119d with SMTP id v62-20020a638941000000b003fc7efa119dmr1644975pgd.340.1655329947256;
        Wed, 15 Jun 2022 14:52:27 -0700 (PDT)
Received: from google.com ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id f10-20020aa782ca000000b0051bd9981cacsm110643pfn.123.2022.06.15.14.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jun 2022 14:52:26 -0700 (PDT)
Date:   Wed, 15 Jun 2022 22:52:24 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, johnson.wang@mediatek.com,
        hsin-hsiung.wang@mediatek.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] mfd: mt6397: Add basic support for MT6331+MT6332 PMIC
Message-ID: <YqpUmE5+Kmq9rxwB@google.com>
References: <20220520124617.228808-1-angelogioacchino.delregno@collabora.com>
 <20220520124617.228808-3-angelogioacchino.delregno@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220520124617.228808-3-angelogioacchino.delregno@collabora.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 20 May 2022, AngeloGioacchino Del Regno wrote:

> Add support for the MT6331 PMIC with MT6332 Companion PMIC, found
> in MT6795 Helio X10 smartphone platforms.
> 
> This combo has support for multiple devices but, for a start,
> only the following have been implemented:
> - Regulators (two instances, one in MT6331, one in MT6332)
> - RTC (MT6331)
> - Keys (MT6331)
> - Interrupts (MT6331 also dispatches MT6332's interrupts)
> 
> There's more to be implemented, especially for MT6332, which
> will come at a later stage.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  drivers/mfd/mt6397-core.c            |  47 ++
>  drivers/mfd/mt6397-irq.c             |   9 +-
>  include/linux/mfd/mt6331/core.h      |  53 +++
>  include/linux/mfd/mt6331/registers.h | 584 ++++++++++++++++++++++++
>  include/linux/mfd/mt6332/core.h      |  53 +++
>  include/linux/mfd/mt6332/registers.h | 642 +++++++++++++++++++++++++++
>  include/linux/mfd/mt6397/core.h      |   2 +
>  7 files changed, 1389 insertions(+), 1 deletion(-)
>  create mode 100644 include/linux/mfd/mt6331/core.h
>  create mode 100644 include/linux/mfd/mt6331/registers.h
>  create mode 100644 include/linux/mfd/mt6332/core.h
>  create mode 100644 include/linux/mfd/mt6332/registers.h

[...]

> +#endif /* __MFD_MT6332_REGISTERS_H__ */
> diff --git a/include/linux/mfd/mt6397/core.h b/include/linux/mfd/mt6397/core.h
> index 1cf78726503b..4d2b80319db3 100644
> --- a/include/linux/mfd/mt6397/core.h
> +++ b/include/linux/mfd/mt6397/core.h
> @@ -12,6 +12,8 @@
>  
>  enum chip_id {
>  	MT6323_CHIP_ID = 0x23,

> +	MT6331_CHIP_ID = 0x20,
> +	MT6332_CHIP_ID = 0x20,

Are these meant to be the same?

>  	MT6358_CHIP_ID = 0x58,
>  	MT6359_CHIP_ID = 0x59,
>  	MT6366_CHIP_ID = 0x66,

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
