Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59FCF49E8E8
	for <lists+devicetree@lfdr.de>; Thu, 27 Jan 2022 18:25:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239536AbiA0RY7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jan 2022 12:24:59 -0500
Received: from vern.gendns.com ([98.142.107.122]:33124 "EHLO vern.gendns.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239348AbiA0RY4 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 27 Jan 2022 12:24:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=lechnology.com; s=default; h=Content-Transfer-Encoding:Content-Type:
        In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
        :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
        List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=cEiU0SdTXmPgYBndK0aLZMZtfMNcwO+ZDeUsN8vfEoc=; b=y9/82kaViFNisQyY7YVvoxEuCW
        c9FeIH+AIJSaqZP6Wa2kw7kqrrS2/5hDzpyiMd7/eNfliC7q+aqlbd8VjLmk45FsO7RAik0ULeKR8
        SRyzHRAU/71u5rPlLRNEyblYCKovrnVBM7Z5tS30TruKyQBuQ0Ut464L+F5Vri/1zgWKank2f8dhk
        LeinOc6Yh/T4cU8fButC8H4UAp5egI8OFn3tcmTfg19VnfVTdEZfuzz7iGXKb5r4LSNqG014QpFwa
        fgyiFaPpjLmufAZkqjSMz8/bWe5+30MrBsIMnylig4u2B2LLJiubgOiqJt+xvNEV+rOXvdGscVqYG
        f6q3Ib1A==;
Received: from 108-198-5-147.lightspeed.okcbok.sbcglobal.net ([108.198.5.147]:51978 helo=[192.168.0.134])
        by vern.gendns.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <david@lechnology.com>)
        id 1nD8Kl-0008Av-5O; Thu, 27 Jan 2022 12:13:29 -0500
Subject: Re: [PATCH v2 0/3] drm/panel: Add MIPI DBI compatible SPI driver
To:     =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
        robh+dt@kernel.org, thierry.reding@gmail.com
Cc:     sam@ravnborg.org, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
References: <20220125175700.37408-1-noralf@tronnes.org>
From:   David Lechner <david@lechnology.com>
Message-ID: <a975e0b1-7036-4936-a0ca-548d4456bd1b@lechnology.com>
Date:   Thu, 27 Jan 2022 11:13:27 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220125175700.37408-1-noralf@tronnes.org>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - vern.gendns.com
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lechnology.com
X-Get-Message-Sender-Via: vern.gendns.com: authenticated_id: davidmain+lechnology.com/only user confirmed/virtual account not confirmed
X-Authenticated-Sender: vern.gendns.com: davidmain@lechnology.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 1/25/22 11:56 AM, Noralf Trønnes wrote:
> Hi,
> 
> This patchset adds a driver that will work with most MIPI DBI compatible
> SPI panels out there.
> 
> It's a follow up on 'drm/tiny/st7735r: Match up with staging/fbtft
> driver'[1] which aimed at making the st7735r driver work with all panels
> adding DT properties.
> 
> Maxime gave[2] a good overview of the situation with these displays and
> proposed to make a driver that works with all MIPI DBI compatible
> controllers and use a firmware file to provide the controller setup for
> a particular panel.
> 
> Main change since previous version:
> - Drop model property and use the compatible property instead (Rob)
> 
> Noralf.
> 
> [1] https://lore.kernel.org/dri-devel/20211124150757.17929-1-noralf@tronnes.org/
> [2] https://lore.kernel.org/dri-devel/20211129093946.xhp22mvdut3m67sc@houat/
> 
> 
> Noralf Trønnes (3):
>    dt-bindings: display: add bindings for MIPI DBI compatible SPI panels
>    drm/mipi-dbi: Add driver_private member to struct mipi_dbi_dev
>    drm/panel: Add MIPI DBI compatible SPI driver
> 
>   .../display/panel/panel-mipi-dbi-spi.yaml     |  59 +++
>   MAINTAINERS                                   |   8 +
>   drivers/gpu/drm/panel/Kconfig                 |  11 +
>   drivers/gpu/drm/panel/Makefile                |   1 +
>   drivers/gpu/drm/panel/panel-mipi-dbi.c        | 394 ++++++++++++++++++
>   include/drm/drm_mipi_dbi.h                    |   2 +
>   6 files changed, 475 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
>   create mode 100644 drivers/gpu/drm/panel/panel-mipi-dbi.c
> 

It would be useful to also include a patch for a tool to create
these "firmware" files. For example a Python script that takes
a more human-readable input and generates a .bin file.
