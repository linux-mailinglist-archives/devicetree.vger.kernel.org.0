Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 960287A3A1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2019 11:05:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728233AbfG3JFP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Jul 2019 05:05:15 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:35574 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728128AbfG3JFO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Jul 2019 05:05:14 -0400
Received: by mail-wm1-f67.google.com with SMTP id l2so55869496wmg.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2019 02:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version;
        bh=qGr1BDi0c/2TdLi67wBjX5+c8yyhM7Ix8wxZtUpjo5g=;
        b=fEKj3pYgSNCVMZDZdtCMHO/oPs4i0a3ucUE9X2f6nEaNA0gJ6xnCUEYQqZ00SDkZAe
         qas/HbrLLEkz1D1pAtQ0eQ3wbYrSzEYtopSM0GOB8MIEy2HNTIgm8bZpUa0uQdrS+ry5
         Ne6PdJltp47jtCpLzC/hSV0txKprnYrdf7hcB9QJEoZuNd6bhX94afsdewA44zIui5Jq
         jYZ/6zgBV0UAJuGwJLXrq0OKWBPwWtsgz6mPLYohbxRL64rFDevg+IhYhSu0HYGtRu8D
         HUWYZlLszd41A+FTo3tYjcTk8Dnk0YVRQmW3qKsL6FJ6MAm1kwoq4DhoOxe89TiJszof
         qu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
         :message-id:mime-version;
        bh=qGr1BDi0c/2TdLi67wBjX5+c8yyhM7Ix8wxZtUpjo5g=;
        b=ajNlpUK5A/4K1oEc5/o6LU4xFqqzsM3nDIyKU+RszqXESgb5+Tvdts+F5ajQ8Hkjgc
         R6NKMPtrTeUYXyq/QGhZvDVN4bpwqHQuRDU1R9tuNfA8g8KzACBngqrsORlXX/RBj1o3
         2+5Ff8gftQ93f5Mnm9njrxadDPFzeMvmoyCmFy/7zieX5fbtAFdiwdZGhP627x26MP83
         0b/ekpLJy4MMFRRxXSscbGg2mL3bPJY9zNSnJte+mjAFE6Uq8YNqbdlR+vt+emSS9yKy
         kIQGare/st+J/hfj8whDL2TIU1Rzvec48aWKriIrhchfOIuJX2rRYRsXDyJDISNi9LG9
         UtVA==
X-Gm-Message-State: APjAAAVA4UIqNkIyVISvgiNJO/qa2VndirxvVmLBB7J+1qScJegvdxDo
        mnSXTvyDBWNvWRynxZWozKKfMg==
X-Google-Smtp-Source: APXvYqwFlbUFxsYoSDxGSyZmNiW7VbV+zb0tbv/uEpdFegDVeNvxUOUn6FwGoEV4Xa9IoHuoN+8obg==
X-Received: by 2002:a1c:c188:: with SMTP id r130mr98830929wmf.73.1564477512141;
        Tue, 30 Jul 2019 02:05:12 -0700 (PDT)
Received: from localhost ([2a01:e34:eeb6:4690:ecfa:1144:aa53:4a82])
        by smtp.gmail.com with ESMTPSA id f12sm69804468wrg.5.2019.07.30.02.05.11
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 30 Jul 2019 02:05:11 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Carlo Caione <ccaione@baylibre.com>,
        srinivas.kandagatla@linaro.org, khilman@baylibre.com,
        narmstrong@baylibre.com, robh+dt@kernel.org, tglx@linutronix.de,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Carlo Caione <ccaione@baylibre.com>
Subject: Re: [PATCH 2/5] firmware: meson_sm: Mark chip struct as static const
In-Reply-To: <20190729183941.18164-3-ccaione@baylibre.com>
References: <20190729183941.18164-1-ccaione@baylibre.com> <20190729183941.18164-3-ccaione@baylibre.com>
Date:   Tue, 30 Jul 2019 11:05:10 +0200
Message-ID: <1jv9vj28qh.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 29 Jul 2019 at 19:39, Carlo Caione <ccaione@baylibre.com> wrote:

> No need to be a global struct.
>
> Signed-off-by: Carlo Caione <ccaione@baylibre.com>

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

> ---
>  drivers/firmware/meson/meson_sm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/firmware/meson/meson_sm.c b/drivers/firmware/meson/meson_sm.c
> index 8d908a8e0d20..772ca6726e7b 100644
> --- a/drivers/firmware/meson/meson_sm.c
> +++ b/drivers/firmware/meson/meson_sm.c
> @@ -35,7 +35,7 @@ struct meson_sm_chip {
>  	struct meson_sm_cmd cmd[];
>  };
>  
> -struct meson_sm_chip gxbb_chip = {
> +static const struct meson_sm_chip gxbb_chip = {
>  	.shmem_size		= SZ_4K,
>  	.cmd_shmem_in_base	= 0x82000020,
>  	.cmd_shmem_out_base	= 0x82000021,
> -- 
> 2.20.1
