Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E23C679D41
	for <lists+devicetree@lfdr.de>; Tue, 24 Jan 2023 16:19:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234551AbjAXPTe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Jan 2023 10:19:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232550AbjAXPTd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Jan 2023 10:19:33 -0500
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com [IPv6:2607:f8b0:4864:20::b2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 452AF23666
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 07:19:32 -0800 (PST)
Received: by mail-yb1-xb2f.google.com with SMTP id h5so2341322ybj.8
        for <devicetree@vger.kernel.org>; Tue, 24 Jan 2023 07:19:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p20GSW2jv7QjfJrc2xBarU3MwHwoCp9CBxAali0boKc=;
        b=qtyEL7vudKYXg/4eAex1luL2Fb/MDVkBLZ+2mvF7VrS+ONPu8SDKGFKPTXRDPi8mBh
         CFD7LX5A82koeIn98Jzhrm4uaDvbYvwuZuBoJ5+0RtOA8/bGjUETBL7V3AKiCiA5j2Ip
         /rTVh/punXlsS3yMm0yvqqR586iHPhZ3HQe2hY5A5CjE7p/5ZhoHoC90emopMZg/5Isv
         T1fE0nXOdr1IQwb9VTuMT9eKJqnWoklIZpc0wzvEf44aYJp6skGeGFM0r61NQJNJmN8n
         5PkE/U/8ErFmxn72mN6zgz4XYXE0rwokAjeZ1OmFB0zTHyAdFtx9GO4gGP1K/LVSZHlu
         PWpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p20GSW2jv7QjfJrc2xBarU3MwHwoCp9CBxAali0boKc=;
        b=v73T70zS+511DqWvt9p55jubxGbjdmhRrBNBiaXpX5TjswXMIu66H6tMF4H5nyWoXi
         qkXL7WiwvNhP/lc5PeHqu2RAiiBClKoq2CBpzHX8BUWbYowYDRnGhzcA08G0meL2kQlK
         j7kLrPNJ/vamFUVm8qxaLvDQkhPcT2fN+XrZcvCEdSZuWwmlh4n6qRsb3fUciXcyK7bO
         GXITAKi94n10tAsoubwnLBtml7WLDTf9qyXWK9gF74pE0sqvjXY2QbWk+GP5virVwuoS
         5zcodsr0w2dJ9h/U5qjdeakGrzRihCUvuhmcepbd7OE0xkZSZI706TGpaoUL0qupNUu2
         B1yw==
X-Gm-Message-State: AFqh2koosBnFFomGnudVKxk7PbzEsQRwAJem5E5iIa2qzgV/83+I1K0i
        iX+BNXWHDcPBKh2Q0kCR2vdXtqzU+2qP03Htj9a4fA==
X-Google-Smtp-Source: AMrXdXtLiwD/3p/HJ0gPwuQWsAB+HkVnl3RsDOmFxc7rSZyKc6F+kDS+V+RVLm0y5RI8GOFPxyDIdxJVEt6FEk0wR+4=
X-Received: by 2002:a25:1984:0:b0:7fe:e7f5:e228 with SMTP id
 126-20020a251984000000b007fee7f5e228mr1432922ybz.582.1674573571459; Tue, 24
 Jan 2023 07:19:31 -0800 (PST)
MIME-Version: 1.0
References: <20230124150546.12876-1-naush@raspberrypi.com>
In-Reply-To: <20230124150546.12876-1-naush@raspberrypi.com>
From:   Naushir Patuck <naush@raspberrypi.com>
Date:   Tue, 24 Jan 2023 15:19:15 +0000
Message-ID: <CAEmqJPpbhoQh6aGGsoaRmhHXYT35T14GX3q-adyL1akKLDWSPw@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] media: i2c: IMX296 camera sensor support
To:     linux-media@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Apologies, the subject should read IMX708 and not IMX296!

Thanks,
Naush


On Tue, 24 Jan 2023 at 15:08, Naushir Patuck <naush@raspberrypi.com> wrote:
>
> Hi,
>
> This series adds support for the Sony IMX708 camera sensor driver, with DT
> bindings in patch 1/2 and the device driver in patch 2/2.
>
> The Sony IMX708 is a 12MP MIPI CSI-2 sensor with a resolution of 4608x2592. It
> is a "quad-Bayer" sensor, with on-chip re-mosaicing to output standard Bayer
> data in 10-bits.
>
> The sensor is capable of capturing HDR images from the quad-Bayer arrangement
> and tone-mapping the image to 10-bits Bayer format. This functionality is
> switched on/off by the wide dynamic range control:
>
> v4l2-ctl --set-ctrl wide_dynamic_range=[0|1] -d /dev/v4l-subdev0
>
> Thanks,
> Naush
>
> Dave Stevenson (1):
>   dtbindings: media: i2c: Add IMX708 CMOS sensor binding
>
> Nick Hollinghurst (1):
>   media/i2c: Add a driver for the Sony IMX708 image sensor
>
>  .../devicetree/bindings/media/i2c/imx708.yaml |  119 +
>  MAINTAINERS                                   |    7 +
>  drivers/media/i2c/Kconfig                     |   11 +
>  drivers/media/i2c/Makefile                    |    1 +
>  drivers/media/i2c/imx708.c                    | 1923 +++++++++++++++++
>  5 files changed, 2061 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/imx708.yaml
>  create mode 100644 drivers/media/i2c/imx708.c
>
> --
> 2.25.1
>
