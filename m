Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 072B8704BCD
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 13:07:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232598AbjEPLHm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 07:07:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232587AbjEPLHY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 07:07:24 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC0E57ED5
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 04:05:54 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id F1E8C62D31
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 11:04:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0357C433D2;
        Tue, 16 May 2023 11:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1684235082;
        bh=qlF2YnvuRTsoXVl0R8KA2/G/Oe6yD9FTJLXBqHH9TW4=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=T/RabFK5kc+mggPSFtnpUhZA++RQvZqSZkWd2p5k9gUtFmUPsJPfbsQnEM92WvIBX
         j2ktSyb5t3pM8/H5cx5jWpWBtFRj4aXp5bPZzjW+KcZ/7A3etAuJ/LnieMCaXURyXd
         xMPDErmEE3VzEp+M5ArJdlkP8YOvDhiLwaUn25rPDd9IZlXbEcgGouML2fbWAONy+w
         YGXw/iqMzODpzUpujeXxkne17YWv+Nnsc2hPcmBLNRSvljSr+zpMqyNYG1wegSYXX5
         J+3V/GB+rgFAtScCUjb9qW3VeGG4SE/kMpbHyhX1qT+HfAypocOtNrKS/uyk6QL1ET
         GvKIAwAH+DFDQ==
Message-ID: <27d5081b-a251-5512-a077-a9905b29d7f2@kernel.org>
Date:   Tue, 16 May 2023 13:04:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH] dt-bindings: add panel-mipi-dsi-bringup DT schema
To:     =?UTF-8?B?UGF1bG8gUGF2YcSNacSH?= <pavacic.p@gmail.com>,
        neil.armstrong@linaro.org, sam@ravnborg.org, conor+dt@kernel.org
Cc:     devicetree@vger.kernel.org
References: <CAO9szn3t-giVipb5oH_3mzQZbnXbDqqz0WEg8uAmo-1W2uKzFg@mail.gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <CAO9szn3t-giVipb5oH_3mzQZbnXbDqqz0WEg8uAmo-1W2uKzFg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/05/2023 12:27, Paulo Pavačić wrote:
> From 5a202ed7c7aa3433e348c5fed176defab1af1fae Mon Sep 17 00:00:00 2001
> From: =?UTF-8?q?Paulo=20Pava=C4=8Di=C4=87?= <paulo.pavacic@zenitel.com>
> Date: Tue, 16 May 2023 12:17:38 +0200
> Subject: [PATCH] dt-bindings: add panel-mipi-dsi-bringup DT schema
> MIME-Version: 1.0
> Content-Type: text/plain; charset=UTF-8
> Content-Transfer-Encoding: 8bit

Your patch/email header looks corrupted. Please use standard tools like
git format-patch or b4.

Also:

Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

Due to above, limited review. Please fix everything and send v2 for full
review.

Please use subject prefixes matching the subsystem. You can get them for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching.

A nit, subject: drop second/last, redundant "DT schema". The
"dt-bindings" prefix is already stating that these are bindings.

> 
> Add dt-bindings documentation for panel-mipi-dsi-bringup which currently
> supports fannal,C3004 panel. Also added fannal to vendor-prefixes.
> 
> Signed-off-by: Paulo Pavačić <pavacic.p@gmail.com>
> ---
>  .../display/panel/panel-mipi-dsi-bringup.yaml | 65 +++++++++++++++++++
>  .../devicetree/bindings/vendor-prefixes.yaml  |  2 +
>  2 files changed, 67 insertions(+)
>  create mode 100644
> Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-bringup.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-bringup.yaml
> b/Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-bringup.yaml
> new file mode 100644
> index 000000000000..a867f86fa984
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dsi-bringup.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/panel-mipi-dsi-bringup.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: MIPI DSI Bringup driver

Drop driver. Explain what is "bringup". We describe hardware, not driver.

> +
> +description: |
> +  This document defines device tree for the MIPI DSI Bringup driver. And all

Drop redundant pieces like "This document ..." and any references to driver.

> +  the required parameters to get your panel to work. Driver was made to help
> +  enabling MIPI DSI panels, to get those first pixels drawn on to the screen.
> +  Since already you have to patch the driver with initialization sequences all
> +  the settings such as DSI lanes, video mode, dsi formats are set in the
> +  driver directly. SInce adding new panel can be overwhelming and to make

Since?

> +  porting easier, you can search for word `INTERACTION` in the driver
> +  to check sections that you have to modify .

Everything should be rephrased to describe hardware, not driver.

> +
> +
> +maintainers:
> +  - |
> +      Paulo Pavačić
> +      <paulo.pavacic@zenitel.com> <pavacic.p@gmail.com> <@ppavacic:matrix.org>

That's not how we code it... Look at the files.

> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: fannal,C3004

OK, I am now confused. Bindings file name must match compatible. Why do
you describe everything as some MIPI bringup driver and then add
compatible for specific device?

Also, only lowercase.


> +
> +  reg: true
> +  reset-gpios: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - reset-gpios
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    //example on IMX8MM where GPIO pin 9 is used as a reset pin

Drop

> +    &mipi_dsi {

This should be regular node.

> +        status = "okay";

Drop

> +        panel@0 {
> +            status = "okay";

Drop

> +            reg = <0>;
> +            compatible = "fannal,C3004";

Compatible is first, reg is second.

> +            pinctrl-0 = <&pinctrl_mipi_dsi_rst>;
> +            pinctrl-names = "default";
> +            reset-gpios = <&gpio1 9 GPIO_ACTIVE_LOW>;
> +        };
> +    };
> +    &iomuxc {
> +         pinctrl_mipi_dsi_rst: pinctrl_mipi_dsi_rst {

Drop entire node.

This is so far away from any acceptable DTS... please look at existing
bindings.

Best regards,
Krzysztof

