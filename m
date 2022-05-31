Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8300E5393CA
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 17:18:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344731AbiEaPSf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 11:18:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237532AbiEaPSe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 11:18:34 -0400
Received: from mail-vk1-xa2b.google.com (mail-vk1-xa2b.google.com [IPv6:2607:f8b0:4864:20::a2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E1E1E633AE
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 08:18:33 -0700 (PDT)
Received: by mail-vk1-xa2b.google.com with SMTP id n135so6325577vkn.7
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 08:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yaEVvR5kiojQuK1xHQVdguPJTdzeY/ZRR/GthFpCYAA=;
        b=Jf2vMtjKNbl274z0peSeX3NtErB4fBIc7TiDfSMj0WOXQXQXxR/c5rssR8P4NhN4wm
         +5+cXzxvYhhdq/qXA/lIjgXbGLwPj9nH1GJoQC+7Grwr+SYvd84Zsp44eSGWdflINCc5
         t5R3kiChvOtvYY98/pqWHZSV/34v0WUsZqMIJv7b0sHJYUjq5CwIIItcrcgXbHaR+3lx
         10pB2XJXKMBB5LqUFDo9y2OwexpNn8l3sqQ5yDSpsLAHKpZbsuXVgGdBCc1popzlpIB0
         FWgk0urDS7C53pPknlkOnT1z4689h+PyVLoh7Nm7swA8fmpVYLEfwwwNfHt0ayBqvNb5
         OtLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yaEVvR5kiojQuK1xHQVdguPJTdzeY/ZRR/GthFpCYAA=;
        b=n9mmmKym6YrySOiTVxw0d7fYJCiwykMRf8xOCIW2lutIe4aChJ1g8vTCbO4b8N8y75
         9FF5tBV11tzdPlbAv3SbeSVr73bZOrMqyXiOAu6rxNGe+jaCIpSae7VAkS31q1vjcdsr
         3JaFEkoqB3qoGCKBbvo3CdQXjt4OjoPrKpo6XetLr1DtVO8OkWt7y5jXTp6RDnNDmd1k
         9u4F99XO/JO1owlYzzdgRcwpBzD3APsnXZIHHWu/PV/RXunlorP5x9t1mIADNs28yy7b
         PG1flPiPenqAG3SJ4wojn4rcfIieReRZDm6syKdP4u7QdROPponiqIkn3i+lYO9axpx4
         SfjA==
X-Gm-Message-State: AOAM531ingrHQlGojc3KmLN2BYKrQ69Xtm/ZjcqIyoRHwI+UURjPhTw+
        43IPzs0fE5b2md1BnrEZAz/8ACeDVO5HyyEj/F8=
X-Google-Smtp-Source: ABdhPJzySNZbvdXG1XQk2GJbYSkNxunj9YP91kwdiAwzbrPIKVr7cQT7nIyoo9yfZo8AGSF/vP9SLFIMzh+4FWWFlos=
X-Received: by 2002:a1f:a40c:0:b0:357:729c:d7a with SMTP id
 n12-20020a1fa40c000000b00357729c0d7amr17622234vke.32.1654010312872; Tue, 31
 May 2022 08:18:32 -0700 (PDT)
MIME-Version: 1.0
References: <20220515202032.3046-1-stefan.wahren@i2se.com> <20220515202032.3046-9-stefan.wahren@i2se.com>
In-Reply-To: <20220515202032.3046-9-stefan.wahren@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Tue, 31 May 2022 16:18:21 +0100
Message-ID: <CALeDE9O-c_q94jRNc-vNrC0fGOLcV4x95i-+upfgpWUbVzSPtQ@mail.gmail.com>
Subject: Re: [PATCH 08/11] soc: bcm: bcm2835-power: Refactor ASB control
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, May 15, 2022 at 9:21 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> The functions to control the async AXI bridges are almost identical.
> So define a general function to handle it and keep the original ones as
> wrapper. This should make this driver easier to extend.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
Reviewed-by: Peter Robinson <pbrobinson@gmail.com>
> ---
>  drivers/soc/bcm/bcm2835-power.c | 31 +++++++++++++------------------
>  1 file changed, 13 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
> index 1e0041ec8132..77dc9e62b207 100644
> --- a/drivers/soc/bcm/bcm2835-power.c
> +++ b/drivers/soc/bcm/bcm2835-power.c
> @@ -148,7 +148,7 @@ struct bcm2835_power {
>         struct reset_controller_dev reset;
>  };
>
> -static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
> +static int bcm2835_asb_control(struct bcm2835_power *power, u32 reg, bool enable)
>  {
>         u64 start;
>
> @@ -158,7 +158,12 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
>         start = ktime_get_ns();
>
>         /* Enable the module's async AXI bridges. */
> -       ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
> +       if (enable) {
> +               ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
> +       } else {
> +               ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
> +       }
> +
>         while (ASB_READ(reg) & ASB_ACK) {
>                 cpu_relax();
>                 if (ktime_get_ns() - start >= 1000)
> @@ -168,24 +173,14 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
>         return 0;
>  }
>
> -static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
> +static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
>  {
> -       u64 start;
> -
> -       if (!reg)
> -               return 0;
> -
> -       start = ktime_get_ns();
> -
> -       /* Enable the module's async AXI bridges. */
> -       ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
> -       while (!(ASB_READ(reg) & ASB_ACK)) {
> -               cpu_relax();
> -               if (ktime_get_ns() - start >= 1000)
> -                       return -ETIMEDOUT;
> -       }
> +       return bcm2835_asb_control(power, reg, true);
> +}
>
> -       return 0;
> +static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
> +{
> +       return bcm2835_asb_control(power, reg, false);
>  }
>
>  static int bcm2835_power_power_off(struct bcm2835_power_domain *pd, u32 pm_reg)
> --
> 2.25.1
>
