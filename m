Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 307EB65B2A5
	for <lists+devicetree@lfdr.de>; Mon,  2 Jan 2023 14:27:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232579AbjABN1l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Jan 2023 08:27:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229583AbjABN1k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Jan 2023 08:27:40 -0500
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 969E22720
        for <devicetree@vger.kernel.org>; Mon,  2 Jan 2023 05:27:38 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id u18so38500466eda.9
        for <devicetree@vger.kernel.org>; Mon, 02 Jan 2023 05:27:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=nhnWv+dk4FvwQWfDu6Dn5OXmIuaYtZRBKsqKseo/QJQ=;
        b=hRZSSiPj2IoNsDeQxMn9v2eAoe4mhZWgBqbCr8EwM2KMCwuzROByFgr0trGhdg+IqP
         2KQhr8e9uNlJOToJlBqxNIlnJkTHIOjtWIBlrSR1tKRQCSNPPZ+5oXwK+ggyzLDQvRSG
         XY3EPnQHMpRXuD5U1Dqr6+E0V8htTFoqk+2ClqF86lGainDSKZnPD6Z7hMddXKQr6Ei3
         FZVcm39SK/BIe+eUZbuwL8hjRKrPuq5KIo6e/cgcRRzZ7IlXz97Mq8L5NaccWregctcB
         MGbkfR5UcM4cv+AEIBs/6Qs310OYQHSrunU5iu1Nz5YAseuk0AEzAo7faJhlg8DYkyJ0
         KHbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nhnWv+dk4FvwQWfDu6Dn5OXmIuaYtZRBKsqKseo/QJQ=;
        b=5X9fFi4pv4bsRW7OMVP329igCxSVkTdj3F5oEF4IoOdLQfYVkrdBRyYkm8qLbmr6LW
         0HRnJSVwopdjiGgfUPEX/rd1zLp33zoC7rwskRWwWgkEJ4N1S8Dz+8F2qJnR1pRi/yNH
         aIKDzn2X/whOd4Z/yzCx/sxN8HpdDs2PJn+rXYODp1IcbljdMICfkOxGo+yj9MnJHfw3
         5Q/DpUQAwlAyAUWHotazSvPO+x5Z3c+qPmIqMsC7Acu0vfIJvO1ddTylES+Bzy4U7c8b
         B/dTeUXL0LKvToijzBspLBMdWuUHwA9vnVb16STrSK7jGADuPRivo3BYTS2VBowinkaM
         iDfg==
X-Gm-Message-State: AFqh2kraI1+EeIas/5tIsYVqUA4ljyNlA5s9k06rffImU1vit11El6CJ
        ZH17rXxC2nY3Ul5TwJK76YGFJMkICmOy278T8vM=
X-Google-Smtp-Source: AMrXdXvtQCww6HngH4qdls5nNXyiWv7LfO6ZAcq06IxTa1mk3Me+6RMCgHa3NMPe78ZaM44Ds0sKdQ==
X-Received: by 2002:aa7:d7c2:0:b0:472:cee9:bbd3 with SMTP id e2-20020aa7d7c2000000b00472cee9bbd3mr36901688eds.27.1672666057151;
        Mon, 02 Jan 2023 05:27:37 -0800 (PST)
Received: from melexis.com ([91.192.181.19])
        by smtp.gmail.com with ESMTPSA id ev26-20020a056402541a00b004815f3b32a6sm11971463edb.70.2023.01.02.05.27.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Jan 2023 05:27:36 -0800 (PST)
Date:   Mon, 2 Jan 2023 15:27:33 +0200
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     linux-media@vger.kernel.org
Cc:     Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        devicetree@vger.kernel.org,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Benjamin Mugnier <benjamin.mugnier@foss.st.com>
Subject: Re: [PATCH v4 0/8] media: i2c: mlx7502x ToF camera support
Message-ID: <Y7LbxRQ2mQnnRC6u@melexis.com>
References: <cover.1669978791.git.vkh@melexis.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1669978791.git.vkh@melexis.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi All,

This is a gentle reminder about the patch series for ToF camera.

Thanks.

On Fri, Dec 02, 2022 at 06:07:30PM +0200, Volodymyr Kharuk wrote:
> Hello,
> 
> This series adds support for the Melexis 75026 and 75027 Time of Flight
> camera sensors, with DT bindings in patch 7/8 and a driver in patch 8/8.
> In patches 1/8, 2/8 and 3/8, I've add ToF controls as separate
> ToF control class.
> 
> v4:
> - fix output mode
> - forbid array for menu and warn if validate_new return an error
> - add enums to custom control OUTPUT_MODE
> - update doc
> - minor fixes
> 
> v3:
> - move FMOD, TINT, PHASE_SEQ to common V4L2 as ToF common controls
> - FMOD and TINT became dynamic arrays
> - remove PHASE_NUM, use dynamic_array for PHASE_SEQ,
>   ctrl->new_elems pass number of phases
> - remove leden-gpios, will be used gpio explicitly in library for now
> - remade probe: use probe_new, no power on during probe
> - remove autodetect and wildcard
> - make all supplies to be required
> - remove trigger ioctl, will add in separate patch series
> - remove temperature ioctl, will add in separate patch series
> - add documentation about custom ioctl
> - style: 80 cols
> - minor fixes device tree
> 
> v2:
> - added external clock to the sensor
> - added all regulators required by the sensor
> - added posibility to choose sensor type in device tree
> - added prefixes to all custom types in device tree and driver as well
> - style fixes
> 
> Volodymyr Kharuk (8):
>   media: uapi: ctrls: Add Time of Flight class controls
>   media: v4l: ctrls: Fill V4L2_CID_TOF_CLASS controls
>   media: Documentation: v4l: Add TOF class controls
>   media: v4l: ctrls-api: Allow array update in __v4l2_ctrl_modify_range
>   media: v4l: ctrls: Add user control base for mlx7502x
>   media: uapi: Add mlx7502x header file
>   media: dt-bindings: Add mlx7502x camera sensor
>   media: i2c: Add driver for mlx7502x ToF sensor
> 
>  .../bindings/media/i2c/melexis,mlx7502x.yaml  |  126 ++
>  .../userspace-api/media/drivers/index.rst     |    1 +
>  .../userspace-api/media/drivers/mlx7502x.rst  |   28 +
>  .../userspace-api/media/v4l/common.rst        |    1 +
>  .../userspace-api/media/v4l/ext-ctrls-tof.rst |   56 +
>  MAINTAINERS                                   |   11 +
>  drivers/media/i2c/Kconfig                     |   13 +
>  drivers/media/i2c/Makefile                    |    1 +
>  drivers/media/i2c/mlx7502x.c                  | 1747 +++++++++++++++++
>  drivers/media/v4l2-core/v4l2-ctrls-api.c      |   25 +-
>  drivers/media/v4l2-core/v4l2-ctrls-defs.c     |   20 +
>  include/uapi/linux/mlx7502x.h                 |   28 +
>  include/uapi/linux/v4l2-controls.h            |   14 +
>  13 files changed, 2059 insertions(+), 12 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/melexis,mlx7502x.yaml
>  create mode 100644 Documentation/userspace-api/media/drivers/mlx7502x.rst
>  create mode 100644 Documentation/userspace-api/media/v4l/ext-ctrls-tof.rst
>  create mode 100644 drivers/media/i2c/mlx7502x.c
>  create mode 100644 include/uapi/linux/mlx7502x.h
> 
> 
> base-commit: a7bab6f8b73fe15a6181673149734a2756845dae
> -- 
> BR,
> Volodymyr Kharuk
> 

-- 
--
Volodymyr Kharuk

