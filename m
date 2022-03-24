Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1BF64E6323
	for <lists+devicetree@lfdr.de>; Thu, 24 Mar 2022 13:21:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350011AbiCXMVp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Mar 2022 08:21:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32808 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346471AbiCXMVo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Mar 2022 08:21:44 -0400
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com [IPv6:2607:f8b0:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB7B5F4DE
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 05:20:11 -0700 (PDT)
Received: by mail-il1-x12e.google.com with SMTP id i1so3058322ila.0
        for <devicetree@vger.kernel.org>; Thu, 24 Mar 2022 05:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=icIOqRZ9bKWiRf4O3Fvj/VAX8Jm8HdX0IDdq+nzuY8o=;
        b=i+Rg6J4nH7/NVBAVu0p4W67MTR/3YB6a74kP7+riUzXosJm4QibJSK9u8C8TKchmJy
         gorf9GIrt1RwzNyePaiJDK5ngSIFmWDL5hwrlu/sXhwasQ+Ul90ph5Lsa8c7ki59puYl
         svnDr9ecZ3ra0Hj5PoyS157YaN5528DreFx2dowXF8lv32JtutvvjmxAikNK7pOALGSC
         PtWx18rkbVpUrrTaGG5SoO4QTcnDRcw4JqqK50gVdLd6ZZ0iG6B2lOoyusrWHBjtcXxF
         CjFtRXu8HnB9ifswM1Han30XS+68ezcfICSI51jf5eN8O0ktf2ouWMSKD7J7+aRo10UU
         Lj4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=icIOqRZ9bKWiRf4O3Fvj/VAX8Jm8HdX0IDdq+nzuY8o=;
        b=g9M/sGCAOmOhROZ4ow8paGbDjE/46OWIc9LlI1m69t3PAnragqUBDEPBkL6d6d88X0
         Bg2SnflDGxUvIWdYltW0utWW9p6fSffO3SdJfD0MXy7DMq80a2U6aj8E5/Baf99pPBxc
         tTQF9878VYjcJiQukAfPIvgilIt7diVq4mFRYtzCqWfHsy4Nxdei0gc57wYgzFtJpfql
         s4N8Fgl1Ht7dZUpSu1ryYrLBr1Xi+HBf1z3tCpecdZlz5NDT01KnLk0YaHCaQgS6Vpk4
         GTKv4dXnKc0jIkeVuoBn+u9rjmSEJvmCB/tY2M3U4QKwQy77ULKNd9/W0/PAR05jpwyV
         DJJQ==
X-Gm-Message-State: AOAM530GuK69coFnQE9NWrnNn+NA+C9vWeoEZZOcGP646mFmI429z/oO
        IxBvaUZI6YatwgM773Zcwn3RA7SuYF2VfBoF5en3Rw==
X-Google-Smtp-Source: ABdhPJwuOL8QOaMy/XGlFFZGWo2sV44ld3xTySsm/sr+vDmfZu4DYlJaYI4TsfdU6SGThyioHKSBTzGlnV+R8k5tfbU=
X-Received: by 2002:a92:c24f:0:b0:2c8:639c:2181 with SMTP id
 k15-20020a92c24f000000b002c8639c2181mr2591736ilo.40.1648124411176; Thu, 24
 Mar 2022 05:20:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210928170919.691845-1-robert.marko@sartura.hr>
In-Reply-To: <20210928170919.691845-1-robert.marko@sartura.hr>
From:   Robert Marko <robert.marko@sartura.hr>
Date:   Thu, 24 Mar 2022 13:20:00 +0100
Message-ID: <CA+HBbNEDCZgBPs8tVYzcvR3SV1OONSemFjGV75tyiQwLMaMeiw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] arm64: dts: marvell: espressobin-ultra: fix
 SPI-NOR config
To:     Andrew Lunn <andrew@lunn.ch>, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, Rob Herring <robh+dt@kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 28, 2021 at 7:09 PM Robert Marko <robert.marko@sartura.hr> wrote:
>
> SPI config for the SPI-NOR is incorrect and completely breaking
> reading/writing to the onboard SPI-NOR.
>
> SPI-NOR is connected in the single(x1) IO mode and not in the quad
> (x4) mode.
> Also, there is no need to override the max frequency from the DTSI
> as the mx25u3235f that is used supports 104Mhz.
>
> Fixes: 3404fe15a60f ("arm64: dts: marvell: add DT for ESPRESSObin-Ultra")
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>
> ---
> Changes in v3:
> * Add Fixes tag
> ---
>  arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> index c5eb3604dd5b..610ff6f385c7 100644
> --- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> +++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
> @@ -71,10 +71,6 @@ &sdhci1 {
>
>  &spi0 {
>         flash@0 {
> -               spi-max-frequency = <108000000>;
> -               spi-rx-bus-width = <4>;
> -               spi-tx-bus-width = <4>;
> -
>                 partitions {
>                         compatible = "fixed-partitions";
>                         #address-cells = <1>;
> --
> 2.31.1
>

Hi,

It would be great to get a review of the series or at least of this patch,
otherwise, the SPI-NOR is unusable.

Regards,
Robert


-- 
Robert Marko
Staff Embedded Linux Engineer
Sartura Ltd.
Lendavska ulica 16a
10000 Zagreb, Croatia
Email: robert.marko@sartura.hr
Web: www.sartura.hr
