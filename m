Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5E8C06ADF28
	for <lists+devicetree@lfdr.de>; Tue,  7 Mar 2023 13:52:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229799AbjCGMwe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Mar 2023 07:52:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229803AbjCGMwZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Mar 2023 07:52:25 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C3F77EA27
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 04:52:07 -0800 (PST)
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 53D783F469
        for <devicetree@vger.kernel.org>; Tue,  7 Mar 2023 12:52:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1678193526;
        bh=nmWr6ekGjQZxJ+Q7zdHZXafHGNlXxBrbViGkz8bn1+c=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=HW4d0JXq8/NOQpK+uYGqtLow9FuTQ0hec+KBDX0jbd3ron+mwaz/ZZ/kt1UEqF5+L
         BvwY+XN/SH3QEBLn4rvul478UcfBrM6S27xWZHk81tvGUqVEMU7rLpy9LfaoXXnlzO
         KzcAVjGv3mwRx2l11+ogLbjQReZN9GnYBHHAaFgxImTO1fseHRAqYg0zHPnmMrUIUc
         PutfpxWF/RtYVZcm0zuq+R/mwRrkhJAbiyWdB3EBcsfouvHd/6CWk9QXlyjuBA2UwK
         4tuxjD10LsKQTVoyIwkySdOV/l3vvQVggsW9nW6br6HO9c+3xkaOFq7dWSnlaEpwyd
         8kPpErUXrWQ5g==
Received: by mail-qv1-f72.google.com with SMTP id y3-20020a0cec03000000b0056ee5b123bbso7435806qvo.7
        for <devicetree@vger.kernel.org>; Tue, 07 Mar 2023 04:52:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678193525;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nmWr6ekGjQZxJ+Q7zdHZXafHGNlXxBrbViGkz8bn1+c=;
        b=jrtPuMjFpYLWl0cvoE8O2sUNrMZcJiTYuz4DqCjbOMvxhYrAJQFaKnwDT17HPhFs4l
         +vDPNuXWoSnTkjGnmHaeu+31qgT0V/1IZ9BYgEVbhVh1LDmg4/BnsBy44FXmujsQ9Tlq
         vk6oB8NS+ogUBEFOUs+BCpkuSdJlbLGh21jk0VYJIhI0hXcx/zD4s22nmsz8ohr6430G
         YHyE6vRDH7a0MabuQUAgTOGVi5KUe5ow/fZNSOs6Il16G2+mgUX64CArxH/pHbMcXJaA
         O6/SvDSzIy14wMfZJnY/Cb+1xVWm5MRbNlHOZ0siOn6qCWc27CwtpMxzQ8Rb7FduUOe8
         bvzQ==
X-Gm-Message-State: AO0yUKVYpGplHN/hb0xceXgabTLWPry8HUy5qI4PL90uOD1xlPtJsT4a
        RGD4HzMLr6dx1ybIbaCwrQ12Lam13R8jBXLRVA5i7EoGMLW3Gae1gjtuWppRvXUPDvFGpDdZt1K
        nVX58kBlUsq1GVM0jBQv5Euxee/lh3oKep523D5RnpOkBITvIBdCDDK4=
X-Received: by 2002:ad4:4e28:0:b0:56e:b446:34f1 with SMTP id dm8-20020ad44e28000000b0056eb44634f1mr4079233qvb.5.1678193525415;
        Tue, 07 Mar 2023 04:52:05 -0800 (PST)
X-Google-Smtp-Source: AK7set8EvyNc/L3E70dvuWathZFkQOqKVEkT1IIx0wT1ixr8AJw2s+ppYU5aOJDsokfzAi4ghyW4HUFDQpSET1IIO54=
X-Received: by 2002:ad4:4e28:0:b0:56e:b446:34f1 with SMTP id
 dm8-20020ad44e28000000b0056eb44634f1mr4079223qvb.5.1678193525129; Tue, 07 Mar
 2023 04:52:05 -0800 (PST)
MIME-Version: 1.0
References: <20230307024646.10216-1-william.qiu@starfivetech.com> <20230307024646.10216-3-william.qiu@starfivetech.com>
In-Reply-To: <20230307024646.10216-3-william.qiu@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Tue, 7 Mar 2023 13:51:49 +0100
Message-ID: <CAJM55Z_mzzAW52RMC6cfgiKNLicF9ip74csbsrbikE3tN+taaw@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] mmc: starfive: Add initialization of prev_err
To:     William Qiu <william.qiu@starfivetech.com>
Cc:     devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jaehoon Chung <jh80.chung@samsung.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 7 Mar 2023 at 03:49, William Qiu <william.qiu@starfivetech.com> wrote:
> Add a incremental updates to fix a bug that prev_err is uninitialized.
>
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> Reported-by: Dan Carpenter <error27@gmail.com>

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

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
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv
