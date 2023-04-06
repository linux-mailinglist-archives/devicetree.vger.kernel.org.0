Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 08E056D9D87
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 18:27:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239093AbjDFQ1Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 12:27:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42998 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239144AbjDFQ1X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 12:27:23 -0400
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E3E7AD3C
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 09:27:22 -0700 (PDT)
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-17786581fe1so42891941fac.10
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 09:27:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680798442; x=1683390442;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6lHF6wT2R1xBj83krcubHMI3vo+QUUkgHmi0J4qN/9Q=;
        b=2BEuXa+kc80M2zSwY2YCATX6xkrj6NHzpLsY3ismS5iq3A2rfOWvj3lDFFTS9mBok0
         7fMP0tg3edox20XDrLkI8FDQCDNgblfkZ8lla34qMp7dd6GK4+yUX4XnH7/F9/0+xf1i
         dSnNl82PTDoAR5w8Rb4kVVbaXmJ37h4ECwjL2QwmdTjfU8BYS78AxZvhiRPFuPcOiX+/
         U4fCuRX18SGKNdQUwtYwJ9t34+fRb1QtFDjVy3aLVQWvXUWGMzI8zn6hiFR4Bdm3obsY
         q02rFxaQrSWMHnyJqYsgyvLGI1zpfHAtfiEF45k3qoHlIANoAnzRJtTwVa2cJpQa1IbM
         gA/g==
X-Gm-Message-State: AAQBX9fmu5SyFibMTbThs0BVzMt+LZJ3BSGjfvyw7AqefhjpBEYGlimr
        M0tJB+sXd7DoBPZPZtK7rA==
X-Google-Smtp-Source: AKy350Y2gpJwNABtUd8iz0/CtwUpjclbduPBTsTXu612gHBEV/4x+PJKHykUAnTUyhQzlTK2oAhGeQ==
X-Received: by 2002:a05:6870:339e:b0:180:94ca:f44e with SMTP id w30-20020a056870339e00b0018094caf44emr5968519oae.25.1680798442083;
        Thu, 06 Apr 2023 09:27:22 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id zg22-20020a0568716b1600b0017197629658sm787912oab.56.2023.04.06.09.27.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Apr 2023 09:27:21 -0700 (PDT)
Received: (nullmailer pid 3260793 invoked by uid 1000);
        Thu, 06 Apr 2023 16:27:20 -0000
Date:   Thu, 6 Apr 2023 11:27:20 -0500
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     neil.armstrong@linaro.org, marex@denx.de,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org,
        Jagan Teki <jagan@amarulasolutions.com>,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v3] dt-bindings: bridge: Convert Samsung MIPI DSIM bridge
 to yaml
Message-ID: <20230406162720.GA3170910-robh@kernel.org>
References: <20230404023057.510329-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230404023057.510329-1-festevam@gmail.com>
X-Spam-Status: No, score=0.8 required=5.0 tests=FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 03, 2023 at 11:30:57PM -0300, Fabio Estevam wrote:
> From: Jagan Teki <jagan@amarulasolutions.com>
> 
> Samsung MIPI DSIM bridge can be found on Exynos and NXP's 
> i.MX8M Mini/Nano/Plus SoCs.
> 
> Convert exynos_dsim.txt to yaml.
> 
> Used the example node from exynos5433.dtsi instead of the one used in
> the legacy exynos_dsim.txt.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v2:
> - Took previous Rob Herring's feedback into account:
> https://lore.kernel.org/all/20210712151322.GA1931925@robh.at.kernel.org/
> - Handled imx8mn and imx8mp.
> - Remove unnecessary #address-cells/size-cells.
> 
>  .../display/bridge/samsung,mipi-dsim.yaml     | 255 ++++++++++++++++++
>  .../bindings/display/exynos/exynos_dsim.txt   |  92 -------
>  MAINTAINERS                                   |   1 +
>  3 files changed, 256 insertions(+), 92 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/samsung,mipi-dsim.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/exynos/exynos_dsim.txt

Applied to drm-misc-next.

Rob
