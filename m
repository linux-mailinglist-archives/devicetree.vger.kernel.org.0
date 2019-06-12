Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 908D7425E9
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2019 14:33:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2438947AbfFLMdI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jun 2019 08:33:08 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:35292 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436787AbfFLMdI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jun 2019 08:33:08 -0400
Received: by mail-ed1-f68.google.com with SMTP id p26so21464360edr.2
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2019 05:33:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=/9+BscyBSG8LtxRtL3bsLVsuCvjxfppgNJUSn3pi0BA=;
        b=Sq/bR87pkvJR3vN8qr3kbF1Xm4ddGIA9gqKd0hjad2QtHpcybUOal6FoE9eyS+WhoC
         BB8K7psWiezVXR/fIpBn1aqlr7vRypp99D7//qWH7TACoI61lZuoFmdu3+DSAo00alwf
         ScBIYgxlkHh8HK2pFmCCTpQEuG+YReGCAaiZcRf6pjAsEtd/ucW4PxMH0YrlAhkt5jrV
         bfuOhO1bcPLJJVg0sTe83a52SkTbBbYLoNWoBp2S+ZiFbQs/Bgo1AyoCMINS5WpQLZFP
         d3mZVe0rFFU2EW6TBGN76D3yBcP7VWrtDyJIy7W+cgbeLVrGoRXoZTp/UwXj2o8zcKeX
         F6bQ==
X-Gm-Message-State: APjAAAWa4KNQeNOPRCEoIG3J3AlZ0l2ZgeqY942GQx37WauirFdA/UBq
        lwCYNwvVetHGCAopS/quHi1BzQ==
X-Google-Smtp-Source: APXvYqwH+EIsTHqwWN3f9HxFMK99PgTbuqj4T1Pw/EUS2brCmPFSeeUdToS6/AutI5NLtTDk9/MaKw==
X-Received: by 2002:a50:b561:: with SMTP id z30mr32633599edd.87.1560342787019;
        Wed, 12 Jun 2019 05:33:07 -0700 (PDT)
Received: from shalem.localdomain (84-106-84-65.cable.dynamic.v4.ziggo.nl. [84.106.84.65])
        by smtp.gmail.com with ESMTPSA id c21sm2784931ejk.79.2019.06.12.05.33.05
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 Jun 2019 05:33:06 -0700 (PDT)
Subject: Re: [PATCH 4/5] drm/connector: Split out orientation quirk detection
To:     "dbasehore ." <dbasehore@chromium.org>
Cc:     Jani Nikula <jani.nikula@linux.intel.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>,
        Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
        Rodrigo Vivi <rodrigo.vivi@intel.com>,
        CK Hu <ck.hu@mediatek.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        devicetree@vger.kernel.org,
        Intel Graphics <intel-gfx@lists.freedesktop.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190611040350.90064-1-dbasehore@chromium.org>
 <20190611040350.90064-5-dbasehore@chromium.org> <87zhmoy270.fsf@intel.com>
 <01636500-0be5-acf8-5f93-a57383bf4b20@redhat.com>
 <CAGAzgsoxpsft-vmVOuKSAbLJqR-EZvcceLpMeWkz6ikJEKGJHg@mail.gmail.com>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <fe774952-6fd5-b4ec-56c9-32fd30546313@redhat.com>
Date:   Wed, 12 Jun 2019 14:33:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAGAzgsoxpsft-vmVOuKSAbLJqR-EZvcceLpMeWkz6ikJEKGJHg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 12-06-19 02:16, dbasehore . wrote:
> On Tue, Jun 11, 2019 at 1:54 AM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Hi,
>>
>> On 11-06-19 10:08, Jani Nikula wrote:
>>> On Mon, 10 Jun 2019, Derek Basehore <dbasehore@chromium.org> wrote:
>>>> This removes the orientation quirk detection from the code to add
>>>> an orientation property to a panel. This is used only for legacy x86
>>>> systems, yet we'd like to start using this on devicetree systems where
>>>> quirk detection like this is not needed.
>>>
>>> Not needed, but no harm done either, right?
>>>
>>> I guess I'll defer judgement on this to Hans and Ville (Cc'd).
>>
>> Hmm, I'm not big fan of this change. It adds code duplication and as
>> other models with the same issue using a different driver or panel-type
>> show up we will get more code duplication.
>>
>> Also I'm not convinced that devicetree based platforms will not need
>> this. The whole devicetree as an ABI thing, which means that all
>> devicetree bindings need to be set in stone before things are merged
>> into the mainline, is done solely so that we can get vendors to ship
>> hardware with the dtb files included in the firmware.
> 
> We've posted fixes to the devicetree well after the initial merge into
> mainline before, so I don't see what you mean about the bindings being
> set in stone.

That was just me repeating the official party line about devicetree.

> I also don't really see the point. The devicetree is in
> the kernel. If there's some setting in the devicetree that we want to
> change, it's effectively the same to make the change in the devicetree
> versus some quirk setting. The only difference seems to be that making
> the change in the devicetree is cleaner.

I agree with you that devicetree in practice is easy to update after
shipping. But at least whenever I tried to get new bindings reviewed
I was always told that I was not allowed to count on that.

>> I'm 100% sure that there is e.g. ARM hardware out there which uses
>> non upright mounted LCD panels (I used to have a few Allwinner
>> tablets which did this). And given my experience with the quality
>> of firmware bundled tables like ACPI tables I'm quite sure that
>> if we ever move to firmware included dtb files that we will need
>> quirks for those too.
> 
> Is there a timeline to start using firmware bundled tables?

Nope, as I said "if we ever move to ...".

> Since the
> quirk code only uses DMI, it will need to be changed anyways for
> firmware bundled devicetree files anyways.
> 
> We could consolidate the duplicated code into another function that
> calls drm_get_panel_orientation_quirks too. The only reason it's like
> it is is because I initially only had the call to
> drm_get_panel_orientation_quirk once in the code.

Yes if you can add a new helper for the current callers, then
I'm fine with dropping the quirk handling from
drm_connector_init_panel_orientation_property()

Regards,

Hans
