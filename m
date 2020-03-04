Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A9C74178B73
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2020 08:34:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728319AbgCDHeI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Mar 2020 02:34:08 -0500
Received: from mout.gmx.net ([212.227.15.15]:36485 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728244AbgCDHeI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 4 Mar 2020 02:34:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1583307238;
        bh=y6n4po5Alwq3VMFio5BEbbgBVfEtj5n/bbVdCcRd/+I=;
        h=X-UI-Sender-Class:Subject:From:To:Cc:References:Date:In-Reply-To;
        b=OcC3n5a12+eK10lEyJwC/TARtjatN6EPDOSWxjU1aVqb5Wbebq6/FcYG0ijKnrheE
         veeKLXpSPfP8o/2HckJ4b3hmo4rLdB7zaSaMs/WxWayBhdB+nMRhkDZW2zHOHf7kmb
         x6iqnNhSr4MX//M69wZNTgH6HZSoNzPsT2t1jfDA=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.43] ([188.223.33.120]) by mail.gmx.com (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MKbkM-1ioQHJ3hFM-00Kukw; Wed, 04
 Mar 2020 08:33:58 +0100
Subject: Re: [PATCH] define rpi0w sdhci pinctrl state
From:   Nick Hudson <nick.hudson@gmx.co.uk>
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        linux-rpi-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <c34db439-3539-88c0-99f1-308d75afd1aa@gmx.co.uk>
 <23a936db-fc89-6259-3991-5791fa88beb7@i2se.com>
 <bd4bd5dc-307f-d058-8f94-00b61a8b8c87@gmx.co.uk>
Message-ID: <c97f3704-a671-be70-4323-181f84d657f8@gmx.co.uk>
Date:   Wed, 4 Mar 2020 07:33:55 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <bd4bd5dc-307f-d058-8f94-00b61a8b8c87@gmx.co.uk>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:nLv9yfsm5lvOIhWzxRz31QdaSxTY/XyD93XIAgdBmTPOcSaqx27
 hUhyOa44vulsq5f3aLk3bVYVwRokx5VSfZyo+/0Ev8HgrHQ3wTbDMi8tzgVZIq3llXec3cJ
 6d24o2nBS3ZTFzhdil1frjM3+FxICIkahWGlxHf6a4K190taW+TldZhIsuQ2HdHGCB/bTqk
 foif8YM5ZFLJcsWniYkOQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4spx8eQL8tg=:wmxU2yu/UX6tch62SyMkVZ
 3JuxYqCYHiMX89rqg3nYZplMK3WXbOapt93+lse23d5EhdSveeENbF5NCHd1cf3RQ4AcgBGLP
 yBjDo88Ix5FMwH8yRqmzyIkgoJO5JTj+/SlR1Tk2PA2juKTGvCDhVI2t4BN4ZOKMmOBYVqi02
 EZveMzMBgmWRf8EwloS+ES8I9MisJK0kgsyKYimXL2KFFRXCNGlgWIj88HFjJFmL91w2IVgqQ
 Li88trYJEyNPP763UtNYb6YAuR/a8p4N94p8DYM/BA5mLEW1i2hh+GLKPBr3mXA7xODCCoVuD
 s7MS9ffgDWOrpz2oFhS6HZN+Kf69i4nZIoLzoG5YnlghoPxU7rZ5JzZPs82cq1itZ886XIWvA
 ATEXOOaz5Be9B0x1rLRAI9Zgl602afR28AfHMiFDTf16cbxsqQdCeomMAn3vWnB8rocbBd9JB
 0MCos75H2TLZsTLtsLPyPVNFof88IOMRCGnPc9PbDkJ4WepXLvIZbLgCKOe8DwZixRZ3QKu+T
 7C47PRQepcG3DebCFRf/fbLCpUHEa3UqnEKXyhhMDnJWnOdIO689Ehn4cI3PMDAo8k4WgIsTe
 Jh1oXw4UPPO4F7ojOeZ0zggoQAeTpUlihuVIargzTTmajXxYs9KwX5AOCYF21iHtEdJTNtvH1
 E86Kla6vBVAF1BxhBY3XWekDrqSUF0ivOD0fA45YI+kWZXa9Ddu2UGysHsoBtLE3jpmBdxDPf
 KD9IKrrFpvYGZdMZNtc8fV9xMaiGWZ01Qx97wneksohxGjH9cWmegjaFGkyUcgyPt6t6nLYLW
 d0vDvLYV/fb/eED5bjJ9KUM2EkroBqONvu7OY62ISmnYcb1czQW2natdzCysDARRNj2CY1J1n
 YPKJTqEoD3y265ZNAaZw5mBfQUnIJRCAEsWnlgHKPlhl9t2huFPCnfrr664PwxUyCbOanO68W
 XtBdxYU3GFo6s9ODNMkJvM/pXzsZ8dCPMu+ZlNrUi+iU1/1+8MynT4eWc8eu7HwgCNy7IeTKZ
 MHubLi23Pt5H/tMfUKVfvuJWJEvizIWO22ugNSzgm5cGD7UUrLb0xMQL2yAsOfpFcNGSJerIL
 snf0jcZKVCy87cQsyyD5+pf+no1sg7J2NmL8PvROmwHtyZW+N8v69Hu4qCp0YJSGns3pXtnhV
 DiEiAtOAB3XvozhxGPnBAgoAg5+wiyGfu8iNQ2kImQixz2f44Cgzk/spULXc4tB8KXAZdjM+8
 aMeqyJhvAEmMFQ3Il
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 28/02/2020 11:52, Nick Hudson wrote:
>
>
> On 27/02/2020 17:53, Stefan Wahren wrote:
>> Hi Nick,
>>
>> Am 27.02.20 um 00:33 schrieb Nick Hudson:
>>> I'm still not sure where I should be sending this, but here goes.
>>
>> the addresses are right. Please rebase your change against recent Linux
>> git tree and generate a git patch, otherwise we cannot apply your it.
> Oops, I see I sent the comletely the wrong diff... will fix.
>
>>
>> I suggest the following subject:
>>
>> ARM: bcm2835-rpi-zero-w: Add missing pinctrl name

So, I did this, but it's stuck pending ML moderator approval :(
I sent it on Saturday.

Do I need to try again?

Thanks,
Nick
