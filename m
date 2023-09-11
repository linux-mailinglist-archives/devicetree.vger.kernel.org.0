Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B7F279BA4C
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 02:11:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233284AbjIKUvH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:51:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241202AbjIKPEG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 11:04:06 -0400
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 113F11B9
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 08:04:01 -0700 (PDT)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EE1BBC433C8;
        Mon, 11 Sep 2023 15:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1694444640;
        bh=JmXWwFMZbFZL3pvqVbjiVSLfBMXSrVKf+g9d7bo2Y7g=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=Ujww1Y+1x5mjKbPYB5CjR34DFRhaG2zgD3E9B4VwliKCpdKih/imxqQ9lThu0NPNK
         TJwi8rAaFTgQPk4ZLYdiv7XkQjg9crnf0knAU0NHNgYkLsCZMpc/UNkruBw8iVasvm
         wlgU5NzQeXHG/+eC3br+h0AqzSiKjr/g1ikATNA1+CNH1A3LcOTjdMkZphkLFLvXYW
         BdsD2cO43zl0b5yQ44Rs5QA7Az2XBhnA2jsQ5OC5Oqy2JtEgvgHwjnpjCKT4cSOn7+
         tqqz9+XlivPn0JpKneg9EqKdw4Lsat4kQlJHlNb+XY+4L6nYnBAzhJc2B9zRSZ1/7p
         Q6UOS7b/Rfn1g==
Received: (nullmailer pid 1252905 invoked by uid 1000);
        Mon, 11 Sep 2023 15:03:58 -0000
Date:   Mon, 11 Sep 2023 10:03:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH v2 1/2] dt-bindings: imx8-jpeg: Add clocks entries
Message-ID: <20230911150358.GA1250781-robh@kernel.org>
References: <20230908141238.642398-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230908141238.642398-1-festevam@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 08, 2023 at 11:12:37AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The JPEG decoder/encoder present in iMX8QXP and iMX8QM SoCs need
> the PER and IPG clocks to be functional, so add the clock entries.
> 
> This also fixes the following schema warning: 
> 
> imx8qm-apalis-eval.dtb: jpegdec@58400000: 'assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks' do not match any of the regexes: 'pinctrl-[0-9]+'
> 	from schema $id: http://devicetree.org/schemas/media/nxp,imx8-jpeg.yaml#

See the prior patch and discussion[1].

Rob

[1] https://lore.kernel.org/all/20230724122101.2903318-3-alexander.stein@ew.tq-group.com/
