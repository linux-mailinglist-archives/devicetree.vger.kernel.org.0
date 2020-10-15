Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B94AB28ED36
	for <lists+devicetree@lfdr.de>; Thu, 15 Oct 2020 08:52:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729172AbgJOGwj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Oct 2020 02:52:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729131AbgJOGwj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Oct 2020 02:52:39 -0400
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 81A8DC061755
        for <devicetree@vger.kernel.org>; Wed, 14 Oct 2020 23:52:39 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id C53391F45850
Message-ID: <0578a7e56430da42daee95aabc05850da3dcc294.camel@collabora.com>
Subject: Re: [PATCH v2 3/3] mfd: google,cros-ec: add missing properties
From:   Ricardo =?ISO-8859-1?Q?Ca=F1uelo?= <ricardo.canuelo@collabora.com>
To:     Tzung-Bi Shih <tzungbi@google.com>
Cc:     Rob Herring <robh@kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Cheng-Yi Chiang <cychiang@chromium.org>
Date:   Thu, 15 Oct 2020 08:52:29 +0200
In-Reply-To: <CA+Px+wXwEm+j2AZcaXHtoFUhe9GqaaxMRecQ7X0vu49E2OKH=A@mail.gmail.com>
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
         <20201008102825.3812-4-ricardo.canuelo@collabora.com>
         <20201008183818.GB2395464@bogus>
         <20201009054819.di4dlfljadsfs6cw@rcn-XPS-13-9360>
         <CAL_JsqKGSiHEon=R1vPPWvYVmzW2Ju-RrrVL05EW9OqRCHRSMw@mail.gmail.com>
         <20201013064609.udss7hbdek2of4sw@rcn-XPS-13-9360>
         <CA+Px+wXwEm+j2AZcaXHtoFUhe9GqaaxMRecQ7X0vu49E2OKH=A@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2020-10-14 at 10:18 +0800, Tzung-Bi Shih wrote:
> The intermediate layer (i.e. codecs { ... }) breaks current code as
> you already discussed about that in previous threads:
> - of_platform_populate only creates immediate child devices.
> - the codec driver expects its parent is EC node.

Thanks for your input, I'll try to address these issues in the drivers in v3.

Cheers,
Ricardo

