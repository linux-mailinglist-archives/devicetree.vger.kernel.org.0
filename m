Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AE261D8961
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2019 09:27:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729340AbfJPH1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Oct 2019 03:27:24 -0400
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]:54988 "EHLO
        us-smtp-1.mimecast.com" rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org
        with ESMTP id S1726719AbfJPH1X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Oct 2019 03:27:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1571210842;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=cGBDAdb3YnijWBVYdlInolCMs5oOL00xTnXj5F/DK3A=;
        b=ZrBo0HrTSGGsmF+hWsu/IZcaqdaLHNOevyMyTaxbNgmS7Rnj66NFlmC1quTb3tGIWwMys2
        5pIXh15Sa+k5BiJiwrwWMhsCE2QqEY61T79r2PPhx3Yaj5CkoJ+MGz7LqozWv7lh/fx5UR
        MKcUL3I+chO/cgQCIN0YAU/bO7K0fLQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-101-2civ3vrPNOO70UXLLQwyFA-1; Wed, 16 Oct 2019 03:27:20 -0400
Received: by mail-wm1-f72.google.com with SMTP id m6so589932wmf.2
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2019 00:27:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=BhD8VGexW/5QagnP/Ued5Qhc8c7mr6fpk5pCNSfJYfc=;
        b=MavuyvGMJu4lcCiq6VTHRLHLG5Sm9G6k8/Hj71xV5Gz5IT8hXH4bitmuzVrO6tXcwG
         ZoQ/V6UVf+Ga2IHkLtkHMu1Utr1PuiSGW/JeVnRMeClOl0E+Np4USaKwnyA7RhAY3a4Z
         k2a8oBcxFk0Y3YSZ+iHWT7S2yX1+V2rtM3+gyxzDiIb9MudU3fKSY9M8reiOsj6KMrlw
         sZyyrlkVNyDK0XuI2eB+skJ9uooDRDox2OO02Xak1v24WihHM5SQ4bDwEpaupxRKzxbq
         GcVkXWAQe48iwDUfmD9NFtEE9wEysgKDf8g/add1uFfu7qPfyp7JsRDbedqoN6FX9B1V
         MNug==
X-Gm-Message-State: APjAAAVem4ofOXTj+E64/Fmy31M7nMtlBPBqgcqGLMSsm61k3fbg4j7q
        kDxWnxKJRahcPjy0kIn6nFsxBdaRwE6dUSOxmW3gTPVR80O2mbLapzbYw/R2RN6lsFPLbW5T+TT
        wmIrJYpJXo6gVIRlTRGtZOg==
X-Received: by 2002:a1c:9894:: with SMTP id a142mr2036216wme.70.1571210839577;
        Wed, 16 Oct 2019 00:27:19 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyPkQFx5uOArg7hO/ofUb50CjW/EkVfR8jfBWPKRTJEKoyhGtFJhJoj6xq6jfvZZfKpiJrn1A==
X-Received: by 2002:a1c:9894:: with SMTP id a142mr2036195wme.70.1571210839356;
        Wed, 16 Oct 2019 00:27:19 -0700 (PDT)
Received: from localhost.localdomain ([109.38.134.168])
        by smtp.gmail.com with ESMTPSA id q192sm1902217wme.23.2019.10.16.00.27.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 00:27:18 -0700 (PDT)
Subject: Re: [RFC][PATCH 2/3] usb: roles: Add usb role switch notifier.
To:     John Stultz <john.stultz@linaro.org>
Cc:     lkml <linux-kernel@vger.kernel.org>, Yu Chen <chenyu56@huawei.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Felipe Balbi <balbi@kernel.org>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jun Li <lijun.kernel@gmail.com>,
        Valentin Schneider <valentin.schneider@arm.com>,
        Linux USB List <linux-usb@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
References: <20191002231617.3670-1-john.stultz@linaro.org>
 <20191002231617.3670-3-john.stultz@linaro.org>
 <2e369349-41f6-bd15-2829-fa886f209b39@redhat.com>
 <CALAqxLVcQ7yZuJCUEqGmvqcz5u0Gd=xJzqLbmiXKR+LJrOhvMQ@mail.gmail.com>
 <b8695418-9d3a-96a6-9587-c9a790f49740@redhat.com>
 <CALAqxLVh6GbiKmuK60e6f+_dWh-TS2ZLrwx0WsSo5bKp-F3iLA@mail.gmail.com>
From:   Hans de Goede <hdegoede@redhat.com>
Message-ID: <648e2943-42f5-e07d-5bb4-f6fd8b38b726@redhat.com>
Date:   Wed, 16 Oct 2019 09:27:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CALAqxLVh6GbiKmuK60e6f+_dWh-TS2ZLrwx0WsSo5bKp-F3iLA@mail.gmail.com>
Content-Language: en-US
X-MC-Unique: 2civ3vrPNOO70UXLLQwyFA-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 10/15/19 7:39 AM, John Stultz wrote:
> On Thu, Oct 3, 2019 at 1:51 PM Hans de Goede <hdegoede@redhat.com> wrote:
>> On 03-10-2019 22:37, John Stultz wrote:
>>> Fair point. I'm sort of taking a larger patchset and trying to break
>>> it up into more easily reviewable chunks, but I guess here I mis-cut.
>>>
>>> The user is the hikey960 gpio hub driver here:
>>>     https://git.linaro.org/people/john.stultz/android-dev.git/commit/?i=
d=3Db06158a2d3eb00c914f12c76c93695e92d9af00f
>>
>> Hmm, that seems to tie the TypeC data-role to the power-role, which
>> is not going to work with role swapping.
>=20
> Thanks again for the feedback here. Sorry for the slow response. Been
> reworking some of the easier changes but am starting to look at how to
> address your feedback here.
>=20
>> What is controlling the usb-role-switch, and thus ultimately
>> causing the notifier you are suggesting to get called ?
>=20
> The tcpm_mux_set() call via tcpm_state_machine_work()
>=20
>> Things like TYPEC_VBUS_POWER_OFF and TYPEC_VBUS_POWER_ON
>> really beg to be modeled as a regulator and then the
>> Type-C controller (using e.g. the drivers/usb/typec/tcpm/tcpm.c
>> framework) can use that regulator to control things.
>> in case of the tcpm.c framework it can then use that
>> regulator to implement the set_vbus callback.
>=20
> So I'm looking at the bindings and I'm not sure exactly how to tie a
> regulator style driver into the tcpm for this?
> Looking at the driver I just see this commented out bit:
>     https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tr=
ee/drivers/usb/typec/tcpm/tcpm.c#n3075
>=20
> Do you happen to have a pointer to something closer to what you are descr=
ibing?

Look at the tcpm_set_vbus implementation in drivers/usb/typec/tcpm/fusb302.=
c
you need to do something similar in your Type-C controller driver and
export the GPIO as as a gpio-controlled regulator and tie the regulator to
the connector.

Regards,

Hans

