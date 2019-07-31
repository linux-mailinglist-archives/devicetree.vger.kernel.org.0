Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 80D6C7C148
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2019 14:27:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387579AbfGaM10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Jul 2019 08:27:26 -0400
Received: from mout.kundenserver.de ([212.227.17.24]:51119 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387423AbfGaM1Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Jul 2019 08:27:25 -0400
Received: from [192.168.178.29] ([109.104.44.29]) by mrelayeu.kundenserver.de
 (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis) id
 1MOiLp-1hjG7g2E99-00QB6P; Wed, 31 Jul 2019 14:27:07 +0200
Subject: Re: [PATCH 2/2] ARM: dts: at91: add support for Arietta G25
To:     =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <uwe@kleine-koenig.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Ludovic Desroches <ludovic.desroches@microchip.com>
Cc:     devicetree@vger.kernel.org, info@acmesystems.it,
        linux-arm-kernel@lists.infradead.org
References: <20190728210403.2730-1-uwe@kleine-koenig.org>
 <20190728210403.2730-3-uwe@kleine-koenig.org>
From:   Stefan Wahren <stefan.wahren@i2se.com>
Message-ID: <a4ef1f4c-e439-7876-0d5b-a05d5dbf1f9a@i2se.com>
Date:   Wed, 31 Jul 2019 14:27:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190728210403.2730-3-uwe@kleine-koenig.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Provags-ID: V03:K1:zTD6UTs+4HWfVKK8Eoic/PiOVZzCOxjRqLNGyA+qyDqUpr065JH
 7WhqzmQQeYbWTasjNA2oAALi5UXRA5EokMnEWyvBdbhmjEE83MhSDzDgmyYzjG6ZKfC7Trg
 jOumN3si1yMWIb5zwL5jgL9ylxCZDXzE758tBiZsT/QX6mbkEArfpQ3zSGzlkDhBOe7AY7g
 HwGiuWvLU7rw5wd1qVuxw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:zQOwVmvM6b8=:9HXbyvBWMkVSzG5j0T+vz5
 q4RX1kY98O1pXMgZUZL6c7eFB1TWFKCHCsEy5g1PejetNTU6JOEj27HYdQS6wpc8DalqAroqo
 q890JlJiX6NRWfiUqfb2YzhJ8mXqFhFbXhoUIOOd8CuBcCGsBw9rxMyFpUpoc1HdCt4in+HjW
 Ux9NNMI0BV8cb7I+3OGnRu0g2z6EY9YGB/IXjAd0Xmewikeknl5TqvqqxEZuu87hdBPbapt0F
 wvCwuP7rZTIdZ/HD8Xjeo0FKlO9ljUOEl73O+6FEcokPRDnthtkU1Hu51u9QhT7aWLohGiGRm
 3vEGv6qpCnTS0dlq9FcaI1ltlgfUQe47rQTq8UkeWOdPUwMkmlu5gdCaXHHduwwIs+6W7LX+m
 i3um6x4h606XCvbW3o06IFCKk8I1LdRrVRmgyFOYAL8AR3U3P+4GLcDKyG2wZX2zWtJgARge7
 WxwQRurqMOV3enO3eNx2MHeoAb50DJ7ZCiQ8gXW6NBToCJH4lrWfLK+X21qPUA7qL3Y0pyMzx
 pw7XRO8zVdQR51H88WFZ7avAQ3MBh1VIKHeivwyv55JCVhQas8PoEPGkFy9NpvqTu0AUrAtry
 aGepRPXvavdmPWa87xfF01mJ9k/57s035JyG5vERJVL/ldQqCvyADSODln8XKqXob3z6ckkPT
 SKp0c0NB/WzBxQ3SAOdOuAPDinbLh1ToAtPNwGSL8e/FWYwUtEYh7NuHHqvYtDzL+Ual84Vnu
 MKLsBgT1GZADJhU+m+/GrwRxOmalQY0pPBo88Ujk5dlZk8BRrpWAzcJ8/Ps=
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Uwe,

On 28.07.19 23:04, Uwe Kleine-König wrote:
> The Arietta G25 is a SBC powered by a AT91SAMG25 running at 400 MHz.
> See https://www.acmesystems.it/arietta for more details.
>
> Signed-off-by: Uwe Kleine-König <uwe@kleine-koenig.org>
> ---
>  arch/arm/boot/dts/at91sam9g25-arietta.dts | 86 +++++++++++++++++++++++
>  1 file changed, 86 insertions(+)
>  

no need to add the DTB to the Makefile?

