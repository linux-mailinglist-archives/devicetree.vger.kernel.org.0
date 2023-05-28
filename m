Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A080713850
	for <lists+devicetree@lfdr.de>; Sun, 28 May 2023 09:27:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229452AbjE1H1p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 May 2023 03:27:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58416 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjE1H1o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 May 2023 03:27:44 -0400
Received: from smtp.smtpout.orange.fr (smtp-19.smtpout.orange.fr [80.12.242.19])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BB30FC7
        for <devicetree@vger.kernel.org>; Sun, 28 May 2023 00:27:39 -0700 (PDT)
Received: from [192.168.1.18] ([86.243.2.178])
        by smtp.orange.fr with ESMTPA
        id 3AoGqXVchfPUb3AoGqo1a5; Sun, 28 May 2023 09:27:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wanadoo.fr;
        s=t20230301; t=1685258851;
        bh=In/HEnJ59JVxAKJendXeaSKCqtakbTMfNFHPW6oXzSM=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To;
        b=MuAsw2s5g/3h7TW9jl01gYvAvWtaOCnzFoiIGGU/C/DRTkFB+d6/erUx5o5JHlnlA
         TvZe/NaX7goJCkhZWQzjtN1tARwGOu5GRQO7Ycm+CRNGLuAdoryIEwxNs4Az3p8jrn
         kJR7F05dt0G5xnxPrYfBj5bjB/0dLgrJJinBS2kwmZg/kOcj0VISnLxqXoX8U9AYF1
         OqBhQ17ffyXg4wE/CvA7viQyeQT8n2ZzudwvlhXnRuQPxQxzNZJGEUFtEfKI6RQmBp
         CjWYkbfdKouaEVLow/Kg4hcK+sx95c71fGZGF+y4Xq6HyVY2GZoPWZs/1XF+FrcGML
         ufNkOGwf/F3QQ==
X-ME-Helo: [192.168.1.18]
X-ME-Auth: Y2hyaXN0b3BoZS5qYWlsbGV0QHdhbmFkb28uZnI=
X-ME-Date: Sun, 28 May 2023 09:27:31 +0200
X-ME-IP: 86.243.2.178
Message-ID: <afe12540-0980-f536-996d-28807937f36b@wanadoo.fr>
Date:   Sun, 28 May 2023 09:27:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v4 1/6] ASoC: tas2781: Add Header file for tas2781 driver
To:     "13916275206@139.com >> Shenghao Ding" <13916275206@139.com>
Cc:     Ryan_Chu@wistron.com, Sam_Wu@wistron.com,
        alsa-devel@alsa-project.org, broonie@kernel.org,
        devicetree@vger.kernel.org, gentuser@gmail.com, kevin-lu@ti.com,
        krzysztof.kozlowski+dt@linaro.org, lgirdwood@gmail.com,
        linux-kernel@vger.kernel.org, navada@ti.com, peeyush@ti.com,
        perex@perex.cz, pierre-louis.bossart@linux.intel.com,
        robh+dt@kernel.org, shenghao-ding@ti.com, tiwai@suse.de,
        x1077012@ti.com
References: <20230527223439.7741-1-13916275206@139.com>
Content-Language: fr
From:   Christophe JAILLET <christophe.jaillet@wanadoo.fr>
In-Reply-To: <20230527223439.7741-1-13916275206@139.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H2,SPF_HELO_PASS,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Le 28/05/2023 à 00:34, Shenghao Ding a écrit :
> Create Header file for  tas2781 driver.
> 
> Signed-off-by: Shenghao Ding <13916275206-7R9yAhoRP9E@public.gmane.org>
> 
> ---
> Changes in v4:
>   - correct some enums have capitalized Chn, chn to all
>   Changes to be committed:
> 	new file:   include/sound/tas2781-dsp.h
> 	new file:   include/sound/tas2781-tlv.h
> 	new file:   include/sound/tas2781.h
> ---
>   include/sound/tas2781-dsp.h | 190 ++++++++++++++++++++++++++++++++++++
>   include/sound/tas2781-tlv.h |  22 +++++
>   include/sound/tas2781.h     | 182 ++++++++++++++++++++++++++++++++++
>   3 files changed, 394 insertions(+)
>   create mode 100644 include/sound/tas2781-dsp.h
>   create mode 100644 include/sound/tas2781-tlv.h
>   create mode 100644 include/sound/tas2781.h

[...]

> diff --git a/include/sound/tas2781-tlv.h b/include/sound/tas2781-tlv.h
> new file mode 100644
> index 000000000000..f4310dce655a
> --- /dev/null
> +++ b/include/sound/tas2781-tlv.h
> @@ -0,0 +1,22 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +//
> +// ALSA SoC Texas Instruments TAS2781 Audio Smart Amplifier
> +//
> +// Copyright (C) 2022 - 2023 Texas Instruments Incorporated
> +// https://www.ti.com
> +//
> +// The TAS2781 driver implements a flexible and configurable
> +// algo coefficient setting for one, two, or even multiple
> +// TAS2781 chips.
> +//
> +// Author: Shenghao Ding <shenghao-ding-l0cyMroinI0@public.gmane.org>
> +// Author: Kevin Lu <kevin-lu-l0cyMroinI0@public.gmane.org>
> +//
> +
> +#ifndef __TAS2781_TLV_H__
> +#define __TAS2781_TLV_H__
> +
> +static const DECLARE_TLV_DB_SCALE(dvc_tlv, -10000, 100, 0);
> +static const DECLARE_TLV_DB_SCALE(amp_vol_tlv, 1100, 50, 0);
> +
> +#endif /* __TAS2781_LIB_H__ */

Nit: __TAS2781_TLV_H__ (or nothing as in the file above)

> diff --git a/include/sound/tas2781.h b/include/sound/tas2781.h
> new file mode 100644
> index 000000000000..399bb8f9b54a
> --- /dev/null
> +++ b/include/sound/tas2781.h
> @@ -0,0 +1,182 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +//
> +// ALSA SoC Texas Instruments TAS2781 Audio Smart Amplifier
> +//
> +// Copyright (C) 2022 - 2023 Texas Instruments Incorporated
> +// https://www.ti.com
> +//
> +// The TAS2781 driver implements a flexible and configurable
> +// algo coefficient setting for one, two, or even multiple
> +// TAS2781 chips.
> +//
> +// Author: Shenghao Ding <shenghao-ding-l0cyMroinI0@public.gmane.org>
> +// Author: Kevin Lu <kevin-lu-l0cyMroinI0@public.gmane.org>
> +//
> +
> +#ifndef __TAS2781_H__
> +#define __TAS2781_H__
> +
> +#include <linux/kernel.h>

I've not chekced in details, but is it really needed?

I've been told once, that we should try to avoid kernel.h in /include/


CJ
