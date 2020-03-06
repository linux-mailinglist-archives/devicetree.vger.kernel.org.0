Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5ADB917C3E4
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2020 18:10:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725873AbgCFRKw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Mar 2020 12:10:52 -0500
Received: from gloria.sntech.de ([185.11.138.130]:34884 "EHLO gloria.sntech.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725835AbgCFRKw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 6 Mar 2020 12:10:52 -0500
Received: from ip5f5a5d2f.dynamic.kabel-deutschland.de ([95.90.93.47] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.89)
        (envelope-from <heiko@sntech.de>)
        id 1jAGUl-0002MU-S0; Fri, 06 Mar 2020 18:10:43 +0100
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc:     linux-arm-kernel@lists.infradead.org, hjc@rock-chips.com,
        airlied@linux.ie, daniel@ffwll.ch, robh+dt@kernel.org,
        mark.rutland@arm.com, linux-rockchip@lists.infradead.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        helen.koike@collabora.com, ezequiel@collabora.com,
        kernel@collabora.com, dafna3@gmail.com
Subject: Re: [PATCH v3] dt-bindings: convert rockchip-drm.txt to rockchip-drm.yaml
Date:   Fri, 06 Mar 2020 18:10:43 +0100
Message-ID: <31674303.xIi5ycrUlD@diego>
In-Reply-To: <20200121154314.3444-1-dafna.hirschfeld@collabora.com>
References: <20200121154314.3444-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dafna,

Am Dienstag, 21. Januar 2020, 16:43:14 CET schrieb Dafna Hirschfeld:
> convert the binding file rockchip-drm.txt to yaml format.
> This was tested and verified on ARM and ARM64 with:
> make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> make dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/display/rockchip/rockchip-drm.yaml
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

applied to drm-misc-next with Rob's Reviewed-by

Thanks
Heiko


