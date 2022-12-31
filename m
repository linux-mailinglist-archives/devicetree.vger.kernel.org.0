Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6CB5A65A313
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 08:19:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231151AbiLaHTx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 02:19:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229943AbiLaHTw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 02:19:52 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B025C7669
        for <devicetree@vger.kernel.org>; Fri, 30 Dec 2022 23:19:51 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 51402B80184
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 07:19:50 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66994C433EF;
        Sat, 31 Dec 2022 07:19:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672471189;
        bh=cs3q1kSo7wSbdRxsOXirkBoh0irqpR9qinOAxpR/Avg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=X6Kav1DWzYbe8ciYKIZM12t6POQAQPD+VIW7CN/b1X1Tb/X/uz5Sz4mCdAY0xqaEC
         Ur4kBahEtu2675i5rVOF+NC0VE5lPnvMa8B7uaFt1DZTvbbg+IVjhOsxes8stU3nGp
         HpHJ/gljLgoOMCoYSnacrNlOsQOni14yZOZaJMMnLq/wPiTc1v4pxp0PV8/xF+cGyt
         jWDI5DcuTSiClCHgIz7bOvbdpYSRB2yjOqv5DBxtcgQ00x0DirCapo1SJaoOEhAHvb
         pM1snWh2l6YfMogs+tC1IkVoiTQ+t2uSoSWBcO13O9uo1I0cJGrLm0KAXIjIArEJow
         Rn++njdaMjeZg==
Date:   Sat, 31 Dec 2022 15:19:42 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, tharvey@gateworks.com,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: imx6qdl-gw560x: Remove incorrect
 'uart-has-rtscts'
Message-ID: <20221231071941.GI6112@T480>
References: <20221121202259.2415821-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221121202259.2415821-1-festevam@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 05:22:59PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The following build warning is seen when running:
> 
> make dtbs_check DT_SCHEMA_FILES=fsl-imx-uart.yaml
> 
> arch/arm/boot/dts/imx6dl-gw560x.dtb: serial@2020000: rts-gpios: False schema does not allow [[20, 1, 0]]
> 	From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
> 
> The imx6qdl-gw560x board does not expose the UART RTS and CTS
> as native UART pins, so 'uart-has-rtscts' should not be used.
> 
> Using 'uart-has-rtscts' with 'rts-gpios' is an invalid combination
> detected by serial.yaml.
> 
> Fix the problem by removing the incorrect 'uart-has-rtscts' property.
> 
> Fixes: b8a559feffb2 ("ARM: dts: imx: add Gateworks Ventana GW5600 support")
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!
