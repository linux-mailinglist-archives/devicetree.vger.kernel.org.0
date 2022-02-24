Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECF374C35F5
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 20:34:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232937AbiBXTet (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 14:34:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231537AbiBXTes (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 14:34:48 -0500
Received: from mx1.smtp.larsendata.com (mx1.smtp.larsendata.com [91.221.196.215])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5E961225591
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 11:34:17 -0800 (PST)
Received: from mail01.mxhotel.dk (mail01.mxhotel.dk [91.221.196.236])
        by mx1.smtp.larsendata.com (Halon) with ESMTPS
        id c1291ae6-95a8-11ec-9faa-0050568c148b;
        Thu, 24 Feb 2022 19:34:16 +0000 (UTC)
Received: from ravnborg.org (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: sam@ravnborg.org)
        by mail01.mxhotel.dk (Postfix) with ESMTPSA id AD256194B3A;
        Thu, 24 Feb 2022 20:34:20 +0100 (CET)
Date:   Thu, 24 Feb 2022 20:34:13 +0100
X-Report-Abuse-To: abuse@mxhotel.dk
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Cc:     robh+dt@kernel.org, dri-devel@lists.freedesktop.org,
        maxime@cerno.tech, dave.stevenson@raspberrypi.com,
        david@lechnology.com, devicetree@vger.kernel.org,
        thierry.reding@gmail.com
Subject: Re: [PATCH v5 3/5] drm/modes: Add of_get_drm_panel_display_mode()
Message-ID: <Yhfdtca7s1468W3o@ravnborg.org>
References: <20220224152708.14459-1-noralf@tronnes.org>
 <20220224152708.14459-4-noralf@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220224152708.14459-4-noralf@tronnes.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Feb 24, 2022 at 04:27:06PM +0100, Noralf Trønnes wrote:
> Add a function to get a drm_display_mode from a panel-timing
> device tree subnode.

Thanks for implementing this!

> 
> Suggested-by: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
