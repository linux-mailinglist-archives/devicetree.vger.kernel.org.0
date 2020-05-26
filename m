Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7CEB31D73DD
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2020 11:22:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726283AbgERJWz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 May 2020 05:22:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726274AbgERJWz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 May 2020 05:22:55 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85905C061A0C
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 02:22:53 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id k12so8514233wmj.3
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 02:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:content-language:content-transfer-encoding;
        bh=Z3XlctpSAnbYdb2+5Z7TFNZPigSvZMxY4yX670//TBU=;
        b=drv2mSAuvezl8uk9ZvXfGTMENTCqHqLeB5OLJuBjylbY9VEyWGnJcxSWFwJQdlPu/F
         MI0sf0aLcYB3VSz8CAh7zmlYeci5h117eeqYjrXYOCC+4FZogJ+cfjXmN/uxIvzq9fol
         cFdzZiynTzFtdgY8iDZ6t1CIO4hPrPc3bmZcC9ULjdAW1X/nOAWsI+Yfsh4inCax8R6+
         ZRcB3gZly/uFkn57tKqXLWK3t3WVpmcdf23zUg1kdMP3INamQ3kTEj4REZR1te4YaMYm
         sXICAkHLFkf1OhzgL2/WBxfPrH9iJGAAg8735Xtf4myhO321CZ1v7azvSTBhhkrADJZw
         gnnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:content-language:content-transfer-encoding;
        bh=Z3XlctpSAnbYdb2+5Z7TFNZPigSvZMxY4yX670//TBU=;
        b=bAnuIwrfoGM+77W8hufdPfiU+TpHpL7XrmoUBKUHfWon34sjEHSFK/OX/6KPiI6Fid
         mAlnHp2kr4cjL+Y6zZocoP/gyVY905LuE2eI1A2BANOLqaUf5RiS//CYdke0ArUj8p++
         HPDIAtnD4hvS37Qz4KIS0ZU1rdrBSBvAGD9/A2eHK+mJpBR6ortPW9Smmk89RyabmcTU
         WM1hDxe5rRKnXDOlLfV6DDjPVvjTd9VS457+h3yMl32zgcwdMFGs5eZn/jyJUwRxiYdg
         FhZ9Yu0jn6rtReKKc0iKXuHW4ranAjv7iqbYvv50xRh3huanCPJETA21laV1cZtEf9Cs
         XNjg==
X-Gm-Message-State: AOAM531d3EoTIPh5FA0PCk1PBoazMjneBELHapbm+A0ELa8g0JFNc8A+
        WpP4Midc2ERUMgUIcT3ZPci7bw==
X-Google-Smtp-Source: ABdhPJy8I8LDsz/5SOI07W1BDAQYcizOum1eE7aOvMk3UKlv2qSI1RLiOS6YkMJ6LmH6Vrszb+qMJg==
X-Received: by 2002:a05:600c:14c6:: with SMTP id i6mr18126796wmh.58.1589793772297;
        Mon, 18 May 2020 02:22:52 -0700 (PDT)
Received: from [192.168.86.34] (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.googlemail.com with ESMTPSA id h133sm16392525wmf.25.2020.05.18.02.22.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 May 2020 02:22:51 -0700 (PDT)
Subject: Re: [PATCH v2 5/7] include: dt-bindings: sound: Add sc7180-lpass
 bindings header
To:     Ajit Pandey <ajitp@codeaurora.org>, broonie@kernel.org,
        plai@codeaurora.org, bgoswami@codeaurora.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: =?UTF-8?Q?=3c=1c1586592171-31644-1-git-send-email-ajitp=40codeau?=
 =?UTF-8?Q?rora=2eorg=1d=3e_=3c1589474298-29437-1-git-send-email-ajitp=40cod?=
 =?UTF-8?Q?eaurora=2eorg=3e_=3c1589474298-29437-6-git-send-email-ajitp=40cod?=
 =?UTF-8?Q?eaurora=2eorg=3e?=
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <e8859fcf-fc00-01fc-b64e-dba086c8155b@linaro.org>
Date:   Mon, 18 May 2020 10:22:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 14/05/2020 17:38, Ajit Pandey wrote:
> Add header defining dai-id and mclk id for SC7180 lpass soc.
> 
> Signed-off-by: Ajit Pandey <ajitp@codeaurora.org>
> ---
>   include/dt-bindings/sound/sc7180-lpass.h | 10 ++++++++++

Why not reuse or rename include/dt-bindings/sound/apq8016-lpass.h to 
include/dt-bindings/sound/lpass.h and reuse across all the LPASS variants?

--srini

>   1 file changed, 10 insertions(+)
>   create mode 100644 include/dt-bindings/sound/sc7180-lpass.h
> 
> diff --git a/include/dt-bindings/sound/sc7180-lpass.h b/include/dt-bindings/sound/sc7180-lpass.h
> new file mode 100644
> index 0000000..7d988f6
> --- /dev/null
> +++ b/include/dt-bindings/sound/sc7180-lpass.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +#ifndef __DT_SC7180_LPASS_H
> +#define __DT_SC7180_LPASS_H
> +
> +#define MI2S_PRIMARY	0
> +#define MI2S_SECONDARY	1
> +
> +#define LPASS_MCLK0	0
> +
> +#endif /* __DT_APQ8016_LPASS_H */
> 
