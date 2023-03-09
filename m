Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F5406B282D
	for <lists+devicetree@lfdr.de>; Thu,  9 Mar 2023 16:05:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231985AbjCIPFZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Mar 2023 10:05:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58126 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232160AbjCIPEq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Mar 2023 10:04:46 -0500
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53E50ED6BA
        for <devicetree@vger.kernel.org>; Thu,  9 Mar 2023 07:02:52 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id cp12so1679183pfb.5
        for <devicetree@vger.kernel.org>; Thu, 09 Mar 2023 07:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678374172;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mpG+8TjRKU1Xq1b7ChN1vz1PZS008U/FxhApKNmqYlY=;
        b=ELYbTvyRDRvOH8dgBQ/Fwx17+m9R3aqgz5pT7V7fAkZJsA+oV5WiXFMZLcOenBBcbo
         Iomz7JdnKuw/g52XHENDsg9hzunSk4MHravqG2QuI/iiHrQirjr8y73m7ZbBXY/o7vLg
         qvwNTEDQsWU9Of4q0G3fEWJe30V6onvW2a3+JTt/V7Y4xmemTnj3zMSH2yh0yqy6v2Cj
         a/57s24pd09PXcbhcLZVSXqhgklg7hVV+a1VfUTBgAPlfhwUzkjH5KHMImC7zUxFSqTO
         FQHaGZXufx854DG2kV0GcvrLGNTYFThFRHLCUDrtkIwO46cukE2cBALux/qu3ME/ggcP
         lUFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678374172;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mpG+8TjRKU1Xq1b7ChN1vz1PZS008U/FxhApKNmqYlY=;
        b=q431Ft/72WTzQ+QgORuTP583SxsvGJmRD37Evtp6ZG7h3ZyLDSSOLPfQNj+Br2dBDn
         omp0rDwqk2vlHSrMwfghgl1V73pB3aHsOG+itVX8my1OMNG4Ys14xL41DeSz4tBZMBPJ
         qD+Shf+P4ys+uj9/PzTXUt6B1jl482rod2+hVQN44YC2BQ9Ws6H/gcCAPXzPLAYpwc3W
         qcczCp7npntpHkEv7GvMgppxIo6tqJn9hgRLdgOMSS9Orea8hovLAwkiBR9d8VFdPm0c
         jKL/HlawarCpIRx40bB3NyZd2bBNQB7qs+C3U0hI9TCLsUYrmjx8ak82nHdLoAQ/DtDH
         WT4Q==
X-Gm-Message-State: AO0yUKWXEAyNJVYINxd9AS5QszukEXh9rMR2NkabqvMbVYjDsO4tz+uF
        LwSzTUYIFisDzyVXwNUT6mKLepz3Yn/6bxvRhJihiA==
X-Google-Smtp-Source: AK7set/Pu4XGzKcyUzu0ET/xIBNGm/Mc7zvqzaKEVvMGZxTLOsJ3vWQd5u10L1Z/1FJ77TF3nXXUVY+1mwvJkbrIn10=
X-Received: by 2002:a63:bc02:0:b0:4fb:d6b9:abea with SMTP id
 q2-20020a63bc02000000b004fbd6b9abeamr7692841pge.5.1678374171737; Thu, 09 Mar
 2023 07:02:51 -0800 (PST)
MIME-Version: 1.0
References: <20230307024646.10216-1-william.qiu@starfivetech.com> <20230307024646.10216-3-william.qiu@starfivetech.com>
In-Reply-To: <20230307024646.10216-3-william.qiu@starfivetech.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 9 Mar 2023 16:02:15 +0100
Message-ID: <CAPDyKFp204LOmo9rD7DS5hE=s2jHuFfgsaj05MRzdTKNrscWWQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] mmc: starfive: Add initialization of prev_err
To:     William Qiu <william.qiu@starfivetech.com>
Cc:     devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 7 Mar 2023 at 03:46, William Qiu <william.qiu@starfivetech.com> wrote:
>
> Add a incremental updates to fix a bug that prev_err is uninitialized.
>
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> Reported-by: Dan Carpenter <error27@gmail.com>

I took the liberty of updating the commit message a bit, to try to
further clarify things. Moreover, future wise, let's use the prefix,
"mmc: dw_mmc-starfive" for the commit message header, to be consistent
with the other dw_mmc drivers.

So, applied for fixes and by adding a fixes tag, thanks!

Kind regards
Uffe


> ---
>  drivers/mmc/host/dw_mmc-starfive.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/mmc/host/dw_mmc-starfive.c b/drivers/mmc/host/dw_mmc-starfive.c
> index 40f5969b07a6..dab1508bf83c 100644
> --- a/drivers/mmc/host/dw_mmc-starfive.c
> +++ b/drivers/mmc/host/dw_mmc-starfive.c
> @@ -51,7 +51,7 @@ static int dw_mci_starfive_execute_tuning(struct dw_mci_slot *slot,
>         struct dw_mci *host = slot->host;
>         struct starfive_priv *priv = host->priv;
>         int rise_point = -1, fall_point = -1;
> -       int err, prev_err;
> +       int err, prev_err = 0;
>         int i;
>         bool found = 0;
>         u32 regval;
> --
> 2.34.1
>
