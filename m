Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 29DB717B3E0
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2020 02:41:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726178AbgCFBli (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Mar 2020 20:41:38 -0500
Received: from gloria.sntech.de ([185.11.138.130]:55842 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726162AbgCFBli (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Mar 2020 20:41:38 -0500
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47] helo=phil.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1jA1zZ-00073H-FT; Fri, 06 Mar 2020 02:41:33 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org
Cc:     thierry.reding@gmail.com, sam@ravnborg.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, mark.rutland@arm.com,
        christoph.muellner@theobroma-systems.com, robin.murphy@arm.com,
        linux-rockchip@lists.infradead.org, francescolavra.fl@gmail.com
Subject: Re: [PATCH v3 3/3] drm/panel: add panel driver for Elida KD35T133 panels
Date:   Fri, 06 Mar 2020 02:41:32 +0100
Message-ID: <63369158.4qoTV4tKva@phil>
In-Reply-To: <20200229151506.750242-3-heiko@sntech.de>
References: <20200229151506.750242-1-heiko@sntech.de> <20200229151506.750242-3-heiko@sntech.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Samstag, 29. Februar 2020, 16:15:06 CET schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Panel driver for the KD35T133 display from Elida, used for example
> in the rk3326-based Odroid Go Advance handheld.
> 
> changes in v3:
> - add missing return value assignment (Francesco)
> - re-sort header includes (Sam)
> changes in v2:
> - rename dsi_generic_write_seq macro to dsi_dcs_write_seq to honor
>   the underlying mipi_dsi_dcs_write (Robin)
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

applied to drm-misc-next with Sam's Review


