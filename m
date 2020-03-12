Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CFD961830DC
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2020 14:09:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727268AbgCLNJA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Mar 2020 09:09:00 -0400
Received: from mail-vs1-f68.google.com ([209.85.217.68]:33646 "EHLO
        mail-vs1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727303AbgCLNI7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Mar 2020 09:08:59 -0400
Received: by mail-vs1-f68.google.com with SMTP id n27so3639921vsa.0
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2020 06:08:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=c/71/1S9FFPBZLngXcn7eOGZxEYwsgQn+LiJXaTEkt8=;
        b=piJo3Qvo8x1s8VTBvAp8jS5t4o5VQEuBs+lWQCHYrxpJbtweH35oefXEg9GnzRQtdz
         61TRYLXGKrksVOp7wxdDFIZl5QZ824OocSJHbPk7P8hZ70jpr88EaUGavwPNoL4Dn36K
         Nl5oXBejzLR1jLeDJKzYb6ixDcAWzPP7oWG8OeFjKk4/PM28R2Me2D0Tsq7x8rhewXrt
         r9U/8MqANn4Ec6qJ2Rhiv85PM01uXdt4/JzUZZopZGKv0JxfViBO1WHel4O7GIJWC1qc
         CC+Rw5K2v3jnnd/eFLnzoQo/ZNl/T0nWcHZQA9pE0ttsgYASG3J1iRFvKPj7l5rZ/lPs
         Rsiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=c/71/1S9FFPBZLngXcn7eOGZxEYwsgQn+LiJXaTEkt8=;
        b=DVusIGee2IO9oI5Ckuw3wluWA8r6Hu5o5mMVeknwPnBWxM/L1rfZXva4htN3amBo2z
         SW71YJjhWcqR+7L6crDW/omT1b4a6bQ9OMWcER0+1WVc/iTEAVvdCWklsDhDJcIBBi5x
         1OI+M+cIhRs8cefy2+U77CgAPVT3u2zxYudp9fP1DNISrFfBnJgogIbBtfGWMX+3DT4f
         J/bsp8C+BYX9vWU/l2Rz0GPg8Y/39O3PMOMw0OoOU6iVbgCMm9RX27QWofn2YEcFYuEo
         WsgfhC0Uen4cDgp50u3ta+UTCrHfIdgtbgKU5kpHRUezUkYIa9p7dcVkMGKD+3tzpTtP
         pR4Q==
X-Gm-Message-State: ANhLgQ3ywx7yREBPuA+8JhimykkOHe05d8o6p+QGrOocSFCIMoyMj88y
        I7DDKYAqXSgb4OeOrH7GWwFv/k7R9PrV3RoD488LrA==
X-Google-Smtp-Source: ADFU+vvkBY6+7KljoIBo06yuh++7mQGBlfwWaxlmBrxgvs2H6ahSYqDiyk/zugbPV+nCMOkSfEf3tQK6yQglm6UvXwc=
X-Received: by 2002:a05:6102:2051:: with SMTP id q17mr5487529vsr.165.1584018537836;
 Thu, 12 Mar 2020 06:08:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200307160556.16226-1-jbx6244@gmail.com>
In-Reply-To: <20200307160556.16226-1-jbx6244@gmail.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 12 Mar 2020 14:08:21 +0100
Message-ID: <CAPDyKFq22RTPQ2FD+yMYTstyEhqU=6piiiDkEFs4CB5f6uRG4Q@mail.gmail.com>
Subject: Re: [PATCH v1] dt-bindings: mmc: synopsys-dw-mshc: fix
 clock-freq-min-max in example
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 7 Mar 2020 at 17:06, Johan Jonker <jbx6244@gmail.com> wrote:
>
> A test with the command below does not detect all errors
> in combination with 'additionalProperties: false' and
> allOf:
>   - $ref: "synopsys-dw-mshc-common.yaml#"
> allOf:
>   - $ref: "mmc-controller.yaml#"
>
> 'additionalProperties' applies to all properties that are not
> accounted-for by 'properties' or 'patternProperties' in
> the immediate schema.
>
> First when we combine synopsys-dw-mshc.yaml,
> synopsys-dw-mshc-common.yaml and mmc-controller.yaml it gives
> this error:
>
> Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.example.dt.yaml:
> mmc@12200000: 'clock-freq-min-max' does not match any of the regexes:
> '^.*@[0-9]+$', '^clk-phase-(legacy|sd-hs|mmc-(hs|hs[24]00|ddr52)|
> uhs-(sdr(12|25|50|104)|ddr50))$', 'pinctrl-[0-9]+'
>
> 'clock-freq-min-max' is deprecated, so replace it by 'max-frequency'.
>
> make ARCH=arm dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Applied for next, thanks!

Kind regards
Uffe


> ---
>  Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> index 05f9f36dc..dd2c1b147 100644
> --- a/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> +++ b/Documentation/devicetree/bindings/mmc/synopsys-dw-mshc.yaml
> @@ -62,7 +62,7 @@ examples:
>        cap-mmc-highspeed;
>        cap-sd-highspeed;
>        card-detect-delay = <200>;
> -      clock-freq-min-max = <400000 200000000>;
> +      max-frequency = <200000000>;
>        clock-frequency = <400000000>;
>        data-addr = <0x200>;
>        fifo-depth = <0x80>;
> --
> 2.11.0
>
