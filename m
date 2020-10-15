Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 53F1528EE6C
	for <lists+devicetree@lfdr.de>; Thu, 15 Oct 2020 10:25:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726054AbgJOIZq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Oct 2020 04:25:46 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:56726 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725959AbgJOIZq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Oct 2020 04:25:46 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: eballetbo)
        with ESMTPSA id 87F471F4591F
Subject: Re: [PATCH v2 3/3] mfd: google,cros-ec: add missing properties
To:     =?UTF-8?Q?Ricardo_Ca=c3=b1uelo?= <ricardo.canuelo@collabora.com>,
        Tzung-Bi Shih <tzungbi@google.com>
Cc:     Rob Herring <robh@kernel.org>,
        Collabora Kernel ML <kernel@collabora.com>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Simon Glass <sjg@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Cheng-Yi Chiang <cychiang@chromium.org>
References: <20201008102825.3812-1-ricardo.canuelo@collabora.com>
 <20201008102825.3812-4-ricardo.canuelo@collabora.com>
 <20201008183818.GB2395464@bogus>
 <20201009054819.di4dlfljadsfs6cw@rcn-XPS-13-9360>
 <CAL_JsqKGSiHEon=R1vPPWvYVmzW2Ju-RrrVL05EW9OqRCHRSMw@mail.gmail.com>
 <20201013064609.udss7hbdek2of4sw@rcn-XPS-13-9360>
 <CA+Px+wXwEm+j2AZcaXHtoFUhe9GqaaxMRecQ7X0vu49E2OKH=A@mail.gmail.com>
 <0578a7e56430da42daee95aabc05850da3dcc294.camel@collabora.com>
From:   Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <8c5c7a2b-667b-cb15-1fbd-c7015f5b97dd@collabora.com>
Date:   Thu, 15 Oct 2020 10:25:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <0578a7e56430da42daee95aabc05850da3dcc294.camel@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tzung-Bi,

On 15/10/20 8:52, Ricardo Cañuelo wrote:
> On Wed, 2020-10-14 at 10:18 +0800, Tzung-Bi Shih wrote:
>> The intermediate layer (i.e. codecs { ... }) breaks current code as
>> you already discussed about that in previous threads:
>> - of_platform_populate only creates immediate child devices.
>> - the codec driver expects its parent is EC node.
> 
> Thanks for your input, I'll try to address these issues in the drivers in v3.
> 

Can you remind us which platforms support cros-ec-codec and why there is no an
EC_FEATURE for that?

Thanks,
 Enric

> Cheers,
> Ricardo
> 
