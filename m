Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B13CB3C928C
	for <lists+devicetree@lfdr.de>; Wed, 14 Jul 2021 22:51:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231664AbhGNUyN convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Wed, 14 Jul 2021 16:54:13 -0400
Received: from aposti.net ([89.234.176.197]:43336 "EHLO aposti.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234374AbhGNUyM (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 14 Jul 2021 16:54:12 -0400
Date:   Wed, 14 Jul 2021 21:51:10 +0100
From:   Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH 2/2] drm/panel: Add Innolux EJ030NA 3.0" 320x480 panel
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, list@opendingux.net,
        Christophe Branchereau <cbranchereau@gmail.com>
Message-Id: <AX59WQ.6WM2VCZMWB3M2@crapouillou.net>
In-Reply-To: <YOk7xCNes0VTCG21@ravnborg.org>
References: <20210625121045.81711-1-paul@crapouillou.net>
        <20210625121045.81711-2-paul@crapouillou.net>
        <YOk7xCNes0VTCG21@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam,

Le sam., juil. 10 2021 at 08:18:44 +0200, Sam Ravnborg 
<sam@ravnborg.org> a écrit :
> Hi Paul, Christophe,
> 
> On Fri, Jun 25, 2021 at 01:10:45PM +0100, Paul Cercueil wrote:
>>  From: Christophe Branchereau <cbranchereau@gmail.com>
>> 
>>  Add support for the Innolux/Chimei EJ030NA 3.0"
>>  320x480 TFT panel.
>> 
>>  This panel can be found in the LDKs, RS97 V2.1 and RG300 (non IPS)
>>  handheld gaming consoles.
>> 
>>  While being 320x480, it is actually a horizontal 4:3
>>  panel with non-square pixels in delta arrangement.
>> 
>>  Signed-off-by: Christophe Branchereau <cbranchereau@gmail.com>
>>  Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> 
> The drivers looks good.
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>

Pushed to drm-misc-next.

Thanks for the review!

Cheers,
-Paul


