Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 53A794E4848
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 22:30:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235567AbiCVVba (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 17:31:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233342AbiCVVb3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 17:31:29 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B0A758395
        for <devicetree@vger.kernel.org>; Tue, 22 Mar 2022 14:30:00 -0700 (PDT)
Received: from [127.0.0.1] (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 9BBAC83B3B;
        Tue, 22 Mar 2022 22:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1647984598;
        bh=UYycdJVYXZ+3TfiHG7Yw3v4KtwVGkyT5W7RqJn0lWuk=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=mu7eh1CwoiWow2/EUcRCc/2EsO3Chg5SG4fhBNlSOjxSVyOF7upBr2WMCos/XcoSc
         44SC/Q9celfGsVFoHRwP+cpXel+awhTKqjZpU7klP9urIA1REqTHE17dLmFKF8+qCM
         EI4QP57eBDfU8DYtTD+Skzj72gZtZUiIm6TVnLmoREVB6qL/kRVT2m9GvsKDT25ML0
         w5q4mpLEWyPweRvLdbh0PO5ZBJDEAgfPRs1u/NGwIDHgcsjbeBs9Z5QIy/ROmB0i6+
         f3gD4qqj8oJHFWukexadC/+4DmzAGwqk1n96v7IL/dKXfhsqsDiqn4ITXUjC0aUh1h
         1BFKSQiq5HgGA==
Message-ID: <3f7bdca8-0da7-fe2d-7bcb-9768b12bb759@denx.de>
Date:   Tue, 22 Mar 2022 22:29:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/4] dt-bindings: soc: Add i.MX8MP media block control
 DT bindings
Content-Language: en-US
To:     Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
References: <20220322190324.12589-1-laurent.pinchart@ideasonboard.com>
 <20220322190324.12589-2-laurent.pinchart@ideasonboard.com>
From:   Marek Vasut <marex@denx.de>
In-Reply-To: <20220322190324.12589-2-laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Virus-Scanned: clamav-milter 0.103.5 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/22/22 20:03, Laurent Pinchart wrote:
> From: Paul Elder <paul.elder@ideasonboard.com>
> 
> The i.MX8MP Media Block Control (MEDIA BLK_CTRL) is a top-level
> peripheral providing access to the NoC and ensuring proper power
> sequencing of the peripherals within the MEDIAMIX domain. Add DT
> bindings for it.
> 
> There is already a driver for block controls of other SoCs in the i.MX8M
> family, so these bindings will expand upon that.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Marek Vasut <marex@denx.de>

[...]

> +        power-domain-names = "bus", "mipi-dsi1", "mipi-csi1", "lcdif1", "isi",
> +                             "mipi-csi2", "lcdif2", "isp2", "isp1", "dwe",
> +                             "mipi-dsi2";

Nit, I cannot say I'm a big fan of calling the power domain "mipi-csi1" 
and "mipi-csi2", they are both MIPI CSI2, except there are two of them 
CSI2 (#1 and #2).

Maybe mipi-csi2-1 and mipi-csi2-2 would be better ? DTTO for the LCDIF, 
where we have lcdifv3 and then mx8mp lcdifv3 and eventually we will have 
power domain for lcdif #3 instance in this SoC in hdmimix, so maybe some 
lcdif-1/lcdif-2 would be a better name ?

[...]
