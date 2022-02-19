Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B120E4BC90D
	for <lists+devicetree@lfdr.de>; Sat, 19 Feb 2022 16:25:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242450AbiBSP0M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 19 Feb 2022 10:26:12 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:34162 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233699AbiBSP0L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 19 Feb 2022 10:26:11 -0500
Received: from mx1.smtp.larsendata.com (mx1.smtp.larsendata.com [91.221.196.215])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4789B1DED5B
        for <devicetree@vger.kernel.org>; Sat, 19 Feb 2022 07:25:52 -0800 (PST)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
        by mx1.smtp.larsendata.com (Halon) with ESMTPS
        id 38936a21-9198-11ec-9faa-0050568c148b;
        Sat, 19 Feb 2022 15:25:51 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: sam@ravnborg.org)
        by mail01.mxhotel.dk (Postfix) with ESMTPSA id AEDB3194B89;
        Sat, 19 Feb 2022 16:25:51 +0100 (CET)
Date:   Sat, 19 Feb 2022 16:25:48 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     robh+dt@kernel.org, thierry.reding@gmail.com, maxime@cerno.tech,
        dave.stevenson@raspberrypi.com, david@lechnology.com,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v4 2/3] drm/mipi-dbi: Add driver_private member to struct
 mipi_dbi_dev
Message-ID: <YhEL/GEqcOT5yQyw@ravnborg.org>
References: <20220218151110.11316-1-noralf@tronnes.org>
 <20220218151110.11316-3-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220218151110.11316-3-noralf@tronnes.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Noralf,
On Fri, Feb 18, 2022 at 04:11:09PM +0100, Noralf Trønnes wrote:
> devm_drm_dev_alloc() can't allocate structures that embed a structure
> which then again embeds drm_device. Workaround this by adding a
> driver_private pointer to struct mipi_dbi_dev which the driver can use for
> its additional state.
> 
> v3:
> - Add documentation
> 
> Acked-by: Maxime Ripard <maxime@cerno.tech>
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
