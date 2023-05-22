Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 02A0270C0E3
	for <lists+devicetree@lfdr.de>; Mon, 22 May 2023 16:20:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233697AbjEVOUA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 May 2023 10:20:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233783AbjEVOT5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 May 2023 10:19:57 -0400
Received: from phobos.denx.de (phobos.denx.de [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F954CA
        for <devicetree@vger.kernel.org>; Mon, 22 May 2023 07:19:55 -0700 (PDT)
Received: from mail.denx.de (unknown [IPv6:2a01:238:438b:c500:173d:9f52:ddab:ee01])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: festevam@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id 9B19682790;
        Mon, 22 May 2023 16:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1684765193;
        bh=BiA6ngLjNQMzI0IypKpbluUauwYsIez277R5ouw0YJI=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=WV4ZlEABFd5cGEHZjEGdg+Ygd/8xtKIW4R8uxAt1s46MbZPWb0fLn7X4YOpxo1qRz
         FtDhIQEFkFXEfX9uELCeuyfIHc42u7fyV3/TEXESjNhep4chy+D2laOJw8hA3p5anm
         Ey67A9NgCzfmt4ixDcDEg2smBH/jRCwkJM6HGaF22zHSCM2n/Mt+ixrdQYC399wcrt
         heKNw0dpGRReztCLuwgKugs8/S4+UkkVe/a/8edJYxHrBzBqWXomC3QvAeBuJ23+sQ
         vcKIe4laM7oFI0IwdJhhavMZ9Ym3h0JI3zMC6s+XCLdj8UHzrYJnlByDNXgcUHAnzR
         pmkVuNTtFO9Yg==
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date:   Mon, 22 May 2023 11:19:53 -0300
From:   Fabio Estevam <festevam@denx.de>
To:     Marek Vasut <marex@denx.de>
Cc:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        conor+dt@kernel.org
Subject: Re: [PATCH v5 3/4] ARM: dts: imx6sx: Add LDB support
In-Reply-To: <a5edfa01-3471-2cb2-c827-064f4386b076@denx.de>
References: <20230522125129.526604-1-festevam@gmail.com>
 <20230522125129.526604-3-festevam@gmail.com>
 <a5edfa01-3471-2cb2-c827-064f4386b076@denx.de>
Message-ID: <b0a6529587fe0f723126e3d6f74a3379@denx.de>
X-Sender: festevam@denx.de
User-Agent: Roundcube Webmail/1.3.6
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/05/2023 10:20, Marek Vasut wrote:

>> diff --git a/arch/arm/boot/dts/imx6sx.dtsi 
>> b/arch/arm/boot/dts/imx6sx.dtsi
>> index 4233943a1cca..442106565025 100644
>> --- a/arch/arm/boot/dts/imx6sx.dtsi
>> +++ b/arch/arm/boot/dts/imx6sx.dtsi
>> @@ -844,7 +844,38 @@ iomuxc: pinctrl@20e0000 {
>>   			gpr: iomuxc-gpr@20e4000 {
>>   				compatible = "fsl,imx6sx-iomuxc-gpr",
>>   					     "fsl,imx6q-iomuxc-gpr", "syscon";
> 
> Maybe this "fsl,imx6q-iomuxc-gpr" should be dropped here.

Cannot remove it as it breaks PCI:

imx6q-pcie 8ffc000.pcie: unable to find iomuxc registers
