Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BEB6673F426
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 07:59:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229487AbjF0F7q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 01:59:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229578AbjF0F7n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 01:59:43 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2736F1BEE
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 22:59:41 -0700 (PDT)
Received: from [192.168.1.141] ([37.4.248.15]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MJV9S-1qTLgr2qIi-00Jq2G; Tue, 27 Jun 2023 07:59:01 +0200
Message-ID: <6f079ec5-37d3-78e8-9632-b394cf5bd66b@i2se.com>
Date:   Tue, 27 Jun 2023 07:59:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH RESEND 0/2] arm/arm64: dts: Enable device-tree overlay
 support for RPi devices
To:     Moessbauer Felix <felix.moessbauer@siemens.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Aurelien Jarno <aurelien@aurel32.net>,
        Arnd Bergmann <arnd@arndb.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Phil Elwell <phil@raspberrypi.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, soc@kernel.org,
        quirin.gylstorff@siemens.com, manuel.matzinger@siemens.com
References: <20220427233607.1225419-1-aurelien@aurel32.net>
 <2cfbf1a0-2cef-057d-dce4-13ee50c626d7@gmail.com>
 <96522dbb16dc3cecac9c20e32d58e5ea0ddf0f2c.camel@siemens.com>
Content-Language: en-US
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <96522dbb16dc3cecac9c20e32d58e5ea0ddf0f2c.camel@siemens.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:77J9rlkGa+TOOotbDonKNq5WRCXXTz5KGBAuLUcupGo/avOYwOd
 4nN79Za7PfyxJoGESTAv8hEW4+6fijv9yXPlFVAkp8XXoETii+peiatY15ItHocHVNlemRR
 RhjeSU+CVGLB6Qgo+5qph/vuYwb6xNlMC2NoNVWtGcxGU1Cpo56/41qDDTCyxgbQXPL9nyk
 6I/m5sfLQs3xV7kyw4Vnw==
UI-OutboundReport: notjunk:1;M01:P0:ITcHINlXk48=;D5O7IF4Cen4eIDuRC/eY1RU/TgY
 NIez+UQIquvGWWPUo2HNvaT7aaNQEJTky4LWyJpIgH8fVUygjM18lykqomFlIZfPXbhMlPE6U
 485LKKc4mya6K6ETuxIVpE3+6Qx5F3K74us4BycgDyVUEjTu/SW4bDZP7bHp0W3PfRPWyqiwf
 KvMmaxUtjSTrIsbCemL3s9GiyHaFwaasEwOh3RSFQVZSZn8gNVzyoXYEiss+6F3QpAXiV8UC7
 KfbFM/jiOyxdko/h1n48dozFUkxUbYXZFjmj5xXdLVhA5UweTOWfpZVezwOluvWfBHL3DOY5n
 vEa+tn0ffyS+FGaX9E3D8CfrQgBZ/puw9YM4SdfhYG9982ZAVeGubta9fLzbPnx75tDJa45G7
 wmk95kcGXqZkKg2G26EH7XDWX/XXXZFme/S7umrPLwsTXV3BMl4OAz8XxJ54iK2IAvpxKb7UQ
 2XS/PZH9reYXEkrykpHSfCEObmwcJTF8qSkmnqUrgO8jV4BEjalh3Uk9ED2udne4n+n3Z9zOC
 CfZjfw0UzIC6Yvh86BT41P/O3icPvfk59P4QIeHBiXvcb1KQHgkgmLnfqusJUNsjs1Kvgd7Rn
 QChMtHOfm8UNtQlKWcH+EohXpsQHkNQkUgNQH8ojsYFw9sLXF0PniJLiirWSG4qmRD2bC+K52
 cKNKPcd1KggeaMTkYL8I9EbUYTbburo7L6H3893W2w==
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Felix,

Am 27.06.23 um 03:56 schrieb Moessbauer Felix:
> On Wed, 2022-05-18 at 12:52 -0700, Florian Fainelli wrote:
>>
>>
>> On 4/27/2022 4:36 PM, Aurelien Jarno wrote:
>>> This patchset changes the generation of the Raspberry Pi devices
>>> DTB
>>> files to improve the support for out-of-tree device-tree overlays,
>>> like
>>> it has recently been done for the Nvidia SoCs.
>>>
>>> I personally only need that for arm64, but I have added a similar
>>> patch
>>> to do the same on arm.
>>
>> This looks good to me, Rob, does that approach work for you?
> 
> Since May 2023 this patch is integrated into the Debian kernel build
> [1]. However it would be better if we could integrate it into the
> kernel directly. Is there anything blocking? For me, the patch looks
> fine. Similar patches for Nvidia boards also already got integrated
> [2].
> 
> If there is no general objection against enabling the overlays, I plan
> to send patches for the sun8i-h3 arm boards as well.

this series has been resubmitted recently and applied. Could you please 
check current linux-next?

Best regards

> 
> Best regards,
> Felix Moessbauer
> Siemens AG
> 
> [1]
> https://salsa.debian.org/kernel-team/linux/-/commit/fae42149fd0a37c68a496efbbb11f1dac484a163
> [2]
> https://lore.kernel.org/all/20220203184327.65878-1-jonathanh@nvidia.com/T/
