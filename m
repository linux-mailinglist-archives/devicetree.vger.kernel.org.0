Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7934D4EF9F9
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 20:37:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349759AbiDASi5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 14:38:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232791AbiDASi4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 14:38:56 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C14041F2DF6
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 11:37:06 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 5DB7D61146
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 18:37:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEECFC34115
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 18:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1648838225;
        bh=fQM70pxHpxiX1FeJKE4worrxEtU7Eak9lRJ7i5UvQEk=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=Vc2fLdaRjIVRrV62aPlxQUOxv/QfCuSL7O3XCHJ/owgmgNz0Bwi0aGnw/QF0Z277n
         fMidykLFCCpSbfXhfl+VXVVRy+BPSfcLS76/A2E274QEJlkgp8OO+VGuJVVr4sA6Jw
         e5VUgJXUua4OJzWf56gvmqRjrKcSzF+p7lTJIPeddOZAjAoakra5m9XTPnxnKRCeJZ
         4uuCvg937L6/R9LAqxPjYdCn78syGDXzJyeMkDR4n4pleAyYekvPa3V20OssQfV3Pj
         JSZoghcZqKPe5+u5TcWY6Mzox+hK1WtNE6mJf86xsjV9+s5BnMuEykyMbNEnHYTRT/
         IgxqYa/F4iEVQ==
Received: by mail-io1-f44.google.com with SMTP id x4so4188669iop.7
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 11:37:05 -0700 (PDT)
X-Gm-Message-State: AOAM532yroEL5H4Zr0l+VFU2UEstw3+6GjzVeTJYIyj1GM/q5xTdTu5B
        +Pp2ARPMIK/irh9RWYjIeHFXN6hON/lLSFKPAQ==
X-Google-Smtp-Source: ABdhPJxLY1mp9VU1Pc31zhS33bAyC96dkuPiu09gGLjiGSGRSReQqCsf/EE95lVPAt07WlsMY+rJT+9aZ8WGPYcnkEo=
X-Received: by 2002:a02:1107:0:b0:321:78dc:890d with SMTP id
 7-20020a021107000000b0032178dc890dmr6613762jaf.236.1648838224826; Fri, 01 Apr
 2022 11:37:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220401163755.302548-1-marex@denx.de>
In-Reply-To: <20220401163755.302548-1-marex@denx.de>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 1 Apr 2022 13:36:53 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKVkc51sXWE6Sh5yHxLX0vJWgFpn8cmjjKSBx4dYzA8qA@mail.gmail.com>
Message-ID: <CAL_JsqKVkc51sXWE6Sh5yHxLX0vJWgFpn8cmjjKSBx4dYzA8qA@mail.gmail.com>
Subject: Re: [RFC][PATCH 1/3] dt-bindings: display: panel: mipi-dbi-spi: Make
 width-mm/height-mm mandatory
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        Robert Foss <robert.foss@linaro.org>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 1, 2022 at 11:38 AM Marek Vasut <marex@denx.de> wrote:
>
> Make the width-mm/height-mm panel properties mandatory
> to correctly report the panel dimensions to the OS.

Adding required properties is an ABI break.

>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Cc: Dmitry Osipenko <digetx@gmail.com>
> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Cc: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Robert Foss <robert.foss@linaro.org>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> To: dri-devel@lists.freedesktop.org
> ---
>  .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml   | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-d=
bi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-db=
i-spi.yaml
> index f29789994b18..c2df8d28aaf5 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.=
yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.=
yaml
> @@ -83,6 +83,8 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - width-mm
> +  - height-mm
>    - panel-timing
>
>  unevaluatedProperties: false
> --
> 2.35.1
>
