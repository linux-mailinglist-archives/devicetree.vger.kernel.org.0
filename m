Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DA13416BF15
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2020 11:49:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730353AbgBYKtS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Feb 2020 05:49:18 -0500
Received: from mail-wr1-f67.google.com ([209.85.221.67]:42948 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729417AbgBYKtR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Feb 2020 05:49:17 -0500
Received: by mail-wr1-f67.google.com with SMTP id p18so10489100wre.9
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2020 02:49:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=qvxBxV40TcJIJLO3Ak9rL5n5Z5cRmIQmAn99im24fac=;
        b=NXaA0AxrBsw0PiED/wu5oAlIugHDcLVleHM6WJemvRn1zjMg+CL9RtUIFTGVDB1ufh
         F3PdRnujr3yHd11tjD7MYcu8bu/+tGT+N88bFMZhnYqUkEli0zglutAhZjnyNc0/i/CY
         dHxjazAJDp1mWsdZlnqQn+y6EOjDJaK2cBVUQuWAlNRlHKFScdgRpfi3pTWEuAsFMk50
         fyJKqQFOQrBNxScEBl8zuxRJy9+901G99Je8X4zm2yByLodphoZofIjNHIMJ8/VLzPQg
         3XnWbrCOkLmnlhOeS3nfcHaU7J3ff56qjQSnCvvR9gw73/poO0ORS1mm3GwwOes8iOtm
         Hh7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qvxBxV40TcJIJLO3Ak9rL5n5Z5cRmIQmAn99im24fac=;
        b=qxrHeV2DxXltSBISmkDBGckZkpJRLsGgeS0lhetgns3IVC2clYGizXFTzoPCSJCl+5
         i1/nl5gEGxtXzYyeftptdoCxNfCiCgp8PL5j/IVZk7vc7X6pwscXMsFuS+2a6L8pJeDJ
         ksgnlLCbxocwf2ICeeuG84fSgiG2LUrVvI3VsnwPuJomDfJgp9e9Vc02EhyW9NEizLJg
         2nFPrs1i92C8VPDkOS/l+RLTnSJWCqhNqjPHJ7MCNDZFJheRwoh6qjlgOJkhaxo6+snK
         +4c6mXaZVd6w4URyvflx4tXNtnAM5a1TrJuj4hEXOT7I0pGnwlgxgKDogpKMpaSjW5kO
         rNpg==
X-Gm-Message-State: APjAAAX74mte95fRTaImLgsH5UV639QnSnbPVs0/5vcV5usIm4hAaYuL
        Q7hmdmuofZKbt1FWsyjiB9j9iDKY9RY=
X-Google-Smtp-Source: APXvYqwE82o1PHG1mNSBjfme6ORF0zg+KbPukhHHmTEGr/59HWm+mQeP5u4pY7urYGWwmuA1z5W/dA==
X-Received: by 2002:a05:6000:188:: with SMTP id p8mr71310102wrx.336.1582627756154;
        Tue, 25 Feb 2020 02:49:16 -0800 (PST)
Received: from [192.168.1.94] (93-41-244-45.ip84.fastwebnet.it. [93.41.244.45])
        by smtp.gmail.com with ESMTPSA id s15sm23542690wrp.4.2020.02.25.02.49.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 25 Feb 2020 02:49:15 -0800 (PST)
Subject: Re: [PATCH 3/3] drm/panel: add panel driver for Elida KD35T133 panels
To:     Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org
Cc:     mark.rutland@arm.com, devicetree@vger.kernel.org,
        robin.murphy@arm.com, robh+dt@kernel.org,
        linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
        Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
        sam@ravnborg.org, christoph.muellner@theobroma-systems.com
References: <20200223150711.194482-1-heiko@sntech.de>
 <20200223150711.194482-3-heiko@sntech.de>
From:   Francesco Lavra <francescolavra.fl@gmail.com>
Message-ID: <026a2176-cded-d6ea-7fab-d1425ab3dd5d@gmail.com>
Date:   Tue, 25 Feb 2020 11:49:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200223150711.194482-3-heiko@sntech.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/23/20 4:07 PM, Heiko Stuebner wrote:
> +static int kd35t133_unprepare(struct drm_panel *panel)
> +{
> +	struct kd35t133 *ctx = panel_to_kd35t133(panel);
> +	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
> +	int ret;
> +
> +	if (!ctx->prepared)
> +		return 0;
> +
> +	ret = mipi_dsi_dcs_set_display_off(dsi);
> +	if (ret < 0)
> +		DRM_DEV_ERROR(ctx->dev, "failed to set display off: %d\n",
> +			      ret);
> +
> +	mipi_dsi_dcs_enter_sleep_mode(dsi);
> +	if (ret < 0) {
> +		DRM_DEV_ERROR(ctx->dev, "failed to enter sleep mode: %d\n",
> +			      ret);

It looks like you forgot to assign the return value from 
mipi_dsi_dcs_enter_sleep_mode() to ret.

> +		return ret;
> +	}
> +
> +	regulator_disable(ctx->iovcc);
> +	regulator_disable(ctx->vdd);
> +
> +	ctx->prepared = false;
> +
> +	return 0;
> +}
