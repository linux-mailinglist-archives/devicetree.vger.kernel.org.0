Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF9C353B874
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 13:59:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232957AbiFBL6z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 07:58:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57092 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234641AbiFBL6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 07:58:54 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CD7686CF5E
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 04:58:48 -0700 (PDT)
Received: from [192.168.41.62] ([46.114.149.130]) by mrelayeu.kundenserver.de
 (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MgeXk-1nHuzu1fOm-00h6E5; Thu, 02 Jun 2022 13:58:18 +0200
Message-ID: <cb7f28a1-dbc5-d842-ef2f-bcd81c148d63@i2se.com>
Date:   Thu, 2 Jun 2022 13:58:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v5 1/6] dt-bindings: gpu: v3d: Add BCM2711's compatible
Content-Language: en-US
To:     Peter Robinson <pbrobinson@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        bcm-kernel-feedback-list@broadcom.com,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Emma Anholt <emma@anholt.net>,
        Florian Fainelli <f.fainelli@gmail.com>, javierm@redhat.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, maxime@cerno.tech,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
References: <20220601110249.569540-1-pbrobinson@gmail.com>
 <20220601110249.569540-2-pbrobinson@gmail.com>
From:   Stefan Wahren <stefan.wahren@i2se.com>
In-Reply-To: <20220601110249.569540-2-pbrobinson@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Provags-ID: V03:K1:PUFlOqVp2MoLFiuH3AVbwZWWY9O0B78Csq8/frpUPCHXbXkjnea
 EKmrsJiTbf/VbK0gSkE8VOtdJ7RqogsCXAvZoDKIeQRbitkoi8oXhaYJpCa4QQUac4BBpjR
 FXGM4yq+nrAsFwxEx5YFOn29SlL88nuWJF615cFoYLWDuSqaMkqUqRUy3Ih2Ux7EOFQ+89H
 SOiE3oZby6Q15ENQVhK9g==
X-UI-Out-Filterresults: notjunk:1;V03:K0:hkwfopk3TdQ=:Ep0J7bbrFJZ0h7+ggA4kEu
 Ksr3QyxbR5wZSJprqxSWnR4xMJfHz5EfmYxhAYOgzj1IMRZpT2Q+KXSUArK/ztG21vBfGpQgn
 g6yWL8+wkQOtoct3i7HiY/YrtiNBEtEiqa1m13s3ZGta27IaTNnP5qTR72yJyuifTvQsoZSOe
 bmVLKCsG5+CeBeLzgzYAxptbnXeZO7TJs/kniA23L/WbCtKpJqb5fplWJhEnVFr+MSy3eIE8C
 WoDFNqmxuh4TYc90bN2riyafdDyRV296v3dh8Pwr5RKeTeopgJqyp4Y9WZnQexz+UFRClojc4
 RrSamvIn3FPlNeNMmBMIvYeYet6yxKJ5akZMfdoWfkY+K3r2FCBUpLq+M4ZlTLsFQnsK9dMgt
 CBHd8wMsPAFvDTl2/IOc9aFBSrmWp4jnXM155R/6Ikqnt51AwfBlkUUKj1wv/rupJto5eIiix
 hogkdB0N5EWBRUM667upFs3FIwjckOvCjo1EUxEaN0+iu+jQ5wA6SimoOy9L1FwIhKpQkLRaX
 IYXoIc/F41l3W5Gbxw9Il200WRcevhzGP3WiXMAH1HIMle1jYPRV1IXhFmUB5wEdH+WG1gEv3
 72HtLnNU7lB48HBpaaOITWyclKJ1yrI8ACJgp9jLw0zgHjdZVrcs0LOmMInaMsKg8DoO1EDZT
 I3UL2jKUHlbJ7mSYaNjJpUonNFKf5AsM8kFAlm73b85aEJLzX0C+Re5gIIrfjq0LDrVQAB8sM
 zUO252Gw2WgQQj43dIsj/JU306R4TuaeBaQfuDLJbH4TiiRsj9G6V4IyvPY=
X-Spam-Status: No, score=-4.5 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am 01.06.22 um 13:02 schrieb Peter Robinson:
> BCM2711, Raspberry Pi 4's SoC, contains a V3D core. So add its specific
> compatible to the bindings.
>
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
Reviewed-by: Stefan Wahren <stefan.wahren@i2se.com>
