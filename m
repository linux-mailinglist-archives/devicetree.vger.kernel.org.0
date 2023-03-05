Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 43D0F6AB126
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 16:05:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229451AbjCEPFU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 10:05:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229437AbjCEPFS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 10:05:18 -0500
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1320014999
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 07:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1678028675;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=lcIzdJEQlVPhl3VnJddZ0bZYXiRhJ/fuBDlWnBeXDVw=;
        b=P57l6x4z2WrZfNNkxpeMaV95s7Pg5d0ok25ctlK6KGoVbhYQeF/OQAgbiFKggmvwJhyFmI
        TJUN5dEs/hm+qrdJFZY447I+RIueeAdIeZ6qgAqyxdxPOi117ZftVH96Yzg84QKCVl/d8t
        PP0h5GTsSFrYOfUgS8GB2o/IM1R+hVk=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-398-xY8GdcW6PHW3vQrxG3126g-1; Sun, 05 Mar 2023 10:04:33 -0500
X-MC-Unique: xY8GdcW6PHW3vQrxG3126g-1
Received: by mail-ed1-f71.google.com with SMTP id ec11-20020a0564020d4b00b004e2cb85c8bcso1105558edb.16
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 07:04:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678028672;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lcIzdJEQlVPhl3VnJddZ0bZYXiRhJ/fuBDlWnBeXDVw=;
        b=0L1tQdkYHd0TMK4E/gHPMlCILX20Vk941vXmFX8c76lbl3/ecW7s5dETi9OFR8Lt6J
         qGzhkY2wXZxty+pmbf5DiRDNNZh4voagswvogJMqibZqfGv2qB38T8TiOx9bXS0lUF86
         rJZ1b4VQPKsv50yEjBHJYCmVt1QXqR149x4OmN6bF922FEv9dJNYPQvXNnJz2Tfqm5v3
         ygxf3pB8oJEuVvuN4PXO9D+rnErL9n0pmlJH3Ewwq3HV+sdeHYr/zQaxLe/fWchohEvO
         XmtQ4c/iWHm931+AgzdEXt1hc+CbcqLLG+B9Zz7Ap2iQsar3Bj6N5UhG+L/q7iO9ew9U
         5dqQ==
X-Gm-Message-State: AO0yUKXAKEqG/MJdW5rwh55oxTs0ClcxLGnq/ZS2h2ec3gHEH71+Dmo8
        SA4fb9CIzwJ1qMIr05OmX9Xo/v+offRSE25+l7mKahkoJlV7XREAOAcuuo7OgB9P9m2bdCUEiBr
        th8qwdjGST9avsj0cW7+aCw==
X-Received: by 2002:a17:907:a508:b0:878:545b:e540 with SMTP id vr8-20020a170907a50800b00878545be540mr8051190ejc.51.1678028672362;
        Sun, 05 Mar 2023 07:04:32 -0800 (PST)
X-Google-Smtp-Source: AK7set8hm2FL/eqdJdmtaLVxB2FQSQjEL+PahVQp0/laTJn/dWCamgTiqgJO37h/0nRatSbzHTUptw==
X-Received: by 2002:a17:907:a508:b0:878:545b:e540 with SMTP id vr8-20020a170907a50800b00878545be540mr8051175ejc.51.1678028672045;
        Sun, 05 Mar 2023 07:04:32 -0800 (PST)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec? (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl. [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
        by smtp.gmail.com with ESMTPSA id v9-20020a17090651c900b008b2e4f88ed7sm3334165ejk.111.2023.03.05.07.04.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 05 Mar 2023 07:04:31 -0800 (PST)
Message-ID: <857e6fc3-65f6-5b71-073f-b518ab3c814e@redhat.com>
Date:   Sun, 5 Mar 2023 16:04:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 2/2] Input: hideep - Optionally reset controller work
 mode to native HiDeep protocol
To:     Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-input@vger.kernel.org
References: <20230303222113.285546-1-hdegoede@redhat.com>
 <20230303222113.285546-3-hdegoede@redhat.com>
 <42ac04f2-e7dc-a5a8-750e-243aa82c35db@kernel.org>
Content-Language: en-US, nl
From:   Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <42ac04f2-e7dc-a5a8-750e-243aa82c35db@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 3/5/23 14:34, Krzysztof Kozlowski wrote:
> On 03/03/2023 23:21, Hans de Goede wrote:
>> The HiDeep IST940E touchscreen controller used on the Lenovo Yoga Book X90F
>> convertible comes up in HID mode by default.
>>
>> This works well on the X91F Windows model where the touchscreen is
>> correctly described in ACPI and ACPI takes care of controlling
>> the reset GPIO and regulators.
>>
>> But the X90F ships with Android and the ACPI tables on this model don't
>> describe the touchscreen. Instead this is hardcoded in the vendor kernel.
>>
>> The vendor kernel uses the touchscreen in native HiDeep 20 (2.0?) protocol
>> mode and switches the controller to this mode by writing 0 to reg 0x081e.
>>
>> Adjusting the i2c-hid code to deal with the reset-gpio and regulators on
>> this non devicetree (but rather broken ACPI) convertible is somewhat tricky
>> and the native protocol reports ABS_MT_PRESSURE and ABS_MT_TOUCH_MAJOR
>> which are not reported in HID mode, so it is preferable to use the native
>> mode.
>>
>> Add support to the hideep driver to reset the work-mode to the native
>> HiDeep protocol to allow using it on the Lenovo Yoga Book X90F.
>> This is guarded behind a new "hideep,reset-work-mode" boolean property,
>> to avoid changing behavior on other devices.
>>
>> For the record: I did test using the i2c-hid driver with some quick hacks
>> and it does work. The I2C-HID descriptor is available from address 0x0020,
>> just like on the X91F Windows model.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC.  It might happen, that command when run on an older
> kernel, gives you outdated entries.  Therefore please be sure you base
> your patches on recent Linux kernel.
> 
>> ---
>>  .../bindings/input/touchscreen/hideep.txt        |  1 +
>>  drivers/input/touchscreen/hideep.c               | 16 ++++++++++++++++
>>  2 files changed, 17 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/input/touchscreen/hideep.txt b/Documentation/devicetree/bindings/input/touchscreen/hideep.txt
>> index a47c36190b01..68bb9f8dcc30 100644
>> --- a/Documentation/devicetree/bindings/input/touchscreen/hideep.txt
>> +++ b/Documentation/devicetree/bindings/input/touchscreen/hideep.txt
>> @@ -17,6 +17,7 @@ Optional properties:
>>  - linux,keycodes	: Specifies an array of numeric keycode values to
>>  			be used for reporting button presses. The array can
>>  			contain up to 3 entries.
>> +- hideep,reset-work-mode: bool, reset touch report format to the native HiDeep protocol
> 
> Bindings must be a separate patch.
> 
> Also, would be nice to convert first the TXT to DT schema (YAML).
> 
> "-mode" suggests it's some enum, not bool. Otherwise what exactly it is
> choosing (which mode)?

As it says it is resetting the mode to the native HiDeep protocol,
we have no docs on the controller, so I have no idea what other
values may be written to 0x081e other then 0 and what modes those
values will enable.

Anyways I just realized I should have not included this at all,
since atm this new property is only used on X86/ACPI platforms
(through platform code setting a device-property), so it is not
used on devicetree platforms at all.

And Rob has repeatedly requested to not add properties not
actually used in devicetree files (1) to the bindings.

So I'll just drop the bindings in the next version of this
patch-set.

Regards,

Hans


1) Like these x86 kinda kernel internal (it is also the kernel
setting the property) properties to devicetree bindings.

