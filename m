Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D28C3E0F94
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 09:50:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231159AbhHEHuT convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 5 Aug 2021 03:50:19 -0400
Received: from aposti.net ([89.234.176.197]:46454 "EHLO aposti.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229674AbhHEHuQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 03:50:16 -0400
Date:   Thu, 05 Aug 2021 09:49:52 +0200
From:   Paul Cercueil <paul@crapouillou.net>
Subject: Re: [PATCH v4 2/3] dt-bindings: Add DT bindings for QiShenglong
 Gopher 2b panel
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     Artjom Vejsel <akawolf0@gmail.com>, thierry.reding@gmail.com,
        dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Message-Id: <4FWCXQ.41N2UOW92151@crapouillou.net>
In-Reply-To: <YQrbk5/7PiwB2l9I@ravnborg.org>
References: <20210804002353.76385-1-akawolf0@gmail.com>
        <20210804002353.76385-3-akawolf0@gmail.com> <YQrbk5/7PiwB2l9I@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Sam,

Le mer., août 4 2021 at 20:25:23 +0200, Sam Ravnborg 
<sam@ravnborg.org> a écrit :
> On Wed, Aug 04, 2021 at 03:23:52AM +0300, Artjom Vejsel wrote:
>>  Add DT bindings for QiShenglong Gopher 2b 4.3" 480(RGB)x272 TFT LCD 
>> panel.
>> 
>>  Signed-off-by: Artjom Vejsel <akawolf0@gmail.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> 
> Paul, I assume you will apply when you are happy with the driver.

I just pushed to drm-misc-next... but forgot to add your Reviewed-by 
when applying the patches. What should we do about it?

Sorry about that.

Cheers,
-Paul


