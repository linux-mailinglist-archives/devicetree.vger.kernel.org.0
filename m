Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 44CC23E2614
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 10:28:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244378AbhHFI2d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Aug 2021 04:28:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244544AbhHFI2b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 6 Aug 2021 04:28:31 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D5C2C00F7B3
        for <devicetree@vger.kernel.org>; Fri,  6 Aug 2021 01:23:31 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id qk33so13860684ejc.12
        for <devicetree@vger.kernel.org>; Fri, 06 Aug 2021 01:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=bPpVwfXKyJ8nNQmnXadv/Kw1IpulMAFBz7mWmxslOEo=;
        b=nkWTak2PFWnIb+oJeDC3piekjd+tI+8dYlftQcWBHVTgDrdBUmfqKO+HOpwnuC/Zkv
         GWacANRJ160tspWCMJT26Gr0UKkltta2Eqt8y0NrIDGDTA9GuzJ+uolo744Wg3h886OY
         x2OwhMPpBs8Mi7x7OFCvXoc76jRuB6+MnUz/pvNUhTFQjJtNM3L1MH1CwD57rtWpJPSt
         JKNhh4TClC50OrvGZa1TfIyw+BAHw7HPk6bkcTrCYl3j3sb5sOHgRZVe9ttayTf5PQ0M
         oHRto1zJZylkBXv0eRCVwAz+yTmyZzf1IuKTpZOVhCv2RC8L+tr96Jj/2BI1mFoboWna
         i9QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=bPpVwfXKyJ8nNQmnXadv/Kw1IpulMAFBz7mWmxslOEo=;
        b=H4LDKziiDvn49uJlw0dpBG9xhzoYhalHiQKqxEIWya9/cLKR3nNeZjJtwBOqBT17aZ
         P6WsGB2fGLUXXL9WtKKJZrhw7KS790vinPz076xFbd67pX2KJ0c1i5e834ODwYAKoi0x
         /kKydHoW1COkBzv04WdpX6fBEevmr3z3t1Mk1/wljRPLXM4HEtaMIJwndg4mvPwYooZP
         1b2dPn2aa518vw9z0Tz9ebAzJghotwYCmp0KvhrVukbWudnU27QYQAD6M4LA6ysDNfVu
         zbsHeTMRvkmNQV9cnwCx/94xgl560RwmPlAXcQe8NylrJ0rjt4abIbDDlceQ5NuowjSn
         Ve3w==
X-Gm-Message-State: AOAM530q6+IS3IRXvtv9dGyTFkeBzfsKOxr3Z3quM9hBlJ+FvbA41cwb
        nELNTJvAW+AjNiboURKtJoOXtQ==
X-Google-Smtp-Source: ABdhPJxASobp9Q07krVdlvt3g2iYoOFnpP26CLycDvW6oq2OinajoPrDGgdLBL8WsPqK0BNZCB8pqg==
X-Received: by 2002:a17:906:d7b2:: with SMTP id pk18mr8721287ejb.541.1628238209969;
        Fri, 06 Aug 2021 01:23:29 -0700 (PDT)
Received: from [192.168.0.105] (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id k20sm2605200ejr.93.2021.08.06.01.23.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Aug 2021 01:23:29 -0700 (PDT)
Subject: Re: [PATCH v2 00/33] arm64: zynqmp: Extend board description
To:     Michal Simek <michal.simek@xilinx.com>,
        linux-kernel@vger.kernel.org, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Michael Walle <michael@walle.cc>,
        Quanyang Wang <quanyang.wang@windriver.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <cover.1623684253.git.michal.simek@xilinx.com>
From:   Michal Simek <monstr@monstr.eu>
Message-ID: <4380bec9-a451-52fe-a49f-e305821f7ee9@monstr.eu>
Date:   Fri, 6 Aug 2021 10:23:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6/14/21 5:25 PM, Michal Simek wrote:
> Hi,
> 
> over years couple of drivers were upstream and it is time to sync it up.
> On the top of it also adding new Kria boards which are using new overlay
> infrastructure which check if that overlays can be applied to base DT file.
> 
> Thanks,
> Michal
> 
> Changes in v2:
> - Add reviewed-by from Laurent
> - New patch in the series
> - New patch in the series
> - Use sugar syntax - reported by Geert
> - Update copyright years
> - Fix SD3.0 comment alignment
> - Remove one newline from Makefile
> 
> Amit Kumar Mahapatra (1):
>   arm64: zynqmp: Do not duplicate flash partition label property
> 
> Michal Simek (29):
>   arm64: zynqmp: Disable CCI by default
>   arm64: zynqmp: Enable fpd_dma for zcu104 platforms
>   arm64: zynqmp: Fix irps5401 device nodes
>   arm64: zynqmp: Add pinctrl description for all boards
>   arm64: zynqmp: Correct zcu111 psgtr description
>   arm64: zynqmp: Wire psgtr for zc1751-xm015
>   arm64: zynqmp: Correct psgtr description for zcu100-revC
>   arm64: zynqmp: Add phy description for usb3.0
>   arm64: zynqmp: Disable WP on zcu111
>   arm64: zynqmp: Add missing mio-bank properties to dc1 and dc5
>   arm64: zynqmp: Wire DP and DPDMA for dc1/dc4
>   arm64: zynqmp: Enable nand driver for dc2 and dc3
>   arm64: zynqmp: Remove additional newline
>   arm64: zynqmp: Move clock node to zynqmp-clk-ccf.dtsi
>   arm64: zynqmp: Add nvmem alises for eeproms
>   arm64: zynqmp: List reset property for ethernet phy
>   arm64: zynqmp: Remove can aliases from zc1751
>   arm64: zynqmp: Move DP nodes to the end of file on zcu106
>   arm64: zynqmp: Add note about UHS mode on some boards
>   arm64: zynqmp: Remove information about dma clock on zcu106
>   arm64: zynqmp: Wire qspi on multiple boards
>   arm64: zynqmp: Move rtc to different location on zcu104-revA
>   arm64: zynqmp: Add reset description for sata
>   arm64: zynqmp: Sync psgtr node location with zcu104-revA
>   arm64: zynqmp: Remove description for 8T49N287 and si5382 chips
>   arm64: zynqmp: Add support for zcu102-rev1.1 board
>   arm64: zynqmp: Enable xlnx,zynqmp-dwc3 driver for xilinx boards
>   arm64: zynqmp: Add psgtr description to zc1751 dc1 board
>   arm64: zynqmp: Add support for Xilinx Kria SOM board
> 
> Mounika Grace Akula (1):
>   arm64: zynqmp: Add reset-on-timeout to all boards and modify default
>     timeout value
> 
> Srinivas Neeli (1):
>   arm64: zynqmp: Update rtc calibration value
> 
> Stefano Stabellini (1):
>   arm64: zynqmp: Add missing SMID for pcie to zynqmp.dtsi
> 
>  .../devicetree/bindings/arm/xilinx.yaml       |  32 ++
>  arch/arm64/boot/dts/xilinx/Makefile           |  11 +
>  .../arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi |  13 +-
>  .../boot/dts/xilinx/zynqmp-sck-kv-g-revA.dts  | 335 +++++++++++++++++
>  .../boot/dts/xilinx/zynqmp-sck-kv-g-revB.dts  | 318 ++++++++++++++++
>  .../boot/dts/xilinx/zynqmp-sm-k26-revA.dts    | 289 +++++++++++++++
>  .../boot/dts/xilinx/zynqmp-smk-k26-revA.dts   |  21 ++
>  .../boot/dts/xilinx/zynqmp-zc1232-revA.dts    |  16 +-
>  .../boot/dts/xilinx/zynqmp-zc1254-revA.dts    |  16 +-
>  .../dts/xilinx/zynqmp-zc1751-xm015-dc1.dts    | 298 ++++++++++++++-
>  .../dts/xilinx/zynqmp-zc1751-xm016-dc2.dts    | 342 +++++++++++++++++-
>  .../dts/xilinx/zynqmp-zc1751-xm017-dc3.dts    |  23 +-
>  .../dts/xilinx/zynqmp-zc1751-xm018-dc4.dts    |  24 +-
>  .../dts/xilinx/zynqmp-zc1751-xm019-dc5.dts    | 330 ++++++++++++++++-
>  .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    | 264 +++++++++++++-
>  .../boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts  |  15 +
>  .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 321 +++++++++++++++-
>  .../boot/dts/xilinx/zynqmp-zcu102-revB.dts    |   3 +-
>  .../boot/dts/xilinx/zynqmp-zcu104-revA.dts    | 292 ++++++++++++++-
>  .../boot/dts/xilinx/zynqmp-zcu104-revC.dts    | 250 ++++++++++++-
>  .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    | 341 ++++++++++++++++-
>  .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    | 275 +++++++++++++-
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi        |  99 +++--
>  23 files changed, 3833 insertions(+), 95 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revA.dts
>  create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-sck-kv-g-revB.dts
>  create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-sm-k26-revA.dts
>  create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-smk-k26-revA.dts
>  create mode 100644 arch/arm64/boot/dts/xilinx/zynqmp-zcu102-rev1.1.dts
> 

Applied 1-30, 32.

31 and 33 requires newer version.

Thanks,
Michal

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs



